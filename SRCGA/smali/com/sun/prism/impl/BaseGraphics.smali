.class public abstract Lcom/sun/prism/impl/BaseGraphics;
.super Ljava/lang/Object;
.source "BaseGraphics.java"

# interfaces
.implements Lcom/sun/prism/RectShadowGraphics;


# static fields
.field private static final DEFAULT_PAINT:Lcom/sun/prism/paint/Paint;

.field private static final DEFAULT_STROKE:Lcom/sun/prism/BasicStroke;

.field protected static final IDENT:Lcom/sun/javafx/geom/transform/BaseTransform;

.field protected static final scratchEllipse:Lcom/sun/javafx/geom/Ellipse2D;

.field protected static final scratchLine:Lcom/sun/javafx/geom/Line2D;

.field protected static final scratchRRect:Lcom/sun/javafx/geom/RoundRectangle2D;


# instance fields
.field private antialiasedShape:Z

.field private camera:Lcom/sun/javafx/sg/prism/NGCamera;

.field private clipRect:Lcom/sun/javafx/geom/Rectangle;

.field private clipRectIndex:I

.field private compMode:Lcom/sun/prism/CompositeMode;

.field private final context:Lcom/sun/prism/impl/BaseContext;

.field private depthBuffer:Z

.field private depthTest:Z

.field private devClipRect:Lcom/sun/javafx/geom/RectBounds;

.field private extraAlpha:F

.field private finalClipRect:Lcom/sun/javafx/geom/RectBounds;

.field private hasPreCullingBits:Z

.field protected isSimpleTranslate:Z

.field protected nodeBounds:Lcom/sun/javafx/geom/RectBounds;

.field protected paint:Lcom/sun/prism/paint/Paint;

.field private pixelScale:F

.field private renderRoot:Lcom/sun/javafx/sg/prism/NodePath;

.field private final renderTarget:Lcom/sun/prism/RenderTarget;

.field private state3D:Z

.field protected stroke:Lcom/sun/prism/BasicStroke;

.field protected transX:F

.field protected transY:F

.field private final transform3D:Lcom/sun/javafx/geom/transform/Affine3D;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 51
    new-instance v0, Lcom/sun/prism/BasicStroke;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/high16 v5, 0x41200000    # 10.0f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sun/prism/BasicStroke;-><init>(FIIF)V

    sput-object v0, Lcom/sun/prism/impl/BaseGraphics;->DEFAULT_STROKE:Lcom/sun/prism/BasicStroke;

    .line 53
    sget-object v0, Lcom/sun/prism/paint/Color;->WHITE:Lcom/sun/prism/paint/Color;

    sput-object v0, Lcom/sun/prism/impl/BaseGraphics;->DEFAULT_PAINT:Lcom/sun/prism/paint/Paint;

    .line 55
    new-instance v0, Lcom/sun/javafx/geom/RoundRectangle2D;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    invoke-direct {v1}, Lcom/sun/javafx/geom/RoundRectangle2D;-><init>()V

    sput-object v0, Lcom/sun/prism/impl/BaseGraphics;->scratchRRect:Lcom/sun/javafx/geom/RoundRectangle2D;

    .line 56
    new-instance v0, Lcom/sun/javafx/geom/Ellipse2D;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    invoke-direct {v1}, Lcom/sun/javafx/geom/Ellipse2D;-><init>()V

    sput-object v0, Lcom/sun/prism/impl/BaseGraphics;->scratchEllipse:Lcom/sun/javafx/geom/Ellipse2D;

    .line 57
    new-instance v0, Lcom/sun/javafx/geom/Line2D;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    invoke-direct {v1}, Lcom/sun/javafx/geom/Line2D;-><init>()V

    sput-object v0, Lcom/sun/prism/impl/BaseGraphics;->scratchLine:Lcom/sun/javafx/geom/Line2D;

    .line 58
    sget-object v0, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    sput-object v0, Lcom/sun/prism/impl/BaseGraphics;->IDENT:Lcom/sun/javafx/geom/transform/BaseTransform;

    return-void
.end method

.method protected constructor <init>(Lcom/sun/prism/impl/BaseContext;Lcom/sun/prism/RenderTarget;)V
    .locals 11

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseGraphics;
    move-object v1, p1

    .local v1, "context":Lcom/sun/prism/impl/BaseContext;
    move-object v2, p2

    .local v2, "target":Lcom/sun/prism/RenderTarget;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 61
    move-object v3, v0

    new-instance v4, Lcom/sun/javafx/geom/transform/Affine3D;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-direct {v5}, Lcom/sun/javafx/geom/transform/Affine3D;-><init>()V

    iput-object v4, v3, Lcom/sun/prism/impl/BaseGraphics;->transform3D:Lcom/sun/javafx/geom/transform/Affine3D;

    .line 62
    move-object v3, v0

    sget-object v4, Lcom/sun/javafx/sg/prism/NGCamera;->INSTANCE:Lcom/sun/javafx/sg/prism/NGCamera;

    iput-object v4, v3, Lcom/sun/prism/impl/BaseGraphics;->camera:Lcom/sun/javafx/sg/prism/NGCamera;

    .line 65
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/prism/impl/BaseGraphics;->nodeBounds:Lcom/sun/javafx/geom/RectBounds;

    .line 68
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/prism/impl/BaseGraphics;->hasPreCullingBits:Z

    .line 69
    move-object v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Lcom/sun/prism/impl/BaseGraphics;->extraAlpha:F

    .line 71
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/prism/impl/BaseGraphics;->antialiasedShape:Z

    .line 72
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/prism/impl/BaseGraphics;->depthBuffer:Z

    .line 73
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/prism/impl/BaseGraphics;->depthTest:Z

    .line 74
    move-object v3, v0

    sget-object v4, Lcom/sun/prism/impl/BaseGraphics;->DEFAULT_PAINT:Lcom/sun/prism/paint/Paint;

    iput-object v4, v3, Lcom/sun/prism/impl/BaseGraphics;->paint:Lcom/sun/prism/paint/Paint;

    .line 75
    move-object v3, v0

    sget-object v4, Lcom/sun/prism/impl/BaseGraphics;->DEFAULT_STROKE:Lcom/sun/prism/BasicStroke;

    iput-object v4, v3, Lcom/sun/prism/impl/BaseGraphics;->stroke:Lcom/sun/prism/BasicStroke;

    .line 77
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/prism/impl/BaseGraphics;->isSimpleTranslate:Z

    .line 83
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/prism/impl/BaseGraphics;->state3D:Z

    .line 84
    move-object v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Lcom/sun/prism/impl/BaseGraphics;->pixelScale:F

    .line 87
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/prism/impl/BaseGraphics;->context:Lcom/sun/prism/impl/BaseContext;

    .line 88
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/prism/impl/BaseGraphics;->renderTarget:Lcom/sun/prism/RenderTarget;

    .line 89
    move-object v3, v0

    new-instance v4, Lcom/sun/javafx/geom/RectBounds;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v8, v2

    .line 90
    invoke-interface {v8}, Lcom/sun/prism/RenderTarget;->getContentWidth()I

    move-result v8

    int-to-float v8, v8

    move-object v9, v2

    .line 91
    invoke-interface {v9}, Lcom/sun/prism/RenderTarget;->getContentHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sun/javafx/geom/RectBounds;-><init>(FFFF)V

    iput-object v4, v3, Lcom/sun/prism/impl/BaseGraphics;->devClipRect:Lcom/sun/javafx/geom/RectBounds;

    .line 92
    move-object v3, v0

    new-instance v4, Lcom/sun/javafx/geom/RectBounds;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/impl/BaseGraphics;->devClipRect:Lcom/sun/javafx/geom/RectBounds;

    invoke-direct {v5, v6}, Lcom/sun/javafx/geom/RectBounds;-><init>(Lcom/sun/javafx/geom/RectBounds;)V

    iput-object v4, v3, Lcom/sun/prism/impl/BaseGraphics;->finalClipRect:Lcom/sun/javafx/geom/RectBounds;

    .line 93
    move-object v3, v0

    sget-object v4, Lcom/sun/prism/CompositeMode;->SRC_OVER:Lcom/sun/prism/CompositeMode;

    iput-object v4, v3, Lcom/sun/prism/impl/BaseGraphics;->compMode:Lcom/sun/prism/CompositeMode;

    .line 94
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 105
    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/sun/prism/impl/BaseContext;->setRenderTarget(Lcom/sun/prism/impl/BaseGraphics;)V

    .line 107
    :cond_0
    return-void
.end method

.method private validateTransformAndPaint()V
    .locals 4

    .prologue
    .line 226
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseGraphics;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/BaseGraphics;->transform3D:Lcom/sun/javafx/geom/transform/Affine3D;

    invoke-virtual {v1}, Lcom/sun/javafx/geom/transform/Affine3D;->isTranslateOrIdentity()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/BaseGraphics;->paint:Lcom/sun/prism/paint/Paint;

    .line 227
    invoke-virtual {v1}, Lcom/sun/prism/paint/Paint;->getType()Lcom/sun/prism/paint/Paint$Type;

    move-result-object v1

    sget-object v2, Lcom/sun/prism/paint/Paint$Type;->COLOR:Lcom/sun/prism/paint/Paint$Type;

    if-ne v1, v2, :cond_0

    .line 232
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/prism/impl/BaseGraphics;->isSimpleTranslate:Z

    .line 233
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/impl/BaseGraphics;->transform3D:Lcom/sun/javafx/geom/transform/Affine3D;

    invoke-virtual {v2}, Lcom/sun/javafx/geom/transform/Affine3D;->getMxt()D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v1, Lcom/sun/prism/impl/BaseGraphics;->transX:F

    .line 234
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/impl/BaseGraphics;->transform3D:Lcom/sun/javafx/geom/transform/Affine3D;

    invoke-virtual {v2}, Lcom/sun/javafx/geom/transform/Affine3D;->getMyt()D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v1, Lcom/sun/prism/impl/BaseGraphics;->transY:F

    .line 240
    :goto_0
    return-void

    .line 236
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/prism/impl/BaseGraphics;->isSimpleTranslate:Z

    .line 237
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/prism/impl/BaseGraphics;->transX:F

    .line 238
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/prism/impl/BaseGraphics;->transY:F

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 346
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseGraphics;
    move-object v1, v0

    sget-object v2, Lcom/sun/prism/paint/Color;->TRANSPARENT:Lcom/sun/prism/paint/Color;

    invoke-virtual {v1, v2}, Lcom/sun/prism/impl/BaseGraphics;->clear(Lcom/sun/prism/paint/Color;)V

    .line 347
    return-void
.end method

.method public draw(Lcom/sun/javafx/geom/Shape;)V
    .locals 14

    .prologue
    .line 376
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseGraphics;
    move-object v1, p1

    .local v1, "shape":Lcom/sun/javafx/geom/Shape;
    const/4 v7, 0x0

    move v2, v7

    .local v2, "bx":F
    const/4 v7, 0x0

    move v3, v7

    .local v3, "by":F
    const/4 v7, 0x0

    move v4, v7

    .local v4, "bw":F
    const/4 v7, 0x0

    move v5, v7

    .line 377
    .local v5, "bh":F
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/impl/BaseGraphics;->paint:Lcom/sun/prism/paint/Paint;

    invoke-virtual {v7}, Lcom/sun/prism/paint/Paint;->isProportional()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 378
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/impl/BaseGraphics;->nodeBounds:Lcom/sun/javafx/geom/RectBounds;

    if-eqz v7, :cond_1

    .line 379
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/impl/BaseGraphics;->nodeBounds:Lcom/sun/javafx/geom/RectBounds;

    invoke-virtual {v7}, Lcom/sun/javafx/geom/RectBounds;->getMinX()F

    move-result v7

    move v2, v7

    .line 380
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/impl/BaseGraphics;->nodeBounds:Lcom/sun/javafx/geom/RectBounds;

    invoke-virtual {v7}, Lcom/sun/javafx/geom/RectBounds;->getMinY()F

    move-result v7

    move v3, v7

    .line 381
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/impl/BaseGraphics;->nodeBounds:Lcom/sun/javafx/geom/RectBounds;

    invoke-virtual {v7}, Lcom/sun/javafx/geom/RectBounds;->getWidth()F

    move-result v7

    move v4, v7

    .line 382
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/impl/BaseGraphics;->nodeBounds:Lcom/sun/javafx/geom/RectBounds;

    invoke-virtual {v7}, Lcom/sun/javafx/geom/RectBounds;->getHeight()F

    move-result v7

    move v5, v7

    .line 395
    :cond_0
    :goto_0
    move-object v7, v0

    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/prism/impl/BaseGraphics;->stroke:Lcom/sun/prism/BasicStroke;

    move v10, v2

    move v11, v3

    move v12, v4

    move v13, v5

    invoke-virtual/range {v7 .. v13}, Lcom/sun/prism/impl/BaseGraphics;->renderShape(Lcom/sun/javafx/geom/Shape;Lcom/sun/prism/BasicStroke;FFFF)V

    .line 396
    return-void

    .line 384
    :cond_1
    const/4 v7, 0x4

    new-array v7, v7, [F

    fill-array-data v7, :array_0

    move-object v6, v7

    .line 388
    .local v6, "bbox":[F
    move-object v7, v6

    move-object v8, v1

    sget-object v9, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-static {v7, v8, v9}, Lcom/sun/javafx/geom/Shape;->accumulate([FLcom/sun/javafx/geom/Shape;Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 389
    move-object v7, v6

    const/4 v8, 0x0

    aget v7, v7, v8

    move v2, v7

    .line 390
    move-object v7, v6

    const/4 v8, 0x1

    aget v7, v7, v8

    move v3, v7

    .line 391
    move-object v7, v6

    const/4 v8, 0x2

    aget v7, v7, v8

    move v8, v2

    sub-float/2addr v7, v8

    move v4, v7

    .line 392
    move-object v7, v6

    const/4 v8, 0x3

    aget v7, v7, v8

    move v8, v3

    sub-float/2addr v7, v8

    move v5, v7

    goto :goto_0

    .line 384
    :array_0
    .array-data 4
        0x7f800000    # Float.POSITIVE_INFINITY
        0x7f800000    # Float.POSITIVE_INFINITY
        -0x800000    # Float.NEGATIVE_INFINITY
        -0x800000    # Float.NEGATIVE_INFINITY
    .end array-data
.end method

.method public drawMappedTextureRaw(Lcom/sun/prism/Texture;FFFFFFFFFFFF)V
    .locals 36

    .prologue
    .line 733
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/prism/impl/BaseGraphics;
    move-object/from16 v3, p1

    .local v3, "tex":Lcom/sun/prism/Texture;
    move/from16 v4, p2

    .local v4, "dx1":F
    move/from16 v5, p3

    .local v5, "dy1":F
    move/from16 v6, p4

    .local v6, "dx2":F
    move/from16 v7, p5

    .local v7, "dy2":F
    move/from16 v8, p6

    .local v8, "tx11":F
    move/from16 v9, p7

    .local v9, "ty11":F
    move/from16 v10, p8

    .local v10, "tx21":F
    move/from16 v11, p9

    .local v11, "ty21":F
    move/from16 v12, p10

    .local v12, "tx12":F
    move/from16 v13, p11

    .local v13, "ty12":F
    move/from16 v14, p12

    .local v14, "tx22":F
    move/from16 v15, p13

    .local v15, "ty22":F
    move/from16 v23, v4

    move/from16 v16, v23

    .line 734
    .local v16, "bx":F
    move/from16 v23, v5

    move/from16 v17, v23

    .line 735
    .local v17, "by":F
    move/from16 v23, v6

    move/from16 v24, v4

    sub-float v23, v23, v24

    move/from16 v18, v23

    .line 736
    .local v18, "bw":F
    move/from16 v23, v7

    move/from16 v24, v5

    sub-float v23, v23, v24

    move/from16 v19, v23

    .line 739
    .local v19, "bh":F
    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Lcom/sun/prism/impl/BaseGraphics;->getTransformNoClone()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v23

    move-object/from16 v20, v23

    .line 740
    .local v20, "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/sun/prism/impl/BaseGraphics;->isSimpleTranslate:Z

    move/from16 v23, v0

    if-eqz v23, :cond_0

    .line 741
    sget-object v23, Lcom/sun/prism/impl/BaseGraphics;->IDENT:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v20, v23

    .line 742
    move/from16 v23, v4

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sun/prism/impl/BaseGraphics;->transX:F

    move/from16 v24, v0

    add-float v23, v23, v24

    move/from16 v4, v23

    .line 743
    move/from16 v23, v5

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sun/prism/impl/BaseGraphics;->transY:F

    move/from16 v24, v0

    add-float v23, v23, v24

    move/from16 v5, v23

    .line 744
    move/from16 v23, v6

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sun/prism/impl/BaseGraphics;->transX:F

    move/from16 v24, v0

    add-float v23, v23, v24

    move/from16 v6, v23

    .line 745
    move/from16 v23, v7

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sun/prism/impl/BaseGraphics;->transY:F

    move/from16 v24, v0

    add-float v23, v23, v24

    move/from16 v7, v23

    .line 748
    :cond_0
    move-object/from16 v23, v3

    invoke-interface/range {v23 .. v23}, Lcom/sun/prism/Texture;->getPixelFormat()Lcom/sun/prism/PixelFormat;

    move-result-object v23

    move-object/from16 v21, v23

    .line 749
    .local v21, "format":Lcom/sun/prism/PixelFormat;
    move-object/from16 v23, v21

    sget-object v24, Lcom/sun/prism/PixelFormat;->BYTE_ALPHA:Lcom/sun/prism/PixelFormat;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_1

    .line 754
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/prism/impl/BaseGraphics;->context:Lcom/sun/prism/impl/BaseContext;

    move-object/from16 v23, v0

    move-object/from16 v24, v2

    move-object/from16 v25, v20

    move-object/from16 v26, v3

    move/from16 v27, v16

    move/from16 v28, v17

    move/from16 v29, v18

    move/from16 v30, v19

    invoke-virtual/range {v23 .. v30}, Lcom/sun/prism/impl/BaseContext;->validatePaintOp(Lcom/sun/prism/impl/BaseGraphics;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/Texture;FFFF)V

    .line 759
    :goto_0
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/prism/impl/BaseGraphics;->context:Lcom/sun/prism/impl/BaseContext;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sun/prism/impl/BaseContext;->getVertexBuffer()Lcom/sun/prism/impl/VertexBuffer;

    move-result-object v23

    move-object/from16 v22, v23

    .line 760
    .local v22, "vb":Lcom/sun/prism/impl/VertexBuffer;
    move-object/from16 v23, v22

    move/from16 v24, v4

    move/from16 v25, v5

    move/from16 v26, v6

    move/from16 v27, v7

    move/from16 v28, v8

    move/from16 v29, v9

    move/from16 v30, v10

    move/from16 v31, v11

    move/from16 v32, v12

    move/from16 v33, v13

    move/from16 v34, v14

    move/from16 v35, v15

    invoke-virtual/range {v23 .. v35}, Lcom/sun/prism/impl/VertexBuffer;->addMappedQuad(FFFFFFFFFFFF)V

    .line 763
    return-void

    .line 756
    .end local v22    # "vb":Lcom/sun/prism/impl/VertexBuffer;
    :cond_1
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/prism/impl/BaseGraphics;->context:Lcom/sun/prism/impl/BaseContext;

    move-object/from16 v23, v0

    move-object/from16 v24, v2

    move-object/from16 v25, v20

    move-object/from16 v26, v3

    move-object/from16 v27, v21

    invoke-virtual/range {v23 .. v27}, Lcom/sun/prism/impl/BaseContext;->validateTextureOp(Lcom/sun/prism/impl/BaseGraphics;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/Texture;Lcom/sun/prism/PixelFormat;)V

    goto :goto_0
.end method

.method public drawTexture(Lcom/sun/prism/Texture;FFFF)V
    .locals 16

    .prologue
    .line 400
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseGraphics;
    move-object/from16 v1, p1

    .local v1, "tex":Lcom/sun/prism/Texture;
    move/from16 v2, p2

    .local v2, "x":F
    move/from16 v3, p3

    .local v3, "y":F
    move/from16 v4, p4

    .local v4, "w":F
    move/from16 v5, p5

    .local v5, "h":F
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move v9, v3

    move v10, v2

    move v11, v4

    add-float/2addr v10, v11

    move v11, v3

    move v12, v5

    add-float/2addr v11, v12

    const/4 v12, 0x0

    const/4 v13, 0x0

    move v14, v4

    move v15, v5

    invoke-virtual/range {v6 .. v15}, Lcom/sun/prism/impl/BaseGraphics;->drawTexture(Lcom/sun/prism/Texture;FFFFFFFF)V

    .line 403
    return-void
.end method

.method public drawTexture(Lcom/sun/prism/Texture;FFFFFFFF)V
    .locals 33

    .prologue
    .line 410
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/prism/impl/BaseGraphics;
    move-object/from16 v3, p1

    .local v3, "tex":Lcom/sun/prism/Texture;
    move/from16 v4, p2

    .local v4, "dx1":F
    move/from16 v5, p3

    .local v5, "dy1":F
    move/from16 v6, p4

    .local v6, "dx2":F
    move/from16 v7, p5

    .local v7, "dy2":F
    move/from16 v8, p6

    .local v8, "sx1":F
    move/from16 v9, p7

    .local v9, "sy1":F
    move/from16 v10, p8

    .local v10, "sx2":F
    move/from16 v11, p9

    .local v11, "sy2":F
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/sun/prism/impl/BaseGraphics;->isSimpleTranslate:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1

    sget-object v23, Lcom/sun/prism/impl/BaseGraphics;->IDENT:Lcom/sun/javafx/geom/transform/BaseTransform;

    :goto_0
    move-object/from16 v12, v23

    .line 411
    .local v12, "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v23, v3

    invoke-interface/range {v23 .. v23}, Lcom/sun/prism/Texture;->getPixelFormat()Lcom/sun/prism/PixelFormat;

    move-result-object v23

    move-object/from16 v13, v23

    .line 412
    .local v13, "format":Lcom/sun/prism/PixelFormat;
    move-object/from16 v23, v13

    sget-object v24, Lcom/sun/prism/PixelFormat;->BYTE_ALPHA:Lcom/sun/prism/PixelFormat;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_2

    .line 417
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/prism/impl/BaseGraphics;->context:Lcom/sun/prism/impl/BaseContext;

    move-object/from16 v23, v0

    move-object/from16 v24, v2

    move-object/from16 v25, v12

    move-object/from16 v26, v3

    move/from16 v27, v4

    move/from16 v28, v5

    move/from16 v29, v6

    move/from16 v30, v4

    sub-float v29, v29, v30

    move/from16 v30, v7

    move/from16 v31, v5

    sub-float v30, v30, v31

    invoke-virtual/range {v23 .. v30}, Lcom/sun/prism/impl/BaseContext;->validatePaintOp(Lcom/sun/prism/impl/BaseGraphics;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/Texture;FFFF)V

    .line 421
    :goto_1
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/sun/prism/impl/BaseGraphics;->isSimpleTranslate:Z

    move/from16 v23, v0

    if-eqz v23, :cond_0

    .line 425
    move/from16 v23, v4

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sun/prism/impl/BaseGraphics;->transX:F

    move/from16 v24, v0

    add-float v23, v23, v24

    move/from16 v4, v23

    .line 426
    move/from16 v23, v5

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sun/prism/impl/BaseGraphics;->transY:F

    move/from16 v24, v0

    add-float v23, v23, v24

    move/from16 v5, v23

    .line 427
    move/from16 v23, v6

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sun/prism/impl/BaseGraphics;->transX:F

    move/from16 v24, v0

    add-float v23, v23, v24

    move/from16 v6, v23

    .line 428
    move/from16 v23, v7

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sun/prism/impl/BaseGraphics;->transY:F

    move/from16 v24, v0

    add-float v23, v23, v24

    move/from16 v7, v23

    .line 431
    :cond_0
    move-object/from16 v23, v3

    invoke-interface/range {v23 .. v23}, Lcom/sun/prism/Texture;->getPhysicalWidth()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v14, v23

    .line 432
    .local v14, "pw":F
    move-object/from16 v23, v3

    invoke-interface/range {v23 .. v23}, Lcom/sun/prism/Texture;->getPhysicalHeight()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v15, v23

    .line 433
    .local v15, "ph":F
    move-object/from16 v23, v3

    invoke-interface/range {v23 .. v23}, Lcom/sun/prism/Texture;->getContentX()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v16, v23

    .line 434
    .local v16, "cx1":F
    move-object/from16 v23, v3

    invoke-interface/range {v23 .. v23}, Lcom/sun/prism/Texture;->getContentY()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v17, v23

    .line 435
    .local v17, "cy1":F
    move/from16 v23, v16

    move/from16 v24, v8

    add-float v23, v23, v24

    move/from16 v24, v14

    div-float v23, v23, v24

    move/from16 v18, v23

    .line 436
    .local v18, "tx1":F
    move/from16 v23, v17

    move/from16 v24, v9

    add-float v23, v23, v24

    move/from16 v24, v15

    div-float v23, v23, v24

    move/from16 v19, v23

    .line 437
    .local v19, "ty1":F
    move/from16 v23, v16

    move/from16 v24, v10

    add-float v23, v23, v24

    move/from16 v24, v14

    div-float v23, v23, v24

    move/from16 v20, v23

    .line 438
    .local v20, "tx2":F
    move/from16 v23, v17

    move/from16 v24, v11

    add-float v23, v23, v24

    move/from16 v24, v15

    div-float v23, v23, v24

    move/from16 v21, v23

    .line 440
    .local v21, "ty2":F
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/prism/impl/BaseGraphics;->context:Lcom/sun/prism/impl/BaseContext;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sun/prism/impl/BaseContext;->getVertexBuffer()Lcom/sun/prism/impl/VertexBuffer;

    move-result-object v23

    move-object/from16 v22, v23

    .line 441
    .local v22, "vb":Lcom/sun/prism/impl/VertexBuffer;
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/prism/impl/BaseGraphics;->context:Lcom/sun/prism/impl/BaseContext;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sun/prism/impl/BaseContext;->isSuperShaderEnabled()Z

    move-result v23

    if-eqz v23, :cond_3

    .line 442
    move-object/from16 v23, v22

    move/from16 v24, v4

    move/from16 v25, v5

    move/from16 v26, v6

    move/from16 v27, v7

    move/from16 v28, v18

    move/from16 v29, v19

    move/from16 v30, v20

    move/from16 v31, v21

    const/16 v32, 0x0

    invoke-virtual/range {v23 .. v32}, Lcom/sun/prism/impl/VertexBuffer;->addSuperQuad(FFFFFFFFZ)V

    .line 446
    :goto_2
    return-void

    .line 410
    .end local v12    # "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    .end local v13    # "format":Lcom/sun/prism/PixelFormat;
    .end local v14    # "pw":F
    .end local v15    # "ph":F
    .end local v16    # "cx1":F
    .end local v17    # "cy1":F
    .end local v18    # "tx1":F
    .end local v19    # "ty1":F
    .end local v20    # "tx2":F
    .end local v21    # "ty2":F
    .end local v22    # "vb":Lcom/sun/prism/impl/VertexBuffer;
    :cond_1
    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Lcom/sun/prism/impl/BaseGraphics;->getTransformNoClone()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v23

    goto/16 :goto_0

    .line 419
    .restart local v12    # "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    .restart local v13    # "format":Lcom/sun/prism/PixelFormat;
    :cond_2
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/prism/impl/BaseGraphics;->context:Lcom/sun/prism/impl/BaseContext;

    move-object/from16 v23, v0

    move-object/from16 v24, v2

    move-object/from16 v25, v12

    move-object/from16 v26, v3

    move-object/from16 v27, v13

    invoke-virtual/range {v23 .. v27}, Lcom/sun/prism/impl/BaseContext;->validateTextureOp(Lcom/sun/prism/impl/BaseGraphics;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/Texture;Lcom/sun/prism/PixelFormat;)V

    goto/16 :goto_1

    .line 444
    .restart local v14    # "pw":F
    .restart local v15    # "ph":F
    .restart local v16    # "cx1":F
    .restart local v17    # "cy1":F
    .restart local v18    # "tx1":F
    .restart local v19    # "ty1":F
    .restart local v20    # "tx2":F
    .restart local v21    # "ty2":F
    .restart local v22    # "vb":Lcom/sun/prism/impl/VertexBuffer;
    :cond_3
    move-object/from16 v23, v22

    move/from16 v24, v4

    move/from16 v25, v5

    move/from16 v26, v6

    move/from16 v27, v7

    move/from16 v28, v18

    move/from16 v29, v19

    move/from16 v30, v20

    move/from16 v31, v21

    invoke-virtual/range {v23 .. v31}, Lcom/sun/prism/impl/VertexBuffer;->addQuad(FFFFFFFF)V

    goto :goto_2
.end method

.method public drawTexture3SliceH(Lcom/sun/prism/Texture;FFFFFFFFFFFF)V
    .locals 39

    .prologue
    .line 454
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/prism/impl/BaseGraphics;
    move-object/from16 v3, p1

    .local v3, "tex":Lcom/sun/prism/Texture;
    move/from16 v4, p2

    .local v4, "dx1":F
    move/from16 v5, p3

    .local v5, "dy1":F
    move/from16 v6, p4

    .local v6, "dx2":F
    move/from16 v7, p5

    .local v7, "dy2":F
    move/from16 v8, p6

    .local v8, "sx1":F
    move/from16 v9, p7

    .local v9, "sy1":F
    move/from16 v10, p8

    .local v10, "sx2":F
    move/from16 v11, p9

    .local v11, "sy2":F
    move/from16 v12, p10

    .local v12, "dh1":F
    move/from16 v13, p11

    .local v13, "dh2":F
    move/from16 v14, p12

    .local v14, "sh1":F
    move/from16 v15, p13

    .local v15, "sh2":F
    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/sun/prism/impl/BaseGraphics;->isSimpleTranslate:Z

    move/from16 v29, v0

    if-eqz v29, :cond_1

    sget-object v29, Lcom/sun/prism/impl/BaseGraphics;->IDENT:Lcom/sun/javafx/geom/transform/BaseTransform;

    :goto_0
    move-object/from16 v16, v29

    .line 455
    .local v16, "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v29, v3

    invoke-interface/range {v29 .. v29}, Lcom/sun/prism/Texture;->getPixelFormat()Lcom/sun/prism/PixelFormat;

    move-result-object v29

    move-object/from16 v17, v29

    .line 456
    .local v17, "format":Lcom/sun/prism/PixelFormat;
    move-object/from16 v29, v17

    sget-object v30, Lcom/sun/prism/PixelFormat;->BYTE_ALPHA:Lcom/sun/prism/PixelFormat;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_2

    .line 461
    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/prism/impl/BaseGraphics;->context:Lcom/sun/prism/impl/BaseContext;

    move-object/from16 v29, v0

    move-object/from16 v30, v2

    move-object/from16 v31, v16

    move-object/from16 v32, v3

    move/from16 v33, v4

    move/from16 v34, v5

    move/from16 v35, v6

    move/from16 v36, v4

    sub-float v35, v35, v36

    move/from16 v36, v7

    move/from16 v37, v5

    sub-float v36, v36, v37

    invoke-virtual/range {v29 .. v36}, Lcom/sun/prism/impl/BaseContext;->validatePaintOp(Lcom/sun/prism/impl/BaseGraphics;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/Texture;FFFF)V

    .line 465
    :goto_1
    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/sun/prism/impl/BaseGraphics;->isSimpleTranslate:Z

    move/from16 v29, v0

    if-eqz v29, :cond_0

    .line 469
    move/from16 v29, v4

    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget v0, v0, Lcom/sun/prism/impl/BaseGraphics;->transX:F

    move/from16 v30, v0

    add-float v29, v29, v30

    move/from16 v4, v29

    .line 470
    move/from16 v29, v5

    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget v0, v0, Lcom/sun/prism/impl/BaseGraphics;->transY:F

    move/from16 v30, v0

    add-float v29, v29, v30

    move/from16 v5, v29

    .line 471
    move/from16 v29, v6

    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget v0, v0, Lcom/sun/prism/impl/BaseGraphics;->transX:F

    move/from16 v30, v0

    add-float v29, v29, v30

    move/from16 v6, v29

    .line 472
    move/from16 v29, v7

    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget v0, v0, Lcom/sun/prism/impl/BaseGraphics;->transY:F

    move/from16 v30, v0

    add-float v29, v29, v30

    move/from16 v7, v29

    .line 473
    move/from16 v29, v12

    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget v0, v0, Lcom/sun/prism/impl/BaseGraphics;->transX:F

    move/from16 v30, v0

    add-float v29, v29, v30

    move/from16 v12, v29

    .line 475
    move/from16 v29, v13

    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget v0, v0, Lcom/sun/prism/impl/BaseGraphics;->transX:F

    move/from16 v30, v0

    add-float v29, v29, v30

    move/from16 v13, v29

    .line 479
    :cond_0
    move-object/from16 v29, v3

    invoke-interface/range {v29 .. v29}, Lcom/sun/prism/Texture;->getPhysicalWidth()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move/from16 v18, v29

    .line 480
    .local v18, "pw":F
    move-object/from16 v29, v3

    invoke-interface/range {v29 .. v29}, Lcom/sun/prism/Texture;->getPhysicalHeight()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move/from16 v19, v29

    .line 481
    .local v19, "ph":F
    move-object/from16 v29, v3

    invoke-interface/range {v29 .. v29}, Lcom/sun/prism/Texture;->getContentX()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move/from16 v20, v29

    .line 482
    .local v20, "cx1":F
    move-object/from16 v29, v3

    invoke-interface/range {v29 .. v29}, Lcom/sun/prism/Texture;->getContentY()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move/from16 v21, v29

    .line 483
    .local v21, "cy1":F
    move/from16 v29, v20

    move/from16 v30, v8

    add-float v29, v29, v30

    move/from16 v30, v18

    div-float v29, v29, v30

    move/from16 v22, v29

    .line 484
    .local v22, "tx1":F
    move/from16 v29, v21

    move/from16 v30, v9

    add-float v29, v29, v30

    move/from16 v30, v19

    div-float v29, v29, v30

    move/from16 v23, v29

    .line 485
    .local v23, "ty1":F
    move/from16 v29, v20

    move/from16 v30, v10

    add-float v29, v29, v30

    move/from16 v30, v18

    div-float v29, v29, v30

    move/from16 v24, v29

    .line 486
    .local v24, "tx2":F
    move/from16 v29, v21

    move/from16 v30, v11

    add-float v29, v29, v30

    move/from16 v30, v19

    div-float v29, v29, v30

    move/from16 v25, v29

    .line 487
    .local v25, "ty2":F
    move/from16 v29, v20

    move/from16 v30, v14

    add-float v29, v29, v30

    move/from16 v30, v18

    div-float v29, v29, v30

    move/from16 v26, v29

    .line 489
    .local v26, "th1":F
    move/from16 v29, v20

    move/from16 v30, v15

    add-float v29, v29, v30

    move/from16 v30, v18

    div-float v29, v29, v30

    move/from16 v27, v29

    .line 492
    .local v27, "th2":F
    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/prism/impl/BaseGraphics;->context:Lcom/sun/prism/impl/BaseContext;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/sun/prism/impl/BaseContext;->getVertexBuffer()Lcom/sun/prism/impl/VertexBuffer;

    move-result-object v29

    move-object/from16 v28, v29

    .line 493
    .local v28, "vb":Lcom/sun/prism/impl/VertexBuffer;
    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/prism/impl/BaseGraphics;->context:Lcom/sun/prism/impl/BaseContext;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/sun/prism/impl/BaseContext;->isSuperShaderEnabled()Z

    move-result v29

    if-eqz v29, :cond_3

    .line 494
    move-object/from16 v29, v28

    move/from16 v30, v4

    move/from16 v31, v5

    move/from16 v32, v12

    move/from16 v33, v7

    move/from16 v34, v22

    move/from16 v35, v23

    move/from16 v36, v26

    move/from16 v37, v25

    const/16 v38, 0x0

    invoke-virtual/range {v29 .. v38}, Lcom/sun/prism/impl/VertexBuffer;->addSuperQuad(FFFFFFFFZ)V

    .line 495
    move-object/from16 v29, v28

    move/from16 v30, v12

    move/from16 v31, v5

    move/from16 v32, v13

    move/from16 v33, v7

    move/from16 v34, v26

    move/from16 v35, v23

    move/from16 v36, v27

    move/from16 v37, v25

    const/16 v38, 0x0

    invoke-virtual/range {v29 .. v38}, Lcom/sun/prism/impl/VertexBuffer;->addSuperQuad(FFFFFFFFZ)V

    .line 496
    move-object/from16 v29, v28

    move/from16 v30, v13

    move/from16 v31, v5

    move/from16 v32, v6

    move/from16 v33, v7

    move/from16 v34, v27

    move/from16 v35, v23

    move/from16 v36, v24

    move/from16 v37, v25

    const/16 v38, 0x0

    invoke-virtual/range {v29 .. v38}, Lcom/sun/prism/impl/VertexBuffer;->addSuperQuad(FFFFFFFFZ)V

    .line 502
    :goto_2
    return-void

    .line 454
    .end local v16    # "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    .end local v17    # "format":Lcom/sun/prism/PixelFormat;
    .end local v18    # "pw":F
    .end local v19    # "ph":F
    .end local v20    # "cx1":F
    .end local v21    # "cy1":F
    .end local v22    # "tx1":F
    .end local v23    # "ty1":F
    .end local v24    # "tx2":F
    .end local v25    # "ty2":F
    .end local v26    # "th1":F
    .end local v27    # "th2":F
    .end local v28    # "vb":Lcom/sun/prism/impl/VertexBuffer;
    :cond_1
    move-object/from16 v29, v2

    invoke-virtual/range {v29 .. v29}, Lcom/sun/prism/impl/BaseGraphics;->getTransformNoClone()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v29

    goto/16 :goto_0

    .line 463
    .restart local v16    # "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    .restart local v17    # "format":Lcom/sun/prism/PixelFormat;
    :cond_2
    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/prism/impl/BaseGraphics;->context:Lcom/sun/prism/impl/BaseContext;

    move-object/from16 v29, v0

    move-object/from16 v30, v2

    move-object/from16 v31, v16

    move-object/from16 v32, v3

    move-object/from16 v33, v17

    invoke-virtual/range {v29 .. v33}, Lcom/sun/prism/impl/BaseContext;->validateTextureOp(Lcom/sun/prism/impl/BaseGraphics;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/Texture;Lcom/sun/prism/PixelFormat;)V

    goto/16 :goto_1

    .line 498
    .restart local v18    # "pw":F
    .restart local v19    # "ph":F
    .restart local v20    # "cx1":F
    .restart local v21    # "cy1":F
    .restart local v22    # "tx1":F
    .restart local v23    # "ty1":F
    .restart local v24    # "tx2":F
    .restart local v25    # "ty2":F
    .restart local v26    # "th1":F
    .restart local v27    # "th2":F
    .restart local v28    # "vb":Lcom/sun/prism/impl/VertexBuffer;
    :cond_3
    move-object/from16 v29, v28

    move/from16 v30, v4

    move/from16 v31, v5

    move/from16 v32, v12

    move/from16 v33, v7

    move/from16 v34, v22

    move/from16 v35, v23

    move/from16 v36, v26

    move/from16 v37, v25

    invoke-virtual/range {v29 .. v37}, Lcom/sun/prism/impl/VertexBuffer;->addQuad(FFFFFFFF)V

    .line 499
    move-object/from16 v29, v28

    move/from16 v30, v12

    move/from16 v31, v5

    move/from16 v32, v13

    move/from16 v33, v7

    move/from16 v34, v26

    move/from16 v35, v23

    move/from16 v36, v27

    move/from16 v37, v25

    invoke-virtual/range {v29 .. v37}, Lcom/sun/prism/impl/VertexBuffer;->addQuad(FFFFFFFF)V

    .line 500
    move-object/from16 v29, v28

    move/from16 v30, v13

    move/from16 v31, v5

    move/from16 v32, v6

    move/from16 v33, v7

    move/from16 v34, v27

    move/from16 v35, v23

    move/from16 v36, v24

    move/from16 v37, v25

    invoke-virtual/range {v29 .. v37}, Lcom/sun/prism/impl/VertexBuffer;->addQuad(FFFFFFFF)V

    goto :goto_2
.end method

.method public drawTexture3SliceV(Lcom/sun/prism/Texture;FFFFFFFFFFFF)V
    .locals 39

    .prologue
    .line 510
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/prism/impl/BaseGraphics;
    move-object/from16 v3, p1

    .local v3, "tex":Lcom/sun/prism/Texture;
    move/from16 v4, p2

    .local v4, "dx1":F
    move/from16 v5, p3

    .local v5, "dy1":F
    move/from16 v6, p4

    .local v6, "dx2":F
    move/from16 v7, p5

    .local v7, "dy2":F
    move/from16 v8, p6

    .local v8, "sx1":F
    move/from16 v9, p7

    .local v9, "sy1":F
    move/from16 v10, p8

    .local v10, "sx2":F
    move/from16 v11, p9

    .local v11, "sy2":F
    move/from16 v12, p10

    .local v12, "dv1":F
    move/from16 v13, p11

    .local v13, "dv2":F
    move/from16 v14, p12

    .local v14, "sv1":F
    move/from16 v15, p13

    .local v15, "sv2":F
    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/sun/prism/impl/BaseGraphics;->isSimpleTranslate:Z

    move/from16 v29, v0

    if-eqz v29, :cond_1

    sget-object v29, Lcom/sun/prism/impl/BaseGraphics;->IDENT:Lcom/sun/javafx/geom/transform/BaseTransform;

    :goto_0
    move-object/from16 v16, v29

    .line 511
    .local v16, "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v29, v3

    invoke-interface/range {v29 .. v29}, Lcom/sun/prism/Texture;->getPixelFormat()Lcom/sun/prism/PixelFormat;

    move-result-object v29

    move-object/from16 v17, v29

    .line 512
    .local v17, "format":Lcom/sun/prism/PixelFormat;
    move-object/from16 v29, v17

    sget-object v30, Lcom/sun/prism/PixelFormat;->BYTE_ALPHA:Lcom/sun/prism/PixelFormat;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_2

    .line 517
    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/prism/impl/BaseGraphics;->context:Lcom/sun/prism/impl/BaseContext;

    move-object/from16 v29, v0

    move-object/from16 v30, v2

    move-object/from16 v31, v16

    move-object/from16 v32, v3

    move/from16 v33, v4

    move/from16 v34, v5

    move/from16 v35, v6

    move/from16 v36, v4

    sub-float v35, v35, v36

    move/from16 v36, v7

    move/from16 v37, v5

    sub-float v36, v36, v37

    invoke-virtual/range {v29 .. v36}, Lcom/sun/prism/impl/BaseContext;->validatePaintOp(Lcom/sun/prism/impl/BaseGraphics;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/Texture;FFFF)V

    .line 521
    :goto_1
    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/sun/prism/impl/BaseGraphics;->isSimpleTranslate:Z

    move/from16 v29, v0

    if-eqz v29, :cond_0

    .line 525
    move/from16 v29, v4

    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget v0, v0, Lcom/sun/prism/impl/BaseGraphics;->transX:F

    move/from16 v30, v0

    add-float v29, v29, v30

    move/from16 v4, v29

    .line 526
    move/from16 v29, v5

    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget v0, v0, Lcom/sun/prism/impl/BaseGraphics;->transY:F

    move/from16 v30, v0

    add-float v29, v29, v30

    move/from16 v5, v29

    .line 527
    move/from16 v29, v6

    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget v0, v0, Lcom/sun/prism/impl/BaseGraphics;->transX:F

    move/from16 v30, v0

    add-float v29, v29, v30

    move/from16 v6, v29

    .line 528
    move/from16 v29, v7

    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget v0, v0, Lcom/sun/prism/impl/BaseGraphics;->transY:F

    move/from16 v30, v0

    add-float v29, v29, v30

    move/from16 v7, v29

    .line 530
    move/from16 v29, v12

    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget v0, v0, Lcom/sun/prism/impl/BaseGraphics;->transY:F

    move/from16 v30, v0

    add-float v29, v29, v30

    move/from16 v12, v29

    .line 532
    move/from16 v29, v13

    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget v0, v0, Lcom/sun/prism/impl/BaseGraphics;->transY:F

    move/from16 v30, v0

    add-float v29, v29, v30

    move/from16 v13, v29

    .line 535
    :cond_0
    move-object/from16 v29, v3

    invoke-interface/range {v29 .. v29}, Lcom/sun/prism/Texture;->getPhysicalWidth()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move/from16 v18, v29

    .line 536
    .local v18, "pw":F
    move-object/from16 v29, v3

    invoke-interface/range {v29 .. v29}, Lcom/sun/prism/Texture;->getPhysicalHeight()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move/from16 v19, v29

    .line 537
    .local v19, "ph":F
    move-object/from16 v29, v3

    invoke-interface/range {v29 .. v29}, Lcom/sun/prism/Texture;->getContentX()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move/from16 v20, v29

    .line 538
    .local v20, "cx1":F
    move-object/from16 v29, v3

    invoke-interface/range {v29 .. v29}, Lcom/sun/prism/Texture;->getContentY()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move/from16 v21, v29

    .line 539
    .local v21, "cy1":F
    move/from16 v29, v20

    move/from16 v30, v8

    add-float v29, v29, v30

    move/from16 v30, v18

    div-float v29, v29, v30

    move/from16 v22, v29

    .line 540
    .local v22, "tx1":F
    move/from16 v29, v21

    move/from16 v30, v9

    add-float v29, v29, v30

    move/from16 v30, v19

    div-float v29, v29, v30

    move/from16 v23, v29

    .line 541
    .local v23, "ty1":F
    move/from16 v29, v20

    move/from16 v30, v10

    add-float v29, v29, v30

    move/from16 v30, v18

    div-float v29, v29, v30

    move/from16 v24, v29

    .line 542
    .local v24, "tx2":F
    move/from16 v29, v21

    move/from16 v30, v11

    add-float v29, v29, v30

    move/from16 v30, v19

    div-float v29, v29, v30

    move/from16 v25, v29

    .line 544
    .local v25, "ty2":F
    move/from16 v29, v21

    move/from16 v30, v14

    add-float v29, v29, v30

    move/from16 v30, v19

    div-float v29, v29, v30

    move/from16 v26, v29

    .line 546
    .local v26, "tv1":F
    move/from16 v29, v21

    move/from16 v30, v15

    add-float v29, v29, v30

    move/from16 v30, v19

    div-float v29, v29, v30

    move/from16 v27, v29

    .line 548
    .local v27, "tv2":F
    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/prism/impl/BaseGraphics;->context:Lcom/sun/prism/impl/BaseContext;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/sun/prism/impl/BaseContext;->getVertexBuffer()Lcom/sun/prism/impl/VertexBuffer;

    move-result-object v29

    move-object/from16 v28, v29

    .line 549
    .local v28, "vb":Lcom/sun/prism/impl/VertexBuffer;
    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/prism/impl/BaseGraphics;->context:Lcom/sun/prism/impl/BaseContext;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/sun/prism/impl/BaseContext;->isSuperShaderEnabled()Z

    move-result v29

    if-eqz v29, :cond_3

    .line 550
    move-object/from16 v29, v28

    move/from16 v30, v4

    move/from16 v31, v5

    move/from16 v32, v6

    move/from16 v33, v12

    move/from16 v34, v22

    move/from16 v35, v23

    move/from16 v36, v24

    move/from16 v37, v26

    const/16 v38, 0x0

    invoke-virtual/range {v29 .. v38}, Lcom/sun/prism/impl/VertexBuffer;->addSuperQuad(FFFFFFFFZ)V

    .line 551
    move-object/from16 v29, v28

    move/from16 v30, v4

    move/from16 v31, v12

    move/from16 v32, v6

    move/from16 v33, v13

    move/from16 v34, v22

    move/from16 v35, v26

    move/from16 v36, v24

    move/from16 v37, v27

    const/16 v38, 0x0

    invoke-virtual/range {v29 .. v38}, Lcom/sun/prism/impl/VertexBuffer;->addSuperQuad(FFFFFFFFZ)V

    .line 552
    move-object/from16 v29, v28

    move/from16 v30, v4

    move/from16 v31, v13

    move/from16 v32, v6

    move/from16 v33, v7

    move/from16 v34, v22

    move/from16 v35, v27

    move/from16 v36, v24

    move/from16 v37, v25

    const/16 v38, 0x0

    invoke-virtual/range {v29 .. v38}, Lcom/sun/prism/impl/VertexBuffer;->addSuperQuad(FFFFFFFFZ)V

    .line 558
    :goto_2
    return-void

    .line 510
    .end local v16    # "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    .end local v17    # "format":Lcom/sun/prism/PixelFormat;
    .end local v18    # "pw":F
    .end local v19    # "ph":F
    .end local v20    # "cx1":F
    .end local v21    # "cy1":F
    .end local v22    # "tx1":F
    .end local v23    # "ty1":F
    .end local v24    # "tx2":F
    .end local v25    # "ty2":F
    .end local v26    # "tv1":F
    .end local v27    # "tv2":F
    .end local v28    # "vb":Lcom/sun/prism/impl/VertexBuffer;
    :cond_1
    move-object/from16 v29, v2

    invoke-virtual/range {v29 .. v29}, Lcom/sun/prism/impl/BaseGraphics;->getTransformNoClone()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v29

    goto/16 :goto_0

    .line 519
    .restart local v16    # "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    .restart local v17    # "format":Lcom/sun/prism/PixelFormat;
    :cond_2
    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/prism/impl/BaseGraphics;->context:Lcom/sun/prism/impl/BaseContext;

    move-object/from16 v29, v0

    move-object/from16 v30, v2

    move-object/from16 v31, v16

    move-object/from16 v32, v3

    move-object/from16 v33, v17

    invoke-virtual/range {v29 .. v33}, Lcom/sun/prism/impl/BaseContext;->validateTextureOp(Lcom/sun/prism/impl/BaseGraphics;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/Texture;Lcom/sun/prism/PixelFormat;)V

    goto/16 :goto_1

    .line 554
    .restart local v18    # "pw":F
    .restart local v19    # "ph":F
    .restart local v20    # "cx1":F
    .restart local v21    # "cy1":F
    .restart local v22    # "tx1":F
    .restart local v23    # "ty1":F
    .restart local v24    # "tx2":F
    .restart local v25    # "ty2":F
    .restart local v26    # "tv1":F
    .restart local v27    # "tv2":F
    .restart local v28    # "vb":Lcom/sun/prism/impl/VertexBuffer;
    :cond_3
    move-object/from16 v29, v28

    move/from16 v30, v4

    move/from16 v31, v5

    move/from16 v32, v6

    move/from16 v33, v12

    move/from16 v34, v22

    move/from16 v35, v23

    move/from16 v36, v24

    move/from16 v37, v26

    invoke-virtual/range {v29 .. v37}, Lcom/sun/prism/impl/VertexBuffer;->addQuad(FFFFFFFF)V

    .line 555
    move-object/from16 v29, v28

    move/from16 v30, v4

    move/from16 v31, v12

    move/from16 v32, v6

    move/from16 v33, v13

    move/from16 v34, v22

    move/from16 v35, v26

    move/from16 v36, v24

    move/from16 v37, v27

    invoke-virtual/range {v29 .. v37}, Lcom/sun/prism/impl/VertexBuffer;->addQuad(FFFFFFFF)V

    .line 556
    move-object/from16 v29, v28

    move/from16 v30, v4

    move/from16 v31, v13

    move/from16 v32, v6

    move/from16 v33, v7

    move/from16 v34, v22

    move/from16 v35, v27

    move/from16 v36, v24

    move/from16 v37, v25

    invoke-virtual/range {v29 .. v37}, Lcom/sun/prism/impl/VertexBuffer;->addQuad(FFFFFFFF)V

    goto :goto_2
.end method

.method public drawTexture9Slice(Lcom/sun/prism/Texture;FFFFFFFFFFFFFFFF)V
    .locals 45

    .prologue
    .line 567
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/prism/impl/BaseGraphics;
    move-object/from16 v3, p1

    .local v3, "tex":Lcom/sun/prism/Texture;
    move/from16 v4, p2

    .local v4, "dx1":F
    move/from16 v5, p3

    .local v5, "dy1":F
    move/from16 v6, p4

    .local v6, "dx2":F
    move/from16 v7, p5

    .local v7, "dy2":F
    move/from16 v8, p6

    .local v8, "sx1":F
    move/from16 v9, p7

    .local v9, "sy1":F
    move/from16 v10, p8

    .local v10, "sx2":F
    move/from16 v11, p9

    .local v11, "sy2":F
    move/from16 v12, p10

    .local v12, "dh1":F
    move/from16 v13, p11

    .local v13, "dv1":F
    move/from16 v14, p12

    .local v14, "dh2":F
    move/from16 v15, p13

    .local v15, "dv2":F
    move/from16 v16, p14

    .local v16, "sh1":F
    move/from16 v17, p15

    .local v17, "sv1":F
    move/from16 v18, p16

    .local v18, "sh2":F
    move/from16 v19, p17

    .local v19, "sv2":F
    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-boolean v0, v0, Lcom/sun/prism/impl/BaseGraphics;->isSimpleTranslate:Z

    move/from16 v35, v0

    if-eqz v35, :cond_1

    sget-object v35, Lcom/sun/prism/impl/BaseGraphics;->IDENT:Lcom/sun/javafx/geom/transform/BaseTransform;

    :goto_0
    move-object/from16 v20, v35

    .line 568
    .local v20, "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v35, v3

    invoke-interface/range {v35 .. v35}, Lcom/sun/prism/Texture;->getPixelFormat()Lcom/sun/prism/PixelFormat;

    move-result-object v35

    move-object/from16 v21, v35

    .line 569
    .local v21, "format":Lcom/sun/prism/PixelFormat;
    move-object/from16 v35, v21

    sget-object v36, Lcom/sun/prism/PixelFormat;->BYTE_ALPHA:Lcom/sun/prism/PixelFormat;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    if-ne v0, v1, :cond_2

    .line 574
    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/sun/prism/impl/BaseGraphics;->context:Lcom/sun/prism/impl/BaseContext;

    move-object/from16 v35, v0

    move-object/from16 v36, v2

    move-object/from16 v37, v20

    move-object/from16 v38, v3

    move/from16 v39, v4

    move/from16 v40, v5

    move/from16 v41, v6

    move/from16 v42, v4

    sub-float v41, v41, v42

    move/from16 v42, v7

    move/from16 v43, v5

    sub-float v42, v42, v43

    invoke-virtual/range {v35 .. v42}, Lcom/sun/prism/impl/BaseContext;->validatePaintOp(Lcom/sun/prism/impl/BaseGraphics;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/Texture;FFFF)V

    .line 578
    :goto_1
    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-boolean v0, v0, Lcom/sun/prism/impl/BaseGraphics;->isSimpleTranslate:Z

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 582
    move/from16 v35, v4

    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget v0, v0, Lcom/sun/prism/impl/BaseGraphics;->transX:F

    move/from16 v36, v0

    add-float v35, v35, v36

    move/from16 v4, v35

    .line 583
    move/from16 v35, v5

    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget v0, v0, Lcom/sun/prism/impl/BaseGraphics;->transY:F

    move/from16 v36, v0

    add-float v35, v35, v36

    move/from16 v5, v35

    .line 584
    move/from16 v35, v6

    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget v0, v0, Lcom/sun/prism/impl/BaseGraphics;->transX:F

    move/from16 v36, v0

    add-float v35, v35, v36

    move/from16 v6, v35

    .line 585
    move/from16 v35, v7

    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget v0, v0, Lcom/sun/prism/impl/BaseGraphics;->transY:F

    move/from16 v36, v0

    add-float v35, v35, v36

    move/from16 v7, v35

    .line 586
    move/from16 v35, v12

    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget v0, v0, Lcom/sun/prism/impl/BaseGraphics;->transX:F

    move/from16 v36, v0

    add-float v35, v35, v36

    move/from16 v12, v35

    .line 587
    move/from16 v35, v13

    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget v0, v0, Lcom/sun/prism/impl/BaseGraphics;->transY:F

    move/from16 v36, v0

    add-float v35, v35, v36

    move/from16 v13, v35

    .line 588
    move/from16 v35, v14

    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget v0, v0, Lcom/sun/prism/impl/BaseGraphics;->transX:F

    move/from16 v36, v0

    add-float v35, v35, v36

    move/from16 v14, v35

    .line 589
    move/from16 v35, v15

    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget v0, v0, Lcom/sun/prism/impl/BaseGraphics;->transY:F

    move/from16 v36, v0

    add-float v35, v35, v36

    move/from16 v15, v35

    .line 592
    :cond_0
    move-object/from16 v35, v3

    invoke-interface/range {v35 .. v35}, Lcom/sun/prism/Texture;->getPhysicalWidth()I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    move/from16 v22, v35

    .line 593
    .local v22, "pw":F
    move-object/from16 v35, v3

    invoke-interface/range {v35 .. v35}, Lcom/sun/prism/Texture;->getPhysicalHeight()I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    move/from16 v23, v35

    .line 594
    .local v23, "ph":F
    move-object/from16 v35, v3

    invoke-interface/range {v35 .. v35}, Lcom/sun/prism/Texture;->getContentX()I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    move/from16 v24, v35

    .line 595
    .local v24, "cx1":F
    move-object/from16 v35, v3

    invoke-interface/range {v35 .. v35}, Lcom/sun/prism/Texture;->getContentY()I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    move/from16 v25, v35

    .line 596
    .local v25, "cy1":F
    move/from16 v35, v24

    move/from16 v36, v8

    add-float v35, v35, v36

    move/from16 v36, v22

    div-float v35, v35, v36

    move/from16 v26, v35

    .line 597
    .local v26, "tx1":F
    move/from16 v35, v25

    move/from16 v36, v9

    add-float v35, v35, v36

    move/from16 v36, v23

    div-float v35, v35, v36

    move/from16 v27, v35

    .line 598
    .local v27, "ty1":F
    move/from16 v35, v24

    move/from16 v36, v10

    add-float v35, v35, v36

    move/from16 v36, v22

    div-float v35, v35, v36

    move/from16 v28, v35

    .line 599
    .local v28, "tx2":F
    move/from16 v35, v25

    move/from16 v36, v11

    add-float v35, v35, v36

    move/from16 v36, v23

    div-float v35, v35, v36

    move/from16 v29, v35

    .line 600
    .local v29, "ty2":F
    move/from16 v35, v24

    move/from16 v36, v16

    add-float v35, v35, v36

    move/from16 v36, v22

    div-float v35, v35, v36

    move/from16 v30, v35

    .line 601
    .local v30, "th1":F
    move/from16 v35, v25

    move/from16 v36, v17

    add-float v35, v35, v36

    move/from16 v36, v23

    div-float v35, v35, v36

    move/from16 v31, v35

    .line 602
    .local v31, "tv1":F
    move/from16 v35, v24

    move/from16 v36, v18

    add-float v35, v35, v36

    move/from16 v36, v22

    div-float v35, v35, v36

    move/from16 v32, v35

    .line 603
    .local v32, "th2":F
    move/from16 v35, v25

    move/from16 v36, v19

    add-float v35, v35, v36

    move/from16 v36, v23

    div-float v35, v35, v36

    move/from16 v33, v35

    .line 605
    .local v33, "tv2":F
    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/sun/prism/impl/BaseGraphics;->context:Lcom/sun/prism/impl/BaseContext;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/sun/prism/impl/BaseContext;->getVertexBuffer()Lcom/sun/prism/impl/VertexBuffer;

    move-result-object v35

    move-object/from16 v34, v35

    .line 606
    .local v34, "vb":Lcom/sun/prism/impl/VertexBuffer;
    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/sun/prism/impl/BaseGraphics;->context:Lcom/sun/prism/impl/BaseContext;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/sun/prism/impl/BaseContext;->isSuperShaderEnabled()Z

    move-result v35

    if-eqz v35, :cond_3

    .line 607
    move-object/from16 v35, v34

    move/from16 v36, v4

    move/from16 v37, v5

    move/from16 v38, v12

    move/from16 v39, v13

    move/from16 v40, v26

    move/from16 v41, v27

    move/from16 v42, v30

    move/from16 v43, v31

    const/16 v44, 0x0

    invoke-virtual/range {v35 .. v44}, Lcom/sun/prism/impl/VertexBuffer;->addSuperQuad(FFFFFFFFZ)V

    .line 608
    move-object/from16 v35, v34

    move/from16 v36, v12

    move/from16 v37, v5

    move/from16 v38, v14

    move/from16 v39, v13

    move/from16 v40, v30

    move/from16 v41, v27

    move/from16 v42, v32

    move/from16 v43, v31

    const/16 v44, 0x0

    invoke-virtual/range {v35 .. v44}, Lcom/sun/prism/impl/VertexBuffer;->addSuperQuad(FFFFFFFFZ)V

    .line 609
    move-object/from16 v35, v34

    move/from16 v36, v14

    move/from16 v37, v5

    move/from16 v38, v6

    move/from16 v39, v13

    move/from16 v40, v32

    move/from16 v41, v27

    move/from16 v42, v28

    move/from16 v43, v31

    const/16 v44, 0x0

    invoke-virtual/range {v35 .. v44}, Lcom/sun/prism/impl/VertexBuffer;->addSuperQuad(FFFFFFFFZ)V

    .line 611
    move-object/from16 v35, v34

    move/from16 v36, v4

    move/from16 v37, v13

    move/from16 v38, v12

    move/from16 v39, v15

    move/from16 v40, v26

    move/from16 v41, v31

    move/from16 v42, v30

    move/from16 v43, v33

    const/16 v44, 0x0

    invoke-virtual/range {v35 .. v44}, Lcom/sun/prism/impl/VertexBuffer;->addSuperQuad(FFFFFFFFZ)V

    .line 612
    move-object/from16 v35, v34

    move/from16 v36, v12

    move/from16 v37, v13

    move/from16 v38, v14

    move/from16 v39, v15

    move/from16 v40, v30

    move/from16 v41, v31

    move/from16 v42, v32

    move/from16 v43, v33

    const/16 v44, 0x0

    invoke-virtual/range {v35 .. v44}, Lcom/sun/prism/impl/VertexBuffer;->addSuperQuad(FFFFFFFFZ)V

    .line 613
    move-object/from16 v35, v34

    move/from16 v36, v14

    move/from16 v37, v13

    move/from16 v38, v6

    move/from16 v39, v15

    move/from16 v40, v32

    move/from16 v41, v31

    move/from16 v42, v28

    move/from16 v43, v33

    const/16 v44, 0x0

    invoke-virtual/range {v35 .. v44}, Lcom/sun/prism/impl/VertexBuffer;->addSuperQuad(FFFFFFFFZ)V

    .line 615
    move-object/from16 v35, v34

    move/from16 v36, v4

    move/from16 v37, v15

    move/from16 v38, v12

    move/from16 v39, v7

    move/from16 v40, v26

    move/from16 v41, v33

    move/from16 v42, v30

    move/from16 v43, v29

    const/16 v44, 0x0

    invoke-virtual/range {v35 .. v44}, Lcom/sun/prism/impl/VertexBuffer;->addSuperQuad(FFFFFFFFZ)V

    .line 616
    move-object/from16 v35, v34

    move/from16 v36, v12

    move/from16 v37, v15

    move/from16 v38, v14

    move/from16 v39, v7

    move/from16 v40, v30

    move/from16 v41, v33

    move/from16 v42, v32

    move/from16 v43, v29

    const/16 v44, 0x0

    invoke-virtual/range {v35 .. v44}, Lcom/sun/prism/impl/VertexBuffer;->addSuperQuad(FFFFFFFFZ)V

    .line 617
    move-object/from16 v35, v34

    move/from16 v36, v14

    move/from16 v37, v15

    move/from16 v38, v6

    move/from16 v39, v7

    move/from16 v40, v32

    move/from16 v41, v33

    move/from16 v42, v28

    move/from16 v43, v29

    const/16 v44, 0x0

    invoke-virtual/range {v35 .. v44}, Lcom/sun/prism/impl/VertexBuffer;->addSuperQuad(FFFFFFFFZ)V

    .line 631
    :goto_2
    return-void

    .line 567
    .end local v20    # "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    .end local v21    # "format":Lcom/sun/prism/PixelFormat;
    .end local v22    # "pw":F
    .end local v23    # "ph":F
    .end local v24    # "cx1":F
    .end local v25    # "cy1":F
    .end local v26    # "tx1":F
    .end local v27    # "ty1":F
    .end local v28    # "tx2":F
    .end local v29    # "ty2":F
    .end local v30    # "th1":F
    .end local v31    # "tv1":F
    .end local v32    # "th2":F
    .end local v33    # "tv2":F
    .end local v34    # "vb":Lcom/sun/prism/impl/VertexBuffer;
    :cond_1
    move-object/from16 v35, v2

    invoke-virtual/range {v35 .. v35}, Lcom/sun/prism/impl/BaseGraphics;->getTransformNoClone()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v35

    goto/16 :goto_0

    .line 576
    .restart local v20    # "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    .restart local v21    # "format":Lcom/sun/prism/PixelFormat;
    :cond_2
    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/sun/prism/impl/BaseGraphics;->context:Lcom/sun/prism/impl/BaseContext;

    move-object/from16 v35, v0

    move-object/from16 v36, v2

    move-object/from16 v37, v20

    move-object/from16 v38, v3

    move-object/from16 v39, v21

    invoke-virtual/range {v35 .. v39}, Lcom/sun/prism/impl/BaseContext;->validateTextureOp(Lcom/sun/prism/impl/BaseGraphics;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/Texture;Lcom/sun/prism/PixelFormat;)V

    goto/16 :goto_1

    .line 619
    .restart local v22    # "pw":F
    .restart local v23    # "ph":F
    .restart local v24    # "cx1":F
    .restart local v25    # "cy1":F
    .restart local v26    # "tx1":F
    .restart local v27    # "ty1":F
    .restart local v28    # "tx2":F
    .restart local v29    # "ty2":F
    .restart local v30    # "th1":F
    .restart local v31    # "tv1":F
    .restart local v32    # "th2":F
    .restart local v33    # "tv2":F
    .restart local v34    # "vb":Lcom/sun/prism/impl/VertexBuffer;
    :cond_3
    move-object/from16 v35, v34

    move/from16 v36, v4

    move/from16 v37, v5

    move/from16 v38, v12

    move/from16 v39, v13

    move/from16 v40, v26

    move/from16 v41, v27

    move/from16 v42, v30

    move/from16 v43, v31

    invoke-virtual/range {v35 .. v43}, Lcom/sun/prism/impl/VertexBuffer;->addQuad(FFFFFFFF)V

    .line 620
    move-object/from16 v35, v34

    move/from16 v36, v12

    move/from16 v37, v5

    move/from16 v38, v14

    move/from16 v39, v13

    move/from16 v40, v30

    move/from16 v41, v27

    move/from16 v42, v32

    move/from16 v43, v31

    invoke-virtual/range {v35 .. v43}, Lcom/sun/prism/impl/VertexBuffer;->addQuad(FFFFFFFF)V

    .line 621
    move-object/from16 v35, v34

    move/from16 v36, v14

    move/from16 v37, v5

    move/from16 v38, v6

    move/from16 v39, v13

    move/from16 v40, v32

    move/from16 v41, v27

    move/from16 v42, v28

    move/from16 v43, v31

    invoke-virtual/range {v35 .. v43}, Lcom/sun/prism/impl/VertexBuffer;->addQuad(FFFFFFFF)V

    .line 623
    move-object/from16 v35, v34

    move/from16 v36, v4

    move/from16 v37, v13

    move/from16 v38, v12

    move/from16 v39, v15

    move/from16 v40, v26

    move/from16 v41, v31

    move/from16 v42, v30

    move/from16 v43, v33

    invoke-virtual/range {v35 .. v43}, Lcom/sun/prism/impl/VertexBuffer;->addQuad(FFFFFFFF)V

    .line 624
    move-object/from16 v35, v34

    move/from16 v36, v12

    move/from16 v37, v13

    move/from16 v38, v14

    move/from16 v39, v15

    move/from16 v40, v30

    move/from16 v41, v31

    move/from16 v42, v32

    move/from16 v43, v33

    invoke-virtual/range {v35 .. v43}, Lcom/sun/prism/impl/VertexBuffer;->addQuad(FFFFFFFF)V

    .line 625
    move-object/from16 v35, v34

    move/from16 v36, v14

    move/from16 v37, v13

    move/from16 v38, v6

    move/from16 v39, v15

    move/from16 v40, v32

    move/from16 v41, v31

    move/from16 v42, v28

    move/from16 v43, v33

    invoke-virtual/range {v35 .. v43}, Lcom/sun/prism/impl/VertexBuffer;->addQuad(FFFFFFFF)V

    .line 627
    move-object/from16 v35, v34

    move/from16 v36, v4

    move/from16 v37, v15

    move/from16 v38, v12

    move/from16 v39, v7

    move/from16 v40, v26

    move/from16 v41, v33

    move/from16 v42, v30

    move/from16 v43, v29

    invoke-virtual/range {v35 .. v43}, Lcom/sun/prism/impl/VertexBuffer;->addQuad(FFFFFFFF)V

    .line 628
    move-object/from16 v35, v34

    move/from16 v36, v12

    move/from16 v37, v15

    move/from16 v38, v14

    move/from16 v39, v7

    move/from16 v40, v30

    move/from16 v41, v33

    move/from16 v42, v32

    move/from16 v43, v29

    invoke-virtual/range {v35 .. v43}, Lcom/sun/prism/impl/VertexBuffer;->addQuad(FFFFFFFF)V

    .line 629
    move-object/from16 v35, v34

    move/from16 v36, v14

    move/from16 v37, v15

    move/from16 v38, v6

    move/from16 v39, v7

    move/from16 v40, v32

    move/from16 v41, v33

    move/from16 v42, v28

    move/from16 v43, v29

    invoke-virtual/range {v35 .. v43}, Lcom/sun/prism/impl/VertexBuffer;->addQuad(FFFFFFFF)V

    goto/16 :goto_2
.end method

.method public drawTextureRaw(Lcom/sun/prism/Texture;FFFFFFFF)V
    .locals 28

    .prologue
    .line 691
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/prism/impl/BaseGraphics;
    move-object/from16 v3, p1

    .local v3, "tex":Lcom/sun/prism/Texture;
    move/from16 v4, p2

    .local v4, "dx1":F
    move/from16 v5, p3

    .local v5, "dy1":F
    move/from16 v6, p4

    .local v6, "dx2":F
    move/from16 v7, p5

    .local v7, "dy2":F
    move/from16 v8, p6

    .local v8, "tx1":F
    move/from16 v9, p7

    .local v9, "ty1":F
    move/from16 v10, p8

    .local v10, "tx2":F
    move/from16 v11, p9

    .local v11, "ty2":F
    move/from16 v19, v4

    move/from16 v12, v19

    .line 692
    .local v12, "bx":F
    move/from16 v19, v5

    move/from16 v13, v19

    .line 693
    .local v13, "by":F
    move/from16 v19, v6

    move/from16 v20, v4

    sub-float v19, v19, v20

    move/from16 v14, v19

    .line 694
    .local v14, "bw":F
    move/from16 v19, v7

    move/from16 v20, v5

    sub-float v19, v19, v20

    move/from16 v15, v19

    .line 697
    .local v15, "bh":F
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lcom/sun/prism/impl/BaseGraphics;->getTransformNoClone()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v19

    move-object/from16 v16, v19

    .line 698
    .local v16, "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/sun/prism/impl/BaseGraphics;->isSimpleTranslate:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 699
    sget-object v19, Lcom/sun/prism/impl/BaseGraphics;->IDENT:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v16, v19

    .line 700
    move/from16 v19, v4

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/prism/impl/BaseGraphics;->transX:F

    move/from16 v20, v0

    add-float v19, v19, v20

    move/from16 v4, v19

    .line 701
    move/from16 v19, v5

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/prism/impl/BaseGraphics;->transY:F

    move/from16 v20, v0

    add-float v19, v19, v20

    move/from16 v5, v19

    .line 702
    move/from16 v19, v6

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/prism/impl/BaseGraphics;->transX:F

    move/from16 v20, v0

    add-float v19, v19, v20

    move/from16 v6, v19

    .line 703
    move/from16 v19, v7

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/prism/impl/BaseGraphics;->transY:F

    move/from16 v20, v0

    add-float v19, v19, v20

    move/from16 v7, v19

    .line 706
    :cond_0
    move-object/from16 v19, v3

    invoke-interface/range {v19 .. v19}, Lcom/sun/prism/Texture;->getPixelFormat()Lcom/sun/prism/PixelFormat;

    move-result-object v19

    move-object/from16 v17, v19

    .line 707
    .local v17, "format":Lcom/sun/prism/PixelFormat;
    move-object/from16 v19, v17

    sget-object v20, Lcom/sun/prism/PixelFormat;->BYTE_ALPHA:Lcom/sun/prism/PixelFormat;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 712
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/prism/impl/BaseGraphics;->context:Lcom/sun/prism/impl/BaseContext;

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v21, v16

    move-object/from16 v22, v3

    move/from16 v23, v12

    move/from16 v24, v13

    move/from16 v25, v14

    move/from16 v26, v15

    invoke-virtual/range {v19 .. v26}, Lcom/sun/prism/impl/BaseContext;->validatePaintOp(Lcom/sun/prism/impl/BaseGraphics;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/Texture;FFFF)V

    .line 717
    :goto_0
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/prism/impl/BaseGraphics;->context:Lcom/sun/prism/impl/BaseContext;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sun/prism/impl/BaseContext;->getVertexBuffer()Lcom/sun/prism/impl/VertexBuffer;

    move-result-object v19

    move-object/from16 v18, v19

    .line 718
    .local v18, "vb":Lcom/sun/prism/impl/VertexBuffer;
    move-object/from16 v19, v18

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v22, v6

    move/from16 v23, v7

    move/from16 v24, v8

    move/from16 v25, v9

    move/from16 v26, v10

    move/from16 v27, v11

    invoke-virtual/range {v19 .. v27}, Lcom/sun/prism/impl/VertexBuffer;->addQuad(FFFFFFFF)V

    .line 720
    return-void

    .line 714
    .end local v18    # "vb":Lcom/sun/prism/impl/VertexBuffer;
    :cond_1
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/prism/impl/BaseGraphics;->context:Lcom/sun/prism/impl/BaseContext;

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v21, v16

    move-object/from16 v22, v3

    move-object/from16 v23, v17

    invoke-virtual/range {v19 .. v23}, Lcom/sun/prism/impl/BaseContext;->validateTextureOp(Lcom/sun/prism/impl/BaseGraphics;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/Texture;Lcom/sun/prism/PixelFormat;)V

    goto :goto_0
.end method

.method public drawTextureVO(Lcom/sun/prism/Texture;FFFFFFFFFF)V
    .locals 36

    .prologue
    .line 638
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/prism/impl/BaseGraphics;
    move-object/from16 v3, p1

    .local v3, "tex":Lcom/sun/prism/Texture;
    move/from16 v4, p2

    .local v4, "topopacity":F
    move/from16 v5, p3

    .local v5, "botopacity":F
    move/from16 v6, p4

    .local v6, "dx1":F
    move/from16 v7, p5

    .local v7, "dy1":F
    move/from16 v8, p6

    .local v8, "dx2":F
    move/from16 v9, p7

    .local v9, "dy2":F
    move/from16 v10, p8

    .local v10, "sx1":F
    move/from16 v11, p9

    .local v11, "sy1":F
    move/from16 v12, p10

    .local v12, "sx2":F
    move/from16 v13, p11

    .local v13, "sy2":F
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/sun/prism/impl/BaseGraphics;->isSimpleTranslate:Z

    move/from16 v25, v0

    if-eqz v25, :cond_1

    sget-object v25, Lcom/sun/prism/impl/BaseGraphics;->IDENT:Lcom/sun/javafx/geom/transform/BaseTransform;

    :goto_0
    move-object/from16 v14, v25

    .line 639
    .local v14, "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v25, v3

    invoke-interface/range {v25 .. v25}, Lcom/sun/prism/Texture;->getPixelFormat()Lcom/sun/prism/PixelFormat;

    move-result-object v25

    move-object/from16 v15, v25

    .line 640
    .local v15, "format":Lcom/sun/prism/PixelFormat;
    move-object/from16 v25, v15

    sget-object v26, Lcom/sun/prism/PixelFormat;->BYTE_ALPHA:Lcom/sun/prism/PixelFormat;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_2

    .line 645
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/prism/impl/BaseGraphics;->context:Lcom/sun/prism/impl/BaseContext;

    move-object/from16 v25, v0

    move-object/from16 v26, v2

    move-object/from16 v27, v14

    move-object/from16 v28, v3

    move/from16 v29, v6

    move/from16 v30, v7

    move/from16 v31, v8

    move/from16 v32, v6

    sub-float v31, v31, v32

    move/from16 v32, v9

    move/from16 v33, v7

    sub-float v32, v32, v33

    invoke-virtual/range {v25 .. v32}, Lcom/sun/prism/impl/BaseContext;->validatePaintOp(Lcom/sun/prism/impl/BaseGraphics;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/Texture;FFFF)V

    .line 649
    :goto_1
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/sun/prism/impl/BaseGraphics;->isSimpleTranslate:Z

    move/from16 v25, v0

    if-eqz v25, :cond_0

    .line 653
    move/from16 v25, v6

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Lcom/sun/prism/impl/BaseGraphics;->transX:F

    move/from16 v26, v0

    add-float v25, v25, v26

    move/from16 v6, v25

    .line 654
    move/from16 v25, v7

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Lcom/sun/prism/impl/BaseGraphics;->transY:F

    move/from16 v26, v0

    add-float v25, v25, v26

    move/from16 v7, v25

    .line 655
    move/from16 v25, v8

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Lcom/sun/prism/impl/BaseGraphics;->transX:F

    move/from16 v26, v0

    add-float v25, v25, v26

    move/from16 v8, v25

    .line 656
    move/from16 v25, v9

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Lcom/sun/prism/impl/BaseGraphics;->transY:F

    move/from16 v26, v0

    add-float v25, v25, v26

    move/from16 v9, v25

    .line 659
    :cond_0
    move-object/from16 v25, v3

    invoke-interface/range {v25 .. v25}, Lcom/sun/prism/Texture;->getPhysicalWidth()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v16, v25

    .line 660
    .local v16, "tw":F
    move-object/from16 v25, v3

    invoke-interface/range {v25 .. v25}, Lcom/sun/prism/Texture;->getPhysicalHeight()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v17, v25

    .line 661
    .local v17, "th":F
    move-object/from16 v25, v3

    invoke-interface/range {v25 .. v25}, Lcom/sun/prism/Texture;->getContentX()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v18, v25

    .line 662
    .local v18, "cx1":F
    move-object/from16 v25, v3

    invoke-interface/range {v25 .. v25}, Lcom/sun/prism/Texture;->getContentY()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v19, v25

    .line 663
    .local v19, "cy1":F
    move/from16 v25, v18

    move/from16 v26, v10

    add-float v25, v25, v26

    move/from16 v26, v16

    div-float v25, v25, v26

    move/from16 v20, v25

    .line 664
    .local v20, "tx1":F
    move/from16 v25, v19

    move/from16 v26, v11

    add-float v25, v25, v26

    move/from16 v26, v17

    div-float v25, v25, v26

    move/from16 v21, v25

    .line 665
    .local v21, "ty1":F
    move/from16 v25, v18

    move/from16 v26, v12

    add-float v25, v25, v26

    move/from16 v26, v16

    div-float v25, v25, v26

    move/from16 v22, v25

    .line 666
    .local v22, "tx2":F
    move/from16 v25, v19

    move/from16 v26, v13

    add-float v25, v25, v26

    move/from16 v26, v17

    div-float v25, v25, v26

    move/from16 v23, v25

    .line 668
    .local v23, "ty2":F
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/prism/impl/BaseGraphics;->context:Lcom/sun/prism/impl/BaseContext;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sun/prism/impl/BaseContext;->getVertexBuffer()Lcom/sun/prism/impl/VertexBuffer;

    move-result-object v25

    move-object/from16 v24, v25

    .line 669
    .local v24, "vb":Lcom/sun/prism/impl/VertexBuffer;
    move/from16 v25, v4

    const/high16 v26, 0x3f800000    # 1.0f

    cmpl-float v25, v25, v26

    if-nez v25, :cond_3

    move/from16 v25, v5

    const/high16 v26, 0x3f800000    # 1.0f

    cmpl-float v25, v25, v26

    if-nez v25, :cond_3

    .line 670
    move-object/from16 v25, v24

    move/from16 v26, v6

    move/from16 v27, v7

    move/from16 v28, v8

    move/from16 v29, v9

    move/from16 v30, v20

    move/from16 v31, v21

    move/from16 v32, v22

    move/from16 v33, v23

    invoke-virtual/range {v25 .. v33}, Lcom/sun/prism/impl/VertexBuffer;->addQuad(FFFFFFFF)V

    .line 679
    :goto_2
    return-void

    .line 638
    .end local v14    # "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    .end local v15    # "format":Lcom/sun/prism/PixelFormat;
    .end local v16    # "tw":F
    .end local v17    # "th":F
    .end local v18    # "cx1":F
    .end local v19    # "cy1":F
    .end local v20    # "tx1":F
    .end local v21    # "ty1":F
    .end local v22    # "tx2":F
    .end local v23    # "ty2":F
    .end local v24    # "vb":Lcom/sun/prism/impl/VertexBuffer;
    :cond_1
    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Lcom/sun/prism/impl/BaseGraphics;->getTransformNoClone()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v25

    goto/16 :goto_0

    .line 647
    .restart local v14    # "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    .restart local v15    # "format":Lcom/sun/prism/PixelFormat;
    :cond_2
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/prism/impl/BaseGraphics;->context:Lcom/sun/prism/impl/BaseContext;

    move-object/from16 v25, v0

    move-object/from16 v26, v2

    move-object/from16 v27, v14

    move-object/from16 v28, v3

    move-object/from16 v29, v15

    invoke-virtual/range {v25 .. v29}, Lcom/sun/prism/impl/BaseContext;->validateTextureOp(Lcom/sun/prism/impl/BaseGraphics;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/Texture;Lcom/sun/prism/PixelFormat;)V

    goto/16 :goto_1

    .line 673
    .restart local v16    # "tw":F
    .restart local v17    # "th":F
    .restart local v18    # "cx1":F
    .restart local v19    # "cy1":F
    .restart local v20    # "tx1":F
    .restart local v21    # "ty1":F
    .restart local v22    # "tx2":F
    .restart local v23    # "ty2":F
    .restart local v24    # "vb":Lcom/sun/prism/impl/VertexBuffer;
    :cond_3
    move/from16 v25, v4

    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Lcom/sun/prism/impl/BaseGraphics;->getExtraAlpha()F

    move-result v26

    mul-float v25, v25, v26

    move/from16 v4, v25

    .line 674
    move/from16 v25, v5

    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Lcom/sun/prism/impl/BaseGraphics;->getExtraAlpha()F

    move-result v26

    mul-float v25, v25, v26

    move/from16 v5, v25

    .line 675
    move-object/from16 v25, v24

    move/from16 v26, v4

    move/from16 v27, v5

    move/from16 v28, v6

    move/from16 v29, v7

    move/from16 v30, v8

    move/from16 v31, v9

    move/from16 v32, v20

    move/from16 v33, v21

    move/from16 v34, v22

    move/from16 v35, v23

    invoke-virtual/range {v25 .. v35}, Lcom/sun/prism/impl/VertexBuffer;->addQuadVO(FFFFFFFFFF)V

    goto :goto_2
.end method

.method public fill(Lcom/sun/javafx/geom/Shape;)V
    .locals 14

    .prologue
    .line 353
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseGraphics;
    move-object v1, p1

    .local v1, "shape":Lcom/sun/javafx/geom/Shape;
    const/4 v7, 0x0

    move v2, v7

    .local v2, "bx":F
    const/4 v7, 0x0

    move v3, v7

    .local v3, "by":F
    const/4 v7, 0x0

    move v4, v7

    .local v4, "bw":F
    const/4 v7, 0x0

    move v5, v7

    .line 354
    .local v5, "bh":F
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/impl/BaseGraphics;->paint:Lcom/sun/prism/paint/Paint;

    invoke-virtual {v7}, Lcom/sun/prism/paint/Paint;->isProportional()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 355
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/impl/BaseGraphics;->nodeBounds:Lcom/sun/javafx/geom/RectBounds;

    if-eqz v7, :cond_1

    .line 356
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/impl/BaseGraphics;->nodeBounds:Lcom/sun/javafx/geom/RectBounds;

    invoke-virtual {v7}, Lcom/sun/javafx/geom/RectBounds;->getMinX()F

    move-result v7

    move v2, v7

    .line 357
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/impl/BaseGraphics;->nodeBounds:Lcom/sun/javafx/geom/RectBounds;

    invoke-virtual {v7}, Lcom/sun/javafx/geom/RectBounds;->getMinY()F

    move-result v7

    move v3, v7

    .line 358
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/impl/BaseGraphics;->nodeBounds:Lcom/sun/javafx/geom/RectBounds;

    invoke-virtual {v7}, Lcom/sun/javafx/geom/RectBounds;->getWidth()F

    move-result v7

    move v4, v7

    .line 359
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/impl/BaseGraphics;->nodeBounds:Lcom/sun/javafx/geom/RectBounds;

    invoke-virtual {v7}, Lcom/sun/javafx/geom/RectBounds;->getHeight()F

    move-result v7

    move v5, v7

    .line 372
    :cond_0
    :goto_0
    move-object v7, v0

    move-object v8, v1

    const/4 v9, 0x0

    move v10, v2

    move v11, v3

    move v12, v4

    move v13, v5

    invoke-virtual/range {v7 .. v13}, Lcom/sun/prism/impl/BaseGraphics;->renderShape(Lcom/sun/javafx/geom/Shape;Lcom/sun/prism/BasicStroke;FFFF)V

    .line 373
    return-void

    .line 361
    :cond_1
    const/4 v7, 0x4

    new-array v7, v7, [F

    fill-array-data v7, :array_0

    move-object v6, v7

    .line 365
    .local v6, "bbox":[F
    move-object v7, v6

    move-object v8, v1

    sget-object v9, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-static {v7, v8, v9}, Lcom/sun/javafx/geom/Shape;->accumulate([FLcom/sun/javafx/geom/Shape;Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 366
    move-object v7, v6

    const/4 v8, 0x0

    aget v7, v7, v8

    move v2, v7

    .line 367
    move-object v7, v6

    const/4 v8, 0x1

    aget v7, v7, v8

    move v3, v7

    .line 368
    move-object v7, v6

    const/4 v8, 0x2

    aget v7, v7, v8

    move v8, v2

    sub-float/2addr v7, v8

    move v4, v7

    .line 369
    move-object v7, v6

    const/4 v8, 0x3

    aget v7, v7, v8

    move v8, v3

    sub-float/2addr v7, v8

    move v5, v7

    goto :goto_0

    .line 361
    :array_0
    .array-data 4
        0x7f800000    # Float.POSITIVE_INFINITY
        0x7f800000    # Float.POSITIVE_INFINITY
        -0x800000    # Float.NEGATIVE_INFINITY
        -0x800000    # Float.NEGATIVE_INFINITY
    .end array-data
.end method

.method public getAssociatedScreen()Lcom/sun/glass/ui/Screen;
    .locals 2

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseGraphics;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/BaseGraphics;->context:Lcom/sun/prism/impl/BaseContext;

    invoke-virtual {v1}, Lcom/sun/prism/impl/BaseContext;->getAssociatedScreen()Lcom/sun/glass/ui/Screen;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/BaseGraphics;
    return-object v0
.end method

.method protected getCamera()Lcom/sun/javafx/sg/prism/NGCamera;
    .locals 2

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseGraphics;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/BaseGraphics;->camera:Lcom/sun/javafx/sg/prism/NGCamera;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/BaseGraphics;
    return-object v0
.end method

.method public getCameraNoClone()Lcom/sun/javafx/sg/prism/NGCamera;
    .locals 2

    .prologue
    .line 243
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseGraphics;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/BaseGraphics;->camera:Lcom/sun/javafx/sg/prism/NGCamera;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/BaseGraphics;
    return-object v0
.end method

.method public getClipRect()Lcom/sun/javafx/geom/Rectangle;
    .locals 5

    .prologue
    .line 291
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseGraphics;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/BaseGraphics;->clipRect:Lcom/sun/javafx/geom/Rectangle;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/sun/javafx/geom/Rectangle;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/impl/BaseGraphics;->clipRect:Lcom/sun/javafx/geom/Rectangle;

    invoke-direct {v2, v3}, Lcom/sun/javafx/geom/Rectangle;-><init>(Lcom/sun/javafx/geom/Rectangle;)V

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/BaseGraphics;
    return-object v0

    .restart local v0    # "this":Lcom/sun/prism/impl/BaseGraphics;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getClipRectIndex()I
    .locals 2

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseGraphics;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/impl/BaseGraphics;->clipRectIndex:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/BaseGraphics;
    return v0
.end method

.method public getClipRectNoClone()Lcom/sun/javafx/geom/Rectangle;
    .locals 2

    .prologue
    .line 295
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseGraphics;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/BaseGraphics;->clipRect:Lcom/sun/javafx/geom/Rectangle;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/BaseGraphics;
    return-object v0
.end method

.method public getCompositeMode()Lcom/sun/prism/CompositeMode;
    .locals 2

    .prologue
    .line 321
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseGraphics;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/BaseGraphics;->compMode:Lcom/sun/prism/CompositeMode;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/BaseGraphics;
    return-object v0
.end method

.method public getExtraAlpha()F
    .locals 2

    .prologue
    .line 313
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseGraphics;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/impl/BaseGraphics;->extraAlpha:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/BaseGraphics;
    return v0
.end method

.method public getFinalClipNoClone()Lcom/sun/javafx/geom/RectBounds;
    .locals 2

    .prologue
    .line 299
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseGraphics;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/BaseGraphics;->finalClipRect:Lcom/sun/javafx/geom/RectBounds;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/BaseGraphics;
    return-object v0
.end method

.method public getPaint()Lcom/sun/prism/paint/Paint;
    .locals 2

    .prologue
    .line 329
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseGraphics;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/BaseGraphics;->paint:Lcom/sun/prism/paint/Paint;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/BaseGraphics;
    return-object v0
.end method

.method public getPixelScaleFactor()F
    .locals 2

    .prologue
    .line 283
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseGraphics;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/impl/BaseGraphics;->pixelScale:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/BaseGraphics;
    return v0
.end method

.method public final getRenderRoot()Lcom/sun/javafx/sg/prism/NodePath;
    .locals 2

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseGraphics;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/BaseGraphics;->renderRoot:Lcom/sun/javafx/sg/prism/NodePath;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/BaseGraphics;
    return-object v0
.end method

.method public getRenderTarget()Lcom/sun/prism/RenderTarget;
    .locals 2

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseGraphics;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/BaseGraphics;->renderTarget:Lcom/sun/prism/RenderTarget;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/BaseGraphics;
    return-object v0
.end method

.method public getResourceFactory()Lcom/sun/prism/ResourceFactory;
    .locals 2

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseGraphics;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/BaseGraphics;->context:Lcom/sun/prism/impl/BaseContext;

    invoke-virtual {v1}, Lcom/sun/prism/impl/BaseContext;->getResourceFactory()Lcom/sun/prism/ResourceFactory;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/BaseGraphics;
    return-object v0
.end method

.method public getStroke()Lcom/sun/prism/BasicStroke;
    .locals 2

    .prologue
    .line 338
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseGraphics;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/BaseGraphics;->stroke:Lcom/sun/prism/BasicStroke;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/BaseGraphics;
    return-object v0
.end method

.method public getTransformNoClone()Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 2

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseGraphics;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/BaseGraphics;->transform3D:Lcom/sun/javafx/geom/transform/Affine3D;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/BaseGraphics;
    return-object v0
.end method

.method public hasPreCullingBits()Z
    .locals 2

    .prologue
    .line 211
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseGraphics;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/prism/impl/BaseGraphics;->hasPreCullingBits:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/BaseGraphics;
    return v0
.end method

.method public isAlphaTestShader()Z
    .locals 2

    .prologue
    .line 265
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseGraphics;
    sget-boolean v1, Lcom/sun/prism/impl/PrismSettings;->forceAlphaTestShader:Z

    if-nez v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/prism/impl/BaseGraphics;->isDepthTest()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/prism/impl/BaseGraphics;->isDepthBuffer()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/BaseGraphics;
    return v0

    .restart local v0    # "this":Lcom/sun/prism/impl/BaseGraphics;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAntialiasedShape()Z
    .locals 2

    .prologue
    .line 273
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseGraphics;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/prism/impl/BaseGraphics;->antialiasedShape:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/BaseGraphics;
    return v0
.end method

.method public isDepthBuffer()Z
    .locals 2

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseGraphics;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/prism/impl/BaseGraphics;->depthBuffer:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/BaseGraphics;
    return v0
.end method

.method public isDepthTest()Z
    .locals 2

    .prologue
    .line 251
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseGraphics;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/prism/impl/BaseGraphics;->depthTest:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/BaseGraphics;
    return v0
.end method

.method public isState3D()Z
    .locals 2

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseGraphics;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/prism/impl/BaseGraphics;->state3D:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/BaseGraphics;
    return v0
.end method

.method protected abstract renderShape(Lcom/sun/javafx/geom/Shape;Lcom/sun/prism/BasicStroke;FFFF)V
.end method

.method public scale(FF)V
    .locals 8

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseGraphics;
    move v1, p1

    .local v1, "sx":F
    move v2, p2

    .local v2, "sy":F
    move v3, v1

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    move v3, v2

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1

    .line 187
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/impl/BaseGraphics;->transform3D:Lcom/sun/javafx/geom/transform/Affine3D;

    move v4, v1

    float-to-double v4, v4

    move v6, v2

    float-to-double v6, v6

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sun/javafx/geom/transform/Affine3D;->scale(DD)V

    .line 188
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/prism/impl/BaseGraphics;->validateTransformAndPaint()V

    .line 190
    :cond_1
    return-void
.end method

.method public scale(FFF)V
    .locals 12

    .prologue
    .line 193
    move-object v1, p0

    .local v1, "this":Lcom/sun/prism/impl/BaseGraphics;
    move v2, p1

    .local v2, "sx":F
    move v3, p2

    .local v3, "sy":F
    move v4, p3

    .local v4, "sz":F
    move v5, v2

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    move v5, v3

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    move v5, v4

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_1

    .line 194
    :cond_0
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/prism/impl/BaseGraphics;->transform3D:Lcom/sun/javafx/geom/transform/Affine3D;

    move v6, v2

    float-to-double v6, v6

    move v8, v3

    float-to-double v8, v8

    move v10, v4

    float-to-double v10, v10

    invoke-virtual/range {v5 .. v11}, Lcom/sun/javafx/geom/transform/Affine3D;->scale(DDD)V

    .line 195
    move-object v5, v1

    invoke-direct {v5}, Lcom/sun/prism/impl/BaseGraphics;->validateTransformAndPaint()V

    .line 197
    :cond_1
    return-void
.end method

.method public setAntialiasedShape(Z)V
    .locals 4

    .prologue
    .line 269
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseGraphics;
    move v1, p1

    .local v1, "aa":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sun/prism/impl/BaseGraphics;->antialiasedShape:Z

    .line 270
    return-void
.end method

.method public setCamera(Lcom/sun/javafx/sg/prism/NGCamera;)V
    .locals 4

    .prologue
    .line 287
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseGraphics;
    move-object v1, p1

    .local v1, "camera":Lcom/sun/javafx/sg/prism/NGCamera;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/prism/impl/BaseGraphics;->camera:Lcom/sun/javafx/sg/prism/NGCamera;

    .line 288
    return-void
.end method

.method public setClipRect(Lcom/sun/javafx/geom/Rectangle;)V
    .locals 7

    .prologue
    .line 303
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseGraphics;
    move-object v1, p1

    .local v1, "clipRect":Lcom/sun/javafx/geom/Rectangle;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/impl/BaseGraphics;->finalClipRect:Lcom/sun/javafx/geom/RectBounds;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/impl/BaseGraphics;->devClipRect:Lcom/sun/javafx/geom/RectBounds;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/geom/RectBounds;->setBounds(Lcom/sun/javafx/geom/RectBounds;)V

    .line 304
    move-object v2, v1

    if-nez v2, :cond_0

    .line 305
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/prism/impl/BaseGraphics;->clipRect:Lcom/sun/javafx/geom/Rectangle;

    .line 310
    :goto_0
    return-void

    .line 307
    :cond_0
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/geom/Rectangle;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/geom/Rectangle;-><init>(Lcom/sun/javafx/geom/Rectangle;)V

    iput-object v3, v2, Lcom/sun/prism/impl/BaseGraphics;->clipRect:Lcom/sun/javafx/geom/Rectangle;

    .line 308
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/impl/BaseGraphics;->finalClipRect:Lcom/sun/javafx/geom/RectBounds;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/geom/RectBounds;->intersectWith(Lcom/sun/javafx/geom/Rectangle;)V

    goto :goto_0
.end method

.method public setClipRectIndex(I)V
    .locals 4

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseGraphics;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/prism/impl/BaseGraphics;->clipRectIndex:I

    .line 201
    return-void
.end method

.method public setCompositeMode(Lcom/sun/prism/CompositeMode;)V
    .locals 4

    .prologue
    .line 325
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseGraphics;
    move-object v1, p1

    .local v1, "compMode":Lcom/sun/prism/CompositeMode;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/prism/impl/BaseGraphics;->compMode:Lcom/sun/prism/CompositeMode;

    .line 326
    return-void
.end method

.method public setDepthBuffer(Z)V
    .locals 4

    .prologue
    .line 255
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseGraphics;
    move v1, p1

    .local v1, "depthBuffer":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sun/prism/impl/BaseGraphics;->depthBuffer:Z

    .line 256
    return-void
.end method

.method public setDepthTest(Z)V
    .locals 4

    .prologue
    .line 247
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseGraphics;
    move v1, p1

    .local v1, "depthTest":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sun/prism/impl/BaseGraphics;->depthTest:Z

    .line 248
    return-void
.end method

.method public setExtraAlpha(F)V
    .locals 4

    .prologue
    .line 317
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseGraphics;
    move v1, p1

    .local v1, "extraAlpha":F
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/prism/impl/BaseGraphics;->extraAlpha:F

    .line 318
    return-void
.end method

.method public setHasPreCullingBits(Z)V
    .locals 4

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseGraphics;
    move v1, p1

    .local v1, "hasBits":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sun/prism/impl/BaseGraphics;->hasPreCullingBits:Z

    .line 208
    return-void
.end method

.method public setPaint(Lcom/sun/prism/paint/Paint;)V
    .locals 4

    .prologue
    .line 333
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseGraphics;
    move-object v1, p1

    .local v1, "paint":Lcom/sun/prism/paint/Paint;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/prism/impl/BaseGraphics;->paint:Lcom/sun/prism/paint/Paint;

    .line 334
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/prism/impl/BaseGraphics;->validateTransformAndPaint()V

    .line 335
    return-void
.end method

.method public setPixelScaleFactor(F)V
    .locals 4

    .prologue
    .line 278
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseGraphics;
    move v1, p1

    .local v1, "pixelScale":F
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/prism/impl/BaseGraphics;->pixelScale:F

    .line 279
    return-void
.end method

.method public final setRenderRoot(Lcom/sun/javafx/sg/prism/NodePath;)V
    .locals 4

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseGraphics;
    move-object v1, p1

    .local v1, "root":Lcom/sun/javafx/sg/prism/NodePath;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/prism/impl/BaseGraphics;->renderRoot:Lcom/sun/javafx/sg/prism/NodePath;

    .line 218
    return-void
.end method

.method public setState3D(Z)V
    .locals 4

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseGraphics;
    move v1, p1

    .local v1, "flag":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sun/prism/impl/BaseGraphics;->state3D:Z

    .line 120
    return-void
.end method

.method public setStroke(Lcom/sun/prism/BasicStroke;)V
    .locals 4

    .prologue
    .line 342
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseGraphics;
    move-object v1, p1

    .local v1, "stroke":Lcom/sun/prism/BasicStroke;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/prism/impl/BaseGraphics;->stroke:Lcom/sun/prism/BasicStroke;

    .line 343
    return-void
.end method

.method public setTransform(DDDDDD)V
    .locals 27

    .prologue
    .line 152
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseGraphics;
    move-wide/from16 v1, p1

    .local v1, "m00":D
    move-wide/from16 v3, p3

    .local v3, "m10":D
    move-wide/from16 v5, p5

    .local v5, "m01":D
    move-wide/from16 v7, p7

    .local v7, "m11":D
    move-wide/from16 v9, p9

    .local v9, "m02":D
    move-wide/from16 v11, p11

    .local v11, "m12":D
    move-object v13, v0

    iget-object v13, v13, Lcom/sun/prism/impl/BaseGraphics;->transform3D:Lcom/sun/javafx/geom/transform/Affine3D;

    move-wide v14, v1

    move-wide/from16 v16, v3

    move-wide/from16 v18, v5

    move-wide/from16 v20, v7

    move-wide/from16 v22, v9

    move-wide/from16 v24, v11

    invoke-virtual/range {v13 .. v25}, Lcom/sun/javafx/geom/transform/Affine3D;->setTransform(DDDDDD)V

    .line 153
    move-object v13, v0

    invoke-direct {v13}, Lcom/sun/prism/impl/BaseGraphics;->validateTransformAndPaint()V

    .line 154
    return-void
.end method

.method public setTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)V
    .locals 4

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseGraphics;
    move-object v1, p1

    .local v1, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 141
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/impl/BaseGraphics;->transform3D:Lcom/sun/javafx/geom/transform/Affine3D;

    invoke-virtual {v2}, Lcom/sun/javafx/geom/transform/Affine3D;->setToIdentity()V

    .line 145
    :goto_0
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/prism/impl/BaseGraphics;->validateTransformAndPaint()V

    .line 146
    return-void

    .line 143
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/impl/BaseGraphics;->transform3D:Lcom/sun/javafx/geom/transform/Affine3D;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/geom/transform/Affine3D;->setTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    goto :goto_0
.end method

.method public setTransform3D(DDDDDDDDDDDD)V
    .locals 51

    .prologue
    .line 160
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/prism/impl/BaseGraphics;
    move-wide/from16 v2, p1

    .local v2, "mxx":D
    move-wide/from16 v4, p3

    .local v4, "mxy":D
    move-wide/from16 v6, p5

    .local v6, "mxz":D
    move-wide/from16 v8, p7

    .local v8, "mxt":D
    move-wide/from16 v10, p9

    .local v10, "myx":D
    move-wide/from16 v12, p11

    .local v12, "myy":D
    move-wide/from16 v14, p13

    .local v14, "myz":D
    move-wide/from16 v16, p15

    .local v16, "myt":D
    move-wide/from16 v18, p17

    .local v18, "mzx":D
    move-wide/from16 v20, p19

    .local v20, "mzy":D
    move-wide/from16 v22, p21

    .local v22, "mzz":D
    move-wide/from16 v24, p23

    .local v24, "mzt":D
    move-object/from16 v26, v1

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/prism/impl/BaseGraphics;->transform3D:Lcom/sun/javafx/geom/transform/Affine3D;

    move-object/from16 v26, v0

    move-wide/from16 v27, v2

    move-wide/from16 v29, v4

    move-wide/from16 v31, v6

    move-wide/from16 v33, v8

    move-wide/from16 v35, v10

    move-wide/from16 v37, v12

    move-wide/from16 v39, v14

    move-wide/from16 v41, v16

    move-wide/from16 v43, v18

    move-wide/from16 v45, v20

    move-wide/from16 v47, v22

    move-wide/from16 v49, v24

    invoke-virtual/range {v26 .. v50}, Lcom/sun/javafx/geom/transform/Affine3D;->setTransform(DDDDDDDDDDDD)V

    .line 163
    move-object/from16 v26, v1

    invoke-direct/range {v26 .. v26}, Lcom/sun/prism/impl/BaseGraphics;->validateTransformAndPaint()V

    .line 164
    return-void
.end method

.method public transform(Lcom/sun/javafx/geom/transform/BaseTransform;)V
    .locals 4

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseGraphics;
    move-object v1, p1

    .local v1, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/impl/BaseGraphics;->transform3D:Lcom/sun/javafx/geom/transform/Affine3D;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/geom/transform/Affine3D;->concatenate(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 168
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/prism/impl/BaseGraphics;->validateTransformAndPaint()V

    .line 169
    return-void
.end method

.method public translate(FF)V
    .locals 8

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseGraphics;
    move v1, p1

    .local v1, "tx":F
    move v2, p2

    .local v2, "ty":F
    move v3, v1

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    move v3, v2

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1

    .line 173
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/impl/BaseGraphics;->transform3D:Lcom/sun/javafx/geom/transform/Affine3D;

    move v4, v1

    float-to-double v4, v4

    move v6, v2

    float-to-double v6, v6

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sun/javafx/geom/transform/Affine3D;->translate(DD)V

    .line 174
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/prism/impl/BaseGraphics;->validateTransformAndPaint()V

    .line 176
    :cond_1
    return-void
.end method

.method public translate(FFF)V
    .locals 12

    .prologue
    .line 179
    move-object v1, p0

    .local v1, "this":Lcom/sun/prism/impl/BaseGraphics;
    move v2, p1

    .local v2, "tx":F
    move v3, p2

    .local v3, "ty":F
    move v4, p3

    .local v4, "tz":F
    move v5, v2

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    move v5, v3

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    move v5, v4

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_1

    .line 180
    :cond_0
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/prism/impl/BaseGraphics;->transform3D:Lcom/sun/javafx/geom/transform/Affine3D;

    move v6, v2

    float-to-double v6, v6

    move v8, v3

    float-to-double v8, v8

    move v10, v4

    float-to-double v10, v10

    invoke-virtual/range {v5 .. v11}, Lcom/sun/javafx/geom/transform/Affine3D;->translate(DDD)V

    .line 181
    move-object v5, v1

    invoke-direct {v5}, Lcom/sun/prism/impl/BaseGraphics;->validateTransformAndPaint()V

    .line 183
    :cond_1
    return-void
.end method
