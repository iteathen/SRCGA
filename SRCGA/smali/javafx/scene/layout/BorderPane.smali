.class public Ljavafx/scene/layout/BorderPane;
.super Ljavafx/scene/layout/Pane;
.source "BorderPane.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/layout/BorderPane$BorderPositionProperty;
    }
.end annotation


# static fields
.field private static final ALIGNMENT:Ljava/lang/String; = "borderpane-alignment"

.field private static final MARGIN:Ljava/lang/String; = "borderpane-margin"


# instance fields
.field private bottom:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation
.end field

.field private center:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation
.end field

.field private left:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation
.end field

.field private right:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation
.end field

.field private top:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderPane;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/layout/Pane;-><init>()V

    .line 213
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderPane;
    move-object v1, p1

    .local v1, "center":Ljavafx/scene/Node;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/layout/Pane;-><init>()V

    .line 222
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/layout/BorderPane;->setCenter(Ljavafx/scene/Node;)V

    .line 223
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/Node;Ljavafx/scene/Node;Ljavafx/scene/Node;Ljavafx/scene/Node;Ljavafx/scene/Node;)V
    .locals 8

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderPane;
    move-object v1, p1

    .local v1, "center":Ljavafx/scene/Node;
    move-object v2, p2

    .local v2, "top":Ljavafx/scene/Node;
    move-object v3, p3

    .local v3, "right":Ljavafx/scene/Node;
    move-object v4, p4

    .local v4, "bottom":Ljavafx/scene/Node;
    move-object v5, p5

    .local v5, "left":Ljavafx/scene/Node;
    move-object v6, v0

    invoke-direct {v6}, Ljavafx/scene/layout/Pane;-><init>()V

    .line 238
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljavafx/scene/layout/BorderPane;->setCenter(Ljavafx/scene/Node;)V

    .line 239
    move-object v6, v0

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljavafx/scene/layout/BorderPane;->setTop(Ljavafx/scene/Node;)V

    .line 240
    move-object v6, v0

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljavafx/scene/layout/BorderPane;->setRight(Ljavafx/scene/Node;)V

    .line 241
    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljavafx/scene/layout/BorderPane;->setBottom(Ljavafx/scene/Node;)V

    .line 242
    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljavafx/scene/layout/BorderPane;->setLeft(Ljavafx/scene/Node;)V

    .line 243
    return-void
.end method

.method private childHasContentBias(Ljavafx/scene/Node;Ljavafx/geometry/Orientation;)Z
    .locals 5

    .prologue
    .line 625
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderPane;
    move-object v1, p1

    .local v1, "child":Ljavafx/scene/Node;
    move-object v2, p2

    .local v2, "orientation":Ljavafx/geometry/Orientation;
    move-object v3, v1

    if-eqz v3, :cond_1

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/Node;->isManaged()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 626
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/Node;->getContentBias()Ljavafx/geometry/Orientation;

    move-result-object v3

    move-object v4, v2

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .line 628
    .end local v0    # "this":Ljavafx/scene/layout/BorderPane;
    :goto_1
    return v0

    .line 626
    .restart local v0    # "this":Ljavafx/scene/layout/BorderPane;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 628
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1
.end method

.method public static clearConstraints(Ljavafx/scene/Node;)V
    .locals 3

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "child":Ljavafx/scene/Node;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljavafx/scene/layout/BorderPane;->setAlignment(Ljavafx/scene/Node;Ljavafx/geometry/Pos;)V

    .line 201
    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljavafx/scene/layout/BorderPane;->setMargin(Ljavafx/scene/Node;Ljavafx/geometry/Insets;)V

    .line 202
    return-void
.end method

.method public static getAlignment(Ljavafx/scene/Node;)Ljavafx/geometry/Pos;
    .locals 3

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "child":Ljavafx/scene/Node;
    move-object v1, v0

    const-string v2, "borderpane-alignment"

    invoke-static {v1, v2}, Ljavafx/scene/layout/BorderPane;->getConstraint(Ljavafx/scene/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/geometry/Pos;

    move-object v0, v1

    .end local v0    # "child":Ljavafx/scene/Node;
    return-object v0
.end method

.method private getAreaHeight(Ljavafx/scene/Node;DZ)D
    .locals 14

    .prologue
    .line 616
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderPane;
    move-object v1, p1

    .local v1, "child":Ljavafx/scene/Node;
    move-wide/from16 v2, p2

    .local v2, "width":D
    move/from16 v4, p4

    .local v4, "minimum":Z
    move-object v6, v1

    if-eqz v6, :cond_1

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/Node;->isManaged()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 617
    move-object v6, v1

    invoke-static {v6}, Ljavafx/scene/layout/BorderPane;->getNodeMargin(Ljavafx/scene/Node;)Ljavafx/geometry/Insets;

    move-result-object v6

    move-object v5, v6

    .line 618
    .local v5, "margin":Ljavafx/geometry/Insets;
    move v6, v4

    if-eqz v6, :cond_0

    move-object v6, v0

    move-object v7, v1

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    move-object v10, v5

    move-wide v11, v2

    invoke-virtual/range {v6 .. v12}, Ljavafx/scene/layout/BorderPane;->computeChildMinAreaHeight(Ljavafx/scene/Node;DLjavafx/geometry/Insets;D)D

    move-result-wide v6

    .line 619
    :goto_0
    move-wide v0, v6

    .line 621
    .end local v0    # "this":Ljavafx/scene/layout/BorderPane;
    .end local v5    # "margin":Ljavafx/geometry/Insets;
    :goto_1
    return-wide v0

    .line 618
    .restart local v0    # "this":Ljavafx/scene/layout/BorderPane;
    .restart local v5    # "margin":Ljavafx/geometry/Insets;
    :cond_0
    move-object v6, v0

    move-object v7, v1

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    move-object v10, v5

    move-wide v11, v2

    .line 619
    invoke-virtual/range {v6 .. v12}, Ljavafx/scene/layout/BorderPane;->computeChildPrefAreaHeight(Ljavafx/scene/Node;DLjavafx/geometry/Insets;D)D

    move-result-wide v6

    goto :goto_0

    .line 621
    .end local v5    # "margin":Ljavafx/geometry/Insets;
    :cond_1
    const-wide/16 v6, 0x0

    move-wide v0, v6

    goto :goto_1
.end method

.method private getAreaWidth(Ljavafx/scene/Node;DZ)D
    .locals 14

    .prologue
    .line 607
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderPane;
    move-object v1, p1

    .local v1, "child":Ljavafx/scene/Node;
    move-wide/from16 v2, p2

    .local v2, "height":D
    move/from16 v4, p4

    .local v4, "minimum":Z
    move-object v6, v1

    if-eqz v6, :cond_1

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/Node;->isManaged()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 608
    move-object v6, v1

    invoke-static {v6}, Ljavafx/scene/layout/BorderPane;->getNodeMargin(Ljavafx/scene/Node;)Ljavafx/geometry/Insets;

    move-result-object v6

    move-object v5, v6

    .line 609
    .local v5, "margin":Ljavafx/geometry/Insets;
    move v6, v4

    if-eqz v6, :cond_0

    move-object v6, v0

    move-object v7, v1

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    move-object v10, v5

    move-wide v11, v2

    const/4 v13, 0x0

    invoke-virtual/range {v6 .. v13}, Ljavafx/scene/layout/BorderPane;->computeChildMinAreaWidth(Ljavafx/scene/Node;DLjavafx/geometry/Insets;DZ)D

    move-result-wide v6

    .line 610
    :goto_0
    move-wide v0, v6

    .line 612
    .end local v0    # "this":Ljavafx/scene/layout/BorderPane;
    .end local v5    # "margin":Ljavafx/geometry/Insets;
    :goto_1
    return-wide v0

    .line 609
    .restart local v0    # "this":Ljavafx/scene/layout/BorderPane;
    .restart local v5    # "margin":Ljavafx/geometry/Insets;
    :cond_0
    move-object v6, v0

    move-object v7, v1

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    move-object v10, v5

    move-wide v11, v2

    const/4 v13, 0x0

    .line 610
    invoke-virtual/range {v6 .. v13}, Ljavafx/scene/layout/BorderPane;->computeChildPrefAreaWidth(Ljavafx/scene/Node;DLjavafx/geometry/Insets;DZ)D

    move-result-wide v6

    goto :goto_0

    .line 612
    .end local v5    # "margin":Ljavafx/geometry/Insets;
    :cond_1
    const-wide/16 v6, 0x0

    move-wide v0, v6

    goto :goto_1
.end method

.method public static getMargin(Ljavafx/scene/Node;)Ljavafx/geometry/Insets;
    .locals 3

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "child":Ljavafx/scene/Node;
    move-object v1, v0

    const-string v2, "borderpane-margin"

    invoke-static {v1, v2}, Ljavafx/scene/layout/BorderPane;->getConstraint(Ljavafx/scene/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/geometry/Insets;

    move-object v0, v1

    .end local v0    # "child":Ljavafx/scene/Node;
    return-object v0
.end method

.method private static getNodeMargin(Ljavafx/scene/Node;)Ljavafx/geometry/Insets;
    .locals 3

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "child":Ljavafx/scene/Node;
    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/layout/BorderPane;->getMargin(Ljavafx/scene/Node;)Ljavafx/geometry/Insets;

    move-result-object v2

    move-object v1, v2

    .line 192
    .local v1, "margin":Ljavafx/geometry/Insets;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    :goto_0
    move-object v0, v2

    .end local v0    # "child":Ljavafx/scene/Node;
    return-object v0

    .restart local v0    # "child":Ljavafx/scene/Node;
    :cond_0
    sget-object v2, Ljavafx/geometry/Insets;->EMPTY:Ljavafx/geometry/Insets;

    goto :goto_0
.end method

.method public static setAlignment(Ljavafx/scene/Node;Ljavafx/geometry/Pos;)V
    .locals 5

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "child":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljavafx/geometry/Pos;
    move-object v2, v0

    const-string v3, "borderpane-alignment"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Ljavafx/scene/layout/BorderPane;->setConstraint(Ljavafx/scene/Node;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 158
    return-void
.end method

.method public static setMargin(Ljavafx/scene/Node;Ljavafx/geometry/Insets;)V
    .locals 5

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "child":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljavafx/geometry/Insets;
    move-object v2, v0

    const-string v3, "borderpane-margin"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Ljavafx/scene/layout/BorderPane;->setConstraint(Ljavafx/scene/Node;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 178
    return-void
.end method


# virtual methods
.method public final bottomProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 290
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/BorderPane;->bottom:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 291
    move-object v1, v0

    new-instance v2, Ljavafx/scene/layout/BorderPane$BorderPositionProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "bottom"

    invoke-direct {v3, v4, v5}, Ljavafx/scene/layout/BorderPane$BorderPositionProperty;-><init>(Ljavafx/scene/layout/BorderPane;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/layout/BorderPane;->bottom:Ljavafx/beans/property/ObjectProperty;

    .line 293
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/BorderPane;->bottom:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BorderPane;
    return-object v0
.end method

.method public final centerProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/BorderPane;->center:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 255
    move-object v1, v0

    new-instance v2, Ljavafx/scene/layout/BorderPane$BorderPositionProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "center"

    invoke-direct {v3, v4, v5}, Ljavafx/scene/layout/BorderPane$BorderPositionProperty;-><init>(Ljavafx/scene/layout/BorderPane;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/layout/BorderPane;->center:Ljavafx/beans/property/ObjectProperty;

    .line 257
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/BorderPane;->center:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BorderPane;
    return-object v0
.end method

.method protected computeMinHeight(D)D
    .locals 27

    .prologue
    .line 399
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderPane;
    move-wide/from16 v1, p1

    .local v1, "width":D
    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/layout/BorderPane;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v18

    move-object/from16 v3, v18

    .line 402
    .local v3, "insets":Ljavafx/geometry/Insets;
    move-object/from16 v18, v0

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/layout/BorderPane;->getTop()Ljavafx/scene/Node;

    move-result-object v19

    move-wide/from16 v20, v1

    const/16 v22, 0x0

    invoke-direct/range {v18 .. v22}, Ljavafx/scene/layout/BorderPane;->getAreaHeight(Ljavafx/scene/Node;DZ)D

    move-result-wide v18

    move-wide/from16 v4, v18

    .line 403
    .local v4, "topPrefHeight":D
    move-object/from16 v18, v0

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/layout/BorderPane;->getBottom()Ljavafx/scene/Node;

    move-result-object v19

    move-wide/from16 v20, v1

    const/16 v22, 0x0

    invoke-direct/range {v18 .. v22}, Ljavafx/scene/layout/BorderPane;->getAreaHeight(Ljavafx/scene/Node;DZ)D

    move-result-wide v18

    move-wide/from16 v6, v18

    .line 405
    .local v6, "bottomPrefHeight":D
    move-object/from16 v18, v0

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/layout/BorderPane;->getLeft()Ljavafx/scene/Node;

    move-result-object v19

    const-wide/high16 v20, -0x4010000000000000L    # -1.0

    const/16 v22, 0x1

    invoke-direct/range {v18 .. v22}, Ljavafx/scene/layout/BorderPane;->getAreaHeight(Ljavafx/scene/Node;DZ)D

    move-result-wide v18

    move-wide/from16 v8, v18

    .line 406
    .local v8, "leftMinHeight":D
    move-object/from16 v18, v0

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/layout/BorderPane;->getRight()Ljavafx/scene/Node;

    move-result-object v19

    const-wide/high16 v20, -0x4010000000000000L    # -1.0

    const/16 v22, 0x1

    invoke-direct/range {v18 .. v22}, Ljavafx/scene/layout/BorderPane;->getAreaHeight(Ljavafx/scene/Node;DZ)D

    move-result-wide v18

    move-wide/from16 v10, v18

    .line 409
    .local v10, "rightMinHeight":D
    move-wide/from16 v18, v1

    const-wide/high16 v20, -0x4010000000000000L    # -1.0

    cmpl-double v18, v18, v20

    if-eqz v18, :cond_0

    move-object/from16 v18, v0

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/layout/BorderPane;->getCenter()Ljavafx/scene/Node;

    move-result-object v19

    sget-object v20, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    invoke-direct/range {v18 .. v20}, Ljavafx/scene/layout/BorderPane;->childHasContentBias(Ljavafx/scene/Node;Ljavafx/geometry/Orientation;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 410
    move-object/from16 v18, v0

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/layout/BorderPane;->getLeft()Ljavafx/scene/Node;

    move-result-object v19

    const-wide/high16 v20, -0x4010000000000000L    # -1.0

    const/16 v22, 0x0

    invoke-direct/range {v18 .. v22}, Ljavafx/scene/layout/BorderPane;->getAreaWidth(Ljavafx/scene/Node;DZ)D

    move-result-wide v18

    move-wide/from16 v14, v18

    .line 411
    .local v14, "leftPrefWidth":D
    move-object/from16 v18, v0

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/layout/BorderPane;->getRight()Ljavafx/scene/Node;

    move-result-object v19

    const-wide/high16 v20, -0x4010000000000000L    # -1.0

    const/16 v22, 0x0

    invoke-direct/range {v18 .. v22}, Ljavafx/scene/layout/BorderPane;->getAreaWidth(Ljavafx/scene/Node;DZ)D

    move-result-wide v18

    move-wide/from16 v16, v18

    .line 412
    .local v16, "rightPrefWidth":D
    move-object/from16 v18, v0

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/layout/BorderPane;->getCenter()Ljavafx/scene/Node;

    move-result-object v19

    const-wide/16 v20, 0x0

    move-wide/from16 v22, v1

    move-wide/from16 v24, v14

    sub-double v22, v22, v24

    move-wide/from16 v24, v16

    sub-double v22, v22, v24

    .line 413
    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(DD)D

    move-result-wide v20

    const/16 v22, 0x1

    .line 412
    invoke-direct/range {v18 .. v22}, Ljavafx/scene/layout/BorderPane;->getAreaHeight(Ljavafx/scene/Node;DZ)D

    move-result-wide v18

    move-wide/from16 v12, v18

    .line 418
    .end local v14    # "leftPrefWidth":D
    .end local v16    # "rightPrefWidth":D
    .local v12, "centerMinHeight":D
    :goto_0
    move-wide/from16 v18, v12

    move-wide/from16 v20, v10

    move-wide/from16 v22, v8

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(DD)D

    move-result-wide v20

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->max(DD)D

    move-result-wide v18

    move-wide/from16 v14, v18

    .line 420
    .local v14, "middleAreaMinHeigh":D
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v18

    move-wide/from16 v20, v4

    add-double v18, v18, v20

    move-wide/from16 v20, v14

    add-double v18, v18, v20

    move-wide/from16 v20, v6

    add-double v18, v18, v20

    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v20

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    .end local v0    # "this":Ljavafx/scene/layout/BorderPane;
    return-wide v0

    .line 415
    .end local v12    # "centerMinHeight":D
    .end local v14    # "middleAreaMinHeigh":D
    .restart local v0    # "this":Ljavafx/scene/layout/BorderPane;
    :cond_0
    move-object/from16 v18, v0

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/layout/BorderPane;->getCenter()Ljavafx/scene/Node;

    move-result-object v19

    const-wide/high16 v20, -0x4010000000000000L    # -1.0

    const/16 v22, 0x1

    invoke-direct/range {v18 .. v22}, Ljavafx/scene/layout/BorderPane;->getAreaHeight(Ljavafx/scene/Node;DZ)D

    move-result-wide v18

    move-wide/from16 v12, v18

    .restart local v12    # "centerMinHeight":D
    goto :goto_0
.end method

.method protected computeMinWidth(D)D
    .locals 29

    .prologue
    .line 368
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/layout/BorderPane;
    move-wide/from16 v2, p1

    .local v2, "height":D
    move-object/from16 v20, v1

    move-object/from16 v21, v1

    invoke-virtual/range {v21 .. v21}, Ljavafx/scene/layout/BorderPane;->getTop()Ljavafx/scene/Node;

    move-result-object v21

    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    const/16 v24, 0x1

    invoke-direct/range {v20 .. v24}, Ljavafx/scene/layout/BorderPane;->getAreaWidth(Ljavafx/scene/Node;DZ)D

    move-result-wide v20

    move-wide/from16 v4, v20

    .line 369
    .local v4, "topMinWidth":D
    move-object/from16 v20, v1

    move-object/from16 v21, v1

    invoke-virtual/range {v21 .. v21}, Ljavafx/scene/layout/BorderPane;->getBottom()Ljavafx/scene/Node;

    move-result-object v21

    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    const/16 v24, 0x1

    invoke-direct/range {v20 .. v24}, Ljavafx/scene/layout/BorderPane;->getAreaWidth(Ljavafx/scene/Node;DZ)D

    move-result-wide v20

    move-wide/from16 v6, v20

    .line 375
    .local v6, "bottomMinWidth":D
    move-wide/from16 v20, v2

    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    cmpl-double v20, v20, v22

    if-eqz v20, :cond_1

    move-object/from16 v20, v1

    move-object/from16 v21, v1

    invoke-virtual/range {v21 .. v21}, Ljavafx/scene/layout/BorderPane;->getLeft()Ljavafx/scene/Node;

    move-result-object v21

    sget-object v22, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    invoke-direct/range {v20 .. v22}, Ljavafx/scene/layout/BorderPane;->childHasContentBias(Ljavafx/scene/Node;Ljavafx/geometry/Orientation;)Z

    move-result v20

    if-nez v20, :cond_0

    move-object/from16 v20, v1

    move-object/from16 v21, v1

    .line 376
    invoke-virtual/range {v21 .. v21}, Ljavafx/scene/layout/BorderPane;->getRight()Ljavafx/scene/Node;

    move-result-object v21

    sget-object v22, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    invoke-direct/range {v20 .. v22}, Ljavafx/scene/layout/BorderPane;->childHasContentBias(Ljavafx/scene/Node;Ljavafx/geometry/Orientation;)Z

    move-result v20

    if-nez v20, :cond_0

    move-object/from16 v20, v1

    move-object/from16 v21, v1

    .line 377
    invoke-virtual/range {v21 .. v21}, Ljavafx/scene/layout/BorderPane;->getCenter()Ljavafx/scene/Node;

    move-result-object v21

    sget-object v22, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    invoke-direct/range {v20 .. v22}, Ljavafx/scene/layout/BorderPane;->childHasContentBias(Ljavafx/scene/Node;Ljavafx/geometry/Orientation;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 378
    :cond_0
    move-object/from16 v20, v1

    move-object/from16 v21, v1

    invoke-virtual/range {v21 .. v21}, Ljavafx/scene/layout/BorderPane;->getTop()Ljavafx/scene/Node;

    move-result-object v21

    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    const/16 v24, 0x0

    invoke-direct/range {v20 .. v24}, Ljavafx/scene/layout/BorderPane;->getAreaHeight(Ljavafx/scene/Node;DZ)D

    move-result-wide v20

    move-wide/from16 v14, v20

    .line 379
    .local v14, "topPrefHeight":D
    move-object/from16 v20, v1

    move-object/from16 v21, v1

    invoke-virtual/range {v21 .. v21}, Ljavafx/scene/layout/BorderPane;->getBottom()Ljavafx/scene/Node;

    move-result-object v21

    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    const/16 v24, 0x0

    invoke-direct/range {v20 .. v24}, Ljavafx/scene/layout/BorderPane;->getAreaHeight(Ljavafx/scene/Node;DZ)D

    move-result-wide v20

    move-wide/from16 v16, v20

    .line 381
    .local v16, "bottomPrefHeight":D
    const-wide/16 v20, 0x0

    move-wide/from16 v22, v2

    move-wide/from16 v24, v14

    sub-double v22, v22, v24

    move-wide/from16 v24, v16

    sub-double v22, v22, v24

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(DD)D

    move-result-wide v20

    move-wide/from16 v18, v20

    .line 383
    .local v18, "middleAreaHeight":D
    move-object/from16 v20, v1

    move-object/from16 v21, v1

    invoke-virtual/range {v21 .. v21}, Ljavafx/scene/layout/BorderPane;->getLeft()Ljavafx/scene/Node;

    move-result-object v21

    move-wide/from16 v22, v18

    const/16 v24, 0x0

    invoke-direct/range {v20 .. v24}, Ljavafx/scene/layout/BorderPane;->getAreaWidth(Ljavafx/scene/Node;DZ)D

    move-result-wide v20

    move-wide/from16 v8, v20

    .line 384
    .local v8, "leftPrefWidth":D
    move-object/from16 v20, v1

    move-object/from16 v21, v1

    invoke-virtual/range {v21 .. v21}, Ljavafx/scene/layout/BorderPane;->getRight()Ljavafx/scene/Node;

    move-result-object v21

    move-wide/from16 v22, v18

    const/16 v24, 0x0

    invoke-direct/range {v20 .. v24}, Ljavafx/scene/layout/BorderPane;->getAreaWidth(Ljavafx/scene/Node;DZ)D

    move-result-wide v20

    move-wide/from16 v10, v20

    .line 385
    .local v10, "rightPrefWidth":D
    move-object/from16 v20, v1

    move-object/from16 v21, v1

    invoke-virtual/range {v21 .. v21}, Ljavafx/scene/layout/BorderPane;->getCenter()Ljavafx/scene/Node;

    move-result-object v21

    move-wide/from16 v22, v18

    const/16 v24, 0x1

    invoke-direct/range {v20 .. v24}, Ljavafx/scene/layout/BorderPane;->getAreaWidth(Ljavafx/scene/Node;DZ)D

    move-result-wide v20

    move-wide/from16 v12, v20

    .line 392
    .end local v14    # "topPrefHeight":D
    .end local v16    # "bottomPrefHeight":D
    .end local v18    # "middleAreaHeight":D
    .local v12, "centerMinWidth":D
    :goto_0
    move-object/from16 v20, v1

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/layout/BorderPane;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v20

    move-object/from16 v14, v20

    .line 393
    .local v14, "insets":Ljavafx/geometry/Insets;
    move-object/from16 v20, v14

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v20

    move-wide/from16 v22, v8

    move-wide/from16 v24, v12

    add-double v22, v22, v24

    move-wide/from16 v24, v10

    add-double v22, v22, v24

    move-wide/from16 v24, v4

    move-wide/from16 v26, v6

    .line 394
    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->max(DD)D

    move-result-wide v24

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(DD)D

    move-result-wide v22

    add-double v20, v20, v22

    move-object/from16 v22, v14

    .line 395
    invoke-virtual/range {v22 .. v22}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v22

    add-double v20, v20, v22

    move-wide/from16 v1, v20

    .end local v1    # "this":Ljavafx/scene/layout/BorderPane;
    return-wide v1

    .line 387
    .end local v8    # "leftPrefWidth":D
    .end local v10    # "rightPrefWidth":D
    .end local v12    # "centerMinWidth":D
    .end local v14    # "insets":Ljavafx/geometry/Insets;
    .restart local v1    # "this":Ljavafx/scene/layout/BorderPane;
    :cond_1
    move-object/from16 v20, v1

    move-object/from16 v21, v1

    invoke-virtual/range {v21 .. v21}, Ljavafx/scene/layout/BorderPane;->getLeft()Ljavafx/scene/Node;

    move-result-object v21

    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    const/16 v24, 0x0

    invoke-direct/range {v20 .. v24}, Ljavafx/scene/layout/BorderPane;->getAreaWidth(Ljavafx/scene/Node;DZ)D

    move-result-wide v20

    move-wide/from16 v8, v20

    .line 388
    .restart local v8    # "leftPrefWidth":D
    move-object/from16 v20, v1

    move-object/from16 v21, v1

    invoke-virtual/range {v21 .. v21}, Ljavafx/scene/layout/BorderPane;->getRight()Ljavafx/scene/Node;

    move-result-object v21

    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    const/16 v24, 0x0

    invoke-direct/range {v20 .. v24}, Ljavafx/scene/layout/BorderPane;->getAreaWidth(Ljavafx/scene/Node;DZ)D

    move-result-wide v20

    move-wide/from16 v10, v20

    .line 389
    .restart local v10    # "rightPrefWidth":D
    move-object/from16 v20, v1

    move-object/from16 v21, v1

    invoke-virtual/range {v21 .. v21}, Ljavafx/scene/layout/BorderPane;->getCenter()Ljavafx/scene/Node;

    move-result-object v21

    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    const/16 v24, 0x1

    invoke-direct/range {v20 .. v24}, Ljavafx/scene/layout/BorderPane;->getAreaWidth(Ljavafx/scene/Node;DZ)D

    move-result-wide v20

    move-wide/from16 v12, v20

    .restart local v12    # "centerMinWidth":D
    goto :goto_0
.end method

.method protected computePrefHeight(D)D
    .locals 27

    .prologue
    .line 455
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderPane;
    move-wide/from16 v1, p1

    .local v1, "width":D
    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/layout/BorderPane;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v18

    move-object/from16 v3, v18

    .line 457
    .local v3, "insets":Ljavafx/geometry/Insets;
    move-object/from16 v18, v0

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/layout/BorderPane;->getTop()Ljavafx/scene/Node;

    move-result-object v19

    move-wide/from16 v20, v1

    const/16 v22, 0x0

    invoke-direct/range {v18 .. v22}, Ljavafx/scene/layout/BorderPane;->getAreaHeight(Ljavafx/scene/Node;DZ)D

    move-result-wide v18

    move-wide/from16 v4, v18

    .line 458
    .local v4, "topPrefHeight":D
    move-object/from16 v18, v0

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/layout/BorderPane;->getBottom()Ljavafx/scene/Node;

    move-result-object v19

    move-wide/from16 v20, v1

    const/16 v22, 0x0

    invoke-direct/range {v18 .. v22}, Ljavafx/scene/layout/BorderPane;->getAreaHeight(Ljavafx/scene/Node;DZ)D

    move-result-wide v18

    move-wide/from16 v6, v18

    .line 459
    .local v6, "bottomPrefHeight":D
    move-object/from16 v18, v0

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/layout/BorderPane;->getLeft()Ljavafx/scene/Node;

    move-result-object v19

    const-wide/high16 v20, -0x4010000000000000L    # -1.0

    const/16 v22, 0x0

    invoke-direct/range {v18 .. v22}, Ljavafx/scene/layout/BorderPane;->getAreaHeight(Ljavafx/scene/Node;DZ)D

    move-result-wide v18

    move-wide/from16 v8, v18

    .line 460
    .local v8, "leftPrefHeight":D
    move-object/from16 v18, v0

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/layout/BorderPane;->getRight()Ljavafx/scene/Node;

    move-result-object v19

    const-wide/high16 v20, -0x4010000000000000L    # -1.0

    const/16 v22, 0x0

    invoke-direct/range {v18 .. v22}, Ljavafx/scene/layout/BorderPane;->getAreaHeight(Ljavafx/scene/Node;DZ)D

    move-result-wide v18

    move-wide/from16 v10, v18

    .line 463
    .local v10, "rightPrefHeight":D
    move-wide/from16 v18, v1

    const-wide/high16 v20, -0x4010000000000000L    # -1.0

    cmpl-double v18, v18, v20

    if-eqz v18, :cond_0

    move-object/from16 v18, v0

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/layout/BorderPane;->getCenter()Ljavafx/scene/Node;

    move-result-object v19

    sget-object v20, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    invoke-direct/range {v18 .. v20}, Ljavafx/scene/layout/BorderPane;->childHasContentBias(Ljavafx/scene/Node;Ljavafx/geometry/Orientation;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 464
    move-object/from16 v18, v0

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/layout/BorderPane;->getLeft()Ljavafx/scene/Node;

    move-result-object v19

    const-wide/high16 v20, -0x4010000000000000L    # -1.0

    const/16 v22, 0x0

    invoke-direct/range {v18 .. v22}, Ljavafx/scene/layout/BorderPane;->getAreaWidth(Ljavafx/scene/Node;DZ)D

    move-result-wide v18

    move-wide/from16 v14, v18

    .line 465
    .local v14, "leftPrefWidth":D
    move-object/from16 v18, v0

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/layout/BorderPane;->getRight()Ljavafx/scene/Node;

    move-result-object v19

    const-wide/high16 v20, -0x4010000000000000L    # -1.0

    const/16 v22, 0x0

    invoke-direct/range {v18 .. v22}, Ljavafx/scene/layout/BorderPane;->getAreaWidth(Ljavafx/scene/Node;DZ)D

    move-result-wide v18

    move-wide/from16 v16, v18

    .line 466
    .local v16, "rightPrefWidth":D
    move-object/from16 v18, v0

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/layout/BorderPane;->getCenter()Ljavafx/scene/Node;

    move-result-object v19

    const-wide/16 v20, 0x0

    move-wide/from16 v22, v1

    move-wide/from16 v24, v14

    sub-double v22, v22, v24

    move-wide/from16 v24, v16

    sub-double v22, v22, v24

    .line 467
    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(DD)D

    move-result-wide v20

    const/16 v22, 0x0

    .line 466
    invoke-direct/range {v18 .. v22}, Ljavafx/scene/layout/BorderPane;->getAreaHeight(Ljavafx/scene/Node;DZ)D

    move-result-wide v18

    move-wide/from16 v12, v18

    .line 472
    .end local v14    # "leftPrefWidth":D
    .end local v16    # "rightPrefWidth":D
    .local v12, "centerPrefHeight":D
    :goto_0
    move-wide/from16 v18, v12

    move-wide/from16 v20, v10

    move-wide/from16 v22, v8

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(DD)D

    move-result-wide v20

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->max(DD)D

    move-result-wide v18

    move-wide/from16 v14, v18

    .line 474
    .local v14, "middleAreaPrefHeigh":D
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v18

    move-wide/from16 v20, v4

    add-double v18, v18, v20

    move-wide/from16 v20, v14

    add-double v18, v18, v20

    move-wide/from16 v20, v6

    add-double v18, v18, v20

    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v20

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    .end local v0    # "this":Ljavafx/scene/layout/BorderPane;
    return-wide v0

    .line 469
    .end local v12    # "centerPrefHeight":D
    .end local v14    # "middleAreaPrefHeigh":D
    .restart local v0    # "this":Ljavafx/scene/layout/BorderPane;
    :cond_0
    move-object/from16 v18, v0

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/layout/BorderPane;->getCenter()Ljavafx/scene/Node;

    move-result-object v19

    const-wide/high16 v20, -0x4010000000000000L    # -1.0

    const/16 v22, 0x0

    invoke-direct/range {v18 .. v22}, Ljavafx/scene/layout/BorderPane;->getAreaHeight(Ljavafx/scene/Node;DZ)D

    move-result-wide v18

    move-wide/from16 v12, v18

    .restart local v12    # "centerPrefHeight":D
    goto :goto_0
.end method

.method protected computePrefWidth(D)D
    .locals 29

    .prologue
    .line 424
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/layout/BorderPane;
    move-wide/from16 v2, p1

    .local v2, "height":D
    move-object/from16 v20, v1

    move-object/from16 v21, v1

    invoke-virtual/range {v21 .. v21}, Ljavafx/scene/layout/BorderPane;->getTop()Ljavafx/scene/Node;

    move-result-object v21

    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    const/16 v24, 0x0

    invoke-direct/range {v20 .. v24}, Ljavafx/scene/layout/BorderPane;->getAreaWidth(Ljavafx/scene/Node;DZ)D

    move-result-wide v20

    move-wide/from16 v4, v20

    .line 425
    .local v4, "topPrefWidth":D
    move-object/from16 v20, v1

    move-object/from16 v21, v1

    invoke-virtual/range {v21 .. v21}, Ljavafx/scene/layout/BorderPane;->getBottom()Ljavafx/scene/Node;

    move-result-object v21

    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    const/16 v24, 0x0

    invoke-direct/range {v20 .. v24}, Ljavafx/scene/layout/BorderPane;->getAreaWidth(Ljavafx/scene/Node;DZ)D

    move-result-wide v20

    move-wide/from16 v6, v20

    .line 431
    .local v6, "bottomPrefWidth":D
    move-wide/from16 v20, v2

    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    cmpl-double v20, v20, v22

    if-eqz v20, :cond_1

    move-object/from16 v20, v1

    move-object/from16 v21, v1

    invoke-virtual/range {v21 .. v21}, Ljavafx/scene/layout/BorderPane;->getLeft()Ljavafx/scene/Node;

    move-result-object v21

    sget-object v22, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    invoke-direct/range {v20 .. v22}, Ljavafx/scene/layout/BorderPane;->childHasContentBias(Ljavafx/scene/Node;Ljavafx/geometry/Orientation;)Z

    move-result v20

    if-nez v20, :cond_0

    move-object/from16 v20, v1

    move-object/from16 v21, v1

    .line 432
    invoke-virtual/range {v21 .. v21}, Ljavafx/scene/layout/BorderPane;->getRight()Ljavafx/scene/Node;

    move-result-object v21

    sget-object v22, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    invoke-direct/range {v20 .. v22}, Ljavafx/scene/layout/BorderPane;->childHasContentBias(Ljavafx/scene/Node;Ljavafx/geometry/Orientation;)Z

    move-result v20

    if-nez v20, :cond_0

    move-object/from16 v20, v1

    move-object/from16 v21, v1

    .line 433
    invoke-virtual/range {v21 .. v21}, Ljavafx/scene/layout/BorderPane;->getCenter()Ljavafx/scene/Node;

    move-result-object v21

    sget-object v22, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    invoke-direct/range {v20 .. v22}, Ljavafx/scene/layout/BorderPane;->childHasContentBias(Ljavafx/scene/Node;Ljavafx/geometry/Orientation;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 434
    :cond_0
    move-object/from16 v20, v1

    move-object/from16 v21, v1

    invoke-virtual/range {v21 .. v21}, Ljavafx/scene/layout/BorderPane;->getTop()Ljavafx/scene/Node;

    move-result-object v21

    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    const/16 v24, 0x0

    invoke-direct/range {v20 .. v24}, Ljavafx/scene/layout/BorderPane;->getAreaHeight(Ljavafx/scene/Node;DZ)D

    move-result-wide v20

    move-wide/from16 v14, v20

    .line 435
    .local v14, "topPrefHeight":D
    move-object/from16 v20, v1

    move-object/from16 v21, v1

    invoke-virtual/range {v21 .. v21}, Ljavafx/scene/layout/BorderPane;->getBottom()Ljavafx/scene/Node;

    move-result-object v21

    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    const/16 v24, 0x0

    invoke-direct/range {v20 .. v24}, Ljavafx/scene/layout/BorderPane;->getAreaHeight(Ljavafx/scene/Node;DZ)D

    move-result-wide v20

    move-wide/from16 v16, v20

    .line 437
    .local v16, "bottomPrefHeight":D
    const-wide/16 v20, 0x0

    move-wide/from16 v22, v2

    move-wide/from16 v24, v14

    sub-double v22, v22, v24

    move-wide/from16 v24, v16

    sub-double v22, v22, v24

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(DD)D

    move-result-wide v20

    move-wide/from16 v18, v20

    .line 439
    .local v18, "middleAreaHeight":D
    move-object/from16 v20, v1

    move-object/from16 v21, v1

    invoke-virtual/range {v21 .. v21}, Ljavafx/scene/layout/BorderPane;->getLeft()Ljavafx/scene/Node;

    move-result-object v21

    move-wide/from16 v22, v18

    const/16 v24, 0x0

    invoke-direct/range {v20 .. v24}, Ljavafx/scene/layout/BorderPane;->getAreaWidth(Ljavafx/scene/Node;DZ)D

    move-result-wide v20

    move-wide/from16 v8, v20

    .line 440
    .local v8, "leftPrefWidth":D
    move-object/from16 v20, v1

    move-object/from16 v21, v1

    invoke-virtual/range {v21 .. v21}, Ljavafx/scene/layout/BorderPane;->getRight()Ljavafx/scene/Node;

    move-result-object v21

    move-wide/from16 v22, v18

    const/16 v24, 0x0

    invoke-direct/range {v20 .. v24}, Ljavafx/scene/layout/BorderPane;->getAreaWidth(Ljavafx/scene/Node;DZ)D

    move-result-wide v20

    move-wide/from16 v10, v20

    .line 441
    .local v10, "rightPrefWidth":D
    move-object/from16 v20, v1

    move-object/from16 v21, v1

    invoke-virtual/range {v21 .. v21}, Ljavafx/scene/layout/BorderPane;->getCenter()Ljavafx/scene/Node;

    move-result-object v21

    move-wide/from16 v22, v18

    const/16 v24, 0x0

    invoke-direct/range {v20 .. v24}, Ljavafx/scene/layout/BorderPane;->getAreaWidth(Ljavafx/scene/Node;DZ)D

    move-result-wide v20

    move-wide/from16 v12, v20

    .line 448
    .end local v14    # "topPrefHeight":D
    .end local v16    # "bottomPrefHeight":D
    .end local v18    # "middleAreaHeight":D
    .local v12, "centerPrefWidth":D
    :goto_0
    move-object/from16 v20, v1

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/layout/BorderPane;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v20

    move-object/from16 v14, v20

    .line 449
    .local v14, "insets":Ljavafx/geometry/Insets;
    move-object/from16 v20, v14

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v20

    move-wide/from16 v22, v8

    move-wide/from16 v24, v12

    add-double v22, v22, v24

    move-wide/from16 v24, v10

    add-double v22, v22, v24

    move-wide/from16 v24, v4

    move-wide/from16 v26, v6

    .line 450
    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->max(DD)D

    move-result-wide v24

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(DD)D

    move-result-wide v22

    add-double v20, v20, v22

    move-object/from16 v22, v14

    .line 451
    invoke-virtual/range {v22 .. v22}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v22

    add-double v20, v20, v22

    move-wide/from16 v1, v20

    .end local v1    # "this":Ljavafx/scene/layout/BorderPane;
    return-wide v1

    .line 443
    .end local v8    # "leftPrefWidth":D
    .end local v10    # "rightPrefWidth":D
    .end local v12    # "centerPrefWidth":D
    .end local v14    # "insets":Ljavafx/geometry/Insets;
    .restart local v1    # "this":Ljavafx/scene/layout/BorderPane;
    :cond_1
    move-object/from16 v20, v1

    move-object/from16 v21, v1

    invoke-virtual/range {v21 .. v21}, Ljavafx/scene/layout/BorderPane;->getLeft()Ljavafx/scene/Node;

    move-result-object v21

    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    const/16 v24, 0x0

    invoke-direct/range {v20 .. v24}, Ljavafx/scene/layout/BorderPane;->getAreaWidth(Ljavafx/scene/Node;DZ)D

    move-result-wide v20

    move-wide/from16 v8, v20

    .line 444
    .restart local v8    # "leftPrefWidth":D
    move-object/from16 v20, v1

    move-object/from16 v21, v1

    invoke-virtual/range {v21 .. v21}, Ljavafx/scene/layout/BorderPane;->getRight()Ljavafx/scene/Node;

    move-result-object v21

    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    const/16 v24, 0x0

    invoke-direct/range {v20 .. v24}, Ljavafx/scene/layout/BorderPane;->getAreaWidth(Ljavafx/scene/Node;DZ)D

    move-result-wide v20

    move-wide/from16 v10, v20

    .line 445
    .restart local v10    # "rightPrefWidth":D
    move-object/from16 v20, v1

    move-object/from16 v21, v1

    invoke-virtual/range {v21 .. v21}, Ljavafx/scene/layout/BorderPane;->getCenter()Ljavafx/scene/Node;

    move-result-object v21

    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    const/16 v24, 0x0

    invoke-direct/range {v20 .. v24}, Ljavafx/scene/layout/BorderPane;->getAreaWidth(Ljavafx/scene/Node;DZ)D

    move-result-wide v20

    move-wide/from16 v12, v20

    .restart local v12    # "centerPrefWidth":D
    goto :goto_0
.end method

.method public final getBottom()Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 297
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/BorderPane;->bottom:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BorderPane;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/layout/BorderPane;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/BorderPane;->bottom:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/Node;

    goto :goto_0
.end method

.method public final getCenter()Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 261
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/BorderPane;->center:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BorderPane;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/layout/BorderPane;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/BorderPane;->center:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/Node;

    goto :goto_0
.end method

.method public getContentBias()Ljavafx/geometry/Orientation;
    .locals 8

    .prologue
    .line 339
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderPane;
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/layout/BorderPane;->getCenter()Ljavafx/scene/Node;

    move-result-object v6

    move-object v1, v6

    .line 340
    .local v1, "c":Ljavafx/scene/Node;
    move-object v6, v1

    if-eqz v6, :cond_0

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/Node;->isManaged()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/Node;->getContentBias()Ljavafx/geometry/Orientation;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 341
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/Node;->getContentBias()Ljavafx/geometry/Orientation;

    move-result-object v6

    move-object v0, v6

    .line 364
    .end local v0    # "this":Ljavafx/scene/layout/BorderPane;
    :goto_0
    return-object v0

    .line 344
    .restart local v0    # "this":Ljavafx/scene/layout/BorderPane;
    :cond_0
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/layout/BorderPane;->getRight()Ljavafx/scene/Node;

    move-result-object v6

    move-object v2, v6

    .line 345
    .local v2, "r":Ljavafx/scene/Node;
    move-object v6, v2

    if-eqz v6, :cond_1

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/Node;->isManaged()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/Node;->getContentBias()Ljavafx/geometry/Orientation;

    move-result-object v6

    sget-object v7, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    if-ne v6, v7, :cond_1

    .line 346
    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/Node;->getContentBias()Ljavafx/geometry/Orientation;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 349
    :cond_1
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/layout/BorderPane;->getLeft()Ljavafx/scene/Node;

    move-result-object v6

    move-object v3, v6

    .line 350
    .local v3, "l":Ljavafx/scene/Node;
    move-object v6, v3

    if-eqz v6, :cond_2

    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/scene/Node;->isManaged()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/scene/Node;->getContentBias()Ljavafx/geometry/Orientation;

    move-result-object v6

    sget-object v7, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    if-ne v6, v7, :cond_2

    .line 351
    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/scene/Node;->getContentBias()Ljavafx/geometry/Orientation;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 353
    :cond_2
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/layout/BorderPane;->getBottom()Ljavafx/scene/Node;

    move-result-object v6

    move-object v4, v6

    .line 354
    .local v4, "b":Ljavafx/scene/Node;
    move-object v6, v4

    if-eqz v6, :cond_3

    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/scene/Node;->isManaged()Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/scene/Node;->getContentBias()Ljavafx/geometry/Orientation;

    move-result-object v6

    sget-object v7, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    if-ne v6, v7, :cond_3

    .line 355
    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/scene/Node;->getContentBias()Ljavafx/geometry/Orientation;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 358
    :cond_3
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/layout/BorderPane;->getTop()Ljavafx/scene/Node;

    move-result-object v6

    move-object v5, v6

    .line 359
    .local v5, "t":Ljavafx/scene/Node;
    move-object v6, v5

    if-eqz v6, :cond_4

    move-object v6, v5

    invoke-virtual {v6}, Ljavafx/scene/Node;->isManaged()Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v6, v5

    invoke-virtual {v6}, Ljavafx/scene/Node;->getContentBias()Ljavafx/geometry/Orientation;

    move-result-object v6

    sget-object v7, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    if-ne v6, v7, :cond_4

    .line 360
    move-object v6, v5

    invoke-virtual {v6}, Ljavafx/scene/Node;->getContentBias()Ljavafx/geometry/Orientation;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 364
    :cond_4
    const/4 v6, 0x0

    move-object v0, v6

    goto/16 :goto_0
.end method

.method public final getLeft()Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 315
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/BorderPane;->left:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BorderPane;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/layout/BorderPane;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/BorderPane;->left:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/Node;

    goto :goto_0
.end method

.method public final getRight()Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 333
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/BorderPane;->right:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BorderPane;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/layout/BorderPane;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/BorderPane;->right:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/Node;

    goto :goto_0
.end method

.method public final getTop()Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 279
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/BorderPane;->top:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BorderPane;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/layout/BorderPane;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/BorderPane;->top:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/Node;

    goto :goto_0
.end method

.method protected layoutChildren()V
    .locals 53

    .prologue
    .line 478
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/layout/BorderPane;
    move-object/from16 v38, v3

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/layout/BorderPane;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v38

    move-object/from16 v4, v38

    .line 479
    .local v4, "insets":Ljavafx/geometry/Insets;
    move-object/from16 v38, v3

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/layout/BorderPane;->getWidth()D

    move-result-wide v38

    move-wide/from16 v5, v38

    .line 480
    .local v5, "width":D
    move-object/from16 v38, v3

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/layout/BorderPane;->getHeight()D

    move-result-wide v38

    move-wide/from16 v7, v38

    .line 481
    .local v7, "height":D
    move-object/from16 v38, v3

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/layout/BorderPane;->getContentBias()Ljavafx/geometry/Orientation;

    move-result-object v38

    move-object/from16 v9, v38

    .line 483
    .local v9, "bias":Ljavafx/geometry/Orientation;
    move-object/from16 v38, v9

    if-nez v38, :cond_7

    .line 484
    move-object/from16 v38, v3

    const-wide/high16 v39, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v38 .. v40}, Ljavafx/scene/layout/BorderPane;->minWidth(D)D

    move-result-wide v38

    move-wide/from16 v10, v38

    .line 485
    .local v10, "minWidth":D
    move-object/from16 v38, v3

    const-wide/high16 v39, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v38 .. v40}, Ljavafx/scene/layout/BorderPane;->minHeight(D)D

    move-result-wide v38

    move-wide/from16 v12, v38

    .line 486
    .local v12, "minHeight":D
    move-wide/from16 v38, v5

    move-wide/from16 v40, v10

    cmpg-double v38, v38, v40

    if-gez v38, :cond_5

    move-wide/from16 v38, v10

    :goto_0
    move-wide/from16 v5, v38

    .line 487
    move-wide/from16 v38, v7

    move-wide/from16 v40, v12

    cmpg-double v38, v38, v40

    if-gez v38, :cond_6

    move-wide/from16 v38, v12

    :goto_1
    move-wide/from16 v7, v38

    .line 500
    .end local v10    # "minWidth":D
    .end local v12    # "minHeight":D
    :goto_2
    move-object/from16 v38, v4

    invoke-virtual/range {v38 .. v38}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v38

    move-wide/from16 v10, v38

    .line 501
    .local v10, "insideX":D
    move-object/from16 v38, v4

    invoke-virtual/range {v38 .. v38}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v38

    move-wide/from16 v12, v38

    .line 502
    .local v12, "insideY":D
    move-wide/from16 v38, v5

    move-wide/from16 v40, v10

    sub-double v38, v38, v40

    move-object/from16 v40, v4

    invoke-virtual/range {v40 .. v40}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v40

    sub-double v38, v38, v40

    move-wide/from16 v14, v38

    .line 503
    .local v14, "insideWidth":D
    move-wide/from16 v38, v7

    move-wide/from16 v40, v12

    sub-double v38, v38, v40

    move-object/from16 v40, v4

    invoke-virtual/range {v40 .. v40}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v40

    sub-double v38, v38, v40

    move-wide/from16 v16, v38

    .line 504
    .local v16, "insideHeight":D
    move-object/from16 v38, v3

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/layout/BorderPane;->getCenter()Ljavafx/scene/Node;

    move-result-object v38

    move-object/from16 v18, v38

    .line 505
    .local v18, "c":Ljavafx/scene/Node;
    move-object/from16 v38, v3

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/layout/BorderPane;->getRight()Ljavafx/scene/Node;

    move-result-object v38

    move-object/from16 v19, v38

    .line 506
    .local v19, "r":Ljavafx/scene/Node;
    move-object/from16 v38, v3

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/layout/BorderPane;->getBottom()Ljavafx/scene/Node;

    move-result-object v38

    move-object/from16 v20, v38

    .line 507
    .local v20, "b":Ljavafx/scene/Node;
    move-object/from16 v38, v3

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/layout/BorderPane;->getLeft()Ljavafx/scene/Node;

    move-result-object v38

    move-object/from16 v21, v38

    .line 508
    .local v21, "l":Ljavafx/scene/Node;
    move-object/from16 v38, v3

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/layout/BorderPane;->getTop()Ljavafx/scene/Node;

    move-result-object v38

    move-object/from16 v22, v38

    .line 510
    .local v22, "t":Ljavafx/scene/Node;
    const-wide/16 v38, 0x0

    move-wide/from16 v23, v38

    .line 511
    .local v23, "topHeight":D
    move-object/from16 v38, v22

    if-eqz v38, :cond_0

    move-object/from16 v38, v22

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/Node;->isManaged()Z

    move-result v38

    if-eqz v38, :cond_0

    .line 512
    move-object/from16 v38, v22

    invoke-static/range {v38 .. v38}, Ljavafx/scene/layout/BorderPane;->getNodeMargin(Ljavafx/scene/Node;)Ljavafx/geometry/Insets;

    move-result-object v38

    move-object/from16 v25, v38

    .line 513
    .local v25, "topMargin":Ljavafx/geometry/Insets;
    move-object/from16 v38, v3

    move-wide/from16 v39, v14

    move-object/from16 v41, v25

    invoke-virtual/range {v38 .. v41}, Ljavafx/scene/layout/BorderPane;->adjustWidthByMargin(DLjavafx/geometry/Insets;)D

    move-result-wide v38

    move-wide/from16 v26, v38

    .line 514
    .local v26, "adjustedWidth":D
    move-object/from16 v38, v3

    move-wide/from16 v39, v16

    move-object/from16 v41, v25

    invoke-virtual/range {v38 .. v41}, Ljavafx/scene/layout/BorderPane;->adjustHeightByMargin(DLjavafx/geometry/Insets;)D

    move-result-wide v38

    move-wide/from16 v28, v38

    .line 515
    .local v28, "adjustedHeight":D
    move-object/from16 v38, v3

    move-object/from16 v39, v22

    move-wide/from16 v40, v26

    invoke-virtual/range {v39 .. v41}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v39

    invoke-virtual/range {v38 .. v40}, Ljavafx/scene/layout/BorderPane;->snapSize(D)D

    move-result-wide v38

    move-wide/from16 v23, v38

    .line 516
    move-wide/from16 v38, v23

    move-wide/from16 v40, v28

    invoke-static/range {v38 .. v41}, Ljava/lang/Math;->min(DD)D

    move-result-wide v38

    move-wide/from16 v23, v38

    .line 517
    move-object/from16 v38, v22

    move-wide/from16 v39, v26

    move-wide/from16 v41, v23

    const/16 v43, 0x1

    const/16 v44, 0x1

    sget-object v45, Ljavafx/scene/layout/BorderPane;->TEMP_VEC2D:Lcom/sun/javafx/geom/Vec2d;

    invoke-static/range {v38 .. v45}, Ljavafx/scene/layout/BorderPane;->boundedNodeSizeWithBias(Ljavafx/scene/Node;DDZZLcom/sun/javafx/geom/Vec2d;)Lcom/sun/javafx/geom/Vec2d;

    move-result-object v38

    move-object/from16 v30, v38

    .line 519
    .local v30, "result":Lcom/sun/javafx/geom/Vec2d;
    move-object/from16 v38, v3

    move-object/from16 v39, v30

    move-object/from16 v0, v39

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec2d;->y:D

    move-wide/from16 v39, v0

    invoke-virtual/range {v38 .. v40}, Ljavafx/scene/layout/BorderPane;->snapSize(D)D

    move-result-wide v38

    move-wide/from16 v23, v38

    .line 520
    move-object/from16 v38, v22

    move-object/from16 v39, v3

    move-object/from16 v40, v30

    move-object/from16 v0, v40

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec2d;->x:D

    move-wide/from16 v40, v0

    invoke-virtual/range {v39 .. v41}, Ljavafx/scene/layout/BorderPane;->snapSize(D)D

    move-result-wide v39

    move-wide/from16 v41, v23

    invoke-virtual/range {v38 .. v42}, Ljavafx/scene/Node;->resize(DD)V

    .line 522
    move-object/from16 v38, v3

    move-object/from16 v39, v25

    invoke-virtual/range {v39 .. v39}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v39

    invoke-virtual/range {v38 .. v40}, Ljavafx/scene/layout/BorderPane;->snapSpace(D)D

    move-result-wide v38

    move-wide/from16 v40, v23

    add-double v38, v38, v40

    move-object/from16 v40, v3

    move-object/from16 v41, v25

    invoke-virtual/range {v41 .. v41}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v41

    invoke-virtual/range {v40 .. v42}, Ljavafx/scene/layout/BorderPane;->snapSpace(D)D

    move-result-wide v40

    add-double v38, v38, v40

    move-wide/from16 v23, v38

    .line 523
    move-object/from16 v38, v22

    invoke-static/range {v38 .. v38}, Ljavafx/scene/layout/BorderPane;->getAlignment(Ljavafx/scene/Node;)Ljavafx/geometry/Pos;

    move-result-object v38

    move-object/from16 v31, v38

    .line 524
    .local v31, "alignment":Ljavafx/geometry/Pos;
    move-object/from16 v38, v22

    move-wide/from16 v39, v10

    move-wide/from16 v41, v12

    move-wide/from16 v43, v14

    move-wide/from16 v45, v23

    const-wide/16 v47, 0x0

    move-object/from16 v49, v25

    move-object/from16 v50, v31

    if-eqz v50, :cond_d

    move-object/from16 v50, v31

    .line 526
    invoke-virtual/range {v50 .. v50}, Ljavafx/geometry/Pos;->getHpos()Ljavafx/geometry/HPos;

    move-result-object v50

    :goto_3
    move-object/from16 v51, v31

    if-eqz v51, :cond_e

    move-object/from16 v51, v31

    .line 527
    invoke-virtual/range {v51 .. v51}, Ljavafx/geometry/Pos;->getVpos()Ljavafx/geometry/VPos;

    move-result-object v51

    :goto_4
    move-object/from16 v52, v3

    invoke-virtual/range {v52 .. v52}, Ljavafx/scene/layout/BorderPane;->isSnapToPixel()Z

    move-result v52

    .line 524
    invoke-static/range {v38 .. v52}, Ljavafx/scene/layout/BorderPane;->positionInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/Insets;Ljavafx/geometry/HPos;Ljavafx/geometry/VPos;Z)V

    .line 530
    .end local v25    # "topMargin":Ljavafx/geometry/Insets;
    .end local v26    # "adjustedWidth":D
    .end local v28    # "adjustedHeight":D
    .end local v30    # "result":Lcom/sun/javafx/geom/Vec2d;
    .end local v31    # "alignment":Ljavafx/geometry/Pos;
    :cond_0
    const-wide/16 v38, 0x0

    move-wide/from16 v25, v38

    .line 531
    .local v25, "bottomHeight":D
    move-object/from16 v38, v20

    if-eqz v38, :cond_1

    move-object/from16 v38, v20

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/Node;->isManaged()Z

    move-result v38

    if-eqz v38, :cond_1

    .line 532
    move-object/from16 v38, v20

    invoke-static/range {v38 .. v38}, Ljavafx/scene/layout/BorderPane;->getNodeMargin(Ljavafx/scene/Node;)Ljavafx/geometry/Insets;

    move-result-object v38

    move-object/from16 v27, v38

    .line 533
    .local v27, "bottomMargin":Ljavafx/geometry/Insets;
    move-object/from16 v38, v3

    move-wide/from16 v39, v14

    move-object/from16 v41, v27

    invoke-virtual/range {v38 .. v41}, Ljavafx/scene/layout/BorderPane;->adjustWidthByMargin(DLjavafx/geometry/Insets;)D

    move-result-wide v38

    move-wide/from16 v28, v38

    .line 534
    .local v28, "adjustedWidth":D
    move-object/from16 v38, v3

    move-wide/from16 v39, v16

    move-wide/from16 v41, v23

    sub-double v39, v39, v41

    move-object/from16 v41, v27

    invoke-virtual/range {v38 .. v41}, Ljavafx/scene/layout/BorderPane;->adjustHeightByMargin(DLjavafx/geometry/Insets;)D

    move-result-wide v38

    move-wide/from16 v30, v38

    .line 535
    .local v30, "adjustedHeight":D
    move-object/from16 v38, v3

    move-object/from16 v39, v20

    move-wide/from16 v40, v28

    invoke-virtual/range {v39 .. v41}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v39

    invoke-virtual/range {v38 .. v40}, Ljavafx/scene/layout/BorderPane;->snapSize(D)D

    move-result-wide v38

    move-wide/from16 v25, v38

    .line 536
    move-wide/from16 v38, v25

    move-wide/from16 v40, v30

    invoke-static/range {v38 .. v41}, Ljava/lang/Math;->min(DD)D

    move-result-wide v38

    move-wide/from16 v25, v38

    .line 537
    move-object/from16 v38, v20

    move-wide/from16 v39, v28

    move-wide/from16 v41, v25

    const/16 v43, 0x1

    const/16 v44, 0x1

    sget-object v45, Ljavafx/scene/layout/BorderPane;->TEMP_VEC2D:Lcom/sun/javafx/geom/Vec2d;

    invoke-static/range {v38 .. v45}, Ljavafx/scene/layout/BorderPane;->boundedNodeSizeWithBias(Ljavafx/scene/Node;DDZZLcom/sun/javafx/geom/Vec2d;)Lcom/sun/javafx/geom/Vec2d;

    move-result-object v38

    move-object/from16 v32, v38

    .line 539
    .local v32, "result":Lcom/sun/javafx/geom/Vec2d;
    move-object/from16 v38, v3

    move-object/from16 v39, v32

    move-object/from16 v0, v39

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec2d;->y:D

    move-wide/from16 v39, v0

    invoke-virtual/range {v38 .. v40}, Ljavafx/scene/layout/BorderPane;->snapSize(D)D

    move-result-wide v38

    move-wide/from16 v25, v38

    .line 540
    move-object/from16 v38, v20

    move-object/from16 v39, v3

    move-object/from16 v40, v32

    move-object/from16 v0, v40

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec2d;->x:D

    move-wide/from16 v40, v0

    invoke-virtual/range {v39 .. v41}, Ljavafx/scene/layout/BorderPane;->snapSize(D)D

    move-result-wide v39

    move-wide/from16 v41, v25

    invoke-virtual/range {v38 .. v42}, Ljavafx/scene/Node;->resize(DD)V

    .line 542
    move-object/from16 v38, v3

    move-object/from16 v39, v27

    invoke-virtual/range {v39 .. v39}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v39

    invoke-virtual/range {v38 .. v40}, Ljavafx/scene/layout/BorderPane;->snapSpace(D)D

    move-result-wide v38

    move-wide/from16 v40, v25

    add-double v38, v38, v40

    move-object/from16 v40, v3

    move-object/from16 v41, v27

    invoke-virtual/range {v41 .. v41}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v41

    invoke-virtual/range {v40 .. v42}, Ljavafx/scene/layout/BorderPane;->snapSpace(D)D

    move-result-wide v40

    add-double v38, v38, v40

    move-wide/from16 v25, v38

    .line 543
    move-object/from16 v38, v20

    invoke-static/range {v38 .. v38}, Ljavafx/scene/layout/BorderPane;->getAlignment(Ljavafx/scene/Node;)Ljavafx/geometry/Pos;

    move-result-object v38

    move-object/from16 v33, v38

    .line 544
    .local v33, "alignment":Ljavafx/geometry/Pos;
    move-object/from16 v38, v20

    move-wide/from16 v39, v10

    move-wide/from16 v41, v12

    move-wide/from16 v43, v16

    add-double v41, v41, v43

    move-wide/from16 v43, v25

    sub-double v41, v41, v43

    move-wide/from16 v43, v14

    move-wide/from16 v45, v25

    const-wide/16 v47, 0x0

    move-object/from16 v49, v27

    move-object/from16 v50, v33

    if-eqz v50, :cond_f

    move-object/from16 v50, v33

    .line 547
    invoke-virtual/range {v50 .. v50}, Ljavafx/geometry/Pos;->getHpos()Ljavafx/geometry/HPos;

    move-result-object v50

    :goto_5
    move-object/from16 v51, v33

    if-eqz v51, :cond_10

    move-object/from16 v51, v33

    .line 548
    invoke-virtual/range {v51 .. v51}, Ljavafx/geometry/Pos;->getVpos()Ljavafx/geometry/VPos;

    move-result-object v51

    :goto_6
    move-object/from16 v52, v3

    invoke-virtual/range {v52 .. v52}, Ljavafx/scene/layout/BorderPane;->isSnapToPixel()Z

    move-result v52

    .line 544
    invoke-static/range {v38 .. v52}, Ljavafx/scene/layout/BorderPane;->positionInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/Insets;Ljavafx/geometry/HPos;Ljavafx/geometry/VPos;Z)V

    .line 551
    .end local v27    # "bottomMargin":Ljavafx/geometry/Insets;
    .end local v28    # "adjustedWidth":D
    .end local v30    # "adjustedHeight":D
    .end local v32    # "result":Lcom/sun/javafx/geom/Vec2d;
    .end local v33    # "alignment":Ljavafx/geometry/Pos;
    :cond_1
    const-wide/16 v38, 0x0

    move-wide/from16 v27, v38

    .line 552
    .local v27, "leftWidth":D
    move-object/from16 v38, v21

    if-eqz v38, :cond_2

    move-object/from16 v38, v21

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/Node;->isManaged()Z

    move-result v38

    if-eqz v38, :cond_2

    .line 553
    move-object/from16 v38, v21

    invoke-static/range {v38 .. v38}, Ljavafx/scene/layout/BorderPane;->getNodeMargin(Ljavafx/scene/Node;)Ljavafx/geometry/Insets;

    move-result-object v38

    move-object/from16 v29, v38

    .line 554
    .local v29, "leftMargin":Ljavafx/geometry/Insets;
    move-object/from16 v38, v3

    move-wide/from16 v39, v14

    move-object/from16 v41, v29

    invoke-virtual/range {v38 .. v41}, Ljavafx/scene/layout/BorderPane;->adjustWidthByMargin(DLjavafx/geometry/Insets;)D

    move-result-wide v38

    move-wide/from16 v30, v38

    .line 555
    .local v30, "adjustedWidth":D
    move-object/from16 v38, v3

    move-wide/from16 v39, v16

    move-wide/from16 v41, v23

    sub-double v39, v39, v41

    move-wide/from16 v41, v25

    sub-double v39, v39, v41

    move-object/from16 v41, v29

    invoke-virtual/range {v38 .. v41}, Ljavafx/scene/layout/BorderPane;->adjustHeightByMargin(DLjavafx/geometry/Insets;)D

    move-result-wide v38

    move-wide/from16 v32, v38

    .line 556
    .local v32, "adjustedHeight":D
    move-object/from16 v38, v3

    move-object/from16 v39, v21

    move-wide/from16 v40, v32

    invoke-virtual/range {v39 .. v41}, Ljavafx/scene/Node;->prefWidth(D)D

    move-result-wide v39

    invoke-virtual/range {v38 .. v40}, Ljavafx/scene/layout/BorderPane;->snapSize(D)D

    move-result-wide v38

    move-wide/from16 v27, v38

    .line 557
    move-wide/from16 v38, v27

    move-wide/from16 v40, v30

    invoke-static/range {v38 .. v41}, Ljava/lang/Math;->min(DD)D

    move-result-wide v38

    move-wide/from16 v27, v38

    .line 558
    move-object/from16 v38, v21

    move-wide/from16 v39, v27

    move-wide/from16 v41, v32

    const/16 v43, 0x1

    const/16 v44, 0x1

    sget-object v45, Ljavafx/scene/layout/BorderPane;->TEMP_VEC2D:Lcom/sun/javafx/geom/Vec2d;

    invoke-static/range {v38 .. v45}, Ljavafx/scene/layout/BorderPane;->boundedNodeSizeWithBias(Ljavafx/scene/Node;DDZZLcom/sun/javafx/geom/Vec2d;)Lcom/sun/javafx/geom/Vec2d;

    move-result-object v38

    move-object/from16 v34, v38

    .line 560
    .local v34, "result":Lcom/sun/javafx/geom/Vec2d;
    move-object/from16 v38, v3

    move-object/from16 v39, v34

    move-object/from16 v0, v39

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec2d;->x:D

    move-wide/from16 v39, v0

    invoke-virtual/range {v38 .. v40}, Ljavafx/scene/layout/BorderPane;->snapSize(D)D

    move-result-wide v38

    move-wide/from16 v27, v38

    .line 561
    move-object/from16 v38, v21

    move-wide/from16 v39, v27

    move-object/from16 v41, v3

    move-object/from16 v42, v34

    move-object/from16 v0, v42

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec2d;->y:D

    move-wide/from16 v42, v0

    invoke-virtual/range {v41 .. v43}, Ljavafx/scene/layout/BorderPane;->snapSize(D)D

    move-result-wide v41

    invoke-virtual/range {v38 .. v42}, Ljavafx/scene/Node;->resize(DD)V

    .line 563
    move-object/from16 v38, v3

    move-object/from16 v39, v29

    invoke-virtual/range {v39 .. v39}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v39

    invoke-virtual/range {v38 .. v40}, Ljavafx/scene/layout/BorderPane;->snapSpace(D)D

    move-result-wide v38

    move-wide/from16 v40, v27

    add-double v38, v38, v40

    move-object/from16 v40, v3

    move-object/from16 v41, v29

    invoke-virtual/range {v41 .. v41}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v41

    invoke-virtual/range {v40 .. v42}, Ljavafx/scene/layout/BorderPane;->snapSpace(D)D

    move-result-wide v40

    add-double v38, v38, v40

    move-wide/from16 v27, v38

    .line 564
    move-object/from16 v38, v21

    invoke-static/range {v38 .. v38}, Ljavafx/scene/layout/BorderPane;->getAlignment(Ljavafx/scene/Node;)Ljavafx/geometry/Pos;

    move-result-object v38

    move-object/from16 v35, v38

    .line 565
    .local v35, "alignment":Ljavafx/geometry/Pos;
    move-object/from16 v38, v21

    move-wide/from16 v39, v10

    move-wide/from16 v41, v12

    move-wide/from16 v43, v23

    add-double v41, v41, v43

    move-wide/from16 v43, v27

    move-wide/from16 v45, v16

    move-wide/from16 v47, v23

    sub-double v45, v45, v47

    move-wide/from16 v47, v25

    sub-double v45, v45, v47

    const-wide/16 v47, 0x0

    move-object/from16 v49, v29

    move-object/from16 v50, v35

    if-eqz v50, :cond_11

    move-object/from16 v50, v35

    .line 568
    invoke-virtual/range {v50 .. v50}, Ljavafx/geometry/Pos;->getHpos()Ljavafx/geometry/HPos;

    move-result-object v50

    :goto_7
    move-object/from16 v51, v35

    if-eqz v51, :cond_12

    move-object/from16 v51, v35

    .line 569
    invoke-virtual/range {v51 .. v51}, Ljavafx/geometry/Pos;->getVpos()Ljavafx/geometry/VPos;

    move-result-object v51

    :goto_8
    move-object/from16 v52, v3

    invoke-virtual/range {v52 .. v52}, Ljavafx/scene/layout/BorderPane;->isSnapToPixel()Z

    move-result v52

    .line 565
    invoke-static/range {v38 .. v52}, Ljavafx/scene/layout/BorderPane;->positionInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/Insets;Ljavafx/geometry/HPos;Ljavafx/geometry/VPos;Z)V

    .line 572
    .end local v29    # "leftMargin":Ljavafx/geometry/Insets;
    .end local v30    # "adjustedWidth":D
    .end local v32    # "adjustedHeight":D
    .end local v34    # "result":Lcom/sun/javafx/geom/Vec2d;
    .end local v35    # "alignment":Ljavafx/geometry/Pos;
    :cond_2
    const-wide/16 v38, 0x0

    move-wide/from16 v29, v38

    .line 573
    .local v29, "rightWidth":D
    move-object/from16 v38, v19

    if-eqz v38, :cond_3

    move-object/from16 v38, v19

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/Node;->isManaged()Z

    move-result v38

    if-eqz v38, :cond_3

    .line 574
    move-object/from16 v38, v19

    invoke-static/range {v38 .. v38}, Ljavafx/scene/layout/BorderPane;->getNodeMargin(Ljavafx/scene/Node;)Ljavafx/geometry/Insets;

    move-result-object v38

    move-object/from16 v31, v38

    .line 575
    .local v31, "rightMargin":Ljavafx/geometry/Insets;
    move-object/from16 v38, v3

    move-wide/from16 v39, v14

    move-wide/from16 v41, v27

    sub-double v39, v39, v41

    move-object/from16 v41, v31

    invoke-virtual/range {v38 .. v41}, Ljavafx/scene/layout/BorderPane;->adjustWidthByMargin(DLjavafx/geometry/Insets;)D

    move-result-wide v38

    move-wide/from16 v32, v38

    .line 576
    .local v32, "adjustedWidth":D
    move-object/from16 v38, v3

    move-wide/from16 v39, v16

    move-wide/from16 v41, v23

    sub-double v39, v39, v41

    move-wide/from16 v41, v25

    sub-double v39, v39, v41

    move-object/from16 v41, v31

    invoke-virtual/range {v38 .. v41}, Ljavafx/scene/layout/BorderPane;->adjustHeightByMargin(DLjavafx/geometry/Insets;)D

    move-result-wide v38

    move-wide/from16 v34, v38

    .line 578
    .local v34, "adjustedHeight":D
    move-object/from16 v38, v3

    move-object/from16 v39, v19

    move-wide/from16 v40, v34

    invoke-virtual/range {v39 .. v41}, Ljavafx/scene/Node;->prefWidth(D)D

    move-result-wide v39

    invoke-virtual/range {v38 .. v40}, Ljavafx/scene/layout/BorderPane;->snapSize(D)D

    move-result-wide v38

    move-wide/from16 v29, v38

    .line 579
    move-wide/from16 v38, v29

    move-wide/from16 v40, v32

    invoke-static/range {v38 .. v41}, Ljava/lang/Math;->min(DD)D

    move-result-wide v38

    move-wide/from16 v29, v38

    .line 580
    move-object/from16 v38, v19

    move-wide/from16 v39, v29

    move-wide/from16 v41, v34

    const/16 v43, 0x1

    const/16 v44, 0x1

    sget-object v45, Ljavafx/scene/layout/BorderPane;->TEMP_VEC2D:Lcom/sun/javafx/geom/Vec2d;

    invoke-static/range {v38 .. v45}, Ljavafx/scene/layout/BorderPane;->boundedNodeSizeWithBias(Ljavafx/scene/Node;DDZZLcom/sun/javafx/geom/Vec2d;)Lcom/sun/javafx/geom/Vec2d;

    move-result-object v38

    move-object/from16 v36, v38

    .line 582
    .local v36, "result":Lcom/sun/javafx/geom/Vec2d;
    move-object/from16 v38, v3

    move-object/from16 v39, v36

    move-object/from16 v0, v39

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec2d;->x:D

    move-wide/from16 v39, v0

    invoke-virtual/range {v38 .. v40}, Ljavafx/scene/layout/BorderPane;->snapSize(D)D

    move-result-wide v38

    move-wide/from16 v29, v38

    .line 583
    move-object/from16 v38, v19

    move-wide/from16 v39, v29

    move-object/from16 v41, v3

    move-object/from16 v42, v36

    move-object/from16 v0, v42

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec2d;->y:D

    move-wide/from16 v42, v0

    invoke-virtual/range {v41 .. v43}, Ljavafx/scene/layout/BorderPane;->snapSize(D)D

    move-result-wide v41

    invoke-virtual/range {v38 .. v42}, Ljavafx/scene/Node;->resize(DD)V

    .line 585
    move-object/from16 v38, v3

    move-object/from16 v39, v31

    invoke-virtual/range {v39 .. v39}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v39

    invoke-virtual/range {v38 .. v40}, Ljavafx/scene/layout/BorderPane;->snapSpace(D)D

    move-result-wide v38

    move-wide/from16 v40, v29

    add-double v38, v38, v40

    move-object/from16 v40, v3

    move-object/from16 v41, v31

    invoke-virtual/range {v41 .. v41}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v41

    invoke-virtual/range {v40 .. v42}, Ljavafx/scene/layout/BorderPane;->snapSpace(D)D

    move-result-wide v40

    add-double v38, v38, v40

    move-wide/from16 v29, v38

    .line 586
    move-object/from16 v38, v19

    invoke-static/range {v38 .. v38}, Ljavafx/scene/layout/BorderPane;->getAlignment(Ljavafx/scene/Node;)Ljavafx/geometry/Pos;

    move-result-object v38

    move-object/from16 v37, v38

    .line 587
    .local v37, "alignment":Ljavafx/geometry/Pos;
    move-object/from16 v38, v19

    move-wide/from16 v39, v10

    move-wide/from16 v41, v14

    add-double v39, v39, v41

    move-wide/from16 v41, v29

    sub-double v39, v39, v41

    move-wide/from16 v41, v12

    move-wide/from16 v43, v23

    add-double v41, v41, v43

    move-wide/from16 v43, v29

    move-wide/from16 v45, v16

    move-wide/from16 v47, v23

    sub-double v45, v45, v47

    move-wide/from16 v47, v25

    sub-double v45, v45, v47

    const-wide/16 v47, 0x0

    move-object/from16 v49, v31

    move-object/from16 v50, v37

    if-eqz v50, :cond_13

    move-object/from16 v50, v37

    .line 590
    invoke-virtual/range {v50 .. v50}, Ljavafx/geometry/Pos;->getHpos()Ljavafx/geometry/HPos;

    move-result-object v50

    :goto_9
    move-object/from16 v51, v37

    if-eqz v51, :cond_14

    move-object/from16 v51, v37

    .line 591
    invoke-virtual/range {v51 .. v51}, Ljavafx/geometry/Pos;->getVpos()Ljavafx/geometry/VPos;

    move-result-object v51

    :goto_a
    move-object/from16 v52, v3

    invoke-virtual/range {v52 .. v52}, Ljavafx/scene/layout/BorderPane;->isSnapToPixel()Z

    move-result v52

    .line 587
    invoke-static/range {v38 .. v52}, Ljavafx/scene/layout/BorderPane;->positionInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/Insets;Ljavafx/geometry/HPos;Ljavafx/geometry/VPos;Z)V

    .line 594
    .end local v31    # "rightMargin":Ljavafx/geometry/Insets;
    .end local v32    # "adjustedWidth":D
    .end local v34    # "adjustedHeight":D
    .end local v36    # "result":Lcom/sun/javafx/geom/Vec2d;
    .end local v37    # "alignment":Ljavafx/geometry/Pos;
    :cond_3
    move-object/from16 v38, v18

    if-eqz v38, :cond_4

    move-object/from16 v38, v18

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/Node;->isManaged()Z

    move-result v38

    if-eqz v38, :cond_4

    .line 595
    move-object/from16 v38, v18

    invoke-static/range {v38 .. v38}, Ljavafx/scene/layout/BorderPane;->getAlignment(Ljavafx/scene/Node;)Ljavafx/geometry/Pos;

    move-result-object v38

    move-object/from16 v31, v38

    .line 597
    .local v31, "alignment":Ljavafx/geometry/Pos;
    move-object/from16 v38, v3

    move-object/from16 v39, v18

    move-wide/from16 v40, v10

    move-wide/from16 v42, v27

    add-double v40, v40, v42

    move-wide/from16 v42, v12

    move-wide/from16 v44, v23

    add-double v42, v42, v44

    move-wide/from16 v44, v14

    move-wide/from16 v46, v27

    sub-double v44, v44, v46

    move-wide/from16 v46, v29

    sub-double v44, v44, v46

    move-wide/from16 v46, v16

    move-wide/from16 v48, v23

    sub-double v46, v46, v48

    move-wide/from16 v48, v25

    sub-double v46, v46, v48

    const-wide/16 v48, 0x0

    move-object/from16 v50, v18

    .line 600
    invoke-static/range {v50 .. v50}, Ljavafx/scene/layout/BorderPane;->getNodeMargin(Ljavafx/scene/Node;)Ljavafx/geometry/Insets;

    move-result-object v50

    move-object/from16 v51, v31

    if-eqz v51, :cond_15

    move-object/from16 v51, v31

    .line 601
    invoke-virtual/range {v51 .. v51}, Ljavafx/geometry/Pos;->getHpos()Ljavafx/geometry/HPos;

    move-result-object v51

    :goto_b
    move-object/from16 v52, v31

    if-eqz v52, :cond_16

    move-object/from16 v52, v31

    .line 602
    invoke-virtual/range {v52 .. v52}, Ljavafx/geometry/Pos;->getVpos()Ljavafx/geometry/VPos;

    move-result-object v52

    .line 597
    :goto_c
    invoke-virtual/range {v38 .. v52}, Ljavafx/scene/layout/BorderPane;->layoutInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/Insets;Ljavafx/geometry/HPos;Ljavafx/geometry/VPos;)V

    .line 604
    .end local v31    # "alignment":Ljavafx/geometry/Pos;
    :cond_4
    return-void

    .line 486
    .end local v14    # "insideWidth":D
    .end local v16    # "insideHeight":D
    .end local v18    # "c":Ljavafx/scene/Node;
    .end local v19    # "r":Ljavafx/scene/Node;
    .end local v20    # "b":Ljavafx/scene/Node;
    .end local v21    # "l":Ljavafx/scene/Node;
    .end local v22    # "t":Ljavafx/scene/Node;
    .end local v23    # "topHeight":D
    .end local v25    # "bottomHeight":D
    .end local v27    # "leftWidth":D
    .end local v29    # "rightWidth":D
    .local v10, "minWidth":D
    .local v12, "minHeight":D
    :cond_5
    move-wide/from16 v38, v5

    goto/16 :goto_0

    .line 487
    :cond_6
    move-wide/from16 v38, v7

    goto/16 :goto_1

    .line 488
    .end local v10    # "minWidth":D
    .end local v12    # "minHeight":D
    :cond_7
    move-object/from16 v38, v9

    sget-object v39, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    if-ne v0, v1, :cond_a

    .line 489
    move-object/from16 v38, v3

    const-wide/high16 v39, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v38 .. v40}, Ljavafx/scene/layout/BorderPane;->minWidth(D)D

    move-result-wide v38

    move-wide/from16 v10, v38

    .line 490
    .restart local v10    # "minWidth":D
    move-wide/from16 v38, v5

    move-wide/from16 v40, v10

    cmpg-double v38, v38, v40

    if-gez v38, :cond_8

    move-wide/from16 v38, v10

    :goto_d
    move-wide/from16 v5, v38

    .line 491
    move-object/from16 v38, v3

    move-wide/from16 v39, v5

    invoke-virtual/range {v38 .. v40}, Ljavafx/scene/layout/BorderPane;->minHeight(D)D

    move-result-wide v38

    move-wide/from16 v12, v38

    .line 492
    .restart local v12    # "minHeight":D
    move-wide/from16 v38, v7

    move-wide/from16 v40, v12

    cmpg-double v38, v38, v40

    if-gez v38, :cond_9

    move-wide/from16 v38, v12

    :goto_e
    move-wide/from16 v7, v38

    .line 493
    goto/16 :goto_2

    .line 490
    .end local v12    # "minHeight":D
    :cond_8
    move-wide/from16 v38, v5

    goto :goto_d

    .line 492
    .restart local v12    # "minHeight":D
    :cond_9
    move-wide/from16 v38, v7

    goto :goto_e

    .line 494
    .end local v10    # "minWidth":D
    .end local v12    # "minHeight":D
    :cond_a
    move-object/from16 v38, v3

    const-wide/high16 v39, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v38 .. v40}, Ljavafx/scene/layout/BorderPane;->minHeight(D)D

    move-result-wide v38

    move-wide/from16 v10, v38

    .line 495
    .local v10, "minHeight":D
    move-wide/from16 v38, v7

    move-wide/from16 v40, v10

    cmpg-double v38, v38, v40

    if-gez v38, :cond_b

    move-wide/from16 v38, v10

    :goto_f
    move-wide/from16 v7, v38

    .line 496
    move-object/from16 v38, v3

    move-wide/from16 v39, v7

    invoke-virtual/range {v38 .. v40}, Ljavafx/scene/layout/BorderPane;->minWidth(D)D

    move-result-wide v38

    move-wide/from16 v12, v38

    .line 497
    .local v12, "minWidth":D
    move-wide/from16 v38, v5

    move-wide/from16 v40, v12

    cmpg-double v38, v38, v40

    if-gez v38, :cond_c

    move-wide/from16 v38, v12

    :goto_10
    move-wide/from16 v5, v38

    goto/16 :goto_2

    .line 495
    .end local v12    # "minWidth":D
    :cond_b
    move-wide/from16 v38, v7

    goto :goto_f

    .line 497
    .restart local v12    # "minWidth":D
    :cond_c
    move-wide/from16 v38, v5

    goto :goto_10

    .line 526
    .local v10, "insideX":D
    .local v12, "insideY":D
    .restart local v14    # "insideWidth":D
    .restart local v16    # "insideHeight":D
    .restart local v18    # "c":Ljavafx/scene/Node;
    .restart local v19    # "r":Ljavafx/scene/Node;
    .restart local v20    # "b":Ljavafx/scene/Node;
    .restart local v21    # "l":Ljavafx/scene/Node;
    .restart local v22    # "t":Ljavafx/scene/Node;
    .restart local v23    # "topHeight":D
    .local v25, "topMargin":Ljavafx/geometry/Insets;
    .restart local v26    # "adjustedWidth":D
    .local v28, "adjustedHeight":D
    .local v30, "result":Lcom/sun/javafx/geom/Vec2d;
    .restart local v31    # "alignment":Ljavafx/geometry/Pos;
    :cond_d
    sget-object v50, Ljavafx/geometry/HPos;->LEFT:Ljavafx/geometry/HPos;

    goto/16 :goto_3

    .line 527
    :cond_e
    sget-object v51, Ljavafx/geometry/VPos;->TOP:Ljavafx/geometry/VPos;

    goto/16 :goto_4

    .line 547
    .end local v26    # "adjustedWidth":D
    .end local v31    # "alignment":Ljavafx/geometry/Pos;
    .local v25, "bottomHeight":D
    .local v27, "bottomMargin":Ljavafx/geometry/Insets;
    .local v28, "adjustedWidth":D
    .local v30, "adjustedHeight":D
    .local v32, "result":Lcom/sun/javafx/geom/Vec2d;
    .restart local v33    # "alignment":Ljavafx/geometry/Pos;
    :cond_f
    sget-object v50, Ljavafx/geometry/HPos;->LEFT:Ljavafx/geometry/HPos;

    goto/16 :goto_5

    .line 548
    :cond_10
    sget-object v51, Ljavafx/geometry/VPos;->BOTTOM:Ljavafx/geometry/VPos;

    goto/16 :goto_6

    .line 568
    .end local v28    # "adjustedWidth":D
    .end local v33    # "alignment":Ljavafx/geometry/Pos;
    .local v27, "leftWidth":D
    .local v29, "leftMargin":Ljavafx/geometry/Insets;
    .local v30, "adjustedWidth":D
    .local v32, "adjustedHeight":D
    .local v34, "result":Lcom/sun/javafx/geom/Vec2d;
    .restart local v35    # "alignment":Ljavafx/geometry/Pos;
    :cond_11
    sget-object v50, Ljavafx/geometry/HPos;->LEFT:Ljavafx/geometry/HPos;

    goto/16 :goto_7

    .line 569
    :cond_12
    sget-object v51, Ljavafx/geometry/VPos;->TOP:Ljavafx/geometry/VPos;

    goto/16 :goto_8

    .line 590
    .end local v30    # "adjustedWidth":D
    .end local v35    # "alignment":Ljavafx/geometry/Pos;
    .local v29, "rightWidth":D
    .local v31, "rightMargin":Ljavafx/geometry/Insets;
    .local v32, "adjustedWidth":D
    .local v34, "adjustedHeight":D
    .restart local v36    # "result":Lcom/sun/javafx/geom/Vec2d;
    .restart local v37    # "alignment":Ljavafx/geometry/Pos;
    :cond_13
    sget-object v50, Ljavafx/geometry/HPos;->RIGHT:Ljavafx/geometry/HPos;

    goto/16 :goto_9

    .line 591
    :cond_14
    sget-object v51, Ljavafx/geometry/VPos;->TOP:Ljavafx/geometry/VPos;

    goto/16 :goto_a

    .line 601
    .end local v32    # "adjustedWidth":D
    .end local v34    # "adjustedHeight":D
    .end local v36    # "result":Lcom/sun/javafx/geom/Vec2d;
    .end local v37    # "alignment":Ljavafx/geometry/Pos;
    .local v31, "alignment":Ljavafx/geometry/Pos;
    :cond_15
    sget-object v51, Ljavafx/geometry/HPos;->CENTER:Ljavafx/geometry/HPos;

    goto/16 :goto_b

    .line 602
    :cond_16
    sget-object v52, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    goto/16 :goto_c
.end method

.method public final leftProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 308
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/BorderPane;->left:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 309
    move-object v1, v0

    new-instance v2, Ljavafx/scene/layout/BorderPane$BorderPositionProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "left"

    invoke-direct {v3, v4, v5}, Ljavafx/scene/layout/BorderPane$BorderPositionProperty;-><init>(Ljavafx/scene/layout/BorderPane;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/layout/BorderPane;->left:Ljavafx/beans/property/ObjectProperty;

    .line 311
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/BorderPane;->left:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BorderPane;
    return-object v0
.end method

.method public final rightProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 326
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/BorderPane;->right:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 327
    move-object v1, v0

    new-instance v2, Ljavafx/scene/layout/BorderPane$BorderPositionProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "right"

    invoke-direct {v3, v4, v5}, Ljavafx/scene/layout/BorderPane$BorderPositionProperty;-><init>(Ljavafx/scene/layout/BorderPane;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/layout/BorderPane;->right:Ljavafx/beans/property/ObjectProperty;

    .line 329
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/BorderPane;->right:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BorderPane;
    return-object v0
.end method

.method public final setBottom(Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 296
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderPane;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/Node;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/layout/BorderPane;->bottomProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setCenter(Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 260
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderPane;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/Node;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/layout/BorderPane;->centerProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setLeft(Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 314
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderPane;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/Node;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/layout/BorderPane;->leftProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setRight(Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 332
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderPane;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/Node;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/layout/BorderPane;->rightProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setTop(Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 278
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderPane;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/Node;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/layout/BorderPane;->topProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final topProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 272
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/BorderPane;->top:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 273
    move-object v1, v0

    new-instance v2, Ljavafx/scene/layout/BorderPane$BorderPositionProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "top"

    invoke-direct {v3, v4, v5}, Ljavafx/scene/layout/BorderPane$BorderPositionProperty;-><init>(Ljavafx/scene/layout/BorderPane;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/layout/BorderPane;->top:Ljavafx/beans/property/ObjectProperty;

    .line 275
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/BorderPane;->top:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BorderPane;
    return-object v0
.end method
