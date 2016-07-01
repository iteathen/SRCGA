.class public Lcom/sun/prism/impl/shape/OpenPiscesRasterizer;
.super Ljava/lang/Object;
.source "OpenPiscesRasterizer.java"

# interfaces
.implements Lcom/sun/prism/impl/shape/ShapeRasterizer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/prism/impl/shape/OpenPiscesRasterizer$Consumer;
    }
.end annotation


# static fields
.field private static emptyData:Lcom/sun/prism/impl/shape/MaskData;

.field private static savedConsumer:Lcom/sun/prism/impl/shape/OpenPiscesRasterizer$Consumer;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 40
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sun/prism/impl/shape/MaskData;->create([BIIII)Lcom/sun/prism/impl/shape/MaskData;

    move-result-object v0

    sput-object v0, Lcom/sun/prism/impl/shape/OpenPiscesRasterizer;->emptyData:Lcom/sun/prism/impl/shape/MaskData;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/shape/OpenPiscesRasterizer;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaskData(Lcom/sun/javafx/geom/Shape;Lcom/sun/prism/BasicStroke;Lcom/sun/javafx/geom/RectBounds;Lcom/sun/javafx/geom/transform/BaseTransform;ZZ)Lcom/sun/prism/impl/shape/MaskData;
    .locals 25

    .prologue
    .line 51
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/prism/impl/shape/OpenPiscesRasterizer;
    move-object/from16 v3, p1

    .local v3, "shape":Lcom/sun/javafx/geom/Shape;
    move-object/from16 v4, p2

    .local v4, "stroke":Lcom/sun/prism/BasicStroke;
    move-object/from16 v5, p3

    .local v5, "xformBounds":Lcom/sun/javafx/geom/RectBounds;
    move-object/from16 v6, p4

    .local v6, "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move/from16 v7, p5

    .local v7, "close":Z
    move/from16 v8, p6

    .local v8, "antialiasedShape":Z
    move-object/from16 v19, v4

    if-eqz v19, :cond_0

    move-object/from16 v19, v4

    invoke-virtual/range {v19 .. v19}, Lcom/sun/prism/BasicStroke;->getType()I

    move-result v19

    if-eqz v19, :cond_0

    .line 58
    move-object/from16 v19, v4

    move-object/from16 v20, v3

    invoke-virtual/range {v19 .. v20}, Lcom/sun/prism/BasicStroke;->createStrokedShape(Lcom/sun/javafx/geom/Shape;)Lcom/sun/javafx/geom/Shape;

    move-result-object v19

    move-object/from16 v3, v19

    .line 59
    const/16 v19, 0x0

    move-object/from16 v4, v19

    .line 61
    :cond_0
    move-object/from16 v19, v5

    if-nez v19, :cond_2

    .line 62
    move-object/from16 v19, v4

    if-eqz v19, :cond_1

    .line 66
    move-object/from16 v19, v4

    move-object/from16 v20, v3

    invoke-virtual/range {v19 .. v20}, Lcom/sun/prism/BasicStroke;->createStrokedShape(Lcom/sun/javafx/geom/Shape;)Lcom/sun/javafx/geom/Shape;

    move-result-object v19

    move-object/from16 v3, v19

    .line 67
    const/16 v19, 0x0

    move-object/from16 v4, v19

    .line 70
    :cond_1
    new-instance v19, Lcom/sun/javafx/geom/RectBounds;

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    invoke-direct/range {v20 .. v20}, Lcom/sun/javafx/geom/RectBounds;-><init>()V

    move-object/from16 v5, v19

    .line 72
    move-object/from16 v19, v6

    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/Shape;->getBounds()Lcom/sun/javafx/geom/RectBounds;

    move-result-object v20

    move-object/from16 v21, v5

    invoke-virtual/range {v19 .. v21}, Lcom/sun/javafx/geom/transform/BaseTransform;->transform(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v19

    check-cast v19, Lcom/sun/javafx/geom/RectBounds;

    move-object/from16 v5, v19

    .line 74
    :cond_2
    new-instance v19, Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    move-object/from16 v21, v5

    invoke-direct/range {v20 .. v21}, Lcom/sun/javafx/geom/Rectangle;-><init>(Lcom/sun/javafx/geom/BaseBounds;)V

    move-object/from16 v9, v19

    .line 75
    .local v9, "rclip":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v19, v9

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/geom/Rectangle;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 76
    sget-object v19, Lcom/sun/prism/impl/shape/OpenPiscesRasterizer;->emptyData:Lcom/sun/prism/impl/shape/MaskData;

    move-object/from16 v2, v19

    .line 107
    .end local v2    # "this":Lcom/sun/prism/impl/shape/OpenPiscesRasterizer;
    :goto_0
    return-object v2

    .line 78
    .restart local v2    # "this":Lcom/sun/prism/impl/shape/OpenPiscesRasterizer;
    :cond_3
    const/16 v19, 0x0

    move-object/from16 v10, v19

    .line 79
    .local v10, "renderer":Lcom/sun/openpisces/Renderer;
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/sun/javafx/geom/Path2D;

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 80
    move-object/from16 v19, v3

    check-cast v19, Lcom/sun/javafx/geom/Path2D;

    move-object/from16 v20, v4

    move-object/from16 v21, v6

    move-object/from16 v22, v9

    move/from16 v23, v8

    invoke-static/range {v19 .. v23}, Lcom/sun/prism/impl/shape/OpenPiscesPrismUtils;->setupRenderer(Lcom/sun/javafx/geom/Path2D;Lcom/sun/prism/BasicStroke;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Z)Lcom/sun/openpisces/Renderer;

    move-result-object v19

    move-object/from16 v10, v19

    .line 83
    :cond_4
    move-object/from16 v19, v10

    if-nez v19, :cond_5

    .line 84
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v6

    move-object/from16 v22, v9

    move/from16 v23, v8

    invoke-static/range {v19 .. v23}, Lcom/sun/prism/impl/shape/OpenPiscesPrismUtils;->setupRenderer(Lcom/sun/javafx/geom/Shape;Lcom/sun/prism/BasicStroke;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Z)Lcom/sun/openpisces/Renderer;

    move-result-object v19

    move-object/from16 v10, v19

    .line 87
    :cond_5
    move-object/from16 v19, v10

    invoke-virtual/range {v19 .. v19}, Lcom/sun/openpisces/Renderer;->getOutpixMinX()I

    move-result v19

    move/from16 v11, v19

    .line 88
    .local v11, "outpix_xmin":I
    move-object/from16 v19, v10

    invoke-virtual/range {v19 .. v19}, Lcom/sun/openpisces/Renderer;->getOutpixMinY()I

    move-result v19

    move/from16 v12, v19

    .line 89
    .local v12, "outpix_ymin":I
    move-object/from16 v19, v10

    invoke-virtual/range {v19 .. v19}, Lcom/sun/openpisces/Renderer;->getOutpixMaxX()I

    move-result v19

    move/from16 v13, v19

    .line 90
    .local v13, "outpix_xmax":I
    move-object/from16 v19, v10

    invoke-virtual/range {v19 .. v19}, Lcom/sun/openpisces/Renderer;->getOutpixMaxY()I

    move-result v19

    move/from16 v14, v19

    .line 91
    .local v14, "outpix_ymax":I
    move/from16 v19, v13

    move/from16 v20, v11

    sub-int v19, v19, v20

    move/from16 v15, v19

    .line 92
    .local v15, "w":I
    move/from16 v19, v14

    move/from16 v20, v12

    sub-int v19, v19, v20

    move/from16 v16, v19

    .line 93
    .local v16, "h":I
    move/from16 v19, v15

    if-lez v19, :cond_6

    move/from16 v19, v16

    if-gtz v19, :cond_7

    .line 94
    :cond_6
    sget-object v19, Lcom/sun/prism/impl/shape/OpenPiscesRasterizer;->emptyData:Lcom/sun/prism/impl/shape/MaskData;

    move-object/from16 v2, v19

    goto :goto_0

    .line 97
    :cond_7
    sget-object v19, Lcom/sun/prism/impl/shape/OpenPiscesRasterizer;->savedConsumer:Lcom/sun/prism/impl/shape/OpenPiscesRasterizer$Consumer;

    move-object/from16 v17, v19

    .line 98
    .local v17, "consumer":Lcom/sun/prism/impl/shape/OpenPiscesRasterizer$Consumer;
    move-object/from16 v19, v17

    if-eqz v19, :cond_8

    move/from16 v19, v15

    move/from16 v20, v16

    mul-int v19, v19, v20

    move-object/from16 v20, v17

    invoke-virtual/range {v20 .. v20}, Lcom/sun/prism/impl/shape/OpenPiscesRasterizer$Consumer;->getAlphaLength()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_9

    .line 99
    :cond_8
    move/from16 v19, v15

    move/from16 v20, v16

    mul-int v19, v19, v20

    const/16 v20, 0xfff

    move/from16 v0, v19

    add-int/lit16 v0, v0, 0xfff

    move/from16 v19, v0

    const/16 v20, -0x1000

    move/from16 v0, v19

    and-int/lit16 v0, v0, -0x1000

    move/from16 v19, v0

    move/from16 v18, v19

    .line 100
    .local v18, "csize":I
    new-instance v19, Lcom/sun/prism/impl/shape/OpenPiscesRasterizer$Consumer;

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    move/from16 v21, v18

    invoke-direct/range {v20 .. v21}, Lcom/sun/prism/impl/shape/OpenPiscesRasterizer$Consumer;-><init>(I)V

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    move-object/from16 v17, v20

    sput-object v19, Lcom/sun/prism/impl/shape/OpenPiscesRasterizer;->savedConsumer:Lcom/sun/prism/impl/shape/OpenPiscesRasterizer$Consumer;

    .line 101
    sget-boolean v19, Lcom/sun/prism/impl/PrismSettings;->verbose:Z

    if-eqz v19, :cond_9

    .line 102
    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v20, "new alphas"

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 105
    .end local v18    # "csize":I
    :cond_9
    move-object/from16 v19, v17

    move/from16 v20, v11

    move/from16 v21, v12

    move/from16 v22, v15

    move/from16 v23, v16

    invoke-virtual/range {v19 .. v23}, Lcom/sun/prism/impl/shape/OpenPiscesRasterizer$Consumer;->setBoundsNoClone(IIII)V

    .line 106
    move-object/from16 v19, v10

    move-object/from16 v20, v17

    invoke-virtual/range {v19 .. v20}, Lcom/sun/openpisces/Renderer;->produceAlphas(Lcom/sun/openpisces/AlphaConsumer;)V

    .line 107
    move-object/from16 v19, v17

    invoke-virtual/range {v19 .. v19}, Lcom/sun/prism/impl/shape/OpenPiscesRasterizer$Consumer;->getMaskData()Lcom/sun/prism/impl/shape/MaskData;

    move-result-object v19

    move-object/from16 v2, v19

    goto/16 :goto_0
.end method
