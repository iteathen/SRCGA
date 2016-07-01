.class public Ljavafx/scene/text/TextFlow;
.super Ljavafx/scene/layout/Pane;
.source "TextFlow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/text/TextFlow$StyleableProperties;,
        Ljavafx/scene/text/TextFlow$EmbeddedSpan;
    }
.end annotation


# instance fields
.field private inLayout:Z

.field private layout:Lcom/sun/javafx/scene/text/TextLayout;

.field private lineSpacing:Ljavafx/beans/property/DoubleProperty;

.field private needsContent:Z

.field private textAlignment:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/text/TextAlignment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/TextFlow;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/layout/Pane;-><init>()V

    .line 159
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/text/TextFlow;->effectiveNodeOrientationProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/text/TextFlow$$Lambda$1;->lambdaFactory$(Ljavafx/scene/text/TextFlow;)Ljavafx/beans/InvalidationListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/beans/property/ReadOnlyObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 160
    move-object v1, v0

    sget-object v2, Ljavafx/scene/AccessibleRole;->TEXT:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v1, v2}, Ljavafx/scene/text/TextFlow;->setAccessibleRole(Ljavafx/scene/AccessibleRole;)V

    .line 161
    return-void
.end method

.method public varargs constructor <init>([Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/TextFlow;
    move-object v1, p1

    .local v1, "children":[Ljavafx/scene/Node;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/text/TextFlow;-><init>()V

    .line 170
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/text/TextFlow;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v2

    .line 171
    return-void
.end method

.method static synthetic access$200(Ljavafx/scene/text/TextFlow;)Ljavafx/beans/property/ObjectProperty;
    .locals 2

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/text/TextFlow;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/TextFlow;->textAlignment:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/text/TextFlow;
    return-object v0
.end method

.method static synthetic access$300(Ljavafx/scene/text/TextFlow;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/text/TextFlow;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/TextFlow;->lineSpacing:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/text/TextFlow;
    return-object v0
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/text/TextFlow;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/text/TextFlow;->lambda$new$516(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static boundedSize(DDD)D
    .locals 14

    .prologue
    .line 510
    move-wide v0, p0

    .local v0, "min":D
    move-wide/from16 v2, p2

    .local v2, "pref":D
    move-wide/from16 v4, p4

    .local v4, "max":D
    move-wide v10, v2

    move-wide v12, v0

    cmpl-double v10, v10, v12

    if-ltz v10, :cond_0

    move-wide v10, v2

    :goto_0
    move-wide v6, v10

    .line 511
    .local v6, "a":D
    move-wide v10, v0

    move-wide v12, v4

    cmpl-double v10, v10, v12

    if-ltz v10, :cond_1

    move-wide v10, v0

    :goto_1
    move-wide v8, v10

    .line 512
    .local v8, "b":D
    move-wide v10, v6

    move-wide v12, v8

    cmpg-double v10, v10, v12

    if-gtz v10, :cond_2

    move-wide v10, v6

    :goto_2
    move-wide v0, v10

    .end local v0    # "min":D
    return-wide v0

    .line 510
    .end local v6    # "a":D
    .end local v8    # "b":D
    .restart local v0    # "min":D
    :cond_0
    move-wide v10, v0

    goto :goto_0

    .line 511
    .restart local v6    # "a":D
    :cond_1
    move-wide v10, v4

    goto :goto_1

    .line 512
    .restart local v8    # "b":D
    :cond_2
    move-wide v10, v8

    goto :goto_2
.end method

.method private checkOrientation()V
    .locals 7

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/TextFlow;
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/text/TextFlow;->getEffectiveNodeOrientation()Ljavafx/geometry/NodeOrientation;

    move-result-object v5

    move-object v1, v5

    .line 175
    .local v1, "orientation":Ljavafx/geometry/NodeOrientation;
    move-object v5, v1

    sget-object v6, Ljavafx/geometry/NodeOrientation;->RIGHT_TO_LEFT:Ljavafx/geometry/NodeOrientation;

    if-ne v5, v6, :cond_1

    const/4 v5, 0x1

    :goto_0
    move v2, v5

    .line 176
    .local v2, "rtl":Z
    move v5, v2

    if-eqz v5, :cond_2

    const/16 v5, 0x800

    :goto_1
    move v3, v5

    .line 177
    .local v3, "dir":I
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/text/TextFlow;->getTextLayout()Lcom/sun/javafx/scene/text/TextLayout;

    move-result-object v5

    move-object v4, v5

    .line 178
    .local v4, "layout":Lcom/sun/javafx/scene/text/TextLayout;
    move-object v5, v4

    move v6, v3

    invoke-interface {v5, v6}, Lcom/sun/javafx/scene/text/TextLayout;->setDirection(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 179
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/text/TextFlow;->requestLayout()V

    .line 181
    :cond_0
    return-void

    .line 175
    .end local v2    # "rtl":Z
    .end local v3    # "dir":I
    .end local v4    # "layout":Lcom/sun/javafx/scene/text/TextLayout;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 176
    .restart local v2    # "rtl":Z
    :cond_2
    const/16 v5, 0x400

    goto :goto_1
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
    .line 496
    # getter for: Ljavafx/scene/text/TextFlow$StyleableProperties;->STYLEABLES:Ljava/util/List;
    invoke-static {}, Ljavafx/scene/text/TextFlow$StyleableProperties;->access$400()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$new$516(Ljavafx/beans/Observable;)V
    .locals 3

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/TextFlow;
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/Observable;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/text/TextFlow;->checkOrientation()V

    return-void
.end method

.method private static snapSpace(DZ)D
    .locals 6

    .prologue
    .line 506
    move-wide v1, p0

    .local v1, "value":D
    move v3, p2

    .local v3, "snapToPixel":Z
    move v4, v3

    if-eqz v4, :cond_0

    move-wide v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v4, v4

    :goto_0
    move-wide v1, v4

    .end local v1    # "value":D
    return-wide v1

    .restart local v1    # "value":D
    :cond_0
    move-wide v4, v1

    goto :goto_0
.end method


# virtual methods
.method computeChildPrefAreaHeight(Ljavafx/scene/Node;Ljavafx/geometry/Insets;)D
    .locals 8

    .prologue
    .line 535
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/TextFlow;
    move-object v1, p1

    .local v1, "child":Ljavafx/scene/Node;
    move-object v2, p2

    .local v2, "margin":Ljavafx/geometry/Insets;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-virtual {v3, v4, v5, v6, v7}, Ljavafx/scene/text/TextFlow;->computeChildPrefAreaHeight(Ljavafx/scene/Node;Ljavafx/geometry/Insets;D)D

    move-result-wide v3

    move-wide v0, v3

    .end local v0    # "this":Ljavafx/scene/text/TextFlow;
    return-wide v0
.end method

.method computeChildPrefAreaHeight(Ljavafx/scene/Node;Ljavafx/geometry/Insets;D)D
    .locals 29

    .prologue
    .line 539
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/text/TextFlow;
    move-object/from16 v3, p1

    .local v3, "child":Ljavafx/scene/Node;
    move-object/from16 v4, p2

    .local v4, "margin":Ljavafx/geometry/Insets;
    move-wide/from16 v5, p3

    .local v5, "width":D
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/text/TextFlow;->isSnapToPixel()Z

    move-result v18

    move/from16 v7, v18

    .line 540
    .local v7, "snap":Z
    move-object/from16 v18, v4

    if-eqz v18, :cond_1

    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v18

    move/from16 v20, v7

    invoke-static/range {v18 .. v20}, Ljavafx/scene/text/TextFlow;->snapSpace(DZ)D

    move-result-wide v18

    :goto_0
    move-wide/from16 v8, v18

    .line 541
    .local v8, "top":D
    move-object/from16 v18, v4

    if-eqz v18, :cond_2

    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v18

    move/from16 v20, v7

    invoke-static/range {v18 .. v20}, Ljavafx/scene/text/TextFlow;->snapSpace(DZ)D

    move-result-wide v18

    :goto_1
    move-wide/from16 v10, v18

    .line 542
    .local v10, "bottom":D
    move-object/from16 v18, v4

    if-eqz v18, :cond_3

    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v18

    move/from16 v20, v7

    invoke-static/range {v18 .. v20}, Ljavafx/scene/text/TextFlow;->snapSpace(DZ)D

    move-result-wide v18

    :goto_2
    move-wide/from16 v12, v18

    .line 543
    .local v12, "left":D
    move-object/from16 v18, v4

    if-eqz v18, :cond_4

    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v18

    move/from16 v20, v7

    invoke-static/range {v18 .. v20}, Ljavafx/scene/text/TextFlow;->snapSpace(DZ)D

    move-result-wide v18

    :goto_3
    move-wide/from16 v14, v18

    .line 544
    .local v14, "right":D
    const-wide/high16 v18, -0x4010000000000000L    # -1.0

    move-wide/from16 v16, v18

    .line 545
    .local v16, "alt":D
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/Node;->getContentBias()Ljavafx/geometry/Orientation;

    move-result-object v18

    sget-object v19, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 546
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    const-wide/high16 v20, -0x4010000000000000L    # -1.0

    .line 547
    invoke-virtual/range {v19 .. v21}, Ljavafx/scene/Node;->minWidth(D)D

    move-result-wide v19

    move-wide/from16 v21, v5

    const-wide/high16 v23, -0x4010000000000000L    # -1.0

    cmpl-double v21, v21, v23

    if-eqz v21, :cond_5

    move-wide/from16 v21, v5

    move-wide/from16 v23, v12

    sub-double v21, v21, v23

    move-wide/from16 v23, v14

    sub-double v21, v21, v23

    .line 548
    :goto_4
    move-object/from16 v23, v3

    const-wide/high16 v24, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v23 .. v25}, Ljavafx/scene/Node;->maxWidth(D)D

    move-result-wide v23

    .line 546
    invoke-static/range {v19 .. v24}, Ljavafx/scene/text/TextFlow;->boundedSize(DDD)D

    move-result-wide v19

    invoke-virtual/range {v18 .. v20}, Ljavafx/scene/text/TextFlow;->snapSize(D)D

    move-result-wide v18

    move-wide/from16 v16, v18

    .line 550
    :cond_0
    move-wide/from16 v18, v8

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-wide/from16 v22, v16

    invoke-virtual/range {v21 .. v23}, Ljavafx/scene/Node;->minHeight(D)D

    move-result-wide v21

    move-object/from16 v23, v3

    move-wide/from16 v24, v16

    invoke-virtual/range {v23 .. v25}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v23

    move-object/from16 v25, v3

    move-wide/from16 v26, v16

    invoke-virtual/range {v25 .. v27}, Ljavafx/scene/Node;->maxHeight(D)D

    move-result-wide v25

    invoke-static/range {v21 .. v26}, Ljavafx/scene/text/TextFlow;->boundedSize(DDD)D

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Ljavafx/scene/text/TextFlow;->snapSize(D)D

    move-result-wide v20

    add-double v18, v18, v20

    move-wide/from16 v20, v10

    add-double v18, v18, v20

    move-wide/from16 v2, v18

    .end local v2    # "this":Ljavafx/scene/text/TextFlow;
    return-wide v2

    .line 540
    .end local v8    # "top":D
    .end local v10    # "bottom":D
    .end local v12    # "left":D
    .end local v14    # "right":D
    .end local v16    # "alt":D
    .restart local v2    # "this":Ljavafx/scene/text/TextFlow;
    :cond_1
    const-wide/16 v18, 0x0

    goto/16 :goto_0

    .line 541
    .restart local v8    # "top":D
    :cond_2
    const-wide/16 v18, 0x0

    goto/16 :goto_1

    .line 542
    .restart local v10    # "bottom":D
    :cond_3
    const-wide/16 v18, 0x0

    goto/16 :goto_2

    .line 543
    .restart local v12    # "left":D
    :cond_4
    const-wide/16 v18, 0x0

    goto :goto_3

    .line 547
    .restart local v14    # "right":D
    .restart local v16    # "alt":D
    :cond_5
    move-object/from16 v21, v3

    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    .line 548
    invoke-virtual/range {v21 .. v23}, Ljavafx/scene/Node;->prefWidth(D)D

    move-result-wide v21

    goto :goto_4
.end method

.method computeChildPrefAreaWidth(Ljavafx/scene/Node;Ljavafx/geometry/Insets;)D
    .locals 8

    .prologue
    .line 516
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/TextFlow;
    move-object v1, p1

    .local v1, "child":Ljavafx/scene/Node;
    move-object v2, p2

    .local v2, "margin":Ljavafx/geometry/Insets;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-virtual {v3, v4, v5, v6, v7}, Ljavafx/scene/text/TextFlow;->computeChildPrefAreaWidth(Ljavafx/scene/Node;Ljavafx/geometry/Insets;D)D

    move-result-wide v3

    move-wide v0, v3

    .end local v0    # "this":Ljavafx/scene/text/TextFlow;
    return-wide v0
.end method

.method computeChildPrefAreaWidth(Ljavafx/scene/Node;Ljavafx/geometry/Insets;D)D
    .locals 29

    .prologue
    .line 520
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/text/TextFlow;
    move-object/from16 v3, p1

    .local v3, "child":Ljavafx/scene/Node;
    move-object/from16 v4, p2

    .local v4, "margin":Ljavafx/geometry/Insets;
    move-wide/from16 v5, p3

    .local v5, "height":D
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/text/TextFlow;->isSnapToPixel()Z

    move-result v18

    move/from16 v7, v18

    .line 521
    .local v7, "snap":Z
    move-object/from16 v18, v4

    if-eqz v18, :cond_1

    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v18

    move/from16 v20, v7

    invoke-static/range {v18 .. v20}, Ljavafx/scene/text/TextFlow;->snapSpace(DZ)D

    move-result-wide v18

    :goto_0
    move-wide/from16 v8, v18

    .line 522
    .local v8, "top":D
    move-object/from16 v18, v4

    if-eqz v18, :cond_2

    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v18

    move/from16 v20, v7

    invoke-static/range {v18 .. v20}, Ljavafx/scene/text/TextFlow;->snapSpace(DZ)D

    move-result-wide v18

    :goto_1
    move-wide/from16 v10, v18

    .line 523
    .local v10, "bottom":D
    move-object/from16 v18, v4

    if-eqz v18, :cond_3

    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v18

    move/from16 v20, v7

    invoke-static/range {v18 .. v20}, Ljavafx/scene/text/TextFlow;->snapSpace(DZ)D

    move-result-wide v18

    :goto_2
    move-wide/from16 v12, v18

    .line 524
    .local v12, "left":D
    move-object/from16 v18, v4

    if-eqz v18, :cond_4

    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v18

    move/from16 v20, v7

    invoke-static/range {v18 .. v20}, Ljavafx/scene/text/TextFlow;->snapSpace(DZ)D

    move-result-wide v18

    :goto_3
    move-wide/from16 v14, v18

    .line 525
    .local v14, "right":D
    const-wide/high16 v18, -0x4010000000000000L    # -1.0

    move-wide/from16 v16, v18

    .line 526
    .local v16, "alt":D
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/Node;->getContentBias()Ljavafx/geometry/Orientation;

    move-result-object v18

    sget-object v19, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 527
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    const-wide/high16 v20, -0x4010000000000000L    # -1.0

    .line 528
    invoke-virtual/range {v19 .. v21}, Ljavafx/scene/Node;->minHeight(D)D

    move-result-wide v19

    move-wide/from16 v21, v5

    const-wide/high16 v23, -0x4010000000000000L    # -1.0

    cmpl-double v21, v21, v23

    if-eqz v21, :cond_5

    move-wide/from16 v21, v5

    move-wide/from16 v23, v8

    sub-double v21, v21, v23

    move-wide/from16 v23, v10

    sub-double v21, v21, v23

    .line 529
    :goto_4
    move-object/from16 v23, v3

    const-wide/high16 v24, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v23 .. v25}, Ljavafx/scene/Node;->maxHeight(D)D

    move-result-wide v23

    .line 527
    invoke-static/range {v19 .. v24}, Ljavafx/scene/text/TextFlow;->boundedSize(DDD)D

    move-result-wide v19

    invoke-virtual/range {v18 .. v20}, Ljavafx/scene/text/TextFlow;->snapSize(D)D

    move-result-wide v18

    move-wide/from16 v16, v18

    .line 531
    :cond_0
    move-wide/from16 v18, v12

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-wide/from16 v22, v16

    invoke-virtual/range {v21 .. v23}, Ljavafx/scene/Node;->minWidth(D)D

    move-result-wide v21

    move-object/from16 v23, v3

    move-wide/from16 v24, v16

    invoke-virtual/range {v23 .. v25}, Ljavafx/scene/Node;->prefWidth(D)D

    move-result-wide v23

    move-object/from16 v25, v3

    move-wide/from16 v26, v16

    invoke-virtual/range {v25 .. v27}, Ljavafx/scene/Node;->maxWidth(D)D

    move-result-wide v25

    invoke-static/range {v21 .. v26}, Ljavafx/scene/text/TextFlow;->boundedSize(DDD)D

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Ljavafx/scene/text/TextFlow;->snapSize(D)D

    move-result-wide v20

    add-double v18, v18, v20

    move-wide/from16 v20, v14

    add-double v18, v18, v20

    move-wide/from16 v2, v18

    .end local v2    # "this":Ljavafx/scene/text/TextFlow;
    return-wide v2

    .line 521
    .end local v8    # "top":D
    .end local v10    # "bottom":D
    .end local v12    # "left":D
    .end local v14    # "right":D
    .end local v16    # "alt":D
    .restart local v2    # "this":Ljavafx/scene/text/TextFlow;
    :cond_1
    const-wide/16 v18, 0x0

    goto/16 :goto_0

    .line 522
    .restart local v8    # "top":D
    :cond_2
    const-wide/16 v18, 0x0

    goto/16 :goto_1

    .line 523
    .restart local v10    # "bottom":D
    :cond_3
    const-wide/16 v18, 0x0

    goto/16 :goto_2

    .line 524
    .restart local v12    # "left":D
    :cond_4
    const-wide/16 v18, 0x0

    goto :goto_3

    .line 528
    .restart local v14    # "right":D
    .restart local v16    # "alt":D
    :cond_5
    move-object/from16 v21, v3

    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    .line 529
    invoke-virtual/range {v21 .. v23}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v21

    goto :goto_4
.end method

.method protected computeMinHeight(D)D
    .locals 7

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/TextFlow;
    move-wide v1, p1

    .local v1, "width":D
    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/text/TextFlow;->computePrefHeight(D)D

    move-result-wide v3

    move-wide v0, v3

    .end local v0    # "this":Ljavafx/scene/text/TextFlow;
    return-wide v0
.end method

.method protected computePrefHeight(D)D
    .locals 27

    .prologue
    .line 213
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/text/TextFlow;
    move-wide/from16 v4, p1

    .local v4, "width":D
    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/text/TextFlow;->getTextLayout()Lcom/sun/javafx/scene/text/TextLayout;

    move-result-object v20

    move-object/from16 v6, v20

    .line 214
    .local v6, "layout":Lcom/sun/javafx/scene/text/TextLayout;
    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/text/TextFlow;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v20

    move-object/from16 v7, v20

    .line 215
    .local v7, "insets":Ljavafx/geometry/Insets;
    move-object/from16 v20, v3

    move-object/from16 v21, v7

    invoke-virtual/range {v21 .. v21}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Ljavafx/scene/text/TextFlow;->snapSpace(D)D

    move-result-wide v20

    move-wide/from16 v8, v20

    .line 216
    .local v8, "left":D
    move-object/from16 v20, v3

    move-object/from16 v21, v7

    invoke-virtual/range {v21 .. v21}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Ljavafx/scene/text/TextFlow;->snapSpace(D)D

    move-result-wide v20

    move-wide/from16 v10, v20

    .line 217
    .local v10, "right":D
    move-wide/from16 v20, v4

    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    cmpl-double v20, v20, v22

    if-nez v20, :cond_0

    .line 218
    move-object/from16 v20, v6

    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Lcom/sun/javafx/scene/text/TextLayout;->setWrapWidth(F)Z

    move-result v20

    .line 223
    :goto_0
    move-object/from16 v20, v6

    invoke-interface/range {v20 .. v20}, Lcom/sun/javafx/scene/text/TextLayout;->getBounds()Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/BaseBounds;->getHeight()F

    move-result v20

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v12, v20

    .line 224
    .local v12, "height":D
    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/text/TextFlow;->getWidth()D

    move-result-wide v22

    move-wide/from16 v24, v8

    sub-double v22, v22, v24

    move-wide/from16 v24, v10

    sub-double v22, v22, v24

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(DD)D

    move-result-wide v20

    move-wide/from16 v14, v20

    .line 225
    .local v14, "wrappingWidth":D
    move-object/from16 v20, v6

    move-wide/from16 v21, v14

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lcom/sun/javafx/scene/text/TextLayout;->setWrapWidth(F)Z

    move-result v20

    .line 226
    move-object/from16 v20, v3

    move-object/from16 v21, v7

    invoke-virtual/range {v21 .. v21}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Ljavafx/scene/text/TextFlow;->snapSpace(D)D

    move-result-wide v20

    move-wide/from16 v16, v20

    .line 227
    .local v16, "top":D
    move-object/from16 v20, v3

    move-object/from16 v21, v7

    invoke-virtual/range {v21 .. v21}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Ljavafx/scene/text/TextFlow;->snapSpace(D)D

    move-result-wide v20

    move-wide/from16 v18, v20

    .line 228
    .local v18, "bottom":D
    move-wide/from16 v20, v16

    move-wide/from16 v22, v12

    add-double v20, v20, v22

    move-wide/from16 v22, v18

    add-double v20, v20, v22

    move-wide/from16 v3, v20

    .end local v3    # "this":Ljavafx/scene/text/TextFlow;
    return-wide v3

    .line 220
    .end local v12    # "height":D
    .end local v14    # "wrappingWidth":D
    .end local v16    # "top":D
    .end local v18    # "bottom":D
    .restart local v3    # "this":Ljavafx/scene/text/TextFlow;
    :cond_0
    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v22, v4

    move-wide/from16 v24, v8

    sub-double v22, v22, v24

    move-wide/from16 v24, v10

    sub-double v22, v22, v24

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(DD)D

    move-result-wide v20

    move-wide/from16 v12, v20

    .line 221
    .local v12, "wrappingWidth":D
    move-object/from16 v20, v6

    move-wide/from16 v21, v12

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lcom/sun/javafx/scene/text/TextLayout;->setWrapWidth(F)Z

    move-result v20

    goto :goto_0
.end method

.method protected computePrefWidth(D)D
    .locals 21

    .prologue
    .line 201
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/text/TextFlow;
    move-wide/from16 v2, p1

    .local v2, "height":D
    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/text/TextFlow;->getTextLayout()Lcom/sun/javafx/scene/text/TextLayout;

    move-result-object v14

    move-object v4, v14

    .line 202
    .local v4, "layout":Lcom/sun/javafx/scene/text/TextLayout;
    move-object v14, v4

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Lcom/sun/javafx/scene/text/TextLayout;->setWrapWidth(F)Z

    move-result v14

    .line 203
    move-object v14, v4

    invoke-interface {v14}, Lcom/sun/javafx/scene/text/TextLayout;->getBounds()Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sun/javafx/geom/BaseBounds;->getWidth()F

    move-result v14

    float-to-double v14, v14

    move-wide v5, v14

    .line 204
    .local v5, "width":D
    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/text/TextFlow;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v14

    move-object v7, v14

    .line 205
    .local v7, "insets":Ljavafx/geometry/Insets;
    move-object v14, v1

    move-object v15, v7

    invoke-virtual {v15}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljavafx/scene/text/TextFlow;->snapSpace(D)D

    move-result-wide v14

    move-wide v8, v14

    .line 206
    .local v8, "left":D
    move-object v14, v1

    move-object v15, v7

    invoke-virtual {v15}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljavafx/scene/text/TextFlow;->snapSpace(D)D

    move-result-wide v14

    move-wide v10, v14

    .line 207
    .local v10, "right":D
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/text/TextFlow;->getWidth()D

    move-result-wide v16

    move-wide/from16 v18, v8

    sub-double v16, v16, v18

    move-wide/from16 v18, v10

    sub-double v16, v16, v18

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    move-wide v12, v14

    .line 208
    .local v12, "wrappingWidth":D
    move-object v14, v4

    move-wide v15, v12

    double-to-float v15, v15

    invoke-interface {v14, v15}, Lcom/sun/javafx/scene/text/TextLayout;->setWrapWidth(F)Z

    move-result v14

    .line 209
    move-wide v14, v8

    move-wide/from16 v16, v5

    add-double v14, v14, v16

    move-wide/from16 v16, v10

    add-double v14, v14, v16

    move-wide v1, v14

    .end local v1    # "this":Ljavafx/scene/text/TextFlow;
    return-wide v1
.end method

.method public final getBaselineOffset()D
    .locals 8

    .prologue
    .line 435
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/TextFlow;
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/text/TextFlow;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v4

    move-object v1, v4

    .line 436
    .local v1, "insets":Ljavafx/geometry/Insets;
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/text/TextFlow;->snapSpace(D)D

    move-result-wide v4

    move-wide v2, v4

    .line 437
    .local v2, "top":D
    move-wide v4, v2

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/text/TextFlow;->getTextLayout()Lcom/sun/javafx/scene/text/TextLayout;

    move-result-object v6

    invoke-interface {v6}, Lcom/sun/javafx/scene/text/TextLayout;->getBounds()Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v6

    float-to-double v6, v6

    sub-double/2addr v4, v6

    move-wide v0, v4

    .end local v0    # "this":Ljavafx/scene/text/TextFlow;
    return-wide v0
.end method

.method public getContentBias()Ljavafx/geometry/Orientation;
    .locals 2

    .prologue
    .line 265
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/TextFlow;
    sget-object v1, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/TextFlow;
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
    .line 501
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/TextFlow;
    invoke-static {}, Ljavafx/scene/text/TextFlow;->getClassCssMetaData()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/TextFlow;
    return-object v0
.end method

.method public final getLineSpacing()D
    .locals 4

    .prologue
    .line 411
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/text/TextFlow;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/text/TextFlow;->lineSpacing:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/text/TextFlow;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/text/TextFlow;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/text/TextFlow;->lineSpacing:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getTextAlignment()Ljavafx/scene/text/TextAlignment;
    .locals 2

    .prologue
    .line 373
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/TextFlow;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/TextFlow;->textAlignment:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/scene/text/TextAlignment;->LEFT:Ljavafx/scene/text/TextAlignment;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/TextFlow;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/text/TextFlow;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/TextFlow;->textAlignment:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/text/TextAlignment;

    goto :goto_0
.end method

.method getTextLayout()Lcom/sun/javafx/scene/text/TextLayout;
    .locals 24

    .prologue
    .line 330
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/text/TextFlow;
    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/text/TextFlow;->layout:Lcom/sun/javafx/scene/text/TextLayout;

    if-nez v12, :cond_0

    .line 331
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sun/javafx/tk/Toolkit;->getTextLayoutFactory()Lcom/sun/javafx/scene/text/TextLayoutFactory;

    move-result-object v12

    move-object v2, v12

    .line 332
    .local v2, "factory":Lcom/sun/javafx/scene/text/TextLayoutFactory;
    move-object v12, v1

    move-object v13, v2

    invoke-interface {v13}, Lcom/sun/javafx/scene/text/TextLayoutFactory;->createLayout()Lcom/sun/javafx/scene/text/TextLayout;

    move-result-object v13

    iput-object v13, v12, Ljavafx/scene/text/TextFlow;->layout:Lcom/sun/javafx/scene/text/TextLayout;

    .line 333
    move-object v12, v1

    const/4 v13, 0x1

    iput-boolean v13, v12, Ljavafx/scene/text/TextFlow;->needsContent:Z

    .line 335
    .end local v2    # "factory":Lcom/sun/javafx/scene/text/TextLayoutFactory;
    :cond_0
    move-object v12, v1

    iget-boolean v12, v12, Ljavafx/scene/text/TextFlow;->needsContent:Z

    if-eqz v12, :cond_4

    .line 336
    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/text/TextFlow;->getManagedChildren()Ljava/util/List;

    move-result-object v12

    move-object v2, v12

    .line 337
    .local v2, "children":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object v12, v2

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    new-array v12, v12, [Lcom/sun/javafx/scene/text/TextSpan;

    move-object v3, v12

    .line 338
    .local v3, "spans":[Lcom/sun/javafx/scene/text/TextSpan;
    const/4 v12, 0x0

    move v4, v12

    .local v4, "i":I
    :goto_0
    move v12, v4

    move-object v13, v3

    array-length v13, v13

    if-ge v12, v13, :cond_3

    .line 339
    move-object v12, v2

    move v13, v4

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljavafx/scene/Node;

    move-object v5, v12

    .line 340
    .local v5, "node":Ljavafx/scene/Node;
    move-object v12, v5

    instance-of v12, v12, Ljavafx/scene/text/Text;

    if-eqz v12, :cond_1

    .line 341
    move-object v12, v3

    move v13, v4

    move-object v14, v5

    check-cast v14, Ljavafx/scene/text/Text;

    invoke-virtual {v14}, Ljavafx/scene/text/Text;->getTextSpan()Lcom/sun/javafx/scene/text/TextSpan;

    move-result-object v14

    aput-object v14, v12, v13

    .line 338
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 346
    :cond_1
    move-object v12, v5

    invoke-virtual {v12}, Ljavafx/scene/Node;->getBaselineOffset()D

    move-result-wide v12

    move-wide v6, v12

    .line 347
    .local v6, "baseline":D
    move-wide v12, v6

    const-wide/high16 v14, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v12, v12, v14

    if-nez v12, :cond_2

    .line 348
    move-object v12, v5

    invoke-virtual {v12}, Ljavafx/scene/Node;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v12

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v12

    move-wide v6, v12

    .line 350
    :cond_2
    move-object v12, v1

    move-object v13, v5

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Ljavafx/scene/text/TextFlow;->computeChildPrefAreaWidth(Ljavafx/scene/Node;Ljavafx/geometry/Insets;)D

    move-result-wide v12

    move-wide v8, v12

    .line 351
    .local v8, "width":D
    move-object v12, v1

    move-object v13, v5

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Ljavafx/scene/text/TextFlow;->computeChildPrefAreaHeight(Ljavafx/scene/Node;Ljavafx/geometry/Insets;)D

    move-result-wide v12

    move-wide v10, v12

    .line 352
    .local v10, "height":D
    move-object v12, v3

    move v13, v4

    new-instance v14, Ljavafx/scene/text/TextFlow$EmbeddedSpan;

    move-object/from16 v23, v14

    move-object/from16 v14, v23

    move-object/from16 v15, v23

    move-object/from16 v16, v5

    move-wide/from16 v17, v6

    move-wide/from16 v19, v8

    move-wide/from16 v21, v10

    invoke-direct/range {v15 .. v22}, Ljavafx/scene/text/TextFlow$EmbeddedSpan;-><init>(Ljavafx/scene/Node;DDD)V

    aput-object v14, v12, v13

    goto :goto_1

    .line 355
    .end local v5    # "node":Ljavafx/scene/Node;
    .end local v6    # "baseline":D
    .end local v8    # "width":D
    .end local v10    # "height":D
    :cond_3
    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/text/TextFlow;->layout:Lcom/sun/javafx/scene/text/TextLayout;

    move-object v13, v3

    invoke-interface {v12, v13}, Lcom/sun/javafx/scene/text/TextLayout;->setContent([Lcom/sun/javafx/scene/text/TextSpan;)Z

    move-result v12

    .line 356
    move-object v12, v1

    const/4 v13, 0x0

    iput-boolean v13, v12, Ljavafx/scene/text/TextFlow;->needsContent:Z

    .line 358
    .end local v2    # "children":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    .end local v3    # "spans":[Lcom/sun/javafx/scene/text/TextSpan;
    .end local v4    # "i":I
    :cond_4
    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/text/TextFlow;->layout:Lcom/sun/javafx/scene/text/TextLayout;

    move-object v1, v12

    .end local v1    # "this":Ljavafx/scene/text/TextFlow;
    return-object v1
.end method

.method protected layoutChildren()V
    .locals 33

    .prologue
    .line 269
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/text/TextFlow;
    move-object/from16 v16, v2

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Ljavafx/scene/text/TextFlow;->inLayout:Z

    .line 270
    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/text/TextFlow;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v16

    move-object/from16 v3, v16

    .line 271
    .local v3, "insets":Ljavafx/geometry/Insets;
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Ljavafx/scene/text/TextFlow;->snapSpace(D)D

    move-result-wide v16

    move-wide/from16 v4, v16

    .line 272
    .local v4, "top":D
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Ljavafx/scene/text/TextFlow;->snapSpace(D)D

    move-result-wide v16

    move-wide/from16 v6, v16

    .line 274
    .local v6, "left":D
    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/text/TextFlow;->getTextLayout()Lcom/sun/javafx/scene/text/TextLayout;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lcom/sun/javafx/scene/text/TextLayout;->getRuns()[Lcom/sun/javafx/scene/text/GlyphList;

    move-result-object v16

    move-object/from16 v8, v16

    .line 275
    .local v8, "runs":[Lcom/sun/javafx/scene/text/GlyphList;
    const/16 v16, 0x0

    move/from16 v9, v16

    .local v9, "j":I
    :goto_0
    move/from16 v16, v9

    move-object/from16 v17, v8

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_1

    .line 276
    move-object/from16 v16, v8

    move/from16 v17, v9

    aget-object v16, v16, v17

    move-object/from16 v10, v16

    .line 277
    .local v10, "run":Lcom/sun/javafx/scene/text/GlyphList;
    move-object/from16 v16, v10

    invoke-interface/range {v16 .. v16}, Lcom/sun/javafx/scene/text/GlyphList;->getTextSpan()Lcom/sun/javafx/scene/text/TextSpan;

    move-result-object v16

    move-object/from16 v11, v16

    .line 278
    .local v11, "span":Lcom/sun/javafx/scene/text/TextSpan;
    move-object/from16 v16, v11

    move-object/from16 v0, v16

    instance-of v0, v0, Ljavafx/scene/text/TextFlow$EmbeddedSpan;

    move/from16 v16, v0

    if-eqz v16, :cond_0

    .line 279
    move-object/from16 v16, v11

    check-cast v16, Ljavafx/scene/text/TextFlow$EmbeddedSpan;

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/text/TextFlow$EmbeddedSpan;->getNode()Ljavafx/scene/Node;

    move-result-object v16

    move-object/from16 v12, v16

    .line 280
    .local v12, "child":Ljavafx/scene/Node;
    move-object/from16 v16, v10

    invoke-interface/range {v16 .. v16}, Lcom/sun/javafx/scene/text/GlyphList;->getLocation()Lcom/sun/javafx/geom/Point2D;

    move-result-object v16

    move-object/from16 v13, v16

    .line 281
    .local v13, "location":Lcom/sun/javafx/geom/Point2D;
    move-object/from16 v16, v10

    invoke-interface/range {v16 .. v16}, Lcom/sun/javafx/scene/text/GlyphList;->getLineBounds()Lcom/sun/javafx/geom/RectBounds;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/geom/RectBounds;->getMinY()F

    move-result v16

    move/from16 v0, v16

    neg-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v14, v16

    .line 283
    .local v14, "baselineOffset":D
    move-object/from16 v16, v2

    move-object/from16 v17, v12

    move-wide/from16 v18, v6

    move-object/from16 v20, v13

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->x:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    add-double v18, v18, v20

    move-wide/from16 v20, v4

    move-object/from16 v22, v13

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->y:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    add-double v20, v20, v22

    move-object/from16 v22, v10

    .line 284
    invoke-interface/range {v22 .. v22}, Lcom/sun/javafx/scene/text/GlyphList;->getWidth()F

    move-result v22

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v24, v10

    invoke-interface/range {v24 .. v24}, Lcom/sun/javafx/scene/text/GlyphList;->getHeight()F

    move-result v24

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v26, v14

    const/16 v28, 0x0

    const/16 v29, 0x1

    const/16 v30, 0x1

    sget-object v31, Ljavafx/geometry/HPos;->CENTER:Ljavafx/geometry/HPos;

    sget-object v32, Ljavafx/geometry/VPos;->BASELINE:Ljavafx/geometry/VPos;

    .line 283
    invoke-virtual/range {v16 .. v32}, Ljavafx/scene/text/TextFlow;->layoutInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/Insets;ZZLjavafx/geometry/HPos;Ljavafx/geometry/VPos;)V

    .line 275
    .end local v12    # "child":Ljavafx/scene/Node;
    .end local v13    # "location":Lcom/sun/javafx/geom/Point2D;
    .end local v14    # "baselineOffset":D
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 290
    .end local v10    # "run":Lcom/sun/javafx/scene/text/GlyphList;
    .end local v11    # "span":Lcom/sun/javafx/scene/text/TextSpan;
    :cond_1
    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/text/TextFlow;->getManagedChildren()Ljava/util/List;

    move-result-object v16

    move-object/from16 v9, v16

    .line 291
    .local v9, "managed":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object/from16 v16, v9

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move-object/from16 v10, v16

    :goto_1
    move-object/from16 v16, v10

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_3

    move-object/from16 v16, v10

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljavafx/scene/Node;

    move-object/from16 v11, v16

    .line 292
    .local v11, "node":Ljavafx/scene/Node;
    move-object/from16 v16, v11

    move-object/from16 v0, v16

    instance-of v0, v0, Ljavafx/scene/text/Text;

    move/from16 v16, v0

    if-eqz v16, :cond_2

    .line 293
    move-object/from16 v16, v11

    check-cast v16, Ljavafx/scene/text/Text;

    move-object/from16 v12, v16

    .line 294
    .local v12, "text":Ljavafx/scene/text/Text;
    move-object/from16 v16, v12

    move-object/from16 v17, v8

    invoke-virtual/range {v16 .. v17}, Ljavafx/scene/text/Text;->layoutSpan([Lcom/sun/javafx/scene/text/GlyphList;)V

    .line 295
    move-object/from16 v16, v12

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/text/Text;->getSpanBounds()Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v16

    move-object/from16 v13, v16

    .line 296
    .local v13, "spanBounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object/from16 v16, v12

    move-wide/from16 v17, v6

    move-object/from16 v19, v13

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v19

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    add-double v17, v17, v19

    move-wide/from16 v19, v4

    move-object/from16 v21, v13

    .line 297
    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v21

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    add-double v19, v19, v21

    .line 296
    invoke-virtual/range {v16 .. v20}, Ljavafx/scene/text/Text;->relocate(DD)V

    .line 299
    .end local v12    # "text":Ljavafx/scene/text/Text;
    .end local v13    # "spanBounds":Lcom/sun/javafx/geom/BaseBounds;
    :cond_2
    goto :goto_1

    .line 300
    .end local v11    # "node":Ljavafx/scene/Node;
    :cond_3
    move-object/from16 v16, v2

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Ljavafx/scene/text/TextFlow;->inLayout:Z

    .line 301
    return-void
.end method

.method public final lineSpacingProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 415
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/text/TextFlow;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/text/TextFlow;->lineSpacing:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 416
    move-object v2, v1

    new-instance v3, Ljavafx/scene/text/TextFlow$2;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/16 v6, 0x0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/text/TextFlow$2;-><init>(Ljavafx/scene/text/TextFlow;D)V

    iput-object v3, v2, Ljavafx/scene/text/TextFlow;->lineSpacing:Ljavafx/beans/property/DoubleProperty;

    .line 431
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/text/TextFlow;->lineSpacing:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/text/TextFlow;
    return-object v1
.end method

.method public varargs queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .prologue
    .line 556
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/TextFlow;
    move-object v1, p1

    .local v1, "attribute":Ljavafx/scene/AccessibleAttribute;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v8, Ljavafx/scene/text/TextFlow$3;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 570
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    invoke-super {v8, v9, v10}, Ljavafx/scene/layout/Pane;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    .end local v0    # "this":Ljavafx/scene/text/TextFlow;
    :goto_0
    return-object v0

    .line 558
    .restart local v0    # "this":Ljavafx/scene/text/TextFlow;
    :pswitch_0
    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/text/TextFlow;->getAccessibleText()Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .line 559
    .local v3, "accText":Ljava/lang/String;
    move-object v8, v3

    if-eqz v8, :cond_0

    move-object v8, v3

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    move-object v8, v3

    move-object v0, v8

    goto :goto_0

    .line 561
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v8

    .line 562
    .local v4, "title":Ljava/lang/StringBuilder;
    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/text/TextFlow;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v8

    invoke-interface {v8}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v5, v8

    :goto_1
    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/scene/Node;

    move-object v6, v8

    .line 563
    .local v6, "node":Ljavafx/scene/Node;
    move-object v8, v6

    sget-object v9, Ljavafx/scene/AccessibleAttribute;->TEXT:Ljavafx/scene/AccessibleAttribute;

    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/Node;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    .line 564
    .local v7, "text":Ljava/lang/Object;
    move-object v8, v7

    if-eqz v8, :cond_1

    .line 565
    move-object v8, v4

    move-object v9, v7

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 567
    :cond_1
    goto :goto_1

    .line 568
    .end local v6    # "node":Ljavafx/scene/Node;
    .end local v7    # "text":Ljava/lang/Object;
    :cond_2
    move-object v8, v4

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v0, v8

    goto :goto_0

    .line 556
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public requestLayout()V
    .locals 3

    .prologue
    .line 241
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/TextFlow;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/text/TextFlow;->inLayout:Z

    if-eqz v1, :cond_0

    .line 262
    :goto_0
    return-void

    .line 260
    :cond_0
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/scene/text/TextFlow;->needsContent:Z

    .line 261
    move-object v1, v0

    invoke-super {v1}, Ljavafx/scene/layout/Pane;->requestLayout()V

    .line 262
    goto :goto_0
.end method

.method public final setLineSpacing(D)V
    .locals 7

    .prologue
    .line 407
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/TextFlow;
    move-wide v1, p1

    .local v1, "spacing":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/text/TextFlow;->lineSpacingProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 408
    return-void
.end method

.method public final setTextAlignment(Ljavafx/scene/text/TextAlignment;)V
    .locals 4

    .prologue
    .line 369
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/TextFlow;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/text/TextAlignment;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/text/TextFlow;->textAlignmentProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 370
    return-void
.end method

.method protected setWidth(D)V
    .locals 19

    .prologue
    .line 189
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/text/TextFlow;
    move-wide/from16 v2, p1

    .local v2, "value":D
    move-wide v12, v2

    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/text/TextFlow;->getWidth()D

    move-result-wide v14

    cmpl-double v12, v12, v14

    if-eqz v12, :cond_0

    .line 190
    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/text/TextFlow;->getTextLayout()Lcom/sun/javafx/scene/text/TextLayout;

    move-result-object v12

    move-object v4, v12

    .line 191
    .local v4, "layout":Lcom/sun/javafx/scene/text/TextLayout;
    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/text/TextFlow;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v12

    move-object v5, v12

    .line 192
    .local v5, "insets":Ljavafx/geometry/Insets;
    move-object v12, v1

    move-object v13, v5

    invoke-virtual {v13}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljavafx/scene/text/TextFlow;->snapSpace(D)D

    move-result-wide v12

    move-wide v6, v12

    .line 193
    .local v6, "left":D
    move-object v12, v1

    move-object v13, v5

    invoke-virtual {v13}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljavafx/scene/text/TextFlow;->snapSpace(D)D

    move-result-wide v12

    move-wide v8, v12

    .line 194
    .local v8, "right":D
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move-wide v14, v2

    move-wide/from16 v16, v6

    sub-double v14, v14, v16

    move-wide/from16 v16, v8

    sub-double v14, v14, v16

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    move-wide v10, v12

    .line 195
    .local v10, "width":D
    move-object v12, v4

    move-wide v13, v10

    double-to-float v13, v13

    invoke-interface {v12, v13}, Lcom/sun/javafx/scene/text/TextLayout;->setWrapWidth(F)Z

    move-result v12

    .line 196
    move-object v12, v1

    move-wide v13, v2

    invoke-super {v12, v13, v14}, Ljavafx/scene/layout/Pane;->setWidth(D)V

    .line 198
    .end local v4    # "layout":Lcom/sun/javafx/scene/text/TextLayout;
    .end local v5    # "insets":Ljavafx/geometry/Insets;
    .end local v6    # "left":D
    .end local v8    # "right":D
    .end local v10    # "width":D
    :cond_0
    return-void
.end method

.method public final textAlignmentProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/text/TextAlignment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 377
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/TextFlow;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/TextFlow;->textAlignment:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 378
    move-object v1, v0

    new-instance v2, Ljavafx/scene/text/TextFlow$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Ljavafx/scene/text/TextAlignment;->LEFT:Ljavafx/scene/text/TextAlignment;

    invoke-direct {v3, v4, v5}, Ljavafx/scene/text/TextFlow$1;-><init>(Ljavafx/scene/text/TextFlow;Ljavafx/scene/text/TextAlignment;)V

    iput-object v2, v1, Ljavafx/scene/text/TextFlow;->textAlignment:Ljavafx/beans/property/ObjectProperty;

    .line 394
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/TextFlow;->textAlignment:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/TextFlow;
    return-object v0
.end method

.method public usesMirroring()Z
    .locals 2

    .prologue
    .line 185
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/TextFlow;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/text/TextFlow;
    return v0
.end method
