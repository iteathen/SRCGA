.class Ljavafx/scene/canvas/GraphicsContext$State;
.super Ljava/lang/Object;
.source "GraphicsContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/canvas/GraphicsContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "State"
.end annotation


# instance fields
.field blendop:Ljavafx/scene/effect/BlendMode;

.field dashOffset:D

.field dashes:[D

.field effect:Ljavafx/scene/effect/Effect;

.field fill:Ljavafx/scene/paint/Paint;

.field fillRule:Ljavafx/scene/shape/FillRule;

.field font:Ljavafx/scene/text/Font;

.field fontsmoothing:Ljavafx/scene/text/FontSmoothingType;

.field globalAlpha:D

.field linecap:Ljavafx/scene/shape/StrokeLineCap;

.field linejoin:Ljavafx/scene/shape/StrokeLineJoin;

.field linewidth:D

.field miterlimit:D

.field numClipPaths:I

.field stroke:Ljavafx/scene/paint/Paint;

.field textalign:Ljavafx/scene/text/TextAlignment;

.field textbaseline:Ljavafx/geometry/VPos;

.field transform:Lcom/sun/javafx/geom/transform/Affine2D;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 529
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext$State;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 530
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/canvas/GraphicsContext$State;->init()V

    .line 531
    return-void
.end method

.method constructor <init>(Ljavafx/scene/canvas/GraphicsContext$State;)V
    .locals 29

    .prologue
    .line 545
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/canvas/GraphicsContext$State;
    move-object/from16 v4, p1

    .local v4, "copy":Ljavafx/scene/canvas/GraphicsContext$State;
    move-object v5, v3

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 546
    move-object v5, v3

    move-object v6, v4

    iget-wide v6, v6, Ljavafx/scene/canvas/GraphicsContext$State;->globalAlpha:D

    move-object v8, v4

    iget-object v8, v8, Ljavafx/scene/canvas/GraphicsContext$State;->blendop:Ljavafx/scene/effect/BlendMode;

    new-instance v9, Lcom/sun/javafx/geom/transform/Affine2D;

    move-object/from16 v28, v9

    move-object/from16 v9, v28

    move-object/from16 v10, v28

    move-object v11, v4

    iget-object v11, v11, Ljavafx/scene/canvas/GraphicsContext$State;->transform:Lcom/sun/javafx/geom/transform/Affine2D;

    invoke-direct {v10, v11}, Lcom/sun/javafx/geom/transform/Affine2D;-><init>(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    move-object v10, v4

    iget-object v10, v10, Ljavafx/scene/canvas/GraphicsContext$State;->fill:Ljavafx/scene/paint/Paint;

    move-object v11, v4

    iget-object v11, v11, Ljavafx/scene/canvas/GraphicsContext$State;->stroke:Ljavafx/scene/paint/Paint;

    move-object v12, v4

    iget-wide v12, v12, Ljavafx/scene/canvas/GraphicsContext$State;->linewidth:D

    move-object v14, v4

    iget-object v14, v14, Ljavafx/scene/canvas/GraphicsContext$State;->linecap:Ljavafx/scene/shape/StrokeLineCap;

    move-object v15, v4

    iget-object v15, v15, Ljavafx/scene/canvas/GraphicsContext$State;->linejoin:Ljavafx/scene/shape/StrokeLineJoin;

    move-object/from16 v16, v4

    move-object/from16 v0, v16

    iget-wide v0, v0, Ljavafx/scene/canvas/GraphicsContext$State;->miterlimit:D

    move-wide/from16 v16, v0

    move-object/from16 v18, v4

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext$State;->dashes:[D

    move-object/from16 v18, v0

    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget-wide v0, v0, Ljavafx/scene/canvas/GraphicsContext$State;->dashOffset:D

    move-wide/from16 v19, v0

    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget v0, v0, Ljavafx/scene/canvas/GraphicsContext$State;->numClipPaths:I

    move/from16 v21, v0

    move-object/from16 v22, v4

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext$State;->font:Ljavafx/scene/text/Font;

    move-object/from16 v22, v0

    move-object/from16 v23, v4

    move-object/from16 v0, v23

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext$State;->fontsmoothing:Ljavafx/scene/text/FontSmoothingType;

    move-object/from16 v23, v0

    move-object/from16 v24, v4

    move-object/from16 v0, v24

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext$State;->textalign:Ljavafx/scene/text/TextAlignment;

    move-object/from16 v24, v0

    move-object/from16 v25, v4

    move-object/from16 v0, v25

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext$State;->textbaseline:Ljavafx/geometry/VPos;

    move-object/from16 v25, v0

    move-object/from16 v26, v4

    move-object/from16 v0, v26

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext$State;->effect:Ljavafx/scene/effect/Effect;

    move-object/from16 v26, v0

    move-object/from16 v27, v4

    move-object/from16 v0, v27

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext$State;->fillRule:Ljavafx/scene/shape/FillRule;

    move-object/from16 v27, v0

    invoke-virtual/range {v5 .. v27}, Ljavafx/scene/canvas/GraphicsContext$State;->set(DLjavafx/scene/effect/BlendMode;Lcom/sun/javafx/geom/transform/Affine2D;Ljavafx/scene/paint/Paint;Ljavafx/scene/paint/Paint;DLjavafx/scene/shape/StrokeLineCap;Ljavafx/scene/shape/StrokeLineJoin;D[DDILjavafx/scene/text/Font;Ljavafx/scene/text/FontSmoothingType;Ljavafx/scene/text/TextAlignment;Ljavafx/geometry/VPos;Ljavafx/scene/effect/Effect;Ljavafx/scene/shape/FillRule;)V

    .line 554
    return-void
.end method


# virtual methods
.method copy()Ljavafx/scene/canvas/GraphicsContext$State;
    .locals 5

    .prologue
    .line 587
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext$State;
    new-instance v1, Ljavafx/scene/canvas/GraphicsContext$State;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/scene/canvas/GraphicsContext$State;-><init>(Ljavafx/scene/canvas/GraphicsContext$State;)V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/canvas/GraphicsContext$State;
    return-object v0
.end method

.method final init()V
    .locals 25

    .prologue
    .line 534
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext$State;
    move-object v1, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sget-object v4, Ljavafx/scene/effect/BlendMode;->SRC_OVER:Ljavafx/scene/effect/BlendMode;

    new-instance v5, Lcom/sun/javafx/geom/transform/Affine2D;

    move-object/from16 v24, v5

    move-object/from16 v5, v24

    move-object/from16 v6, v24

    invoke-direct {v6}, Lcom/sun/javafx/geom/transform/Affine2D;-><init>()V

    sget-object v6, Ljavafx/scene/paint/Color;->BLACK:Ljavafx/scene/paint/Color;

    sget-object v7, Ljavafx/scene/paint/Color;->BLACK:Ljavafx/scene/paint/Color;

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sget-object v10, Ljavafx/scene/shape/StrokeLineCap;->SQUARE:Ljavafx/scene/shape/StrokeLineCap;

    sget-object v11, Ljavafx/scene/shape/StrokeLineJoin;->MITER:Ljavafx/scene/shape/StrokeLineJoin;

    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    .line 540
    invoke-static {}, Ljavafx/scene/text/Font;->getDefault()Ljavafx/scene/text/Font;

    move-result-object v18

    sget-object v19, Ljavafx/scene/text/FontSmoothingType;->GRAY:Ljavafx/scene/text/FontSmoothingType;

    sget-object v20, Ljavafx/scene/text/TextAlignment;->LEFT:Ljavafx/scene/text/TextAlignment;

    sget-object v21, Ljavafx/geometry/VPos;->BASELINE:Ljavafx/geometry/VPos;

    const/16 v22, 0x0

    sget-object v23, Ljavafx/scene/shape/FillRule;->NON_ZERO:Ljavafx/scene/shape/FillRule;

    .line 534
    invoke-virtual/range {v1 .. v23}, Ljavafx/scene/canvas/GraphicsContext$State;->set(DLjavafx/scene/effect/BlendMode;Lcom/sun/javafx/geom/transform/Affine2D;Ljavafx/scene/paint/Paint;Ljavafx/scene/paint/Paint;DLjavafx/scene/shape/StrokeLineCap;Ljavafx/scene/shape/StrokeLineJoin;D[DDILjavafx/scene/text/Font;Ljavafx/scene/text/FontSmoothingType;Ljavafx/scene/text/TextAlignment;Ljavafx/geometry/VPos;Ljavafx/scene/effect/Effect;Ljavafx/scene/shape/FillRule;)V

    .line 543
    return-void
.end method

.method restore(Ljavafx/scene/canvas/GraphicsContext;)V
    .locals 17

    .prologue
    .line 591
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext$State;
    move-object/from16 v1, p1

    .local v1, "ctx":Ljavafx/scene/canvas/GraphicsContext;
    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/canvas/GraphicsContext$State;->globalAlpha:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/canvas/GraphicsContext;->setGlobalAlpha(D)V

    .line 592
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/canvas/GraphicsContext$State;->blendop:Ljavafx/scene/effect/BlendMode;

    invoke-virtual {v3, v4}, Ljavafx/scene/canvas/GraphicsContext;->setGlobalBlendMode(Ljavafx/scene/effect/BlendMode;)V

    .line 593
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/canvas/GraphicsContext$State;->transform:Lcom/sun/javafx/geom/transform/Affine2D;

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/Affine2D;->getMxx()D

    move-result-wide v4

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/canvas/GraphicsContext$State;->transform:Lcom/sun/javafx/geom/transform/Affine2D;

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/Affine2D;->getMyx()D

    move-result-wide v6

    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/canvas/GraphicsContext$State;->transform:Lcom/sun/javafx/geom/transform/Affine2D;

    .line 594
    invoke-virtual {v8}, Lcom/sun/javafx/geom/transform/Affine2D;->getMxy()D

    move-result-wide v8

    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/canvas/GraphicsContext$State;->transform:Lcom/sun/javafx/geom/transform/Affine2D;

    invoke-virtual {v10}, Lcom/sun/javafx/geom/transform/Affine2D;->getMyy()D

    move-result-wide v10

    move-object v12, v0

    iget-object v12, v12, Ljavafx/scene/canvas/GraphicsContext$State;->transform:Lcom/sun/javafx/geom/transform/Affine2D;

    .line 595
    invoke-virtual {v12}, Lcom/sun/javafx/geom/transform/Affine2D;->getMxt()D

    move-result-wide v12

    move-object v14, v0

    iget-object v14, v14, Ljavafx/scene/canvas/GraphicsContext$State;->transform:Lcom/sun/javafx/geom/transform/Affine2D;

    invoke-virtual {v14}, Lcom/sun/javafx/geom/transform/Affine2D;->getMyt()D

    move-result-wide v14

    .line 593
    invoke-virtual/range {v3 .. v15}, Ljavafx/scene/canvas/GraphicsContext;->setTransform(DDDDDD)V

    .line 596
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/canvas/GraphicsContext$State;->fill:Ljavafx/scene/paint/Paint;

    invoke-virtual {v3, v4}, Ljavafx/scene/canvas/GraphicsContext;->setFill(Ljavafx/scene/paint/Paint;)V

    .line 597
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/canvas/GraphicsContext$State;->stroke:Ljavafx/scene/paint/Paint;

    invoke-virtual {v3, v4}, Ljavafx/scene/canvas/GraphicsContext;->setStroke(Ljavafx/scene/paint/Paint;)V

    .line 598
    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/canvas/GraphicsContext$State;->linewidth:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/canvas/GraphicsContext;->setLineWidth(D)V

    .line 599
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/canvas/GraphicsContext$State;->linecap:Ljavafx/scene/shape/StrokeLineCap;

    invoke-virtual {v3, v4}, Ljavafx/scene/canvas/GraphicsContext;->setLineCap(Ljavafx/scene/shape/StrokeLineCap;)V

    .line 600
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/canvas/GraphicsContext$State;->linejoin:Ljavafx/scene/shape/StrokeLineJoin;

    invoke-virtual {v3, v4}, Ljavafx/scene/canvas/GraphicsContext;->setLineJoin(Ljavafx/scene/shape/StrokeLineJoin;)V

    .line 601
    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/canvas/GraphicsContext$State;->miterlimit:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/canvas/GraphicsContext;->setMiterLimit(D)V

    .line 602
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/canvas/GraphicsContext$State;->dashes:[D

    invoke-virtual {v3, v4}, Ljavafx/scene/canvas/GraphicsContext;->setLineDashes([D)V

    .line 603
    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/canvas/GraphicsContext$State;->dashOffset:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/canvas/GraphicsContext;->setLineDashOffset(D)V

    .line 604
    move-object v3, v1

    invoke-static {v3}, Ljavafx/scene/canvas/GraphicsContext;->access$000(Ljavafx/scene/canvas/GraphicsContext;)Lcom/sun/javafx/sg/prism/GrowableDataBuffer;

    move-result-object v3

    move-object v2, v3

    .line 605
    .local v2, "buf":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    :goto_0
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget v3, v3, Ljavafx/scene/canvas/GraphicsContext$State;->numClipPaths:I

    move-object v4, v0

    iget v4, v4, Ljavafx/scene/canvas/GraphicsContext$State;->numClipPaths:I

    if-le v3, v4, :cond_0

    .line 606
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    move-object/from16 v16, v3

    move-object/from16 v3, v16

    move-object/from16 v4, v16

    iget v4, v4, Ljavafx/scene/canvas/GraphicsContext$State;->numClipPaths:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Ljavafx/scene/canvas/GraphicsContext$State;->numClipPaths:I

    .line 607
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/canvas/GraphicsContext;->clipStack:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v3

    .line 608
    move-object v3, v2

    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putByte(B)V

    goto :goto_0

    .line 610
    :cond_0
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/canvas/GraphicsContext$State;->fillRule:Ljavafx/scene/shape/FillRule;

    invoke-virtual {v3, v4}, Ljavafx/scene/canvas/GraphicsContext;->setFillRule(Ljavafx/scene/shape/FillRule;)V

    .line 611
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/canvas/GraphicsContext$State;->font:Ljavafx/scene/text/Font;

    invoke-virtual {v3, v4}, Ljavafx/scene/canvas/GraphicsContext;->setFont(Ljavafx/scene/text/Font;)V

    .line 612
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/canvas/GraphicsContext$State;->fontsmoothing:Ljavafx/scene/text/FontSmoothingType;

    invoke-virtual {v3, v4}, Ljavafx/scene/canvas/GraphicsContext;->setFontSmoothingType(Ljavafx/scene/text/FontSmoothingType;)V

    .line 613
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/canvas/GraphicsContext$State;->textalign:Ljavafx/scene/text/TextAlignment;

    invoke-virtual {v3, v4}, Ljavafx/scene/canvas/GraphicsContext;->setTextAlign(Ljavafx/scene/text/TextAlignment;)V

    .line 614
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/canvas/GraphicsContext$State;->textbaseline:Ljavafx/geometry/VPos;

    invoke-virtual {v3, v4}, Ljavafx/scene/canvas/GraphicsContext;->setTextBaseline(Ljavafx/geometry/VPos;)V

    .line 615
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/canvas/GraphicsContext$State;->effect:Ljavafx/scene/effect/Effect;

    invoke-virtual {v3, v4}, Ljavafx/scene/canvas/GraphicsContext;->setEffect(Ljavafx/scene/effect/Effect;)V

    .line 616
    return-void
.end method

.method final set(DLjavafx/scene/effect/BlendMode;Lcom/sun/javafx/geom/transform/Affine2D;Ljavafx/scene/paint/Paint;Ljavafx/scene/paint/Paint;DLjavafx/scene/shape/StrokeLineCap;Ljavafx/scene/shape/StrokeLineJoin;D[DDILjavafx/scene/text/Font;Ljavafx/scene/text/FontSmoothingType;Ljavafx/scene/text/TextAlignment;Ljavafx/geometry/VPos;Ljavafx/scene/effect/Effect;Ljavafx/scene/shape/FillRule;)V
    .locals 31

    .prologue
    .line 566
    move-object/from16 v4, p0

    .local v4, "this":Ljavafx/scene/canvas/GraphicsContext$State;
    move-wide/from16 v5, p1

    .local v5, "globalAlpha":D
    move-object/from16 v7, p3

    .local v7, "blendop":Ljavafx/scene/effect/BlendMode;
    move-object/from16 v8, p4

    .local v8, "transform":Lcom/sun/javafx/geom/transform/Affine2D;
    move-object/from16 v9, p5

    .local v9, "fill":Ljavafx/scene/paint/Paint;
    move-object/from16 v10, p6

    .local v10, "stroke":Ljavafx/scene/paint/Paint;
    move-wide/from16 v11, p7

    .local v11, "linewidth":D
    move-object/from16 v13, p9

    .local v13, "linecap":Ljavafx/scene/shape/StrokeLineCap;
    move-object/from16 v14, p10

    .local v14, "linejoin":Ljavafx/scene/shape/StrokeLineJoin;
    move-wide/from16 v15, p11

    .local v15, "miterlimit":D
    move-object/from16 v17, p13

    .local v17, "dashes":[D
    move-wide/from16 v18, p14

    .local v18, "dashOffset":D
    move/from16 v20, p16

    .local v20, "numClipPaths":I
    move-object/from16 v21, p17

    .local v21, "font":Ljavafx/scene/text/Font;
    move-object/from16 v22, p18

    .local v22, "smoothing":Ljavafx/scene/text/FontSmoothingType;
    move-object/from16 v23, p19

    .local v23, "align":Ljavafx/scene/text/TextAlignment;
    move-object/from16 v24, p20

    .local v24, "baseline":Ljavafx/geometry/VPos;
    move-object/from16 v25, p21

    .local v25, "effect":Ljavafx/scene/effect/Effect;
    move-object/from16 v26, p22

    .local v26, "fillRule":Ljavafx/scene/shape/FillRule;
    move-object/from16 v27, v4

    move-wide/from16 v28, v5

    move-wide/from16 v0, v28

    move-object/from16 v2, v27

    iput-wide v0, v2, Ljavafx/scene/canvas/GraphicsContext$State;->globalAlpha:D

    .line 567
    move-object/from16 v27, v4

    move-object/from16 v28, v7

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Ljavafx/scene/canvas/GraphicsContext$State;->blendop:Ljavafx/scene/effect/BlendMode;

    .line 568
    move-object/from16 v27, v4

    move-object/from16 v28, v8

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Ljavafx/scene/canvas/GraphicsContext$State;->transform:Lcom/sun/javafx/geom/transform/Affine2D;

    .line 569
    move-object/from16 v27, v4

    move-object/from16 v28, v9

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Ljavafx/scene/canvas/GraphicsContext$State;->fill:Ljavafx/scene/paint/Paint;

    .line 570
    move-object/from16 v27, v4

    move-object/from16 v28, v10

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Ljavafx/scene/canvas/GraphicsContext$State;->stroke:Ljavafx/scene/paint/Paint;

    .line 571
    move-object/from16 v27, v4

    move-wide/from16 v28, v11

    move-wide/from16 v0, v28

    move-object/from16 v2, v27

    iput-wide v0, v2, Ljavafx/scene/canvas/GraphicsContext$State;->linewidth:D

    .line 572
    move-object/from16 v27, v4

    move-object/from16 v28, v13

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Ljavafx/scene/canvas/GraphicsContext$State;->linecap:Ljavafx/scene/shape/StrokeLineCap;

    .line 573
    move-object/from16 v27, v4

    move-object/from16 v28, v14

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Ljavafx/scene/canvas/GraphicsContext$State;->linejoin:Ljavafx/scene/shape/StrokeLineJoin;

    .line 574
    move-object/from16 v27, v4

    move-wide/from16 v28, v15

    move-wide/from16 v0, v28

    move-object/from16 v2, v27

    iput-wide v0, v2, Ljavafx/scene/canvas/GraphicsContext$State;->miterlimit:D

    .line 575
    move-object/from16 v27, v4

    move-object/from16 v28, v17

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Ljavafx/scene/canvas/GraphicsContext$State;->dashes:[D

    .line 576
    move-object/from16 v27, v4

    move-wide/from16 v28, v18

    move-wide/from16 v0, v28

    move-object/from16 v2, v27

    iput-wide v0, v2, Ljavafx/scene/canvas/GraphicsContext$State;->dashOffset:D

    .line 577
    move-object/from16 v27, v4

    move/from16 v28, v20

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Ljavafx/scene/canvas/GraphicsContext$State;->numClipPaths:I

    .line 578
    move-object/from16 v27, v4

    move-object/from16 v28, v21

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Ljavafx/scene/canvas/GraphicsContext$State;->font:Ljavafx/scene/text/Font;

    .line 579
    move-object/from16 v27, v4

    move-object/from16 v28, v22

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Ljavafx/scene/canvas/GraphicsContext$State;->fontsmoothing:Ljavafx/scene/text/FontSmoothingType;

    .line 580
    move-object/from16 v27, v4

    move-object/from16 v28, v23

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Ljavafx/scene/canvas/GraphicsContext$State;->textalign:Ljavafx/scene/text/TextAlignment;

    .line 581
    move-object/from16 v27, v4

    move-object/from16 v28, v24

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Ljavafx/scene/canvas/GraphicsContext$State;->textbaseline:Ljavafx/geometry/VPos;

    .line 582
    move-object/from16 v27, v4

    move-object/from16 v28, v25

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Ljavafx/scene/canvas/GraphicsContext$State;->effect:Ljavafx/scene/effect/Effect;

    .line 583
    move-object/from16 v27, v4

    move-object/from16 v28, v26

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Ljavafx/scene/canvas/GraphicsContext$State;->fillRule:Ljavafx/scene/shape/FillRule;

    .line 584
    return-void
.end method
