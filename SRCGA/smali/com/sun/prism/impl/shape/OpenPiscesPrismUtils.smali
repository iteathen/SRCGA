.class public Lcom/sun/prism/impl/shape/OpenPiscesPrismUtils;
.super Ljava/lang/Object;
.source "OpenPiscesPrismUtils.java"


# static fields
.field private static final savedAARenderer:Lcom/sun/openpisces/Renderer;

.field private static final savedDasher:Lcom/sun/openpisces/Dasher;

.field private static final savedRenderer:Lcom/sun/openpisces/Renderer;

.field private static final savedStroker:Lcom/sun/openpisces/Stroker;

.field private static transformer:Lcom/sun/openpisces/TransformingPathConsumer2D$FilterSet;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 42
    new-instance v0, Lcom/sun/openpisces/Renderer;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/sun/openpisces/Renderer;-><init>(II)V

    sput-object v0, Lcom/sun/prism/impl/shape/OpenPiscesPrismUtils;->savedAARenderer:Lcom/sun/openpisces/Renderer;

    .line 43
    new-instance v0, Lcom/sun/openpisces/Renderer;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sun/openpisces/Renderer;-><init>(II)V

    sput-object v0, Lcom/sun/prism/impl/shape/OpenPiscesPrismUtils;->savedRenderer:Lcom/sun/openpisces/Renderer;

    .line 44
    new-instance v0, Lcom/sun/openpisces/Stroker;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Lcom/sun/prism/impl/shape/OpenPiscesPrismUtils;->savedRenderer:Lcom/sun/openpisces/Renderer;

    invoke-direct {v1, v2}, Lcom/sun/openpisces/Stroker;-><init>(Lcom/sun/javafx/geom/PathConsumer2D;)V

    sput-object v0, Lcom/sun/prism/impl/shape/OpenPiscesPrismUtils;->savedStroker:Lcom/sun/openpisces/Stroker;

    .line 45
    new-instance v0, Lcom/sun/openpisces/Dasher;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Lcom/sun/prism/impl/shape/OpenPiscesPrismUtils;->savedStroker:Lcom/sun/openpisces/Stroker;

    invoke-direct {v1, v2}, Lcom/sun/openpisces/Dasher;-><init>(Lcom/sun/javafx/geom/PathConsumer2D;)V

    sput-object v0, Lcom/sun/prism/impl/shape/OpenPiscesPrismUtils;->savedDasher:Lcom/sun/openpisces/Dasher;

    .line 47
    new-instance v0, Lcom/sun/openpisces/TransformingPathConsumer2D$FilterSet;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Lcom/sun/openpisces/TransformingPathConsumer2D$FilterSet;-><init>()V

    sput-object v0, Lcom/sun/prism/impl/shape/OpenPiscesPrismUtils;->transformer:Lcom/sun/openpisces/TransformingPathConsumer2D$FilterSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/shape/OpenPiscesPrismUtils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static feedConsumer(Lcom/sun/javafx/geom/PathIterator;Lcom/sun/javafx/geom/PathConsumer2D;)V
    .locals 12

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "pi":Lcom/sun/javafx/geom/PathIterator;
    move-object v1, p1

    .local v1, "pc":Lcom/sun/javafx/geom/PathConsumer2D;
    const/4 v4, 0x6

    new-array v4, v4, [F

    move-object v2, v4

    .line 76
    .local v2, "coords":[F
    :goto_0
    move-object v4, v0

    invoke-interface {v4}, Lcom/sun/javafx/geom/PathIterator;->isDone()Z

    move-result v4

    if-nez v4, :cond_0

    .line 77
    move-object v4, v0

    move-object v5, v2

    invoke-interface {v4, v5}, Lcom/sun/javafx/geom/PathIterator;->currentSegment([F)I

    move-result v4

    move v3, v4

    .line 78
    .local v3, "type":I
    move v4, v3

    packed-switch v4, :pswitch_data_0

    .line 98
    :goto_1
    move-object v4, v0

    invoke-interface {v4}, Lcom/sun/javafx/geom/PathIterator;->next()V

    .line 99
    goto :goto_0

    .line 80
    :pswitch_0
    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    aget v5, v5, v6

    move-object v6, v2

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-interface {v4, v5, v6}, Lcom/sun/javafx/geom/PathConsumer2D;->moveTo(FF)V

    .line 81
    goto :goto_1

    .line 83
    :pswitch_1
    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    aget v5, v5, v6

    move-object v6, v2

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-interface {v4, v5, v6}, Lcom/sun/javafx/geom/PathConsumer2D;->lineTo(FF)V

    .line 84
    goto :goto_1

    .line 86
    :pswitch_2
    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    aget v5, v5, v6

    move-object v6, v2

    const/4 v7, 0x1

    aget v6, v6, v7

    move-object v7, v2

    const/4 v8, 0x2

    aget v7, v7, v8

    move-object v8, v2

    const/4 v9, 0x3

    aget v8, v8, v9

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/sun/javafx/geom/PathConsumer2D;->quadTo(FFFF)V

    .line 88
    goto :goto_1

    .line 90
    :pswitch_3
    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    aget v5, v5, v6

    move-object v6, v2

    const/4 v7, 0x1

    aget v6, v6, v7

    move-object v7, v2

    const/4 v8, 0x2

    aget v7, v7, v8

    move-object v8, v2

    const/4 v9, 0x3

    aget v8, v8, v9

    move-object v9, v2

    const/4 v10, 0x4

    aget v9, v9, v10

    move-object v10, v2

    const/4 v11, 0x5

    aget v10, v10, v11

    invoke-interface/range {v4 .. v10}, Lcom/sun/javafx/geom/PathConsumer2D;->curveTo(FFFFFF)V

    .line 93
    goto :goto_1

    .line 95
    :pswitch_4
    move-object v4, v1

    invoke-interface {v4}, Lcom/sun/javafx/geom/PathConsumer2D;->closePath()V

    goto :goto_1

    .line 100
    .end local v3    # "type":I
    :cond_0
    move-object v4, v1

    invoke-interface {v4}, Lcom/sun/javafx/geom/PathConsumer2D;->pathDone()V

    .line 101
    return-void

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static initRenderer(Lcom/sun/prism/BasicStroke;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;ILcom/sun/openpisces/Renderer;)Lcom/sun/javafx/geom/PathConsumer2D;
    .locals 14

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "stroke":Lcom/sun/prism/BasicStroke;
    move-object v1, p1

    .local v1, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v2, p2

    .local v2, "clip":Lcom/sun/javafx/geom/Rectangle;
    move/from16 v3, p3

    .local v3, "pirule":I
    move-object/from16 v4, p4

    .local v4, "renderer":Lcom/sun/openpisces/Renderer;
    move-object v8, v0

    if-nez v8, :cond_1

    move v8, v3

    if-nez v8, :cond_1

    const/4 v8, 0x0

    :goto_0
    move v5, v8

    .line 58
    .local v5, "oprule":I
    move-object v8, v4

    move-object v9, v2

    iget v9, v9, Lcom/sun/javafx/geom/Rectangle;->x:I

    move-object v10, v2

    iget v10, v10, Lcom/sun/javafx/geom/Rectangle;->y:I

    move-object v11, v2

    iget v11, v11, Lcom/sun/javafx/geom/Rectangle;->width:I

    move-object v12, v2

    iget v12, v12, Lcom/sun/javafx/geom/Rectangle;->height:I

    move v13, v5

    invoke-virtual/range {v8 .. v13}, Lcom/sun/openpisces/Renderer;->reset(IIIII)V

    .line 59
    sget-object v8, Lcom/sun/prism/impl/shape/OpenPiscesPrismUtils;->transformer:Lcom/sun/openpisces/TransformingPathConsumer2D$FilterSet;

    move-object v9, v4

    move-object v10, v1

    invoke-virtual {v8, v9, v10}, Lcom/sun/openpisces/TransformingPathConsumer2D$FilterSet;->getConsumer(Lcom/sun/javafx/geom/PathConsumer2D;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/PathConsumer2D;

    move-result-object v8

    move-object v6, v8

    .line 60
    .local v6, "ret":Lcom/sun/javafx/geom/PathConsumer2D;
    move-object v8, v0

    if-eqz v8, :cond_0

    .line 61
    sget-object v8, Lcom/sun/prism/impl/shape/OpenPiscesPrismUtils;->savedStroker:Lcom/sun/openpisces/Stroker;

    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/prism/BasicStroke;->getLineWidth()F

    move-result v9

    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/prism/BasicStroke;->getEndCap()I

    move-result v10

    move-object v11, v0

    .line 62
    invoke-virtual {v11}, Lcom/sun/prism/BasicStroke;->getLineJoin()I

    move-result v11

    move-object v12, v0

    invoke-virtual {v12}, Lcom/sun/prism/BasicStroke;->getMiterLimit()F

    move-result v12

    .line 61
    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/sun/openpisces/Stroker;->reset(FIIF)V

    .line 63
    sget-object v8, Lcom/sun/prism/impl/shape/OpenPiscesPrismUtils;->savedStroker:Lcom/sun/openpisces/Stroker;

    move-object v9, v6

    invoke-virtual {v8, v9}, Lcom/sun/openpisces/Stroker;->setConsumer(Lcom/sun/javafx/geom/PathConsumer2D;)V

    .line 64
    sget-object v8, Lcom/sun/prism/impl/shape/OpenPiscesPrismUtils;->savedStroker:Lcom/sun/openpisces/Stroker;

    move-object v6, v8

    .line 65
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/prism/BasicStroke;->getDashArray()[F

    move-result-object v8

    move-object v7, v8

    .line 66
    .local v7, "dashes":[F
    move-object v8, v7

    if-eqz v8, :cond_0

    .line 67
    sget-object v8, Lcom/sun/prism/impl/shape/OpenPiscesPrismUtils;->savedDasher:Lcom/sun/openpisces/Dasher;

    move-object v9, v7

    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/prism/BasicStroke;->getDashPhase()F

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/sun/openpisces/Dasher;->reset([FF)V

    .line 68
    sget-object v8, Lcom/sun/prism/impl/shape/OpenPiscesPrismUtils;->savedDasher:Lcom/sun/openpisces/Dasher;

    move-object v6, v8

    .line 71
    .end local v7    # "dashes":[F
    :cond_0
    move-object v8, v6

    move-object v0, v8

    .end local v0    # "stroke":Lcom/sun/prism/BasicStroke;
    return-object v0

    .line 56
    .end local v5    # "oprule":I
    .end local v6    # "ret":Lcom/sun/javafx/geom/PathConsumer2D;
    .restart local v0    # "stroke":Lcom/sun/prism/BasicStroke;
    :cond_1
    const/4 v8, 0x1

    goto :goto_0
.end method

.method public static setupRenderer(Lcom/sun/javafx/geom/Path2D;Lcom/sun/prism/BasicStroke;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Z)Lcom/sun/openpisces/Renderer;
    .locals 21

    .prologue
    .line 121
    move-object/from16 v0, p0

    .local v0, "p2d":Lcom/sun/javafx/geom/Path2D;
    move-object/from16 v1, p1

    .local v1, "stroke":Lcom/sun/prism/BasicStroke;
    move-object/from16 v2, p2

    .local v2, "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v3, p3

    .local v3, "rclip":Lcom/sun/javafx/geom/Rectangle;
    move/from16 v4, p4

    .local v4, "antialiasedShape":Z
    move v12, v4

    if-eqz v12, :cond_0

    sget-object v12, Lcom/sun/prism/impl/shape/OpenPiscesPrismUtils;->savedAARenderer:Lcom/sun/openpisces/Renderer;

    :goto_0
    move-object v5, v12

    .line 122
    .local v5, "r":Lcom/sun/openpisces/Renderer;
    move-object v12, v1

    move-object v13, v2

    move-object v14, v3

    move-object v15, v0

    invoke-virtual {v15}, Lcom/sun/javafx/geom/Path2D;->getWindingRule()I

    move-result v15

    move-object/from16 v16, v5

    invoke-static/range {v12 .. v16}, Lcom/sun/prism/impl/shape/OpenPiscesPrismUtils;->initRenderer(Lcom/sun/prism/BasicStroke;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;ILcom/sun/openpisces/Renderer;)Lcom/sun/javafx/geom/PathConsumer2D;

    move-result-object v12

    move-object v6, v12

    .line 124
    .local v6, "pc2d":Lcom/sun/javafx/geom/PathConsumer2D;
    move-object v12, v0

    invoke-virtual {v12}, Lcom/sun/javafx/geom/Path2D;->getFloatCoordsNoClone()[F

    move-result-object v12

    move-object v7, v12

    .line 125
    .local v7, "coords":[F
    move-object v12, v0

    invoke-virtual {v12}, Lcom/sun/javafx/geom/Path2D;->getCommandsNoClone()[B

    move-result-object v12

    move-object v8, v12

    .line 126
    .local v8, "types":[B
    move-object v12, v0

    invoke-virtual {v12}, Lcom/sun/javafx/geom/Path2D;->getNumCommands()I

    move-result v12

    move v9, v12

    .line 127
    .local v9, "nsegs":I
    const/4 v12, 0x0

    move v10, v12

    .line 128
    .local v10, "coff":I
    const/4 v12, 0x0

    move v11, v12

    .local v11, "i":I
    :goto_1
    move v12, v11

    move v13, v9

    if-ge v12, v13, :cond_1

    .line 129
    move-object v12, v8

    move v13, v11

    aget-byte v12, v12, v13

    packed-switch v12, :pswitch_data_0

    .line 128
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 121
    .end local v5    # "r":Lcom/sun/openpisces/Renderer;
    .end local v6    # "pc2d":Lcom/sun/javafx/geom/PathConsumer2D;
    .end local v7    # "coords":[F
    .end local v8    # "types":[B
    .end local v9    # "nsegs":I
    .end local v10    # "coff":I
    .end local v11    # "i":I
    :cond_0
    sget-object v12, Lcom/sun/prism/impl/shape/OpenPiscesPrismUtils;->savedRenderer:Lcom/sun/openpisces/Renderer;

    goto :goto_0

    .line 131
    .restart local v5    # "r":Lcom/sun/openpisces/Renderer;
    .restart local v6    # "pc2d":Lcom/sun/javafx/geom/PathConsumer2D;
    .restart local v7    # "coords":[F
    .restart local v8    # "types":[B
    .restart local v9    # "nsegs":I
    .restart local v10    # "coff":I
    .restart local v11    # "i":I
    :pswitch_0
    move-object v12, v6

    move-object v13, v7

    move v14, v10

    const/4 v15, 0x0

    add-int/lit8 v14, v14, 0x0

    aget v13, v13, v14

    move-object v14, v7

    move v15, v10

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    aget v14, v14, v15

    invoke-interface {v12, v13, v14}, Lcom/sun/javafx/geom/PathConsumer2D;->moveTo(FF)V

    .line 132
    add-int/lit8 v10, v10, 0x2

    .line 133
    goto :goto_2

    .line 135
    :pswitch_1
    move-object v12, v6

    move-object v13, v7

    move v14, v10

    const/4 v15, 0x0

    add-int/lit8 v14, v14, 0x0

    aget v13, v13, v14

    move-object v14, v7

    move v15, v10

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    aget v14, v14, v15

    invoke-interface {v12, v13, v14}, Lcom/sun/javafx/geom/PathConsumer2D;->lineTo(FF)V

    .line 136
    add-int/lit8 v10, v10, 0x2

    .line 137
    goto :goto_2

    .line 139
    :pswitch_2
    move-object v12, v6

    move-object v13, v7

    move v14, v10

    const/4 v15, 0x0

    add-int/lit8 v14, v14, 0x0

    aget v13, v13, v14

    move-object v14, v7

    move v15, v10

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    aget v14, v14, v15

    move-object v15, v7

    move/from16 v16, v10

    const/16 v17, 0x2

    add-int/lit8 v16, v16, 0x2

    aget v15, v15, v16

    move-object/from16 v16, v7

    move/from16 v17, v10

    const/16 v18, 0x3

    add-int/lit8 v17, v17, 0x3

    aget v16, v16, v17

    invoke-interface/range {v12 .. v16}, Lcom/sun/javafx/geom/PathConsumer2D;->quadTo(FFFF)V

    .line 141
    add-int/lit8 v10, v10, 0x4

    .line 142
    goto :goto_2

    .line 144
    :pswitch_3
    move-object v12, v6

    move-object v13, v7

    move v14, v10

    const/4 v15, 0x0

    add-int/lit8 v14, v14, 0x0

    aget v13, v13, v14

    move-object v14, v7

    move v15, v10

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    aget v14, v14, v15

    move-object v15, v7

    move/from16 v16, v10

    const/16 v17, 0x2

    add-int/lit8 v16, v16, 0x2

    aget v15, v15, v16

    move-object/from16 v16, v7

    move/from16 v17, v10

    const/16 v18, 0x3

    add-int/lit8 v17, v17, 0x3

    aget v16, v16, v17

    move-object/from16 v17, v7

    move/from16 v18, v10

    const/16 v19, 0x4

    add-int/lit8 v18, v18, 0x4

    aget v17, v17, v18

    move-object/from16 v18, v7

    move/from16 v19, v10

    const/16 v20, 0x5

    add-int/lit8 v19, v19, 0x5

    aget v18, v18, v19

    invoke-interface/range {v12 .. v18}, Lcom/sun/javafx/geom/PathConsumer2D;->curveTo(FFFFFF)V

    .line 147
    add-int/lit8 v10, v10, 0x6

    .line 148
    goto/16 :goto_2

    .line 150
    :pswitch_4
    move-object v12, v6

    invoke-interface {v12}, Lcom/sun/javafx/geom/PathConsumer2D;->closePath()V

    goto/16 :goto_2

    .line 154
    :cond_1
    move-object v12, v6

    invoke-interface {v12}, Lcom/sun/javafx/geom/PathConsumer2D;->pathDone()V

    .line 155
    move-object v12, v5

    move-object v0, v12

    .end local v0    # "p2d":Lcom/sun/javafx/geom/Path2D;
    return-object v0

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static setupRenderer(Lcom/sun/javafx/geom/Shape;Lcom/sun/prism/BasicStroke;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Z)Lcom/sun/openpisces/Renderer;
    .locals 13

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "shape":Lcom/sun/javafx/geom/Shape;
    move-object v1, p1

    .local v1, "stroke":Lcom/sun/prism/BasicStroke;
    move-object v2, p2

    .local v2, "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v3, p3

    .local v3, "rclip":Lcom/sun/javafx/geom/Rectangle;
    move/from16 v4, p4

    .local v4, "antialiasedShape":Z
    move-object v7, v0

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/sun/javafx/geom/Shape;->getPathIterator(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/PathIterator;

    move-result-object v7

    move-object v5, v7

    .line 110
    .local v5, "pi":Lcom/sun/javafx/geom/PathIterator;
    move v7, v4

    if-eqz v7, :cond_0

    sget-object v7, Lcom/sun/prism/impl/shape/OpenPiscesPrismUtils;->savedAARenderer:Lcom/sun/openpisces/Renderer;

    :goto_0
    move-object v6, v7

    .line 111
    .local v6, "r":Lcom/sun/openpisces/Renderer;
    move-object v7, v5

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move-object v11, v5

    invoke-interface {v11}, Lcom/sun/javafx/geom/PathIterator;->getWindingRule()I

    move-result v11

    move-object v12, v6

    invoke-static {v8, v9, v10, v11, v12}, Lcom/sun/prism/impl/shape/OpenPiscesPrismUtils;->initRenderer(Lcom/sun/prism/BasicStroke;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;ILcom/sun/openpisces/Renderer;)Lcom/sun/javafx/geom/PathConsumer2D;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sun/prism/impl/shape/OpenPiscesPrismUtils;->feedConsumer(Lcom/sun/javafx/geom/PathIterator;Lcom/sun/javafx/geom/PathConsumer2D;)V

    .line 112
    move-object v7, v6

    move-object v0, v7

    .end local v0    # "shape":Lcom/sun/javafx/geom/Shape;
    return-object v0

    .line 110
    .end local v6    # "r":Lcom/sun/openpisces/Renderer;
    .restart local v0    # "shape":Lcom/sun/javafx/geom/Shape;
    :cond_0
    sget-object v7, Lcom/sun/prism/impl/shape/OpenPiscesPrismUtils;->savedRenderer:Lcom/sun/openpisces/Renderer;

    goto :goto_0
.end method
