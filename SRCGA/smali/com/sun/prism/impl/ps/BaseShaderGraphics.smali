.class public abstract Lcom/sun/prism/impl/ps/BaseShaderGraphics;
.super Lcom/sun/prism/impl/BaseGraphics;
.source "BaseShaderGraphics.java"

# interfaces
.implements Lcom/sun/prism/ps/ShaderGraphics;
.implements Lcom/sun/prism/ReadbackGraphics;
.implements Lcom/sun/prism/MaskTextureGraphics;


# static fields
.field private static final FRINGE_FACTOR:F

.field private static final SQRT_2:D

.field private static TEMP_TX2D:Lcom/sun/javafx/geom/transform/Affine2D;

.field private static TEMP_TX3D:Lcom/sun/javafx/geom/transform/Affine3D;

.field private static TMP_BOUNDS:Lcom/sun/javafx/geom/RectBounds;


# instance fields
.field private final context:Lcom/sun/prism/impl/ps/BaseShaderContext;

.field private externalShader:Lcom/sun/prism/ps/Shader;

.field private isComplexPaint:Z

.field private lcdSampleInvalid:Z

.field private lights:[Lcom/sun/javafx/sg/prism/NGLightBase;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 76
    new-instance v2, Lcom/sun/javafx/geom/transform/Affine2D;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lcom/sun/javafx/geom/transform/Affine2D;-><init>()V

    sput-object v2, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->TEMP_TX2D:Lcom/sun/javafx/geom/transform/Affine2D;

    .line 77
    new-instance v2, Lcom/sun/javafx/geom/transform/Affine3D;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lcom/sun/javafx/geom/transform/Affine3D;-><init>()V

    sput-object v2, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->TEMP_TX3D:Lcom/sun/javafx/geom/transform/Affine3D;

    .line 450
    new-instance v2, Lcom/sun/javafx/geom/RectBounds;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lcom/sun/javafx/geom/RectBounds;-><init>()V

    sput-object v2, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->TMP_BOUNDS:Lcom/sun/javafx/geom/RectBounds;

    .line 511
    invoke-static {}, Lcom/sun/prism/impl/ps/BaseShaderGraphics$$Lambda$1;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v2

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    .line 512
    .local v1, "v":Ljava/lang/String;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 513
    const/high16 v2, -0x41000000    # -0.5f

    sput v2, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->FRINGE_FACTOR:F

    .line 1619
    :goto_0
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    sput-wide v2, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->SQRT_2:D

    return-void

    .line 515
    :cond_0
    move-object v2, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    neg-float v2, v2

    sput v2, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->FRINGE_FACTOR:F

    .line 516
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Prism ShaderGraphics primitive shader pad = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->FRINGE_FACTOR:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected constructor <init>(Lcom/sun/prism/impl/ps/BaseShaderContext;Lcom/sun/prism/RenderTarget;)V
    .locals 6

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    move-object v1, p1

    .local v1, "context":Lcom/sun/prism/impl/ps/BaseShaderContext;
    move-object v2, p2

    .local v2, "renderTarget":Lcom/sun/prism/RenderTarget;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/prism/impl/BaseGraphics;-><init>(Lcom/sun/prism/impl/BaseContext;Lcom/sun/prism/RenderTarget;)V

    .line 122
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->lights:[Lcom/sun/javafx/sg/prism/NGLightBase;

    .line 1902
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->lcdSampleInvalid:Z

    .line 87
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    .line 88
    return-void
.end method

.method static synthetic access$lambda$0()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->lambda$static$436()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static calculateScaleFactor(FF)F
    .locals 4

    .prologue
    .line 211
    move v0, p0

    .local v0, "contentDim":F
    move v1, p1

    .local v1, "physicalDim":F
    move v2, v0

    move v3, v1

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 212
    const/high16 v2, 0x3f800000    # 1.0f

    move v0, v2

    .line 215
    .end local v0    # "contentDim":F
    :goto_0
    return v0

    .restart local v0    # "contentDim":F
    :cond_0
    move v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v2, v3

    move v3, v1

    div-float/2addr v2, v3

    move v0, v2

    goto :goto_0
.end method

.method private static canUseStrokeShader(Lcom/sun/prism/BasicStroke;)Z
    .locals 6

    .prologue
    .line 1623
    move-object v1, p0

    .local v1, "bs":Lcom/sun/prism/BasicStroke;
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/prism/BasicStroke;->isDashed()Z

    move-result v2

    if-nez v2, :cond_1

    move-object v2, v1

    .line 1624
    invoke-virtual {v2}, Lcom/sun/prism/BasicStroke;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    move-object v2, v1

    .line 1625
    invoke-virtual {v2}, Lcom/sun/prism/BasicStroke;->getLineJoin()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    move-object v2, v1

    .line 1626
    invoke-virtual {v2}, Lcom/sun/prism/BasicStroke;->getLineJoin()I

    move-result v2

    if-nez v2, :cond_1

    move-object v2, v1

    .line 1627
    invoke-virtual {v2}, Lcom/sun/prism/BasicStroke;->getMiterLimit()F

    move-result v2

    float-to-double v2, v2

    sget-wide v4, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->SQRT_2:D

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v1, v2

    .end local v1    # "bs":Lcom/sun/prism/BasicStroke;
    return v1

    .restart local v1    # "bs":Lcom/sun/prism/BasicStroke;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private checkInnerCurvature(FF)Z
    .locals 7

    .prologue
    .line 1683
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    move v1, p1

    .local v1, "arcw":F
    move v2, p2

    .local v2, "arch":F
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->stroke:Lcom/sun/prism/BasicStroke;

    invoke-virtual {v4}, Lcom/sun/prism/BasicStroke;->getLineWidth()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->stroke:Lcom/sun/prism/BasicStroke;

    .line 1684
    invoke-static {v6}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->getStrokeExpansionFactor(Lcom/sun/prism/BasicStroke;)F

    move-result v6

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    move v3, v4

    .line 1685
    .local v3, "inset":F
    move v4, v1

    move v5, v3

    sub-float/2addr v4, v5

    move v1, v4

    .line 1686
    move v4, v2

    move v5, v3

    sub-float/2addr v4, v5

    move v2, v4

    .line 1690
    move v4, v1

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-lez v4, :cond_0

    move v4, v2

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-lez v4, :cond_0

    move v4, v1

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    move v5, v2

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    move v4, v2

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    move v5, v1

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    move v0, v4

    .end local v0    # "this":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    return v0

    .restart local v0    # "this":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private drawLCDBuffer(FFFFFFFF)V
    .locals 18

    .prologue
    .line 2112
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    move/from16 v1, p1

    .local v1, "bx":F
    move/from16 v2, p2

    .local v2, "by":F
    move/from16 v3, p3

    .local v3, "bw":F
    move/from16 v4, p4

    .local v4, "bh":F
    move/from16 v5, p5

    .local v5, "tx1":F
    move/from16 v6, p6

    .local v6, "ty1":F
    move/from16 v7, p7

    .local v7, "tx2":F
    move/from16 v8, p8

    .local v8, "ty2":F
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    move-object v10, v0

    invoke-virtual {v9, v10}, Lcom/sun/prism/impl/ps/BaseShaderContext;->setRenderTarget(Lcom/sun/prism/impl/BaseGraphics;)V

    .line 2113
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    invoke-virtual {v9}, Lcom/sun/prism/impl/ps/BaseShaderContext;->getVertexBuffer()Lcom/sun/prism/impl/VertexBuffer;

    move-result-object v9

    move v10, v1

    move v11, v2

    move v12, v1

    move v13, v3

    add-float/2addr v12, v13

    move v13, v2

    move v14, v4

    add-float/2addr v13, v14

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    invoke-virtual/range {v9 .. v17}, Lcom/sun/prism/impl/VertexBuffer;->addQuad(FFFFFFFF)V

    .line 2114
    return-void
.end method

.method private extract3Dremainder(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 16

    .prologue
    .line 521
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    move-object/from16 v1, p1

    .local v1, "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/geom/transform/BaseTransform;->is2D()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 522
    sget-object v3, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->IDENT:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v0, v3

    .line 533
    .end local v0    # "this":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    :goto_0
    return-object v0

    .line 524
    .restart local v0    # "this":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    :cond_0
    sget-object v3, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->TEMP_TX3D:Lcom/sun/javafx/geom/transform/Affine3D;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/geom/transform/Affine3D;->setTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 525
    sget-object v3, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->TEMP_TX2D:Lcom/sun/javafx/geom/transform/Affine2D;

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxx()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyx()D

    move-result-wide v6

    move-object v8, v1

    .line 526
    invoke-virtual {v8}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxy()D

    move-result-wide v8

    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyy()D

    move-result-wide v10

    move-object v12, v1

    .line 527
    invoke-virtual {v12}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxt()D

    move-result-wide v12

    move-object v14, v1

    invoke-virtual {v14}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyt()D

    move-result-wide v14

    .line 525
    invoke-virtual/range {v3 .. v15}, Lcom/sun/javafx/geom/transform/Affine2D;->setTransform(DDDDDD)V

    .line 529
    :try_start_0
    sget-object v3, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->TEMP_TX2D:Lcom/sun/javafx/geom/transform/Affine2D;

    invoke-virtual {v3}, Lcom/sun/javafx/geom/transform/Affine2D;->invert()V

    .line 530
    sget-object v3, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->TEMP_TX3D:Lcom/sun/javafx/geom/transform/Affine3D;

    sget-object v4, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->TEMP_TX2D:Lcom/sun/javafx/geom/transform/Affine2D;

    invoke-virtual {v3, v4}, Lcom/sun/javafx/geom/transform/Affine3D;->concatenate(Lcom/sun/javafx/geom/transform/BaseTransform;)V
    :try_end_0
    .catch Lcom/sun/javafx/geom/transform/NoninvertibleTransformException; {:try_start_0 .. :try_end_0} :catch_0

    .line 532
    .line 533
    :goto_1
    sget-object v3, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->TEMP_TX3D:Lcom/sun/javafx/geom/transform/Affine3D;

    move-object v0, v3

    goto :goto_0

    .line 531
    :catch_0
    move-exception v3

    move-object v2, v3

    goto :goto_1
.end method

.method private static getStrokeExpansionFactor(Lcom/sun/prism/BasicStroke;)F
    .locals 3

    .prologue
    .line 500
    move-object v0, p0

    .local v0, "stroke":Lcom/sun/prism/BasicStroke;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/prism/BasicStroke;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 501
    const/high16 v1, 0x3f800000    # 1.0f

    move v0, v1

    .line 505
    .end local v0    # "stroke":Lcom/sun/prism/BasicStroke;
    :goto_0
    return v0

    .line 502
    .restart local v0    # "stroke":Lcom/sun/prism/BasicStroke;
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/prism/BasicStroke;->getType()I

    move-result v1

    if-nez v1, :cond_1

    .line 503
    const/high16 v1, 0x3f000000    # 0.5f

    move v0, v1

    goto :goto_0

    .line 505
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method private initLCDSampleRT()V
    .locals 24

    .prologue
    .line 1910
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    move-object v14, v0

    iget-boolean v14, v14, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->lcdSampleInvalid:Z

    if-eqz v14, :cond_1

    .line 1911
    new-instance v14, Lcom/sun/javafx/geom/RectBounds;

    move-object/from16 v23, v14

    move-object/from16 v14, v23

    move-object/from16 v15, v23

    invoke-direct {v15}, Lcom/sun/javafx/geom/RectBounds;-><init>()V

    move-object v1, v14

    .line 1912
    .local v1, "textBounds":Lcom/sun/javafx/geom/RectBounds;
    move-object v14, v0

    invoke-virtual {v14}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->getTransformNoClone()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v14

    move-object v15, v0

    iget-object v15, v15, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->nodeBounds:Lcom/sun/javafx/geom/RectBounds;

    move-object/from16 v16, v1

    invoke-virtual/range {v14 .. v16}, Lcom/sun/javafx/geom/transform/BaseTransform;->transform(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v14

    .line 1913
    move-object v14, v0

    invoke-virtual {v14}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->getClipRectNoClone()Lcom/sun/javafx/geom/Rectangle;

    move-result-object v14

    move-object v2, v14

    .line 1914
    .local v2, "clipRect":Lcom/sun/javafx/geom/Rectangle;
    move-object v14, v2

    if-eqz v14, :cond_0

    move-object v14, v2

    invoke-virtual {v14}, Lcom/sun/javafx/geom/Rectangle;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_0

    .line 1916
    move-object v14, v1

    move-object v15, v2

    invoke-virtual {v14, v15}, Lcom/sun/javafx/geom/RectBounds;->intersectWith(Lcom/sun/javafx/geom/Rectangle;)V

    .line 1920
    :cond_0
    move-object v14, v1

    invoke-virtual {v14}, Lcom/sun/javafx/geom/RectBounds;->getMinX()F

    move-result v14

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float/2addr v14, v15

    move v3, v14

    .line 1921
    .local v3, "bx":F
    move-object v14, v1

    invoke-virtual {v14}, Lcom/sun/javafx/geom/RectBounds;->getMinY()F

    move-result v14

    move v4, v14

    .line 1922
    .local v4, "by":F
    move-object v14, v1

    invoke-virtual {v14}, Lcom/sun/javafx/geom/RectBounds;->getWidth()F

    move-result v14

    const/high16 v15, 0x40000000    # 2.0f

    add-float/2addr v14, v15

    move v5, v14

    .line 1923
    .local v5, "bw":F
    move-object v14, v1

    invoke-virtual {v14}, Lcom/sun/javafx/geom/RectBounds;->getHeight()F

    move-result v14

    const/high16 v15, 0x3f800000    # 1.0f

    add-float/2addr v14, v15

    move v6, v14

    .line 1925
    .local v6, "bh":F
    move-object v14, v0

    iget-object v14, v14, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->getRenderTarget()Lcom/sun/prism/RenderTarget;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/sun/prism/impl/ps/BaseShaderContext;->validateLCDBuffer(Lcom/sun/prism/RenderTarget;)V

    .line 1929
    move-object v14, v0

    iget-object v14, v14, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    invoke-virtual {v14}, Lcom/sun/prism/impl/ps/BaseShaderContext;->getLCDBuffer()Lcom/sun/prism/RTTexture;

    move-result-object v14

    invoke-interface {v14}, Lcom/sun/prism/RTTexture;->createGraphics()Lcom/sun/prism/Graphics;

    move-result-object v14

    check-cast v14, Lcom/sun/prism/impl/ps/BaseShaderGraphics;

    move-object v7, v14

    .line 1930
    .local v7, "bsg":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    move-object v14, v7

    sget-object v15, Lcom/sun/prism/CompositeMode;->SRC:Lcom/sun/prism/CompositeMode;

    invoke-virtual {v14, v15}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->setCompositeMode(Lcom/sun/prism/CompositeMode;)V

    .line 1931
    move-object v14, v0

    iget-object v14, v14, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    move-object v15, v7

    sget-object v16, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->IDENT:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->getRenderTarget()Lcom/sun/prism/RenderTarget;

    move-result-object v17

    check-cast v17, Lcom/sun/prism/Texture;

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    invoke-virtual/range {v14 .. v20}, Lcom/sun/prism/impl/ps/BaseShaderContext;->validateLCDOp(Lcom/sun/prism/impl/ps/BaseShaderGraphics;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/Texture;Lcom/sun/prism/Texture;ZLcom/sun/prism/paint/Paint;)Lcom/sun/prism/ps/Shader;

    move-result-object v14

    .line 1933
    move-object v14, v0

    invoke-virtual {v14}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->getRenderTarget()Lcom/sun/prism/RenderTarget;

    move-result-object v14

    invoke-interface {v14}, Lcom/sun/prism/RenderTarget;->getPhysicalHeight()I

    move-result v14

    move v8, v14

    .line 1934
    .local v8, "srch":I
    move-object v14, v0

    invoke-virtual {v14}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->getRenderTarget()Lcom/sun/prism/RenderTarget;

    move-result-object v14

    invoke-interface {v14}, Lcom/sun/prism/RenderTarget;->getPhysicalWidth()I

    move-result v14

    move v9, v14

    .line 1935
    .local v9, "srcw":I
    move v14, v3

    move v15, v9

    int-to-float v15, v15

    div-float/2addr v14, v15

    move v10, v14

    .line 1936
    .local v10, "tx1":F
    move v14, v4

    move v15, v8

    int-to-float v15, v15

    div-float/2addr v14, v15

    move v11, v14

    .line 1937
    .local v11, "ty1":F
    move v14, v3

    move v15, v5

    add-float/2addr v14, v15

    move v15, v9

    int-to-float v15, v15

    div-float/2addr v14, v15

    move v12, v14

    .line 1938
    .local v12, "tx2":F
    move v14, v4

    move v15, v6

    add-float/2addr v14, v15

    move v15, v8

    int-to-float v15, v15

    div-float/2addr v14, v15

    move v13, v14

    .line 1941
    .local v13, "ty2":F
    move-object v14, v7

    move v15, v3

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v10

    move/from16 v20, v11

    move/from16 v21, v12

    move/from16 v22, v13

    invoke-direct/range {v14 .. v22}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->drawLCDBuffer(FFFFFFFF)V

    .line 1942
    move-object v14, v0

    iget-object v14, v14, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    move-object v15, v0

    invoke-virtual {v14, v15}, Lcom/sun/prism/impl/ps/BaseShaderContext;->setRenderTarget(Lcom/sun/prism/impl/BaseGraphics;)V

    .line 1944
    .end local v1    # "textBounds":Lcom/sun/javafx/geom/RectBounds;
    .end local v2    # "clipRect":Lcom/sun/javafx/geom/Rectangle;
    .end local v3    # "bx":F
    .end local v4    # "by":F
    .end local v5    # "bw":F
    .end local v6    # "bh":F
    .end local v7    # "bsg":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    .end local v8    # "srch":I
    .end local v9    # "srcw":I
    .end local v10    # "tx1":F
    .end local v11    # "ty1":F
    .end local v12    # "tx2":F
    .end local v13    # "ty2":F
    :cond_1
    move-object v14, v0

    const/4 v15, 0x0

    iput-boolean v15, v14, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->lcdSampleInvalid:Z

    .line 1945
    return-void
.end method

.method private static synthetic lambda$static$436()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 511
    const-string v0, "prism.primshaderpad"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static len(FF)F
    .locals 5

    .prologue
    .line 1897
    move v0, p0

    .local v0, "x":F
    move v1, p1

    .local v1, "y":F
    move v2, v0

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    move v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 1899
    :goto_0
    move v0, v2

    .end local v0    # "x":F
    return v0

    .line 1897
    .restart local v0    # "x":F
    :cond_0
    move v2, v1

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    move v2, v0

    .line 1898
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v0

    move v3, v0

    mul-float/2addr v2, v3

    move v3, v1

    move v4, v1

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-double v2, v2

    .line 1899
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    goto :goto_0
.end method

.method private renderGeneralRoundedPgram(FFFFFFFFFFLcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;FFFF)V
    .locals 82

    .prologue
    .line 614
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    move/from16 v3, p1

    .local v3, "ox":F
    move/from16 v4, p2

    .local v4, "oy":F
    move/from16 v5, p3

    .local v5, "wvecx":F
    move/from16 v6, p4

    .local v6, "wvecy":F
    move/from16 v7, p5

    .local v7, "hvecx":F
    move/from16 v8, p6

    .local v8, "hvecy":F
    move/from16 v9, p7

    .local v9, "arcfractw":F
    move/from16 v10, p8

    .local v10, "arcfracth":F
    move/from16 v11, p9

    .local v11, "ifractw":F
    move/from16 v12, p10

    .local v12, "ifracth":F
    move-object/from16 v13, p11

    .local v13, "rendertx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v14, p12

    .local v14, "type":Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;
    move/from16 v15, p13

    .local v15, "rx":F
    move/from16 v16, p14

    .local v16, "ry":F
    move/from16 v17, p15

    .local v17, "rw":F
    move/from16 v18, p16

    .local v18, "rh":F
    move/from16 v62, v5

    move/from16 v63, v6

    invoke-static/range {v62 .. v63}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->len(FF)F

    move-result v62

    move/from16 v19, v62

    .line 615
    .local v19, "wlen":F
    move/from16 v62, v7

    move/from16 v63, v8

    invoke-static/range {v62 .. v63}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->len(FF)F

    move-result v62

    move/from16 v20, v62

    .line 616
    .local v20, "hlen":F
    move/from16 v62, v19

    const/16 v63, 0x0

    cmpl-float v62, v62, v63

    if-eqz v62, :cond_0

    move/from16 v62, v20

    const/16 v63, 0x0

    cmpl-float v62, v62, v63

    if-nez v62, :cond_1

    .line 618
    .line 908
    :cond_0
    :goto_0
    return-void

    .line 625
    :cond_1
    move/from16 v62, v3

    move/from16 v21, v62

    .line 626
    .local v21, "xUL":F
    move/from16 v62, v4

    move/from16 v22, v62

    .line 627
    .local v22, "yUL":F
    move/from16 v62, v3

    move/from16 v63, v5

    add-float v62, v62, v63

    move/from16 v23, v62

    .line 628
    .local v23, "xUR":F
    move/from16 v62, v4

    move/from16 v63, v6

    add-float v62, v62, v63

    move/from16 v24, v62

    .line 629
    .local v24, "yUR":F
    move/from16 v62, v3

    move/from16 v63, v7

    add-float v62, v62, v63

    move/from16 v25, v62

    .line 630
    .local v25, "xLL":F
    move/from16 v62, v4

    move/from16 v63, v8

    add-float v62, v62, v63

    move/from16 v26, v62

    .line 631
    .local v26, "yLL":F
    move/from16 v62, v23

    move/from16 v63, v7

    add-float v62, v62, v63

    move/from16 v27, v62

    .line 632
    .local v27, "xLR":F
    move/from16 v62, v24

    move/from16 v63, v8

    add-float v62, v62, v63

    move/from16 v28, v62

    .line 665
    .local v28, "yLR":F
    move/from16 v62, v5

    move/from16 v63, v8

    mul-float v62, v62, v63

    move/from16 v63, v6

    move/from16 v64, v7

    mul-float v63, v63, v64

    sub-float v62, v62, v63

    const/high16 v63, 0x3f000000    # 0.5f

    mul-float v62, v62, v63

    move/from16 v29, v62

    .line 666
    .local v29, "halfarea":F
    move/from16 v62, v29

    move/from16 v63, v20

    div-float v62, v62, v63

    move/from16 v30, v62

    .line 667
    .local v30, "pwdist":F
    move/from16 v62, v29

    move/from16 v63, v19

    div-float v62, v62, v63

    move/from16 v31, v62

    .line 668
    .local v31, "phdist":F
    move/from16 v62, v30

    const/16 v63, 0x0

    cmpg-float v62, v62, v63

    if-gez v62, :cond_2

    move/from16 v62, v30

    move/from16 v0, v62

    neg-float v0, v0

    move/from16 v62, v0

    move/from16 v30, v62

    .line 669
    :cond_2
    move/from16 v62, v31

    const/16 v63, 0x0

    cmpg-float v62, v62, v63

    if-gez v62, :cond_3

    move/from16 v62, v31

    move/from16 v0, v62

    neg-float v0, v0

    move/from16 v62, v0

    move/from16 v31, v62

    .line 672
    :cond_3
    move/from16 v62, v5

    move/from16 v63, v19

    div-float v62, v62, v63

    move/from16 v32, v62

    .line 673
    .local v32, "nwvecx":F
    move/from16 v62, v6

    move/from16 v63, v19

    div-float v62, v62, v63

    move/from16 v33, v62

    .line 674
    .local v33, "nwvecy":F
    move/from16 v62, v7

    move/from16 v63, v20

    div-float v62, v62, v63

    move/from16 v34, v62

    .line 675
    .local v34, "nhvecx":F
    move/from16 v62, v8

    move/from16 v63, v20

    div-float v62, v62, v63

    move/from16 v35, v62

    .line 731
    .local v35, "nhvecy":F
    move/from16 v62, v7

    move/from16 v0, v62

    neg-float v0, v0

    move/from16 v62, v0

    move/from16 v63, v32

    move/from16 v64, v34

    add-float v63, v63, v64

    mul-float v62, v62, v63

    move/from16 v63, v8

    move/from16 v64, v33

    move/from16 v65, v35

    add-float v64, v64, v65

    mul-float v63, v63, v64

    sub-float v62, v62, v63

    move/from16 v36, v62

    .line 732
    .local v36, "num":F
    move/from16 v62, v8

    move/from16 v63, v5

    mul-float v62, v62, v63

    move/from16 v63, v7

    move/from16 v64, v6

    mul-float v63, v63, v64

    sub-float v62, v62, v63

    move/from16 v37, v62

    .line 733
    .local v37, "den":F
    move/from16 v62, v36

    move/from16 v63, v37

    div-float v62, v62, v63

    move/from16 v38, v62

    .line 736
    .local v38, "t":F
    sget v62, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->FRINGE_FACTOR:F

    move/from16 v63, v38

    invoke-static/range {v63 .. v63}, Ljava/lang/Math;->signum(F)F

    move-result v63

    mul-float v62, v62, v63

    move/from16 v39, v62

    .line 737
    .local v39, "factor":F
    move/from16 v62, v38

    move/from16 v63, v5

    mul-float v62, v62, v63

    move/from16 v63, v33

    add-float v62, v62, v63

    move/from16 v63, v39

    mul-float v62, v62, v63

    move/from16 v40, v62

    .line 738
    .local v40, "offx":F
    move/from16 v62, v38

    move/from16 v63, v6

    mul-float v62, v62, v63

    move/from16 v63, v32

    sub-float v62, v62, v63

    move/from16 v63, v39

    mul-float v62, v62, v63

    move/from16 v41, v62

    .line 739
    .local v41, "offy":F
    move/from16 v62, v21

    move/from16 v63, v40

    add-float v62, v62, v63

    move/from16 v21, v62

    move/from16 v62, v22

    move/from16 v63, v41

    add-float v62, v62, v63

    move/from16 v22, v62

    .line 741
    move/from16 v62, v27

    move/from16 v63, v40

    sub-float v62, v62, v63

    move/from16 v27, v62

    move/from16 v62, v28

    move/from16 v63, v41

    sub-float v62, v62, v63

    move/from16 v28, v62

    .line 754
    move/from16 v62, v6

    move/from16 v63, v35

    move/from16 v64, v33

    sub-float v63, v63, v64

    mul-float v62, v62, v63

    move/from16 v63, v5

    move/from16 v64, v32

    move/from16 v65, v34

    sub-float v64, v64, v65

    mul-float v63, v63, v64

    sub-float v62, v62, v63

    move/from16 v36, v62

    .line 755
    move/from16 v62, v36

    move/from16 v63, v37

    div-float v62, v62, v63

    move/from16 v38, v62

    .line 756
    sget v62, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->FRINGE_FACTOR:F

    move/from16 v63, v38

    invoke-static/range {v63 .. v63}, Ljava/lang/Math;->signum(F)F

    move-result v63

    mul-float v62, v62, v63

    move/from16 v39, v62

    .line 757
    move/from16 v62, v38

    move/from16 v63, v7

    mul-float v62, v62, v63

    move/from16 v63, v35

    add-float v62, v62, v63

    move/from16 v63, v39

    mul-float v62, v62, v63

    move/from16 v40, v62

    .line 758
    move/from16 v62, v38

    move/from16 v63, v8

    mul-float v62, v62, v63

    move/from16 v63, v34

    sub-float v62, v62, v63

    move/from16 v63, v39

    mul-float v62, v62, v63

    move/from16 v41, v62

    .line 759
    move/from16 v62, v23

    move/from16 v63, v40

    add-float v62, v62, v63

    move/from16 v23, v62

    move/from16 v62, v24

    move/from16 v63, v41

    add-float v62, v62, v63

    move/from16 v24, v62

    .line 760
    move/from16 v62, v25

    move/from16 v63, v40

    sub-float v62, v62, v63

    move/from16 v25, v62

    move/from16 v62, v26

    move/from16 v63, v41

    sub-float v62, v62, v63

    move/from16 v26, v62

    .line 776
    move/from16 v62, v21

    move/from16 v63, v27

    add-float v62, v62, v63

    const/high16 v63, 0x3f000000    # 0.5f

    mul-float v62, v62, v63

    move/from16 v42, v62

    .line 777
    .local v42, "xC":F
    move/from16 v62, v22

    move/from16 v63, v28

    add-float v62, v62, v63

    const/high16 v63, 0x3f000000    # 0.5f

    mul-float v62, v62, v63

    move/from16 v43, v62

    .line 778
    .local v43, "yC":F
    move/from16 v62, v42

    move/from16 v63, v35

    mul-float v62, v62, v63

    move/from16 v63, v43

    move/from16 v64, v34

    mul-float v63, v63, v64

    sub-float v62, v62, v63

    move/from16 v44, v62

    .line 779
    .local v44, "uC":F
    move/from16 v62, v42

    move/from16 v63, v33

    mul-float v62, v62, v63

    move/from16 v63, v43

    move/from16 v64, v32

    mul-float v63, v63, v64

    sub-float v62, v62, v63

    move/from16 v45, v62

    .line 781
    .local v45, "vC":F
    move/from16 v62, v21

    move/from16 v63, v35

    mul-float v62, v62, v63

    move/from16 v63, v22

    move/from16 v64, v34

    mul-float v63, v63, v64

    sub-float v62, v62, v63

    move/from16 v63, v44

    sub-float v62, v62, v63

    move/from16 v46, v62

    .line 782
    .local v46, "uUL":F
    move/from16 v62, v21

    move/from16 v63, v33

    mul-float v62, v62, v63

    move/from16 v63, v22

    move/from16 v64, v32

    mul-float v63, v63, v64

    sub-float v62, v62, v63

    move/from16 v63, v45

    sub-float v62, v62, v63

    move/from16 v47, v62

    .line 783
    .local v47, "vUL":F
    move/from16 v62, v23

    move/from16 v63, v35

    mul-float v62, v62, v63

    move/from16 v63, v24

    move/from16 v64, v34

    mul-float v63, v63, v64

    sub-float v62, v62, v63

    move/from16 v63, v44

    sub-float v62, v62, v63

    move/from16 v48, v62

    .line 784
    .local v48, "uUR":F
    move/from16 v62, v23

    move/from16 v63, v33

    mul-float v62, v62, v63

    move/from16 v63, v24

    move/from16 v64, v32

    mul-float v63, v63, v64

    sub-float v62, v62, v63

    move/from16 v63, v45

    sub-float v62, v62, v63

    move/from16 v49, v62

    .line 785
    .local v49, "vUR":F
    move/from16 v62, v25

    move/from16 v63, v35

    mul-float v62, v62, v63

    move/from16 v63, v26

    move/from16 v64, v34

    mul-float v63, v63, v64

    sub-float v62, v62, v63

    move/from16 v63, v44

    sub-float v62, v62, v63

    move/from16 v50, v62

    .line 786
    .local v50, "uLL":F
    move/from16 v62, v25

    move/from16 v63, v33

    mul-float v62, v62, v63

    move/from16 v63, v26

    move/from16 v64, v32

    mul-float v63, v63, v64

    sub-float v62, v62, v63

    move/from16 v63, v45

    sub-float v62, v62, v63

    move/from16 v51, v62

    .line 787
    .local v51, "vLL":F
    move/from16 v62, v27

    move/from16 v63, v35

    mul-float v62, v62, v63

    move/from16 v63, v28

    move/from16 v64, v34

    mul-float v63, v63, v64

    sub-float v62, v62, v63

    move/from16 v63, v44

    sub-float v62, v62, v63

    move/from16 v52, v62

    .line 788
    .local v52, "uLR":F
    move/from16 v62, v27

    move/from16 v63, v33

    mul-float v62, v62, v63

    move/from16 v63, v28

    move/from16 v64, v32

    mul-float v63, v63, v64

    sub-float v62, v62, v63

    move/from16 v63, v45

    sub-float v62, v62, v63

    move/from16 v53, v62

    .line 792
    .local v53, "vLR":F
    move-object/from16 v62, v14

    sget-object v63, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->DRAW_ROUNDRECT:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    move-object/from16 v0, v62

    move-object/from16 v1, v63

    if-eq v0, v1, :cond_4

    move-object/from16 v62, v14

    sget-object v63, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->FILL_ROUNDRECT:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    move-object/from16 v0, v62

    move-object/from16 v1, v63

    if-ne v0, v1, :cond_6

    .line 793
    :cond_4
    move/from16 v62, v30

    move/from16 v63, v9

    mul-float v62, v62, v63

    move/from16 v54, v62

    .line 794
    .local v54, "oarcw":F
    move/from16 v62, v31

    move/from16 v63, v10

    mul-float v62, v62, v63

    move/from16 v55, v62

    .line 795
    .local v55, "oarch":F
    move/from16 v62, v54

    move/from16 v0, v62

    float-to-double v0, v0

    move-wide/from16 v62, v0

    const-wide/high16 v64, 0x3fe0000000000000L    # 0.5

    cmpg-double v62, v62, v64

    if-ltz v62, :cond_5

    move/from16 v62, v55

    move/from16 v0, v62

    float-to-double v0, v0

    move-wide/from16 v62, v0

    const-wide/high16 v64, 0x3fe0000000000000L    # 0.5

    cmpg-double v62, v62, v64

    if-gez v62, :cond_b

    .line 806
    :cond_5
    move-object/from16 v62, v14

    sget-object v63, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->DRAW_ROUNDRECT:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    move-object/from16 v0, v62

    move-object/from16 v1, v63

    if-ne v0, v1, :cond_a

    sget-object v62, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->DRAW_PGRAM:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    :goto_1
    move-object/from16 v14, v62

    .line 856
    .end local v54    # "oarcw":F
    .end local v55    # "oarch":F
    :cond_6
    :goto_2
    move-object/from16 v62, v14

    sget-object v63, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->DRAW_PGRAM:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    move-object/from16 v0, v62

    move-object/from16 v1, v63

    if-eq v0, v1, :cond_7

    move-object/from16 v62, v14

    sget-object v63, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->DRAW_ELLIPSE:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    move-object/from16 v0, v62

    move-object/from16 v1, v63

    if-ne v0, v1, :cond_12

    .line 857
    :cond_7
    move/from16 v62, v30

    move/from16 v63, v11

    mul-float v62, v62, v63

    move/from16 v54, v62

    .line 858
    .local v54, "idimw":F
    move/from16 v62, v31

    move/from16 v63, v12

    mul-float v62, v62, v63

    move/from16 v55, v62

    .line 859
    .local v55, "idimh":F
    move-object/from16 v62, v14

    sget-object v63, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->DRAW_ELLIPSE:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    move-object/from16 v0, v62

    move-object/from16 v1, v63

    if-ne v0, v1, :cond_8

    .line 860
    move/from16 v62, v30

    move/from16 v63, v31

    sub-float v62, v62, v63

    invoke-static/range {v62 .. v62}, Ljava/lang/Math;->abs(F)F

    move-result v62

    move/from16 v0, v62

    float-to-double v0, v0

    move-wide/from16 v62, v0

    const-wide v64, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v62, v62, v64

    if-gez v62, :cond_11

    .line 861
    sget-object v62, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->DRAW_CIRCLE:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    move-object/from16 v14, v62

    .line 865
    const-wide/high16 v62, 0x3ff0000000000000L    # 1.0

    move/from16 v64, v31

    move/from16 v65, v31

    mul-float v64, v64, v65

    move/from16 v0, v64

    float-to-double v0, v0

    move-wide/from16 v64, v0

    const-wide v66, 0x400921fb54442d18L    # Math.PI

    mul-double v64, v64, v66

    invoke-static/range {v62 .. v65}, Ljava/lang/Math;->min(DD)D

    move-result-wide v62

    move-wide/from16 v0, v62

    double-to-float v0, v0

    move/from16 v62, v0

    move/from16 v31, v62

    .line 866
    const-wide/high16 v62, 0x3ff0000000000000L    # 1.0

    move/from16 v64, v55

    move/from16 v65, v55

    mul-float v64, v64, v65

    move/from16 v0, v64

    float-to-double v0, v0

    move-wide/from16 v64, v0

    const-wide v66, 0x400921fb54442d18L    # Math.PI

    mul-double v64, v64, v66

    invoke-static/range {v62 .. v65}, Ljava/lang/Math;->min(DD)D

    move-result-wide v62

    move-wide/from16 v0, v62

    double-to-float v0, v0

    move/from16 v62, v0

    move/from16 v55, v62

    .line 876
    :cond_8
    :goto_3
    move-object/from16 v62, v2

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    move-object/from16 v62, v0

    move-object/from16 v63, v2

    move-object/from16 v64, v13

    move-object/from16 v65, v14

    move/from16 v66, v15

    move/from16 v67, v16

    move/from16 v68, v17

    move/from16 v69, v18

    move/from16 v70, v54

    move/from16 v71, v55

    const/16 v72, 0x0

    const/16 v73, 0x0

    const/16 v74, 0x0

    const/16 v75, 0x0

    .line 877
    invoke-virtual/range {v62 .. v75}, Lcom/sun/prism/impl/ps/BaseShaderContext;->validatePaintOp(Lcom/sun/prism/impl/ps/BaseShaderGraphics;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;FFFFFFFFFF)Lcom/sun/prism/ps/Shader;

    move-result-object v62

    move-object/from16 v56, v62

    .line 880
    .local v56, "shader":Lcom/sun/prism/ps/Shader;
    move-object/from16 v62, v56

    const-string v63, "idim"

    move/from16 v64, v54

    move/from16 v65, v55

    invoke-interface/range {v62 .. v65}, Lcom/sun/prism/ps/Shader;->setConstant(Ljava/lang/String;FF)V

    .line 881
    .line 903
    .end local v54    # "idimw":F
    .end local v55    # "idimh":F
    .end local v56    # "shader":Lcom/sun/prism/ps/Shader;
    :cond_9
    :goto_4
    move-object/from16 v62, v2

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    move-object/from16 v62, v0

    invoke-virtual/range {v62 .. v62}, Lcom/sun/prism/impl/ps/BaseShaderContext;->getVertexBuffer()Lcom/sun/prism/impl/VertexBuffer;

    move-result-object v62

    move/from16 v63, v21

    move/from16 v64, v22

    move/from16 v65, v23

    move/from16 v66, v24

    move/from16 v67, v25

    move/from16 v68, v26

    move/from16 v69, v27

    move/from16 v70, v28

    move/from16 v71, v46

    move/from16 v72, v47

    move/from16 v73, v48

    move/from16 v74, v49

    move/from16 v75, v50

    move/from16 v76, v51

    move/from16 v77, v52

    move/from16 v78, v53

    move/from16 v79, v30

    move/from16 v80, v31

    invoke-virtual/range {v62 .. v80}, Lcom/sun/prism/impl/VertexBuffer;->addMappedPgram(FFFFFFFFFFFFFFFFFF)V

    .line 908
    goto/16 :goto_0

    .line 806
    .local v54, "oarcw":F
    .local v55, "oarch":F
    :cond_a
    sget-object v62, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->FILL_PGRAM:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    goto/16 :goto_1

    .line 809
    :cond_b
    move/from16 v62, v30

    move/from16 v63, v54

    sub-float v62, v62, v63

    move/from16 v56, v62

    .line 810
    .local v56, "flatw":F
    move/from16 v62, v31

    move/from16 v63, v55

    sub-float v62, v62, v63

    move/from16 v57, v62

    .line 812
    .local v57, "flath":F
    move-object/from16 v62, v14

    sget-object v63, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->DRAW_ROUNDRECT:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    move-object/from16 v0, v62

    move-object/from16 v1, v63

    if-ne v0, v1, :cond_f

    .line 813
    move/from16 v62, v30

    move/from16 v63, v11

    mul-float v62, v62, v63

    move/from16 v60, v62

    .line 814
    .local v60, "iwdist":F
    move/from16 v62, v31

    move/from16 v63, v12

    mul-float v62, v62, v63

    move/from16 v61, v62

    .line 817
    .local v61, "ihdist":F
    move/from16 v62, v60

    move/from16 v63, v56

    sub-float v62, v62, v63

    move/from16 v58, v62

    .line 818
    .local v58, "ivalw":F
    move/from16 v62, v61

    move/from16 v63, v57

    sub-float v62, v62, v63

    move/from16 v59, v62

    .line 823
    .local v59, "ivalh":F
    move/from16 v62, v58

    const/high16 v63, 0x3f000000    # 0.5f

    cmpg-float v62, v62, v63

    if-ltz v62, :cond_c

    move/from16 v62, v59

    const/high16 v63, 0x3f000000    # 0.5f

    cmpg-float v62, v62, v63

    if-gez v62, :cond_e

    .line 825
    :cond_c
    move/from16 v62, v60

    move/from16 v58, v62

    .line 826
    move/from16 v62, v61

    move/from16 v59, v62

    .line 827
    sget-object v62, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->DRAW_SEMIROUNDRECT:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    move-object/from16 v14, v62

    .line 833
    .line 839
    .end local v60    # "iwdist":F
    .end local v61    # "ihdist":F
    :goto_5
    const/high16 v62, 0x3f800000    # 1.0f

    move/from16 v63, v54

    div-float v62, v62, v63

    move/from16 v54, v62

    .line 840
    const/high16 v62, 0x3f800000    # 1.0f

    move/from16 v63, v55

    div-float v62, v62, v63

    move/from16 v55, v62

    .line 841
    move-object/from16 v62, v2

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    move-object/from16 v62, v0

    move-object/from16 v63, v2

    move-object/from16 v64, v13

    move-object/from16 v65, v14

    move/from16 v66, v15

    move/from16 v67, v16

    move/from16 v68, v17

    move/from16 v69, v18

    move/from16 v70, v54

    move/from16 v71, v55

    move/from16 v72, v58

    move/from16 v73, v59

    const/16 v74, 0x0

    const/16 v75, 0x0

    .line 842
    invoke-virtual/range {v62 .. v75}, Lcom/sun/prism/impl/ps/BaseShaderContext;->validatePaintOp(Lcom/sun/prism/impl/ps/BaseShaderGraphics;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;FFFFFFFFFF)Lcom/sun/prism/ps/Shader;

    move-result-object v62

    move-object/from16 v60, v62

    .line 846
    .local v60, "shader":Lcom/sun/prism/ps/Shader;
    move-object/from16 v62, v60

    const-string v63, "oinvarcradii"

    move/from16 v64, v54

    move/from16 v65, v55

    invoke-interface/range {v62 .. v65}, Lcom/sun/prism/ps/Shader;->setConstant(Ljava/lang/String;FF)V

    .line 847
    move-object/from16 v62, v14

    sget-object v63, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->DRAW_ROUNDRECT:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    move-object/from16 v0, v62

    move-object/from16 v1, v63

    if-ne v0, v1, :cond_10

    .line 848
    move-object/from16 v62, v60

    const-string v63, "iinvarcradii"

    move/from16 v64, v58

    move/from16 v65, v59

    invoke-interface/range {v62 .. v65}, Lcom/sun/prism/ps/Shader;->setConstant(Ljava/lang/String;FF)V

    .line 852
    :cond_d
    :goto_6
    move/from16 v62, v56

    move/from16 v30, v62

    .line 853
    move/from16 v62, v57

    move/from16 v31, v62

    goto/16 :goto_2

    .line 830
    .local v60, "iwdist":F
    .restart local v61    # "ihdist":F
    :cond_e
    const/high16 v62, 0x3f800000    # 1.0f

    move/from16 v63, v58

    div-float v62, v62, v63

    move/from16 v58, v62

    .line 831
    const/high16 v62, 0x3f800000    # 1.0f

    move/from16 v63, v59

    div-float v62, v62, v63

    move/from16 v59, v62

    goto :goto_5

    .line 837
    .end local v58    # "ivalw":F
    .end local v59    # "ivalh":F
    .end local v60    # "iwdist":F
    .end local v61    # "ihdist":F
    :cond_f
    const/16 v62, 0x0

    move/from16 v81, v62

    move/from16 v62, v81

    move/from16 v63, v81

    move/from16 v59, v63

    .restart local v59    # "ivalh":F
    move/from16 v58, v62

    .restart local v58    # "ivalw":F
    goto :goto_5

    .line 849
    .local v60, "shader":Lcom/sun/prism/ps/Shader;
    :cond_10
    move-object/from16 v62, v14

    sget-object v63, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->DRAW_SEMIROUNDRECT:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    move-object/from16 v0, v62

    move-object/from16 v1, v63

    if-ne v0, v1, :cond_d

    .line 850
    move-object/from16 v62, v60

    const-string v63, "idim"

    move/from16 v64, v58

    move/from16 v65, v59

    invoke-interface/range {v62 .. v65}, Lcom/sun/prism/ps/Shader;->setConstant(Ljava/lang/String;FF)V

    goto :goto_6

    .line 870
    .end local v56    # "flatw":F
    .end local v57    # "flath":F
    .end local v58    # "ivalw":F
    .end local v59    # "ivalh":F
    .end local v60    # "shader":Lcom/sun/prism/ps/Shader;
    .local v54, "idimw":F
    .local v55, "idimh":F
    :cond_11
    const/high16 v62, 0x3f800000    # 1.0f

    move/from16 v63, v30

    div-float v62, v62, v63

    move/from16 v30, v62

    .line 871
    const/high16 v62, 0x3f800000    # 1.0f

    move/from16 v63, v31

    div-float v62, v62, v63

    move/from16 v31, v62

    .line 872
    const/high16 v62, 0x3f800000    # 1.0f

    move/from16 v63, v54

    div-float v62, v62, v63

    move/from16 v54, v62

    .line 873
    const/high16 v62, 0x3f800000    # 1.0f

    move/from16 v63, v55

    div-float v62, v62, v63

    move/from16 v55, v62

    goto/16 :goto_3

    .line 881
    .end local v54    # "idimw":F
    .end local v55    # "idimh":F
    :cond_12
    move-object/from16 v62, v14

    sget-object v63, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->FILL_ELLIPSE:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    move-object/from16 v0, v62

    move-object/from16 v1, v63

    if-ne v0, v1, :cond_14

    .line 882
    move/from16 v62, v30

    move/from16 v63, v31

    sub-float v62, v62, v63

    invoke-static/range {v62 .. v62}, Ljava/lang/Math;->abs(F)F

    move-result v62

    move/from16 v0, v62

    float-to-double v0, v0

    move-wide/from16 v62, v0

    const-wide v64, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v62, v62, v64

    if-gez v62, :cond_13

    .line 883
    sget-object v62, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->FILL_CIRCLE:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    move-object/from16 v14, v62

    .line 887
    const-wide/high16 v62, 0x3ff0000000000000L    # 1.0

    move/from16 v64, v31

    move/from16 v65, v31

    mul-float v64, v64, v65

    move/from16 v0, v64

    float-to-double v0, v0

    move-wide/from16 v64, v0

    const-wide v66, 0x400921fb54442d18L    # Math.PI

    mul-double v64, v64, v66

    invoke-static/range {v62 .. v65}, Ljava/lang/Math;->min(DD)D

    move-result-wide v62

    move-wide/from16 v0, v62

    double-to-float v0, v0

    move/from16 v62, v0

    move/from16 v31, v62

    .line 898
    :goto_7
    move-object/from16 v62, v2

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    move-object/from16 v62, v0

    move-object/from16 v63, v2

    move-object/from16 v64, v13

    move-object/from16 v65, v14

    move/from16 v66, v15

    move/from16 v67, v16

    move/from16 v68, v17

    move/from16 v69, v18

    invoke-virtual/range {v62 .. v69}, Lcom/sun/prism/impl/ps/BaseShaderContext;->validatePaintOp(Lcom/sun/prism/impl/ps/BaseShaderGraphics;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;FFFF)Lcom/sun/prism/ps/Shader;

    move-result-object v62

    goto/16 :goto_4

    .line 891
    :cond_13
    const/high16 v62, 0x3f800000    # 1.0f

    move/from16 v63, v30

    div-float v62, v62, v63

    move/from16 v30, v62

    .line 892
    const/high16 v62, 0x3f800000    # 1.0f

    move/from16 v63, v31

    div-float v62, v62, v63

    move/from16 v31, v62

    .line 893
    move/from16 v62, v46

    move/from16 v63, v30

    mul-float v62, v62, v63

    move/from16 v46, v62

    move/from16 v62, v47

    move/from16 v63, v31

    mul-float v62, v62, v63

    move/from16 v47, v62

    .line 894
    move/from16 v62, v48

    move/from16 v63, v30

    mul-float v62, v62, v63

    move/from16 v48, v62

    move/from16 v62, v49

    move/from16 v63, v31

    mul-float v62, v62, v63

    move/from16 v49, v62

    .line 895
    move/from16 v62, v50

    move/from16 v63, v30

    mul-float v62, v62, v63

    move/from16 v50, v62

    move/from16 v62, v51

    move/from16 v63, v31

    mul-float v62, v62, v63

    move/from16 v51, v62

    .line 896
    move/from16 v62, v52

    move/from16 v63, v30

    mul-float v62, v62, v63

    move/from16 v52, v62

    move/from16 v62, v53

    move/from16 v63, v31

    mul-float v62, v62, v63

    move/from16 v53, v62

    goto :goto_7

    .line 899
    :cond_14
    move-object/from16 v62, v14

    sget-object v63, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->FILL_PGRAM:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    move-object/from16 v0, v62

    move-object/from16 v1, v63

    if-ne v0, v1, :cond_9

    .line 900
    move-object/from16 v62, v2

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    move-object/from16 v62, v0

    move-object/from16 v63, v2

    move-object/from16 v64, v13

    move-object/from16 v65, v14

    move/from16 v66, v15

    move/from16 v67, v16

    move/from16 v68, v17

    move/from16 v69, v18

    invoke-virtual/range {v62 .. v69}, Lcom/sun/prism/impl/ps/BaseShaderContext;->validatePaintOp(Lcom/sun/prism/impl/ps/BaseShaderGraphics;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;FFFF)Lcom/sun/prism/ps/Shader;

    move-result-object v62

    goto/16 :goto_4
.end method

.method private renderGeneralRoundedRect(FFFFFFLcom/sun/prism/impl/ps/BaseShaderContext$MaskType;Lcom/sun/prism/BasicStroke;)V
    .locals 46

    .prologue
    .line 543
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    move/from16 v4, p1

    .local v4, "rx":F
    move/from16 v5, p2

    .local v5, "ry":F
    move/from16 v6, p3

    .local v6, "rw":F
    move/from16 v7, p4

    .local v7, "rh":F
    move/from16 v8, p5

    .local v8, "arcw":F
    move/from16 v9, p6

    .local v9, "arch":F
    move-object/from16 v10, p7

    .local v10, "type":Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;
    move-object/from16 v11, p8

    .local v11, "stroke":Lcom/sun/prism/BasicStroke;
    move-object/from16 v28, v11

    if-nez v28, :cond_1

    .line 544
    move/from16 v28, v4

    move/from16 v12, v28

    .line 545
    .local v12, "bx":F
    move/from16 v28, v5

    move/from16 v13, v28

    .line 546
    .local v13, "by":F
    move/from16 v28, v6

    move/from16 v14, v28

    .line 547
    .local v14, "bw":F
    move/from16 v28, v7

    move/from16 v15, v28

    .line 548
    .local v15, "bh":F
    const/16 v28, 0x0

    move/from16 v45, v28

    move/from16 v28, v45

    move/from16 v29, v45

    move/from16 v17, v29

    .local v17, "ifracth":F
    move/from16 v16, v28

    .line 576
    .local v16, "ifractw":F
    :cond_0
    :goto_0
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->getTransformNoClone()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v28

    move-object/from16 v24, v28

    .line 578
    .local v24, "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->isSimpleTranslate:Z

    move/from16 v28, v0

    if-eqz v28, :cond_5

    .line 579
    const/high16 v28, 0x3f800000    # 1.0f

    move/from16 v45, v28

    move/from16 v28, v45

    move/from16 v29, v45

    move/from16 v23, v29

    .local v23, "hdy":F
    move/from16 v20, v28

    .line 580
    .local v20, "wdx":F
    const/16 v28, 0x0

    move/from16 v45, v28

    move/from16 v28, v45

    move/from16 v29, v45

    move/from16 v22, v29

    .local v22, "hdx":F
    move/from16 v21, v28

    .line 581
    .local v21, "wdy":F
    move/from16 v28, v12

    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->transX:F

    move/from16 v29, v0

    add-float v28, v28, v29

    move/from16 v18, v28

    .line 582
    .local v18, "ox":F
    move/from16 v28, v13

    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->transY:F

    move/from16 v29, v0

    add-float v28, v28, v29

    move/from16 v19, v28

    .line 583
    .local v19, "oy":F
    sget-object v28, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->IDENT:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v25, v28

    .line 594
    .local v25, "rendertx":Lcom/sun/javafx/geom/transform/BaseTransform;
    :goto_1
    move/from16 v28, v20

    move/from16 v29, v14

    mul-float v28, v28, v29

    move/from16 v20, v28

    .line 595
    move/from16 v28, v21

    move/from16 v29, v14

    mul-float v28, v28, v29

    move/from16 v21, v28

    .line 596
    move/from16 v28, v22

    move/from16 v29, v15

    mul-float v28, v28, v29

    move/from16 v22, v28

    .line 597
    move/from16 v28, v23

    move/from16 v29, v15

    mul-float v28, v28, v29

    move/from16 v23, v28

    .line 599
    move/from16 v28, v8

    move/from16 v29, v14

    div-float v28, v28, v29

    move/from16 v26, v28

    .line 600
    .local v26, "arcfractw":F
    move/from16 v28, v9

    move/from16 v29, v15

    div-float v28, v28, v29

    move/from16 v27, v28

    .line 601
    .local v27, "arcfracth":F
    move-object/from16 v28, v3

    move/from16 v29, v18

    move/from16 v30, v19

    move/from16 v31, v20

    move/from16 v32, v21

    move/from16 v33, v22

    move/from16 v34, v23

    move/from16 v35, v26

    move/from16 v36, v27

    move/from16 v37, v16

    move/from16 v38, v17

    move-object/from16 v39, v25

    move-object/from16 v40, v10

    move/from16 v41, v4

    move/from16 v42, v5

    move/from16 v43, v6

    move/from16 v44, v7

    invoke-direct/range {v28 .. v44}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->renderGeneralRoundedPgram(FFFFFFFFFFLcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;FFFF)V

    .line 604
    return-void

    .line 550
    .end local v12    # "bx":F
    .end local v13    # "by":F
    .end local v14    # "bw":F
    .end local v15    # "bh":F
    .end local v16    # "ifractw":F
    .end local v17    # "ifracth":F
    .end local v18    # "ox":F
    .end local v19    # "oy":F
    .end local v20    # "wdx":F
    .end local v21    # "wdy":F
    .end local v22    # "hdx":F
    .end local v23    # "hdy":F
    .end local v24    # "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    .end local v25    # "rendertx":Lcom/sun/javafx/geom/transform/BaseTransform;
    .end local v26    # "arcfractw":F
    .end local v27    # "arcfracth":F
    :cond_1
    move-object/from16 v28, v11

    invoke-virtual/range {v28 .. v28}, Lcom/sun/prism/BasicStroke;->getLineWidth()F

    move-result v28

    move/from16 v24, v28

    .line 551
    .local v24, "sw":F
    move-object/from16 v28, v11

    invoke-static/range {v28 .. v28}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->getStrokeExpansionFactor(Lcom/sun/prism/BasicStroke;)F

    move-result v28

    move/from16 v29, v24

    mul-float v28, v28, v29

    move/from16 v25, v28

    .line 552
    .local v25, "ow":F
    move/from16 v28, v4

    move/from16 v29, v25

    sub-float v28, v28, v29

    move/from16 v12, v28

    .line 553
    .restart local v12    # "bx":F
    move/from16 v28, v5

    move/from16 v29, v25

    sub-float v28, v28, v29

    move/from16 v13, v28

    .line 554
    .restart local v13    # "by":F
    move/from16 v28, v25

    const/high16 v29, 0x40000000    # 2.0f

    mul-float v28, v28, v29

    move/from16 v25, v28

    .line 555
    move/from16 v28, v6

    move/from16 v29, v25

    add-float v28, v28, v29

    move/from16 v14, v28

    .line 556
    .restart local v14    # "bw":F
    move/from16 v28, v7

    move/from16 v29, v25

    add-float v28, v28, v29

    move/from16 v15, v28

    .line 557
    .restart local v15    # "bh":F
    move/from16 v28, v8

    const/16 v29, 0x0

    cmpl-float v28, v28, v29

    if-lez v28, :cond_3

    move/from16 v28, v9

    const/16 v29, 0x0

    cmpl-float v28, v28, v29

    if-lez v28, :cond_3

    .line 558
    move/from16 v28, v8

    move/from16 v29, v25

    add-float v28, v28, v29

    move/from16 v8, v28

    .line 559
    move/from16 v28, v9

    move/from16 v29, v25

    add-float v28, v28, v29

    move/from16 v9, v28

    .line 568
    :goto_2
    move/from16 v28, v14

    move/from16 v29, v24

    const/high16 v30, 0x40000000    # 2.0f

    mul-float v29, v29, v30

    sub-float v28, v28, v29

    move/from16 v29, v14

    div-float v28, v28, v29

    move/from16 v16, v28

    .line 569
    .restart local v16    # "ifractw":F
    move/from16 v28, v15

    move/from16 v29, v24

    const/high16 v30, 0x40000000    # 2.0f

    mul-float v29, v29, v30

    sub-float v28, v28, v29

    move/from16 v29, v15

    div-float v28, v28, v29

    move/from16 v17, v28

    .line 570
    .restart local v17    # "ifracth":F
    move/from16 v28, v16

    const/16 v29, 0x0

    cmpg-float v28, v28, v29

    if-lez v28, :cond_2

    move/from16 v28, v17

    const/16 v29, 0x0

    cmpg-float v28, v28, v29

    if-gtz v28, :cond_0

    .line 571
    :cond_2
    move-object/from16 v28, v10

    invoke-virtual/range {v28 .. v28}, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->getFillType()Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    move-result-object v28

    move-object/from16 v10, v28

    goto/16 :goto_0

    .line 561
    .end local v16    # "ifractw":F
    .end local v17    # "ifracth":F
    :cond_3
    move-object/from16 v28, v11

    invoke-virtual/range {v28 .. v28}, Lcom/sun/prism/BasicStroke;->getLineJoin()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_4

    .line 562
    move/from16 v28, v25

    move/from16 v45, v28

    move/from16 v28, v45

    move/from16 v29, v45

    move/from16 v9, v29

    move/from16 v8, v28

    .line 563
    sget-object v28, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->DRAW_ROUNDRECT:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    move-object/from16 v10, v28

    goto :goto_2

    .line 565
    :cond_4
    const/16 v28, 0x0

    move/from16 v45, v28

    move/from16 v28, v45

    move/from16 v29, v45

    move/from16 v9, v29

    move/from16 v8, v28

    goto :goto_2

    .line 585
    .end local v25    # "ow":F
    .restart local v16    # "ifractw":F
    .restart local v17    # "ifracth":F
    .local v24, "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    :cond_5
    move-object/from16 v28, v3

    move-object/from16 v29, v24

    invoke-direct/range {v28 .. v29}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->extract3Dremainder(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v28

    move-object/from16 v25, v28

    .line 586
    .local v25, "rendertx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v28, v24

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxx()D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v28, v0

    move/from16 v20, v28

    .line 587
    .restart local v20    # "wdx":F
    move-object/from16 v28, v24

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxy()D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v28, v0

    move/from16 v22, v28

    .line 588
    .restart local v22    # "hdx":F
    move-object/from16 v28, v24

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyx()D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v28, v0

    move/from16 v21, v28

    .line 589
    .restart local v21    # "wdy":F
    move-object/from16 v28, v24

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyy()D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v28, v0

    move/from16 v23, v28

    .line 590
    .restart local v23    # "hdy":F
    move/from16 v28, v12

    move/from16 v29, v20

    mul-float v28, v28, v29

    move/from16 v29, v13

    move/from16 v30, v22

    mul-float v29, v29, v30

    add-float v28, v28, v29

    move-object/from16 v29, v24

    invoke-virtual/range {v29 .. v29}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxt()D

    move-result-wide v29

    move-wide/from16 v0, v29

    double-to-float v0, v0

    move/from16 v29, v0

    add-float v28, v28, v29

    move/from16 v18, v28

    .line 591
    .restart local v18    # "ox":F
    move/from16 v28, v12

    move/from16 v29, v21

    mul-float v28, v28, v29

    move/from16 v29, v13

    move/from16 v30, v23

    mul-float v29, v29, v30

    add-float v28, v28, v29

    move-object/from16 v29, v24

    invoke-virtual/range {v29 .. v29}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyt()D

    move-result-wide v29

    move-wide/from16 v0, v29

    double-to-float v0, v0

    move/from16 v29, v0

    add-float v28, v28, v29

    move/from16 v19, v28

    .restart local v19    # "oy":F
    goto/16 :goto_1
.end method

.method private renderWithComplexPaint(Lcom/sun/javafx/geom/Shape;Lcom/sun/prism/BasicStroke;FFFF)V
    .locals 35

    .prologue
    .line 411
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    move-object/from16 v4, p1

    .local v4, "shape":Lcom/sun/javafx/geom/Shape;
    move-object/from16 v5, p2

    .local v5, "stroke":Lcom/sun/prism/BasicStroke;
    move/from16 v6, p3

    .local v6, "bx":F
    move/from16 v7, p4

    .local v7, "by":F
    move/from16 v8, p5

    .local v8, "bw":F
    move/from16 v9, p6

    .local v9, "bh":F
    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sun/prism/impl/ps/BaseShaderContext;->flushVertexBuffer()V

    .line 414
    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->getTransformNoClone()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v25

    move-object/from16 v10, v25

    .line 415
    .local v10, "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v3

    .line 416
    invoke-virtual/range {v27 .. v27}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->getFinalClipNoClone()Lcom/sun/javafx/geom/RectBounds;

    move-result-object v27

    move-object/from16 v28, v10

    const/16 v29, 0x1

    move-object/from16 v30, v3

    invoke-virtual/range {v30 .. v30}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->isAntialiasedShape()Z

    move-result v30

    invoke-static/range {v25 .. v30}, Lcom/sun/prism/impl/shape/ShapeUtil;->rasterizeShape(Lcom/sun/javafx/geom/Shape;Lcom/sun/prism/BasicStroke;Lcom/sun/javafx/geom/RectBounds;Lcom/sun/javafx/geom/transform/BaseTransform;ZZ)Lcom/sun/prism/impl/shape/MaskData;

    move-result-object v25

    move-object/from16 v11, v25

    .line 417
    .local v11, "maskData":Lcom/sun/prism/impl/shape/MaskData;
    move-object/from16 v25, v11

    invoke-virtual/range {v25 .. v25}, Lcom/sun/prism/impl/shape/MaskData;->getWidth()I

    move-result v25

    move/from16 v12, v25

    .line 418
    .local v12, "maskW":I
    move-object/from16 v25, v11

    invoke-virtual/range {v25 .. v25}, Lcom/sun/prism/impl/shape/MaskData;->getHeight()I

    move-result v25

    move/from16 v13, v25

    .line 420
    .local v13, "maskH":I
    move-object/from16 v25, v11

    invoke-virtual/range {v25 .. v25}, Lcom/sun/prism/impl/shape/MaskData;->getOriginX()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v14, v25

    .line 421
    .local v14, "dx1":F
    move-object/from16 v25, v11

    invoke-virtual/range {v25 .. v25}, Lcom/sun/prism/impl/shape/MaskData;->getOriginY()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v15, v25

    .line 422
    .local v15, "dy1":F
    move/from16 v25, v14

    move/from16 v26, v12

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    add-float v25, v25, v26

    move/from16 v16, v25

    .line 423
    .local v16, "dx2":F
    move/from16 v25, v15

    move/from16 v26, v13

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    add-float v25, v25, v26

    move/from16 v17, v25

    .line 430
    .local v17, "dy2":F
    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->paint:Lcom/sun/prism/paint/Paint;

    move-object/from16 v25, v0

    check-cast v25, Lcom/sun/prism/paint/Gradient;

    move-object/from16 v18, v25

    .line 431
    .local v18, "grad":Lcom/sun/prism/paint/Gradient;
    sget-object v25, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->TEMP_TX2D:Lcom/sun/javafx/geom/transform/Affine2D;

    move/from16 v26, v14

    move/from16 v0, v26

    neg-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    move/from16 v28, v15

    move/from16 v0, v28

    neg-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-virtual/range {v25 .. v29}, Lcom/sun/javafx/geom/transform/Affine2D;->setToTranslation(DD)V

    .line 432
    sget-object v25, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->TEMP_TX2D:Lcom/sun/javafx/geom/transform/Affine2D;

    move-object/from16 v26, v10

    invoke-virtual/range {v25 .. v26}, Lcom/sun/javafx/geom/transform/Affine2D;->concatenate(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 433
    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    move-object/from16 v25, v0

    move-object/from16 v26, v18

    sget-object v27, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->TEMP_TX2D:Lcom/sun/javafx/geom/transform/Affine2D;

    move/from16 v28, v12

    move/from16 v29, v13

    move-object/from16 v30, v11

    move/from16 v31, v6

    move/from16 v32, v7

    move/from16 v33, v8

    move/from16 v34, v9

    invoke-virtual/range {v25 .. v34}, Lcom/sun/prism/impl/ps/BaseShaderContext;->getGradientTexture(Lcom/sun/prism/paint/Gradient;Lcom/sun/javafx/geom/transform/BaseTransform;IILcom/sun/prism/impl/shape/MaskData;FFFF)Lcom/sun/prism/Texture;

    move-result-object v25

    move-object/from16 v19, v25

    .line 437
    .local v19, "tex":Lcom/sun/prism/Texture;
    const/16 v25, 0x0

    move/from16 v20, v25

    .line 438
    .local v20, "tx1":F
    const/16 v25, 0x0

    move/from16 v21, v25

    .line 439
    .local v21, "ty1":F
    move/from16 v25, v20

    move/from16 v26, v12

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v27, v19

    invoke-interface/range {v27 .. v27}, Lcom/sun/prism/Texture;->getPhysicalWidth()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v26, v26, v27

    add-float v25, v25, v26

    move/from16 v22, v25

    .line 440
    .local v22, "tx2":F
    move/from16 v25, v21

    move/from16 v26, v13

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v27, v19

    invoke-interface/range {v27 .. v27}, Lcom/sun/prism/Texture;->getPhysicalHeight()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v26, v26, v27

    add-float v25, v25, v26

    move/from16 v23, v25

    .line 444
    .local v23, "ty2":F
    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sun/prism/impl/ps/BaseShaderContext;->getVertexBuffer()Lcom/sun/prism/impl/VertexBuffer;

    move-result-object v25

    move-object/from16 v24, v25

    .line 445
    .local v24, "vb":Lcom/sun/prism/impl/VertexBuffer;
    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    move-object/from16 v25, v0

    move-object/from16 v26, v3

    sget-object v27, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->IDENT:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v28, v19

    const/16 v29, 0x0

    move-object/from16 v30, v19

    invoke-interface/range {v30 .. v30}, Lcom/sun/prism/Texture;->getPixelFormat()Lcom/sun/prism/PixelFormat;

    move-result-object v30

    invoke-virtual/range {v25 .. v30}, Lcom/sun/prism/impl/ps/BaseShaderContext;->validateTextureOp(Lcom/sun/prism/impl/ps/BaseShaderGraphics;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/Texture;Lcom/sun/prism/Texture;Lcom/sun/prism/PixelFormat;)Lcom/sun/prism/ps/Shader;

    move-result-object v25

    .line 446
    move-object/from16 v25, v24

    move/from16 v26, v14

    move/from16 v27, v15

    move/from16 v28, v16

    move/from16 v29, v17

    move/from16 v30, v20

    move/from16 v31, v21

    move/from16 v32, v22

    move/from16 v33, v23

    invoke-virtual/range {v25 .. v33}, Lcom/sun/prism/impl/VertexBuffer;->addQuad(FFFFFFFF)V

    .line 447
    move-object/from16 v25, v19

    invoke-interface/range {v25 .. v25}, Lcom/sun/prism/Texture;->unlock()V

    .line 448
    return-void
.end method


# virtual methods
.method public blit(Lcom/sun/prism/RTTexture;Lcom/sun/prism/RTTexture;IIIIIIII)V
    .locals 22

    .prologue
    .line 1633
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    move-object/from16 v1, p1

    .local v1, "srcTex":Lcom/sun/prism/RTTexture;
    move-object/from16 v2, p2

    .local v2, "dstTex":Lcom/sun/prism/RTTexture;
    move/from16 v3, p3

    .local v3, "srcX0":I
    move/from16 v4, p4

    .local v4, "srcY0":I
    move/from16 v5, p5

    .local v5, "srcX1":I
    move/from16 v6, p6

    .local v6, "srcY1":I
    move/from16 v7, p7

    .local v7, "dstX0":I
    move/from16 v8, p8

    .local v8, "dstY0":I
    move/from16 v9, p9

    .local v9, "dstX1":I
    move/from16 v10, p10

    .local v10, "dstY1":I
    move-object v11, v2

    if-nez v11, :cond_0

    .line 1634
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    move-object v12, v0

    invoke-virtual {v11, v12}, Lcom/sun/prism/impl/ps/BaseShaderContext;->setRenderTarget(Lcom/sun/prism/impl/BaseGraphics;)V

    .line 1638
    :goto_0
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    move-object v12, v1

    move-object v13, v2

    move v14, v3

    move v15, v4

    move/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v8

    move/from16 v20, v9

    move/from16 v21, v10

    invoke-virtual/range {v11 .. v21}, Lcom/sun/prism/impl/ps/BaseShaderContext;->blit(Lcom/sun/prism/RTTexture;Lcom/sun/prism/RTTexture;IIIIIIII)V

    .line 1640
    return-void

    .line 1636
    :cond_0
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    move-object v12, v2

    invoke-interface {v12}, Lcom/sun/prism/RTTexture;->createGraphics()Lcom/sun/prism/Graphics;

    move-result-object v12

    check-cast v12, Lcom/sun/prism/impl/BaseGraphics;

    invoke-virtual {v11, v12}, Lcom/sun/prism/impl/ps/BaseShaderContext;->setRenderTarget(Lcom/sun/prism/impl/BaseGraphics;)V

    goto :goto_0
.end method

.method public canReadBack()Z
    .locals 3

    .prologue
    .line 2117
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->getRenderTarget()Lcom/sun/prism/RenderTarget;

    move-result-object v2

    move-object v1, v2

    .line 2118
    .local v1, "rt":Lcom/sun/prism/RenderTarget;
    move-object v2, v1

    instance-of v2, v2, Lcom/sun/prism/ReadbackRenderTarget;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/sun/prism/ReadbackRenderTarget;

    .line 2119
    invoke-interface {v2}, Lcom/sun/prism/ReadbackRenderTarget;->getBackBuffer()Lcom/sun/prism/Texture;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    return v0

    .restart local v0    # "this":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public drawEllipse(FFFF)V
    .locals 14

    .prologue
    .line 1695
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    move v1, p1

    .local v1, "x":F
    move/from16 v2, p2

    .local v2, "y":F
    move/from16 v3, p3

    .local v3, "w":F
    move/from16 v4, p4

    .local v4, "h":F
    move v5, v3

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_0

    move v5, v4

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    .line 1696
    .line 1707
    :cond_0
    :goto_0
    return-void

    .line 1698
    :cond_1
    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->isComplexPaint:Z

    if-nez v5, :cond_2

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->stroke:Lcom/sun/prism/BasicStroke;

    invoke-virtual {v5}, Lcom/sun/prism/BasicStroke;->isDashed()Z

    move-result v5

    if-nez v5, :cond_2

    move-object v5, v0

    move v6, v3

    move v7, v4

    .line 1699
    invoke-direct {v5, v6, v7}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->checkInnerCurvature(FF)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->isAntialiasedShape()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1701
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    move v10, v3

    move v11, v4

    sget-object v12, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->DRAW_ELLIPSE:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->stroke:Lcom/sun/prism/BasicStroke;

    invoke-direct/range {v5 .. v13}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->renderGeneralRoundedRect(FFFFFFLcom/sun/prism/impl/ps/BaseShaderContext$MaskType;Lcom/sun/prism/BasicStroke;)V

    .line 1703
    goto :goto_0

    .line 1705
    :cond_2
    sget-object v5, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->scratchEllipse:Lcom/sun/javafx/geom/Ellipse2D;

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sun/javafx/geom/Ellipse2D;->setFrame(FFFF)V

    .line 1706
    move-object v5, v0

    sget-object v6, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->scratchEllipse:Lcom/sun/javafx/geom/Ellipse2D;

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->stroke:Lcom/sun/prism/BasicStroke;

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    invoke-virtual/range {v5 .. v11}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->renderShape(Lcom/sun/javafx/geom/Shape;Lcom/sun/prism/BasicStroke;FFFF)V

    .line 1707
    goto :goto_0
.end method

.method public drawLine(FFFF)V
    .locals 46

    .prologue
    .line 1731
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    move/from16 v4, p1

    .local v4, "x1":F
    move/from16 v5, p2

    .local v5, "y1":F
    move/from16 v6, p3

    .local v6, "x2":F
    move/from16 v7, p4

    .local v7, "y2":F
    move/from16 v28, v4

    move/from16 v29, v6

    cmpg-float v28, v28, v29

    if-gtz v28, :cond_0

    .line 1732
    move/from16 v28, v4

    move/from16 v8, v28

    .line 1733
    .local v8, "bx":F
    move/from16 v28, v6

    move/from16 v29, v4

    sub-float v28, v28, v29

    move/from16 v10, v28

    .line 1738
    .local v10, "bw":F
    :goto_0
    move/from16 v28, v5

    move/from16 v29, v7

    cmpg-float v28, v28, v29

    if-gtz v28, :cond_1

    .line 1739
    move/from16 v28, v5

    move/from16 v9, v28

    .line 1740
    .local v9, "by":F
    move/from16 v28, v7

    move/from16 v29, v5

    sub-float v28, v28, v29

    move/from16 v11, v28

    .line 1750
    .local v11, "bh":F
    :goto_1
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->stroke:Lcom/sun/prism/BasicStroke;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sun/prism/BasicStroke;->getType()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_2

    .line 1751
    .line 1894
    :goto_2
    return-void

    .line 1735
    .end local v8    # "bx":F
    .end local v9    # "by":F
    .end local v10    # "bw":F
    .end local v11    # "bh":F
    :cond_0
    move/from16 v28, v6

    move/from16 v8, v28

    .line 1736
    .restart local v8    # "bx":F
    move/from16 v28, v4

    move/from16 v29, v6

    sub-float v28, v28, v29

    move/from16 v10, v28

    .restart local v10    # "bw":F
    goto :goto_0

    .line 1742
    :cond_1
    move/from16 v28, v7

    move/from16 v9, v28

    .line 1743
    .restart local v9    # "by":F
    move/from16 v28, v5

    move/from16 v29, v7

    sub-float v28, v28, v29

    move/from16 v11, v28

    .restart local v11    # "bh":F
    goto :goto_1

    .line 1753
    :cond_2
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->isComplexPaint:Z

    move/from16 v28, v0

    if-eqz v28, :cond_3

    .line 1754
    sget-object v28, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->scratchLine:Lcom/sun/javafx/geom/Line2D;

    move/from16 v29, v4

    move/from16 v30, v5

    move/from16 v31, v6

    move/from16 v32, v7

    invoke-virtual/range {v28 .. v32}, Lcom/sun/javafx/geom/Line2D;->setLine(FFFF)V

    .line 1755
    move-object/from16 v28, v3

    sget-object v29, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->scratchLine:Lcom/sun/javafx/geom/Line2D;

    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->stroke:Lcom/sun/prism/BasicStroke;

    move-object/from16 v30, v0

    move/from16 v31, v8

    move/from16 v32, v9

    move/from16 v33, v10

    move/from16 v34, v11

    invoke-direct/range {v28 .. v34}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->renderWithComplexPaint(Lcom/sun/javafx/geom/Shape;Lcom/sun/prism/BasicStroke;FFFF)V

    .line 1756
    goto :goto_2

    .line 1758
    :cond_3
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->isAntialiasedShape()Z

    move-result v28

    if-nez v28, :cond_4

    .line 1759
    sget-object v28, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->scratchLine:Lcom/sun/javafx/geom/Line2D;

    move/from16 v29, v4

    move/from16 v30, v5

    move/from16 v31, v6

    move/from16 v32, v7

    invoke-virtual/range {v28 .. v32}, Lcom/sun/javafx/geom/Line2D;->setLine(FFFF)V

    .line 1760
    move-object/from16 v28, v3

    sget-object v29, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->scratchLine:Lcom/sun/javafx/geom/Line2D;

    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->stroke:Lcom/sun/prism/BasicStroke;

    move-object/from16 v30, v0

    move/from16 v31, v8

    move/from16 v32, v9

    move/from16 v33, v10

    move/from16 v34, v11

    invoke-virtual/range {v28 .. v34}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->renderShape(Lcom/sun/javafx/geom/Shape;Lcom/sun/prism/BasicStroke;FFFF)V

    .line 1761
    goto :goto_2

    .line 1763
    :cond_4
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->stroke:Lcom/sun/prism/BasicStroke;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sun/prism/BasicStroke;->getEndCap()I

    move-result v28

    move/from16 v12, v28

    .line 1764
    .local v12, "cap":I
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->stroke:Lcom/sun/prism/BasicStroke;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sun/prism/BasicStroke;->isDashed()Z

    move-result v28

    if-eqz v28, :cond_5

    .line 1768
    sget-object v28, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->scratchLine:Lcom/sun/javafx/geom/Line2D;

    move/from16 v29, v4

    move/from16 v30, v5

    move/from16 v31, v6

    move/from16 v32, v7

    invoke-virtual/range {v28 .. v32}, Lcom/sun/javafx/geom/Line2D;->setLine(FFFF)V

    .line 1769
    move-object/from16 v28, v3

    sget-object v29, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->scratchLine:Lcom/sun/javafx/geom/Line2D;

    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->stroke:Lcom/sun/prism/BasicStroke;

    move-object/from16 v30, v0

    move/from16 v31, v8

    move/from16 v32, v9

    move/from16 v33, v10

    move/from16 v34, v11

    invoke-virtual/range {v28 .. v34}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->renderShape(Lcom/sun/javafx/geom/Shape;Lcom/sun/prism/BasicStroke;FFFF)V

    .line 1770
    goto/16 :goto_2

    .line 1772
    :cond_5
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->stroke:Lcom/sun/prism/BasicStroke;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sun/prism/BasicStroke;->getLineWidth()F

    move-result v28

    move/from16 v13, v28

    .line 1773
    .local v13, "lw":F
    sget v28, Lcom/sun/prism/impl/PrismSettings;->primTextureSize:I

    if-eqz v28, :cond_b

    move/from16 v28, v12

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_b

    .line 1776
    move/from16 v28, v13

    move/from16 v14, v28

    .line 1777
    .local v14, "pad":F
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->stroke:Lcom/sun/prism/BasicStroke;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sun/prism/BasicStroke;->getType()I

    move-result v28

    if-nez v28, :cond_6

    .line 1778
    move/from16 v28, v14

    const/high16 v29, 0x3f000000    # 0.5f

    mul-float v28, v28, v29

    move/from16 v14, v28

    .line 1780
    :cond_6
    move/from16 v28, v10

    const/16 v29, 0x0

    cmpl-float v28, v28, v29

    if-eqz v28, :cond_7

    move/from16 v28, v11

    const/16 v29, 0x0

    cmpl-float v28, v28, v29

    if-nez v28, :cond_d

    .line 1782
    :cond_7
    move/from16 v28, v12

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_8

    .line 1784
    move/from16 v28, v14

    move/from16 v45, v28

    move/from16 v28, v45

    move/from16 v29, v45

    move/from16 v16, v29

    .local v16, "pady":F
    move/from16 v15, v28

    .line 1801
    .local v15, "padx":F
    :goto_3
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sun/prism/impl/ps/BaseShaderContext;->getRectTexture()Lcom/sun/prism/Texture;

    move-result-object v28

    move-object/from16 v17, v28

    .line 1802
    .local v17, "rTex":Lcom/sun/prism/Texture;
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sun/prism/impl/ps/BaseShaderContext;->getWrapRectTexture()Lcom/sun/prism/Texture;

    move-result-object v28

    move-object/from16 v18, v28

    .line 1803
    .local v18, "wTex":Lcom/sun/prism/Texture;
    move-object/from16 v28, v3

    move/from16 v29, v8

    move/from16 v30, v15

    sub-float v29, v29, v30

    move/from16 v30, v9

    move/from16 v31, v16

    sub-float v30, v30, v31

    move/from16 v31, v10

    move/from16 v32, v15

    add-float v31, v31, v32

    move/from16 v32, v15

    add-float v31, v31, v32

    move/from16 v32, v11

    move/from16 v33, v16

    add-float v32, v32, v33

    move/from16 v33, v16

    add-float v32, v32, v33

    move-object/from16 v33, v17

    move-object/from16 v34, v18

    move/from16 v35, v8

    move/from16 v36, v9

    move/from16 v37, v10

    move/from16 v38, v11

    invoke-virtual/range {v28 .. v38}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->fillPrimRect(FFFFLcom/sun/prism/Texture;Lcom/sun/prism/Texture;FFFF)Z

    move-result v28

    move/from16 v19, v28

    .line 1806
    .local v19, "success":Z
    move-object/from16 v28, v17

    invoke-interface/range {v28 .. v28}, Lcom/sun/prism/Texture;->unlock()V

    .line 1807
    move-object/from16 v28, v18

    invoke-interface/range {v28 .. v28}, Lcom/sun/prism/Texture;->unlock()V

    .line 1808
    move/from16 v28, v19

    if-eqz v28, :cond_b

    goto/16 :goto_2

    .line 1786
    .end local v15    # "padx":F
    .end local v16    # "pady":F
    .end local v17    # "rTex":Lcom/sun/prism/Texture;
    .end local v18    # "wTex":Lcom/sun/prism/Texture;
    .end local v19    # "success":Z
    :cond_8
    move/from16 v28, v10

    const/16 v29, 0x0

    cmpl-float v28, v28, v29

    if-eqz v28, :cond_9

    .line 1788
    const/16 v28, 0x0

    move/from16 v15, v28

    .line 1789
    .restart local v15    # "padx":F
    move/from16 v28, v14

    move/from16 v16, v28

    .restart local v16    # "pady":F
    goto :goto_3

    .line 1791
    .end local v15    # "padx":F
    .end local v16    # "pady":F
    :cond_9
    move/from16 v28, v11

    const/16 v29, 0x0

    cmpl-float v28, v28, v29

    if-eqz v28, :cond_a

    .line 1793
    move/from16 v28, v14

    move/from16 v15, v28

    .line 1794
    .restart local v15    # "padx":F
    const/16 v28, 0x0

    move/from16 v16, v28

    .restart local v16    # "pady":F
    goto/16 :goto_3

    .line 1799
    .end local v15    # "padx":F
    .end local v16    # "pady":F
    :cond_a
    goto/16 :goto_2

    .line 1809
    .line 1818
    .end local v14    # "pad":F
    :cond_b
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->stroke:Lcom/sun/prism/BasicStroke;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sun/prism/BasicStroke;->getType()I

    move-result v28

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_c

    .line 1819
    move/from16 v28, v13

    const/high16 v29, 0x40000000    # 2.0f

    mul-float v28, v28, v29

    move/from16 v13, v28

    .line 1821
    :cond_c
    move/from16 v28, v6

    move/from16 v29, v4

    sub-float v28, v28, v29

    move/from16 v14, v28

    .line 1822
    .local v14, "dx":F
    move/from16 v28, v7

    move/from16 v29, v5

    sub-float v28, v28, v29

    move/from16 v15, v28

    .line 1823
    .local v15, "dy":F
    move/from16 v28, v14

    move/from16 v29, v15

    invoke-static/range {v28 .. v29}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->len(FF)F

    move-result v28

    move/from16 v16, v28

    .line 1825
    .local v16, "len":F
    move/from16 v28, v16

    const/16 v29, 0x0

    cmpl-float v28, v28, v29

    if-nez v28, :cond_f

    .line 1826
    move/from16 v28, v12

    if-nez v28, :cond_e

    .line 1827
    goto/16 :goto_2

    .line 1810
    .end local v15    # "dy":F
    .end local v16    # "len":F
    .local v14, "pad":F
    :cond_d
    move-object/from16 v28, v3

    move/from16 v29, v4

    move/from16 v30, v5

    move/from16 v31, v6

    move/from16 v32, v7

    move/from16 v33, v13

    move/from16 v34, v12

    move/from16 v35, v8

    move/from16 v36, v9

    move/from16 v37, v10

    move/from16 v38, v11

    invoke-virtual/range {v28 .. v38}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->drawPrimDiagonal(FFFFFIFFFF)Z

    move-result v28

    if-eqz v28, :cond_b

    .line 1813
    goto/16 :goto_2

    .line 1829
    .local v14, "dx":F
    .restart local v15    # "dy":F
    .restart local v16    # "len":F
    :cond_e
    move/from16 v28, v13

    move/from16 v17, v28

    .line 1830
    .local v17, "ldx":F
    const/16 v28, 0x0

    move/from16 v18, v28

    .line 1836
    .local v18, "ldy":F
    :goto_4
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->getTransformNoClone()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v28

    move-object/from16 v19, v28

    .line 1839
    .local v19, "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->isSimpleTranslate:Z

    move/from16 v28, v0

    if-eqz v28, :cond_10

    .line 1840
    move-object/from16 v28, v19

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxt()D

    move-result-wide v28

    move-wide/from16 v23, v28

    .line 1841
    .local v23, "tx":D
    move-object/from16 v28, v19

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyt()D

    move-result-wide v28

    move-wide/from16 v25, v28

    .line 1842
    .local v25, "ty":D
    move/from16 v28, v4

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    move-wide/from16 v30, v23

    add-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v28, v0

    move/from16 v4, v28

    .line 1843
    move/from16 v28, v5

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    move-wide/from16 v30, v25

    add-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v28, v0

    move/from16 v5, v28

    .line 1844
    move/from16 v28, v6

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    move-wide/from16 v30, v23

    add-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v28, v0

    move/from16 v6, v28

    .line 1845
    move/from16 v28, v7

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    move-wide/from16 v30, v25

    add-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v28, v0

    move/from16 v7, v28

    .line 1846
    move/from16 v28, v18

    move/from16 v21, v28

    .line 1847
    .local v21, "pdx":F
    move/from16 v28, v17

    move/from16 v0, v28

    neg-float v0, v0

    move/from16 v28, v0

    move/from16 v22, v28

    .line 1848
    .local v22, "pdy":F
    sget-object v28, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->IDENT:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v20, v28

    .line 1869
    .end local v23    # "tx":D
    .end local v25    # "ty":D
    .local v20, "rendertx":Lcom/sun/javafx/geom/transform/BaseTransform;
    :goto_5
    move/from16 v28, v4

    move/from16 v29, v21

    const/high16 v30, 0x40000000    # 2.0f

    div-float v29, v29, v30

    sub-float v28, v28, v29

    move/from16 v23, v28

    .line 1870
    .local v23, "px":F
    move/from16 v28, v5

    move/from16 v29, v22

    const/high16 v30, 0x40000000    # 2.0f

    div-float v29, v29, v30

    sub-float v28, v28, v29

    move/from16 v24, v28

    .line 1873
    .local v24, "py":F
    move/from16 v28, v12

    if-eqz v28, :cond_12

    .line 1874
    move/from16 v28, v23

    move/from16 v29, v17

    const/high16 v30, 0x40000000    # 2.0f

    div-float v29, v29, v30

    sub-float v28, v28, v29

    move/from16 v23, v28

    .line 1875
    move/from16 v28, v24

    move/from16 v29, v18

    const/high16 v30, 0x40000000    # 2.0f

    div-float v29, v29, v30

    sub-float v28, v28, v29

    move/from16 v24, v28

    .line 1876
    move/from16 v28, v14

    move/from16 v29, v17

    add-float v28, v28, v29

    move/from16 v14, v28

    .line 1877
    move/from16 v28, v15

    move/from16 v29, v18

    add-float v28, v28, v29

    move/from16 v15, v28

    .line 1878
    move/from16 v28, v12

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_11

    .line 1879
    move/from16 v28, v17

    move/from16 v29, v18

    invoke-static/range {v28 .. v29}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->len(FF)F

    move-result v28

    move/from16 v29, v14

    move/from16 v30, v15

    invoke-static/range {v29 .. v30}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->len(FF)F

    move-result v29

    div-float v28, v28, v29

    move/from16 v25, v28

    .line 1880
    .local v25, "arcfractw":F
    const/high16 v28, 0x3f800000    # 1.0f

    move/from16 v26, v28

    .line 1881
    .local v26, "arcfracth":F
    sget-object v28, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->FILL_ROUNDRECT:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    move-object/from16 v27, v28

    .line 1890
    .local v27, "type":Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;
    :goto_6
    move-object/from16 v28, v3

    move/from16 v29, v23

    move/from16 v30, v24

    move/from16 v31, v14

    move/from16 v32, v15

    move/from16 v33, v21

    move/from16 v34, v22

    move/from16 v35, v25

    move/from16 v36, v26

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v39, v20

    move-object/from16 v40, v27

    move/from16 v41, v8

    move/from16 v42, v9

    move/from16 v43, v10

    move/from16 v44, v11

    invoke-direct/range {v28 .. v44}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->renderGeneralRoundedPgram(FFFFFFFFFFLcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;FFFF)V

    .line 1894
    goto/16 :goto_2

    .line 1832
    .end local v17    # "ldx":F
    .end local v18    # "ldy":F
    .end local v19    # "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    .end local v20    # "rendertx":Lcom/sun/javafx/geom/transform/BaseTransform;
    .end local v21    # "pdx":F
    .end local v22    # "pdy":F
    .end local v23    # "px":F
    .end local v24    # "py":F
    .end local v25    # "arcfractw":F
    .end local v26    # "arcfracth":F
    .end local v27    # "type":Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;
    :cond_f
    move/from16 v28, v13

    move/from16 v29, v14

    mul-float v28, v28, v29

    move/from16 v29, v16

    div-float v28, v28, v29

    move/from16 v17, v28

    .line 1833
    .restart local v17    # "ldx":F
    move/from16 v28, v13

    move/from16 v29, v15

    mul-float v28, v28, v29

    move/from16 v29, v16

    div-float v28, v28, v29

    move/from16 v18, v28

    .restart local v18    # "ldy":F
    goto/16 :goto_4

    .line 1850
    .restart local v19    # "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    :cond_10
    move-object/from16 v28, v3

    move-object/from16 v29, v19

    invoke-direct/range {v28 .. v29}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->extract3Dremainder(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v28

    move-object/from16 v20, v28

    .line 1851
    .restart local v20    # "rendertx":Lcom/sun/javafx/geom/transform/BaseTransform;
    const/16 v28, 0x4

    move/from16 v0, v28

    new-array v0, v0, [D

    move-object/from16 v28, v0

    move-object/from16 v45, v28

    move-object/from16 v28, v45

    move-object/from16 v29, v45

    const/16 v30, 0x0

    move/from16 v31, v4

    move/from16 v0, v31

    float-to-double v0, v0

    move-wide/from16 v31, v0

    aput-wide v31, v29, v30

    move-object/from16 v45, v28

    move-object/from16 v28, v45

    move-object/from16 v29, v45

    const/16 v30, 0x1

    move/from16 v31, v5

    move/from16 v0, v31

    float-to-double v0, v0

    move-wide/from16 v31, v0

    aput-wide v31, v29, v30

    move-object/from16 v45, v28

    move-object/from16 v28, v45

    move-object/from16 v29, v45

    const/16 v30, 0x2

    move/from16 v31, v6

    move/from16 v0, v31

    float-to-double v0, v0

    move-wide/from16 v31, v0

    aput-wide v31, v29, v30

    move-object/from16 v45, v28

    move-object/from16 v28, v45

    move-object/from16 v29, v45

    const/16 v30, 0x3

    move/from16 v31, v7

    move/from16 v0, v31

    float-to-double v0, v0

    move-wide/from16 v31, v0

    aput-wide v31, v29, v30

    move-object/from16 v23, v28

    .line 1852
    .local v23, "coords":[D
    move-object/from16 v28, v19

    move-object/from16 v29, v23

    const/16 v30, 0x0

    move-object/from16 v31, v23

    const/16 v32, 0x0

    const/16 v33, 0x2

    invoke-virtual/range {v28 .. v33}, Lcom/sun/javafx/geom/transform/BaseTransform;->transform([DI[DII)V

    .line 1853
    move-object/from16 v28, v23

    const/16 v29, 0x0

    aget-wide v28, v28, v29

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v28, v0

    move/from16 v4, v28

    .line 1854
    move-object/from16 v28, v23

    const/16 v29, 0x1

    aget-wide v28, v28, v29

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v28, v0

    move/from16 v5, v28

    .line 1855
    move-object/from16 v28, v23

    const/16 v29, 0x2

    aget-wide v28, v28, v29

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v28, v0

    move/from16 v6, v28

    .line 1856
    move-object/from16 v28, v23

    const/16 v29, 0x3

    aget-wide v28, v28, v29

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v28, v0

    move/from16 v7, v28

    .line 1857
    move/from16 v28, v6

    move/from16 v29, v4

    sub-float v28, v28, v29

    move/from16 v14, v28

    .line 1858
    move/from16 v28, v7

    move/from16 v29, v5

    sub-float v28, v28, v29

    move/from16 v15, v28

    .line 1859
    move-object/from16 v28, v23

    const/16 v29, 0x0

    move/from16 v30, v17

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    aput-wide v30, v28, v29

    .line 1860
    move-object/from16 v28, v23

    const/16 v29, 0x1

    move/from16 v30, v18

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    aput-wide v30, v28, v29

    .line 1861
    move-object/from16 v28, v23

    const/16 v29, 0x2

    move/from16 v30, v18

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    aput-wide v30, v28, v29

    .line 1862
    move-object/from16 v28, v23

    const/16 v29, 0x3

    move/from16 v30, v17

    move/from16 v0, v30

    neg-float v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    aput-wide v30, v28, v29

    .line 1863
    move-object/from16 v28, v19

    move-object/from16 v29, v23

    const/16 v30, 0x0

    move-object/from16 v31, v23

    const/16 v32, 0x0

    const/16 v33, 0x2

    invoke-virtual/range {v28 .. v33}, Lcom/sun/javafx/geom/transform/BaseTransform;->deltaTransform([DI[DII)V

    .line 1864
    move-object/from16 v28, v23

    const/16 v29, 0x0

    aget-wide v28, v28, v29

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v28, v0

    move/from16 v17, v28

    .line 1865
    move-object/from16 v28, v23

    const/16 v29, 0x1

    aget-wide v28, v28, v29

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v28, v0

    move/from16 v18, v28

    .line 1866
    move-object/from16 v28, v23

    const/16 v29, 0x2

    aget-wide v28, v28, v29

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v28, v0

    move/from16 v21, v28

    .line 1867
    .restart local v21    # "pdx":F
    move-object/from16 v28, v23

    const/16 v29, 0x3

    aget-wide v28, v28, v29

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v28, v0

    move/from16 v22, v28

    .restart local v22    # "pdy":F
    goto/16 :goto_5

    .line 1883
    .local v23, "px":F
    .restart local v24    # "py":F
    :cond_11
    const/16 v28, 0x0

    move/from16 v45, v28

    move/from16 v28, v45

    move/from16 v29, v45

    move/from16 v26, v29

    .restart local v26    # "arcfracth":F
    move/from16 v25, v28

    .line 1884
    .restart local v25    # "arcfractw":F
    sget-object v28, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->FILL_PGRAM:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    move-object/from16 v27, v28

    .restart local v27    # "type":Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;
    goto/16 :goto_6

    .line 1887
    .end local v25    # "arcfractw":F
    .end local v26    # "arcfracth":F
    .end local v27    # "type":Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;
    :cond_12
    const/16 v28, 0x0

    move/from16 v45, v28

    move/from16 v28, v45

    move/from16 v29, v45

    move/from16 v26, v29

    .restart local v26    # "arcfracth":F
    move/from16 v25, v28

    .line 1888
    .restart local v25    # "arcfractw":F
    sget-object v28, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->FILL_PGRAM:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    move-object/from16 v27, v28

    .restart local v27    # "type":Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;
    goto/16 :goto_6
.end method

.method public drawMappedTextureRaw2(Lcom/sun/prism/Texture;Lcom/sun/prism/Texture;FFFFFFFFFFFFFFFFFFFF)V
    .locals 47

    .prologue
    .line 319
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    move-object/from16 v2, p1

    .local v2, "src1":Lcom/sun/prism/Texture;
    move-object/from16 v3, p2

    .local v3, "src2":Lcom/sun/prism/Texture;
    move/from16 v4, p3

    .local v4, "dx1":F
    move/from16 v5, p4

    .local v5, "dy1":F
    move/from16 v6, p5

    .local v6, "dx2":F
    move/from16 v7, p6

    .local v7, "dy2":F
    move/from16 v8, p7

    .local v8, "t1x11":F
    move/from16 v9, p8

    .local v9, "t1y11":F
    move/from16 v10, p9

    .local v10, "t1x21":F
    move/from16 v11, p10

    .local v11, "t1y21":F
    move/from16 v12, p11

    .local v12, "t1x12":F
    move/from16 v13, p12

    .local v13, "t1y12":F
    move/from16 v14, p13

    .local v14, "t1x22":F
    move/from16 v15, p14

    .local v15, "t1y22":F
    move/from16 v16, p15

    .local v16, "t2x11":F
    move/from16 v17, p16

    .local v17, "t2y11":F
    move/from16 v18, p17

    .local v18, "t2x21":F
    move/from16 v19, p18

    .local v19, "t2y21":F
    move/from16 v20, p19

    .local v20, "t2x12":F
    move/from16 v21, p20

    .local v21, "t2y12":F
    move/from16 v22, p21

    .local v22, "t2x22":F
    move/from16 v23, p22

    .local v23, "t2y22":F
    move-object/from16 v26, v1

    invoke-virtual/range {v26 .. v26}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->getTransformNoClone()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v26

    move-object/from16 v24, v26

    .line 320
    .local v24, "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v26, v1

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->isSimpleTranslate:Z

    move/from16 v26, v0

    if-eqz v26, :cond_0

    .line 321
    sget-object v26, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->IDENT:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v24, v26

    .line 322
    move/from16 v26, v4

    move-object/from16 v27, v1

    move-object/from16 v0, v27

    iget v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->transX:F

    move/from16 v27, v0

    add-float v26, v26, v27

    move/from16 v4, v26

    .line 323
    move/from16 v26, v5

    move-object/from16 v27, v1

    move-object/from16 v0, v27

    iget v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->transY:F

    move/from16 v27, v0

    add-float v26, v26, v27

    move/from16 v5, v26

    .line 324
    move/from16 v26, v6

    move-object/from16 v27, v1

    move-object/from16 v0, v27

    iget v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->transX:F

    move/from16 v27, v0

    add-float v26, v26, v27

    move/from16 v6, v26

    .line 325
    move/from16 v26, v7

    move-object/from16 v27, v1

    move-object/from16 v0, v27

    iget v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->transY:F

    move/from16 v27, v0

    add-float v26, v26, v27

    move/from16 v7, v26

    .line 327
    :cond_0
    move-object/from16 v26, v1

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    move-object/from16 v26, v0

    move-object/from16 v27, v1

    move-object/from16 v28, v24

    move-object/from16 v29, v2

    move-object/from16 v30, v3

    sget-object v31, Lcom/sun/prism/PixelFormat;->INT_ARGB_PRE:Lcom/sun/prism/PixelFormat;

    invoke-virtual/range {v26 .. v31}, Lcom/sun/prism/impl/ps/BaseShaderContext;->validateTextureOp(Lcom/sun/prism/impl/ps/BaseShaderGraphics;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/Texture;Lcom/sun/prism/Texture;Lcom/sun/prism/PixelFormat;)Lcom/sun/prism/ps/Shader;

    move-result-object v26

    .line 330
    move-object/from16 v26, v1

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sun/prism/impl/ps/BaseShaderContext;->getVertexBuffer()Lcom/sun/prism/impl/VertexBuffer;

    move-result-object v26

    move-object/from16 v25, v26

    .line 331
    .local v25, "vb":Lcom/sun/prism/impl/VertexBuffer;
    move-object/from16 v26, v25

    move/from16 v27, v4

    move/from16 v28, v5

    move/from16 v29, v6

    move/from16 v30, v7

    move/from16 v31, v8

    move/from16 v32, v9

    move/from16 v33, v10

    move/from16 v34, v11

    move/from16 v35, v12

    move/from16 v36, v13

    move/from16 v37, v14

    move/from16 v38, v15

    move/from16 v39, v16

    move/from16 v40, v17

    move/from16 v41, v18

    move/from16 v42, v19

    move/from16 v43, v20

    move/from16 v44, v21

    move/from16 v45, v22

    move/from16 v46, v23

    invoke-virtual/range {v26 .. v46}, Lcom/sun/prism/impl/VertexBuffer;->addMappedQuad(FFFFFFFFFFFFFFFFFFFF)V

    .line 336
    return-void
.end method

.method protected drawMultiTexture(Lcom/sun/prism/MultiTexture;FFFFFFFF)V
    .locals 46

    .prologue
    .line 223
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    move-object/from16 v4, p1

    .local v4, "tex":Lcom/sun/prism/MultiTexture;
    move/from16 v5, p2

    .local v5, "dx1":F
    move/from16 v6, p3

    .local v6, "dy1":F
    move/from16 v7, p4

    .local v7, "dx2":F
    move/from16 v8, p5

    .local v8, "dy2":F
    move/from16 v9, p6

    .local v9, "sx1":F
    move/from16 v10, p7

    .local v10, "sy1":F
    move/from16 v11, p8

    .local v11, "sx2":F
    move/from16 v12, p9

    .local v12, "sy2":F
    move-object/from16 v36, v3

    invoke-virtual/range {v36 .. v36}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->getTransformNoClone()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v36

    move-object/from16 v13, v36

    .line 224
    .local v13, "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-boolean v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->isSimpleTranslate:Z

    move/from16 v36, v0

    if-eqz v36, :cond_0

    .line 225
    sget-object v36, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->IDENT:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v13, v36

    .line 226
    move/from16 v36, v5

    move-object/from16 v37, v3

    move-object/from16 v0, v37

    iget v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->transX:F

    move/from16 v37, v0

    add-float v36, v36, v37

    move/from16 v5, v36

    .line 227
    move/from16 v36, v6

    move-object/from16 v37, v3

    move-object/from16 v0, v37

    iget v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->transY:F

    move/from16 v37, v0

    add-float v36, v36, v37

    move/from16 v6, v36

    .line 228
    move/from16 v36, v7

    move-object/from16 v37, v3

    move-object/from16 v0, v37

    iget v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->transX:F

    move/from16 v37, v0

    add-float v36, v36, v37

    move/from16 v7, v36

    .line 229
    move/from16 v36, v8

    move-object/from16 v37, v3

    move-object/from16 v0, v37

    iget v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->transY:F

    move/from16 v37, v0

    add-float v36, v36, v37

    move/from16 v8, v36

    .line 232
    :cond_0
    move-object/from16 v36, v4

    invoke-virtual/range {v36 .. v36}, Lcom/sun/prism/MultiTexture;->getTextures()[Lcom/sun/prism/Texture;

    move-result-object v36

    move-object/from16 v14, v36

    .line 233
    .local v14, "textures":[Lcom/sun/prism/Texture;
    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    move-object/from16 v36, v0

    move-object/from16 v37, v3

    move-object/from16 v38, v13

    move-object/from16 v39, v14

    move-object/from16 v40, v4

    invoke-virtual/range {v40 .. v40}, Lcom/sun/prism/MultiTexture;->getPixelFormat()Lcom/sun/prism/PixelFormat;

    move-result-object v40

    invoke-virtual/range {v36 .. v40}, Lcom/sun/prism/impl/ps/BaseShaderContext;->validateTextureOp(Lcom/sun/prism/impl/ps/BaseShaderGraphics;Lcom/sun/javafx/geom/transform/BaseTransform;[Lcom/sun/prism/Texture;Lcom/sun/prism/PixelFormat;)Lcom/sun/prism/ps/Shader;

    move-result-object v36

    move-object/from16 v15, v36

    .line 235
    .local v15, "shader":Lcom/sun/prism/ps/Shader;
    const/16 v36, 0x0

    move-object/from16 v37, v15

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-ne v0, v1, :cond_1

    .line 237
    .line 286
    :goto_0
    return-void

    .line 240
    :cond_1
    move-object/from16 v36, v4

    invoke-virtual/range {v36 .. v36}, Lcom/sun/prism/MultiTexture;->getPixelFormat()Lcom/sun/prism/PixelFormat;

    move-result-object v36

    sget-object v37, Lcom/sun/prism/PixelFormat;->MULTI_YCbCr_420:Lcom/sun/prism/PixelFormat;

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-ne v0, v1, :cond_3

    .line 241
    move-object/from16 v36, v14

    const/16 v37, 0x0

    aget-object v36, v36, v37

    move-object/from16 v16, v36

    .line 242
    .local v16, "lumaTex":Lcom/sun/prism/Texture;
    move-object/from16 v36, v14

    const/16 v37, 0x2

    aget-object v36, v36, v37

    move-object/from16 v17, v36

    .line 243
    .local v17, "cbTex":Lcom/sun/prism/Texture;
    move-object/from16 v36, v14

    const/16 v37, 0x1

    aget-object v36, v36, v37

    move-object/from16 v18, v36

    .line 246
    .local v18, "crTex":Lcom/sun/prism/Texture;
    move-object/from16 v36, v4

    invoke-virtual/range {v36 .. v36}, Lcom/sun/prism/MultiTexture;->getContentWidth()I

    move-result v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    move/from16 v19, v36

    .line 247
    .local v19, "imgWidth":F
    move-object/from16 v36, v4

    invoke-virtual/range {v36 .. v36}, Lcom/sun/prism/MultiTexture;->getContentHeight()I

    move-result v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    move/from16 v20, v36

    .line 253
    .local v20, "imgHeight":F
    move/from16 v36, v19

    move-object/from16 v37, v16

    invoke-interface/range {v37 .. v37}, Lcom/sun/prism/Texture;->getPhysicalWidth()I

    move-result v37

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    invoke-static/range {v36 .. v37}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->calculateScaleFactor(FF)F

    move-result v36

    move/from16 v21, v36

    .line 254
    .local v21, "lumaScaleX":F
    move/from16 v36, v20

    move-object/from16 v37, v16

    invoke-interface/range {v37 .. v37}, Lcom/sun/prism/Texture;->getPhysicalHeight()I

    move-result v37

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    invoke-static/range {v36 .. v37}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->calculateScaleFactor(FF)F

    move-result v36

    move/from16 v22, v36

    .line 256
    .local v22, "lumaScaleY":F
    move-object/from16 v36, v14

    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v36, v0

    const/16 v37, 0x3

    move/from16 v0, v36

    move/from16 v1, v37

    if-le v0, v1, :cond_2

    .line 257
    move-object/from16 v36, v14

    const/16 v37, 0x3

    aget-object v36, v36, v37

    move-object/from16 v29, v36

    .line 258
    .local v29, "alphaTex":Lcom/sun/prism/Texture;
    move/from16 v36, v19

    move-object/from16 v37, v29

    invoke-interface/range {v37 .. v37}, Lcom/sun/prism/Texture;->getPhysicalWidth()I

    move-result v37

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    invoke-static/range {v36 .. v37}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->calculateScaleFactor(FF)F

    move-result v36

    move/from16 v23, v36

    .line 259
    .local v23, "alphaScaleX":F
    move/from16 v36, v20

    move-object/from16 v37, v29

    invoke-interface/range {v37 .. v37}, Lcom/sun/prism/Texture;->getPhysicalHeight()I

    move-result v37

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    invoke-static/range {v36 .. v37}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->calculateScaleFactor(FF)F

    move-result v36

    move/from16 v24, v36

    .line 264
    .end local v29    # "alphaTex":Lcom/sun/prism/Texture;
    .local v24, "alphaScaleY":F
    :goto_1
    move/from16 v36, v19

    move/from16 v0, v36

    float-to-double v0, v0

    move-wide/from16 v36, v0

    const-wide/high16 v38, 0x4000000000000000L    # 2.0

    div-double v36, v36, v38

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->floor(D)D

    move-result-wide v36

    move-wide/from16 v0, v36

    double-to-float v0, v0

    move/from16 v36, v0

    move/from16 v29, v36

    .line 265
    .local v29, "chromaWidth":F
    move/from16 v36, v20

    move/from16 v0, v36

    float-to-double v0, v0

    move-wide/from16 v36, v0

    const-wide/high16 v38, 0x4000000000000000L    # 2.0

    div-double v36, v36, v38

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->floor(D)D

    move-result-wide v36

    move-wide/from16 v0, v36

    double-to-float v0, v0

    move/from16 v36, v0

    move/from16 v30, v36

    .line 267
    .local v30, "chromaHeight":F
    move/from16 v36, v29

    move-object/from16 v37, v17

    invoke-interface/range {v37 .. v37}, Lcom/sun/prism/Texture;->getPhysicalWidth()I

    move-result v37

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    invoke-static/range {v36 .. v37}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->calculateScaleFactor(FF)F

    move-result v36

    move/from16 v25, v36

    .line 268
    .local v25, "cbScaleX":F
    move/from16 v36, v30

    move-object/from16 v37, v17

    invoke-interface/range {v37 .. v37}, Lcom/sun/prism/Texture;->getPhysicalHeight()I

    move-result v37

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    invoke-static/range {v36 .. v37}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->calculateScaleFactor(FF)F

    move-result v36

    move/from16 v26, v36

    .line 269
    .local v26, "cbScaleY":F
    move/from16 v36, v29

    move-object/from16 v37, v18

    invoke-interface/range {v37 .. v37}, Lcom/sun/prism/Texture;->getPhysicalWidth()I

    move-result v37

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    invoke-static/range {v36 .. v37}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->calculateScaleFactor(FF)F

    move-result v36

    move/from16 v27, v36

    .line 270
    .local v27, "crScaleX":F
    move/from16 v36, v30

    move-object/from16 v37, v18

    invoke-interface/range {v37 .. v37}, Lcom/sun/prism/Texture;->getPhysicalHeight()I

    move-result v37

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    invoke-static/range {v36 .. v37}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->calculateScaleFactor(FF)F

    move-result v36

    move/from16 v28, v36

    .line 272
    .local v28, "crScaleY":F
    move-object/from16 v36, v15

    const-string v37, "lumaAlphaScale"

    move/from16 v38, v21

    move/from16 v39, v22

    move/from16 v40, v23

    move/from16 v41, v24

    invoke-interface/range {v36 .. v41}, Lcom/sun/prism/ps/Shader;->setConstant(Ljava/lang/String;FFFF)V

    .line 273
    move-object/from16 v36, v15

    const-string v37, "cbCrScale"

    move/from16 v38, v25

    move/from16 v39, v26

    move/from16 v40, v27

    move/from16 v41, v28

    invoke-interface/range {v36 .. v41}, Lcom/sun/prism/ps/Shader;->setConstant(Ljava/lang/String;FFFF)V

    .line 275
    move/from16 v36, v9

    move/from16 v37, v19

    div-float v36, v36, v37

    move/from16 v31, v36

    .line 276
    .local v31, "tx1":F
    move/from16 v36, v10

    move/from16 v37, v20

    div-float v36, v36, v37

    move/from16 v32, v36

    .line 277
    .local v32, "ty1":F
    move/from16 v36, v11

    move/from16 v37, v19

    div-float v36, v36, v37

    move/from16 v33, v36

    .line 278
    .local v33, "tx2":F
    move/from16 v36, v12

    move/from16 v37, v20

    div-float v36, v36, v37

    move/from16 v34, v36

    .line 280
    .local v34, "ty2":F
    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/sun/prism/impl/ps/BaseShaderContext;->getVertexBuffer()Lcom/sun/prism/impl/VertexBuffer;

    move-result-object v36

    move-object/from16 v35, v36

    .line 281
    .local v35, "vb":Lcom/sun/prism/impl/VertexBuffer;
    move-object/from16 v36, v35

    move/from16 v37, v5

    move/from16 v38, v6

    move/from16 v39, v7

    move/from16 v40, v8

    move/from16 v41, v31

    move/from16 v42, v32

    move/from16 v43, v33

    move/from16 v44, v34

    invoke-virtual/range {v36 .. v44}, Lcom/sun/prism/impl/VertexBuffer;->addQuad(FFFFFFFF)V

    .line 282
    .line 286
    goto/16 :goto_0

    .line 261
    .end local v23    # "alphaScaleX":F
    .end local v24    # "alphaScaleY":F
    .end local v25    # "cbScaleX":F
    .end local v26    # "cbScaleY":F
    .end local v27    # "crScaleX":F
    .end local v28    # "crScaleY":F
    .end local v29    # "chromaWidth":F
    .end local v30    # "chromaHeight":F
    .end local v31    # "tx1":F
    .end local v32    # "ty1":F
    .end local v33    # "tx2":F
    .end local v34    # "ty2":F
    .end local v35    # "vb":Lcom/sun/prism/impl/VertexBuffer;
    :cond_2
    const/16 v36, 0x0

    move/from16 v45, v36

    move/from16 v36, v45

    move/from16 v37, v45

    move/from16 v24, v37

    .restart local v24    # "alphaScaleY":F
    move/from16 v23, v36

    .restart local v23    # "alphaScaleX":F
    goto/16 :goto_1

    .line 284
    .end local v16    # "lumaTex":Lcom/sun/prism/Texture;
    .end local v17    # "cbTex":Lcom/sun/prism/Texture;
    .end local v18    # "crTex":Lcom/sun/prism/Texture;
    .end local v19    # "imgWidth":F
    .end local v20    # "imgHeight":F
    .end local v21    # "lumaScaleX":F
    .end local v22    # "lumaScaleY":F
    .end local v23    # "alphaScaleX":F
    .end local v24    # "alphaScaleY":F
    :cond_3
    new-instance v36, Ljava/lang/UnsupportedOperationException;

    move-object/from16 v45, v36

    move-object/from16 v36, v45

    move-object/from16 v37, v45

    new-instance v38, Ljava/lang/StringBuilder;

    move-object/from16 v45, v38

    move-object/from16 v38, v45

    move-object/from16 v39, v45

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Unsupported multitexture format "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v39, v4

    invoke-virtual/range {v39 .. v39}, Lcom/sun/prism/MultiTexture;->getPixelFormat()Lcom/sun/prism/PixelFormat;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-direct/range {v37 .. v38}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v36
.end method

.method public drawPixelsMasked(Lcom/sun/prism/RTTexture;Lcom/sun/prism/RTTexture;IIIIIIII)V
    .locals 42

    .prologue
    .line 342
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    move-object/from16 v2, p1

    .local v2, "imgtex":Lcom/sun/prism/RTTexture;
    move-object/from16 v3, p2

    .local v3, "masktex":Lcom/sun/prism/RTTexture;
    move/from16 v4, p3

    .local v4, "dx":I
    move/from16 v5, p4

    .local v5, "dy":I
    move/from16 v6, p5

    .local v6, "dw":I
    move/from16 v7, p6

    .local v7, "dh":I
    move/from16 v8, p7

    .local v8, "ix":I
    move/from16 v9, p8

    .local v9, "iy":I
    move/from16 v10, p9

    .local v10, "mx":I
    move/from16 v11, p10

    .local v11, "my":I
    move/from16 v29, v6

    if-lez v29, :cond_0

    move/from16 v29, v7

    if-gtz v29, :cond_1

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    move-object/from16 v29, v2

    invoke-interface/range {v29 .. v29}, Lcom/sun/prism/RTTexture;->getPhysicalWidth()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move/from16 v12, v29

    .line 344
    .local v12, "iw":F
    move-object/from16 v29, v2

    invoke-interface/range {v29 .. v29}, Lcom/sun/prism/RTTexture;->getPhysicalHeight()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move/from16 v13, v29

    .line 345
    .local v13, "ih":F
    move-object/from16 v29, v3

    invoke-interface/range {v29 .. v29}, Lcom/sun/prism/RTTexture;->getPhysicalWidth()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move/from16 v14, v29

    .line 346
    .local v14, "mw":F
    move-object/from16 v29, v3

    invoke-interface/range {v29 .. v29}, Lcom/sun/prism/RTTexture;->getPhysicalHeight()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move/from16 v15, v29

    .line 347
    .local v15, "mh":F
    move/from16 v29, v4

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move/from16 v16, v29

    .line 348
    .local v16, "dx1":F
    move/from16 v29, v5

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move/from16 v17, v29

    .line 349
    .local v17, "dy1":F
    move/from16 v29, v4

    move/from16 v30, v6

    add-int v29, v29, v30

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move/from16 v18, v29

    .line 350
    .local v18, "dx2":F
    move/from16 v29, v5

    move/from16 v30, v7

    add-int v29, v29, v30

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move/from16 v19, v29

    .line 351
    .local v19, "dy2":F
    move/from16 v29, v8

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move/from16 v30, v12

    div-float v29, v29, v30

    move/from16 v20, v29

    .line 352
    .local v20, "ix1":F
    move/from16 v29, v9

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move/from16 v30, v13

    div-float v29, v29, v30

    move/from16 v21, v29

    .line 353
    .local v21, "iy1":F
    move/from16 v29, v8

    move/from16 v30, v6

    add-int v29, v29, v30

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move/from16 v30, v12

    div-float v29, v29, v30

    move/from16 v22, v29

    .line 354
    .local v22, "ix2":F
    move/from16 v29, v9

    move/from16 v30, v7

    add-int v29, v29, v30

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move/from16 v30, v13

    div-float v29, v29, v30

    move/from16 v23, v29

    .line 355
    .local v23, "iy2":F
    move/from16 v29, v10

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move/from16 v30, v14

    div-float v29, v29, v30

    move/from16 v24, v29

    .line 356
    .local v24, "mx1":F
    move/from16 v29, v11

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move/from16 v30, v15

    div-float v29, v29, v30

    move/from16 v25, v29

    .line 357
    .local v25, "my1":F
    move/from16 v29, v10

    move/from16 v30, v6

    add-int v29, v29, v30

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move/from16 v30, v14

    div-float v29, v29, v30

    move/from16 v26, v29

    .line 358
    .local v26, "mx2":F
    move/from16 v29, v11

    move/from16 v30, v7

    add-int v29, v29, v30

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move/from16 v30, v15

    div-float v29, v29, v30

    move/from16 v27, v29

    .line 359
    .local v27, "my2":F
    move-object/from16 v29, v1

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    move-object/from16 v29, v0

    move-object/from16 v30, v1

    sget-object v31, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->IDENT:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v32, v2

    move-object/from16 v33, v3

    sget-object v34, Lcom/sun/prism/PixelFormat;->INT_ARGB_PRE:Lcom/sun/prism/PixelFormat;

    invoke-virtual/range {v29 .. v34}, Lcom/sun/prism/impl/ps/BaseShaderContext;->validateMaskTextureOp(Lcom/sun/prism/impl/ps/BaseShaderGraphics;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/Texture;Lcom/sun/prism/Texture;Lcom/sun/prism/PixelFormat;)Lcom/sun/prism/ps/Shader;

    move-result-object v29

    .line 361
    move-object/from16 v29, v1

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/sun/prism/impl/ps/BaseShaderContext;->getVertexBuffer()Lcom/sun/prism/impl/VertexBuffer;

    move-result-object v29

    move-object/from16 v28, v29

    .line 362
    .local v28, "vb":Lcom/sun/prism/impl/VertexBuffer;
    move-object/from16 v29, v28

    move/from16 v30, v16

    move/from16 v31, v17

    move/from16 v32, v18

    move/from16 v33, v19

    move/from16 v34, v20

    move/from16 v35, v21

    move/from16 v36, v22

    move/from16 v37, v23

    move/from16 v38, v24

    move/from16 v39, v25

    move/from16 v40, v26

    move/from16 v41, v27

    invoke-virtual/range {v29 .. v41}, Lcom/sun/prism/impl/VertexBuffer;->addQuad(FFFFFFFFFFFF)V

    .line 365
    goto/16 :goto_0
.end method

.method drawPrimDiagonal(FFFFFIFFFF)Z
    .locals 71

    .prologue
    .line 1279
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    move/from16 v3, p1

    .local v3, "x1":F
    move/from16 v4, p2

    .local v4, "y1":F
    move/from16 v5, p3

    .local v5, "x2":F
    move/from16 v6, p4

    .local v6, "y2":F
    move/from16 v7, p5

    .local v7, "lw":F
    move/from16 v8, p6

    .local v8, "cap":I
    move/from16 v9, p7

    .local v9, "bx":F
    move/from16 v10, p8

    .local v10, "by":F
    move/from16 v11, p9

    .local v11, "bw":F
    move/from16 v12, p10

    .local v12, "bh":F
    move-object/from16 v52, v2

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->stroke:Lcom/sun/prism/BasicStroke;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/sun/prism/BasicStroke;->getType()I

    move-result v52

    if-nez v52, :cond_0

    .line 1280
    move/from16 v52, v7

    const/high16 v53, 0x3f000000    # 0.5f

    mul-float v52, v52, v53

    move/from16 v7, v52

    .line 1282
    :cond_0
    move/from16 v52, v5

    move/from16 v53, v3

    sub-float v52, v52, v53

    move/from16 v13, v52

    .line 1283
    .local v13, "dx":F
    move/from16 v52, v6

    move/from16 v53, v4

    sub-float v52, v52, v53

    move/from16 v14, v52

    .line 1284
    .local v14, "dy":F
    move/from16 v52, v13

    move/from16 v53, v14

    invoke-static/range {v52 .. v53}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->len(FF)F

    move-result v52

    move/from16 v15, v52

    .line 1285
    .local v15, "len":F
    move/from16 v52, v13

    move/from16 v53, v15

    div-float v52, v52, v53

    move/from16 v13, v52

    .line 1286
    move/from16 v52, v14

    move/from16 v53, v15

    div-float v52, v52, v53

    move/from16 v14, v52

    .line 1287
    move/from16 v52, v13

    move/from16 v53, v7

    mul-float v52, v52, v53

    move/from16 v16, v52

    .line 1288
    .local v16, "ldx":F
    move/from16 v52, v14

    move/from16 v53, v7

    mul-float v52, v52, v53

    move/from16 v17, v52

    .line 1290
    .local v17, "ldy":F
    move/from16 v52, v3

    move/from16 v53, v17

    add-float v52, v52, v53

    move/from16 v18, v52

    .local v18, "xUL":F
    move/from16 v52, v4

    move/from16 v53, v16

    sub-float v52, v52, v53

    move/from16 v19, v52

    .line 1291
    .local v19, "yUL":F
    move/from16 v52, v5

    move/from16 v53, v17

    add-float v52, v52, v53

    move/from16 v20, v52

    .local v20, "xUR":F
    move/from16 v52, v6

    move/from16 v53, v16

    sub-float v52, v52, v53

    move/from16 v21, v52

    .line 1292
    .local v21, "yUR":F
    move/from16 v52, v3

    move/from16 v53, v17

    sub-float v52, v52, v53

    move/from16 v22, v52

    .local v22, "xLL":F
    move/from16 v52, v4

    move/from16 v53, v16

    add-float v52, v52, v53

    move/from16 v23, v52

    .line 1293
    .local v23, "yLL":F
    move/from16 v52, v5

    move/from16 v53, v17

    sub-float v52, v52, v53

    move/from16 v24, v52

    .local v24, "xLR":F
    move/from16 v52, v6

    move/from16 v53, v16

    add-float v52, v52, v53

    move/from16 v25, v52

    .line 1294
    .local v25, "yLR":F
    move/from16 v52, v8

    const/16 v53, 0x2

    move/from16 v0, v52

    move/from16 v1, v53

    if-ne v0, v1, :cond_1

    .line 1296
    move/from16 v52, v18

    move/from16 v53, v16

    sub-float v52, v52, v53

    move/from16 v18, v52

    move/from16 v52, v19

    move/from16 v53, v17

    sub-float v52, v52, v53

    move/from16 v19, v52

    .line 1297
    move/from16 v52, v22

    move/from16 v53, v16

    sub-float v52, v52, v53

    move/from16 v22, v52

    move/from16 v52, v23

    move/from16 v53, v17

    sub-float v52, v52, v53

    move/from16 v23, v52

    .line 1298
    move/from16 v52, v20

    move/from16 v53, v16

    add-float v52, v52, v53

    move/from16 v20, v52

    move/from16 v52, v21

    move/from16 v53, v17

    add-float v52, v52, v53

    move/from16 v21, v52

    .line 1299
    move/from16 v52, v24

    move/from16 v53, v16

    add-float v52, v52, v53

    move/from16 v24, v52

    move/from16 v52, v25

    move/from16 v53, v17

    add-float v52, v52, v53

    move/from16 v25, v52

    .line 1304
    :cond_1
    move-object/from16 v52, v2

    invoke-virtual/range {v52 .. v52}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->getTransformNoClone()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v52

    move-object/from16 v32, v52

    .line 1305
    .local v32, "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v52, v32

    invoke-virtual/range {v52 .. v52}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxt()D

    move-result-wide v52

    move-wide/from16 v0, v52

    double-to-float v0, v0

    move/from16 v52, v0

    move/from16 v33, v52

    .line 1306
    .local v33, "mxt":F
    move-object/from16 v52, v32

    invoke-virtual/range {v52 .. v52}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyt()D

    move-result-wide v52

    move-wide/from16 v0, v52

    double-to-float v0, v0

    move/from16 v52, v0

    move/from16 v34, v52

    .line 1307
    .local v34, "myt":F
    move-object/from16 v52, v32

    invoke-virtual/range {v52 .. v52}, Lcom/sun/javafx/geom/transform/BaseTransform;->isTranslateOrIdentity()Z

    move-result v52

    if-eqz v52, :cond_2

    .line 1308
    move/from16 v52, v13

    move/from16 v26, v52

    .local v26, "hdx":F
    move/from16 v52, v14

    move/from16 v27, v52

    .line 1309
    .local v27, "hdy":F
    move/from16 v52, v14

    move/from16 v28, v52

    .local v28, "vdx":F
    move/from16 v52, v13

    move/from16 v0, v52

    neg-float v0, v0

    move/from16 v52, v0

    move/from16 v29, v52

    .line 1310
    .local v29, "vdy":F
    move/from16 v52, v20

    move/from16 v53, v18

    sub-float v52, v52, v53

    move/from16 v53, v21

    move/from16 v54, v19

    sub-float v53, v53, v54

    invoke-static/range {v52 .. v53}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->len(FF)F

    move-result v52

    move/from16 v0, v52

    float-to-double v0, v0

    move-wide/from16 v52, v0

    invoke-static/range {v52 .. v53}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v52

    move-wide/from16 v0, v52

    double-to-int v0, v0

    move/from16 v52, v0

    move/from16 v30, v52

    .line 1311
    .local v30, "cellw":I
    move/from16 v52, v22

    move/from16 v53, v18

    sub-float v52, v52, v53

    move/from16 v53, v23

    move/from16 v54, v19

    sub-float v53, v53, v54

    invoke-static/range {v52 .. v53}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->len(FF)F

    move-result v52

    move/from16 v0, v52

    float-to-double v0, v0

    move-wide/from16 v52, v0

    invoke-static/range {v52 .. v53}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v52

    move-wide/from16 v0, v52

    double-to-int v0, v0

    move/from16 v52, v0

    move/from16 v31, v52

    .line 1312
    .local v31, "cellh":I
    sget-object v52, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->IDENT:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v32, v52

    .line 1353
    :goto_0
    move/from16 v52, v26

    const/high16 v53, 0x3f000000    # 0.5f

    mul-float v52, v52, v53

    move/from16 v26, v52

    .line 1354
    move/from16 v52, v27

    const/high16 v53, 0x3f000000    # 0.5f

    mul-float v52, v52, v53

    move/from16 v27, v52

    .line 1355
    move/from16 v52, v28

    const/high16 v53, 0x3f000000    # 0.5f

    mul-float v52, v52, v53

    move/from16 v28, v52

    .line 1356
    move/from16 v52, v29

    const/high16 v53, 0x3f000000    # 0.5f

    mul-float v52, v52, v53

    move/from16 v29, v52

    .line 1357
    move/from16 v52, v18

    move/from16 v53, v33

    add-float v52, v52, v53

    move/from16 v53, v28

    add-float v52, v52, v53

    move/from16 v53, v26

    sub-float v52, v52, v53

    move/from16 v18, v52

    .line 1358
    move/from16 v52, v19

    move/from16 v53, v34

    add-float v52, v52, v53

    move/from16 v53, v29

    add-float v52, v52, v53

    move/from16 v53, v27

    sub-float v52, v52, v53

    move/from16 v19, v52

    .line 1359
    move/from16 v52, v20

    move/from16 v53, v33

    add-float v52, v52, v53

    move/from16 v53, v28

    add-float v52, v52, v53

    move/from16 v53, v26

    add-float v52, v52, v53

    move/from16 v20, v52

    .line 1360
    move/from16 v52, v21

    move/from16 v53, v34

    add-float v52, v52, v53

    move/from16 v53, v29

    add-float v52, v52, v53

    move/from16 v53, v27

    add-float v52, v52, v53

    move/from16 v21, v52

    .line 1361
    move/from16 v52, v22

    move/from16 v53, v33

    add-float v52, v52, v53

    move/from16 v53, v28

    sub-float v52, v52, v53

    move/from16 v53, v26

    sub-float v52, v52, v53

    move/from16 v22, v52

    .line 1362
    move/from16 v52, v23

    move/from16 v53, v34

    add-float v52, v52, v53

    move/from16 v53, v29

    sub-float v52, v52, v53

    move/from16 v53, v27

    sub-float v52, v52, v53

    move/from16 v23, v52

    .line 1363
    move/from16 v52, v24

    move/from16 v53, v33

    add-float v52, v52, v53

    move/from16 v53, v28

    sub-float v52, v52, v53

    move/from16 v53, v26

    add-float v52, v52, v53

    move/from16 v24, v52

    .line 1364
    move/from16 v52, v25

    move/from16 v53, v34

    add-float v52, v52, v53

    move/from16 v53, v29

    sub-float v52, v52, v53

    move/from16 v53, v27

    add-float v52, v52, v53

    move/from16 v25, v52

    .line 1365
    move-object/from16 v52, v2

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/sun/prism/impl/ps/BaseShaderContext;->getVertexBuffer()Lcom/sun/prism/impl/VertexBuffer;

    move-result-object v52

    move-object/from16 v35, v52

    .line 1366
    .local v35, "vb":Lcom/sun/prism/impl/VertexBuffer;
    move-object/from16 v52, v2

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/sun/prism/impl/ps/BaseShaderContext;->getRectTextureMaxSize()I

    move-result v52

    move/from16 v36, v52

    .line 1367
    .local v36, "cellmax":I
    move/from16 v52, v31

    move/from16 v53, v36

    move/from16 v0, v52

    move/from16 v1, v53

    if-gt v0, v1, :cond_8

    .line 1368
    move/from16 v52, v31

    move/from16 v53, v31

    const/16 v54, 0x1

    add-int/lit8 v53, v53, 0x1

    mul-int v52, v52, v53

    const/16 v53, 0x2

    div-int/lit8 v52, v52, 0x2

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    const/high16 v53, 0x3f000000    # 0.5f

    sub-float v52, v52, v53

    move/from16 v37, v52

    .line 1369
    .local v37, "v0":F
    move/from16 v52, v37

    move/from16 v53, v31

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v53, v0

    add-float v52, v52, v53

    const/high16 v53, 0x3f800000    # 1.0f

    add-float v52, v52, v53

    move/from16 v38, v52

    .line 1370
    .local v38, "v1":F
    move-object/from16 v52, v2

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/sun/prism/impl/ps/BaseShaderContext;->getRectTexture()Lcom/sun/prism/Texture;

    move-result-object v52

    move-object/from16 v39, v52

    .line 1371
    .local v39, "rTex":Lcom/sun/prism/Texture;
    move/from16 v52, v37

    move-object/from16 v53, v39

    invoke-interface/range {v53 .. v53}, Lcom/sun/prism/Texture;->getPhysicalHeight()I

    move-result v53

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v53, v0

    div-float v52, v52, v53

    move/from16 v37, v52

    .line 1372
    move/from16 v52, v38

    move-object/from16 v53, v39

    invoke-interface/range {v53 .. v53}, Lcom/sun/prism/Texture;->getPhysicalHeight()I

    move-result v53

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v53, v0

    div-float v52, v52, v53

    move/from16 v38, v52

    .line 1373
    move/from16 v52, v30

    move/from16 v53, v36

    move/from16 v0, v52

    move/from16 v1, v53

    if-gt v0, v1, :cond_6

    .line 1374
    move/from16 v52, v30

    move/from16 v53, v30

    const/16 v54, 0x1

    add-int/lit8 v53, v53, 0x1

    mul-int v52, v52, v53

    const/16 v53, 0x2

    div-int/lit8 v52, v52, 0x2

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    const/high16 v53, 0x3f000000    # 0.5f

    sub-float v52, v52, v53

    move/from16 v40, v52

    .line 1375
    .local v40, "u0":F
    move/from16 v52, v40

    move/from16 v53, v30

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v53, v0

    add-float v52, v52, v53

    const/high16 v53, 0x3f800000    # 1.0f

    add-float v52, v52, v53

    move/from16 v41, v52

    .line 1376
    .local v41, "u1":F
    move/from16 v52, v40

    move-object/from16 v53, v39

    invoke-interface/range {v53 .. v53}, Lcom/sun/prism/Texture;->getPhysicalWidth()I

    move-result v53

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v53, v0

    div-float v52, v52, v53

    move/from16 v40, v52

    .line 1377
    move/from16 v52, v41

    move-object/from16 v53, v39

    invoke-interface/range {v53 .. v53}, Lcom/sun/prism/Texture;->getPhysicalWidth()I

    move-result v53

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v53, v0

    div-float v52, v52, v53

    move/from16 v41, v52

    .line 1378
    move-object/from16 v52, v2

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    move-object/from16 v52, v0

    move-object/from16 v53, v2

    move-object/from16 v54, v32

    sget-object v55, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->ALPHA_TEXTURE:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    move-object/from16 v56, v39

    move/from16 v57, v9

    move/from16 v58, v10

    move/from16 v59, v11

    move/from16 v60, v12

    invoke-virtual/range {v52 .. v60}, Lcom/sun/prism/impl/ps/BaseShaderContext;->validatePaintOp(Lcom/sun/prism/impl/ps/BaseShaderGraphics;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;Lcom/sun/prism/Texture;FFFF)Lcom/sun/prism/ps/Shader;

    move-result-object v52

    .line 1380
    move-object/from16 v52, v35

    move/from16 v53, v18

    move/from16 v54, v19

    move/from16 v55, v20

    move/from16 v56, v21

    move/from16 v57, v22

    move/from16 v58, v23

    move/from16 v59, v24

    move/from16 v60, v25

    move/from16 v61, v40

    move/from16 v62, v37

    move/from16 v63, v41

    move/from16 v64, v37

    move/from16 v65, v40

    move/from16 v66, v38

    move/from16 v67, v41

    move/from16 v68, v38

    const/16 v69, 0x0

    const/16 v70, 0x0

    invoke-virtual/range {v52 .. v70}, Lcom/sun/prism/impl/VertexBuffer;->addMappedPgram(FFFFFFFFFFFFFFFFFF)V

    .line 1384
    move-object/from16 v52, v39

    invoke-interface/range {v52 .. v52}, Lcom/sun/prism/Texture;->unlock()V

    .line 1385
    const/16 v52, 0x1

    move/from16 v2, v52

    .line 1483
    .end local v2    # "this":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    .end local v26    # "hdx":F
    .end local v27    # "hdy":F
    .end local v28    # "vdx":F
    .end local v29    # "vdy":F
    .end local v30    # "cellw":I
    .end local v31    # "cellh":I
    .end local v35    # "vb":Lcom/sun/prism/impl/VertexBuffer;
    .end local v36    # "cellmax":I
    .end local v37    # "v0":F
    .end local v38    # "v1":F
    .end local v39    # "rTex":Lcom/sun/prism/Texture;
    .end local v40    # "u0":F
    .end local v41    # "u1":F
    :goto_1
    return v2

    .line 1313
    .restart local v2    # "this":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    :cond_2
    move-object/from16 v52, v32

    invoke-virtual/range {v52 .. v52}, Lcom/sun/javafx/geom/transform/BaseTransform;->is2D()Z

    move-result v52

    if-eqz v52, :cond_5

    .line 1314
    move-object/from16 v52, v32

    invoke-virtual/range {v52 .. v52}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxx()D

    move-result-wide v52

    move-wide/from16 v0, v52

    double-to-float v0, v0

    move/from16 v52, v0

    move/from16 v35, v52

    .line 1315
    .local v35, "mxx":F
    move-object/from16 v52, v32

    invoke-virtual/range {v52 .. v52}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxy()D

    move-result-wide v52

    move-wide/from16 v0, v52

    double-to-float v0, v0

    move/from16 v52, v0

    move/from16 v36, v52

    .line 1316
    .local v36, "mxy":F
    move-object/from16 v52, v32

    invoke-virtual/range {v52 .. v52}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyx()D

    move-result-wide v52

    move-wide/from16 v0, v52

    double-to-float v0, v0

    move/from16 v52, v0

    move/from16 v37, v52

    .line 1317
    .local v37, "myx":F
    move-object/from16 v52, v32

    invoke-virtual/range {v52 .. v52}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyy()D

    move-result-wide v52

    move-wide/from16 v0, v52

    double-to-float v0, v0

    move/from16 v52, v0

    move/from16 v38, v52

    .line 1319
    .local v38, "myy":F
    move/from16 v52, v35

    move/from16 v53, v18

    mul-float v52, v52, v53

    move/from16 v53, v36

    move/from16 v54, v19

    mul-float v53, v53, v54

    add-float v52, v52, v53

    move/from16 v39, v52

    .line 1320
    .local v39, "tx":F
    move/from16 v52, v37

    move/from16 v53, v18

    mul-float v52, v52, v53

    move/from16 v53, v38

    move/from16 v54, v19

    mul-float v53, v53, v54

    add-float v52, v52, v53

    move/from16 v40, v52

    .line 1321
    .local v40, "ty":F
    move/from16 v52, v39

    move/from16 v18, v52

    move/from16 v52, v40

    move/from16 v19, v52

    .line 1322
    move/from16 v52, v35

    move/from16 v53, v20

    mul-float v52, v52, v53

    move/from16 v53, v36

    move/from16 v54, v21

    mul-float v53, v53, v54

    add-float v52, v52, v53

    move/from16 v39, v52

    .line 1323
    move/from16 v52, v37

    move/from16 v53, v20

    mul-float v52, v52, v53

    move/from16 v53, v38

    move/from16 v54, v21

    mul-float v53, v53, v54

    add-float v52, v52, v53

    move/from16 v40, v52

    .line 1324
    move/from16 v52, v39

    move/from16 v20, v52

    move/from16 v52, v40

    move/from16 v21, v52

    .line 1325
    move/from16 v52, v35

    move/from16 v53, v22

    mul-float v52, v52, v53

    move/from16 v53, v36

    move/from16 v54, v23

    mul-float v53, v53, v54

    add-float v52, v52, v53

    move/from16 v39, v52

    .line 1326
    move/from16 v52, v37

    move/from16 v53, v22

    mul-float v52, v52, v53

    move/from16 v53, v38

    move/from16 v54, v23

    mul-float v53, v53, v54

    add-float v52, v52, v53

    move/from16 v40, v52

    .line 1327
    move/from16 v52, v39

    move/from16 v22, v52

    move/from16 v52, v40

    move/from16 v23, v52

    .line 1328
    move/from16 v52, v35

    move/from16 v53, v24

    mul-float v52, v52, v53

    move/from16 v53, v36

    move/from16 v54, v25

    mul-float v53, v53, v54

    add-float v52, v52, v53

    move/from16 v39, v52

    .line 1329
    move/from16 v52, v37

    move/from16 v53, v24

    mul-float v52, v52, v53

    move/from16 v53, v38

    move/from16 v54, v25

    mul-float v53, v53, v54

    add-float v52, v52, v53

    move/from16 v40, v52

    .line 1330
    move/from16 v52, v39

    move/from16 v24, v52

    move/from16 v52, v40

    move/from16 v25, v52

    .line 1332
    move/from16 v52, v35

    move/from16 v53, v13

    mul-float v52, v52, v53

    move/from16 v53, v36

    move/from16 v54, v14

    mul-float v53, v53, v54

    add-float v52, v52, v53

    move/from16 v26, v52

    .line 1333
    .restart local v26    # "hdx":F
    move/from16 v52, v37

    move/from16 v53, v13

    mul-float v52, v52, v53

    move/from16 v53, v38

    move/from16 v54, v14

    mul-float v53, v53, v54

    add-float v52, v52, v53

    move/from16 v27, v52

    .line 1334
    .restart local v27    # "hdy":F
    move/from16 v52, v26

    move/from16 v53, v27

    invoke-static/range {v52 .. v53}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->len(FF)F

    move-result v52

    move/from16 v41, v52

    .line 1335
    .local v41, "dlen":F
    move/from16 v52, v41

    const/16 v53, 0x0

    cmpl-float v52, v52, v53

    if-nez v52, :cond_3

    const/16 v52, 0x1

    move/from16 v2, v52

    goto/16 :goto_1

    .line 1336
    :cond_3
    move/from16 v52, v26

    move/from16 v53, v41

    div-float v52, v52, v53

    move/from16 v26, v52

    .line 1337
    move/from16 v52, v27

    move/from16 v53, v41

    div-float v52, v52, v53

    move/from16 v27, v52

    .line 1340
    move/from16 v52, v35

    move/from16 v53, v14

    mul-float v52, v52, v53

    move/from16 v53, v36

    move/from16 v54, v13

    mul-float v53, v53, v54

    sub-float v52, v52, v53

    move/from16 v28, v52

    .line 1341
    .restart local v28    # "vdx":F
    move/from16 v52, v37

    move/from16 v53, v14

    mul-float v52, v52, v53

    move/from16 v53, v38

    move/from16 v54, v13

    mul-float v53, v53, v54

    sub-float v52, v52, v53

    move/from16 v29, v52

    .line 1342
    .restart local v29    # "vdy":F
    move/from16 v52, v28

    move/from16 v53, v29

    invoke-static/range {v52 .. v53}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->len(FF)F

    move-result v52

    move/from16 v41, v52

    .line 1343
    move/from16 v52, v41

    const/16 v53, 0x0

    cmpl-float v52, v52, v53

    if-nez v52, :cond_4

    const/16 v52, 0x1

    move/from16 v2, v52

    goto/16 :goto_1

    .line 1344
    :cond_4
    move/from16 v52, v28

    move/from16 v53, v41

    div-float v52, v52, v53

    move/from16 v28, v52

    .line 1345
    move/from16 v52, v29

    move/from16 v53, v41

    div-float v52, v52, v53

    move/from16 v29, v52

    .line 1346
    move/from16 v52, v20

    move/from16 v53, v18

    sub-float v52, v52, v53

    move/from16 v53, v26

    mul-float v52, v52, v53

    move/from16 v53, v21

    move/from16 v54, v19

    sub-float v53, v53, v54

    move/from16 v54, v27

    mul-float v53, v53, v54

    add-float v52, v52, v53

    invoke-static/range {v52 .. v52}, Ljava/lang/Math;->abs(F)F

    move-result v52

    move/from16 v0, v52

    float-to-double v0, v0

    move-wide/from16 v52, v0

    invoke-static/range {v52 .. v53}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v52

    move-wide/from16 v0, v52

    double-to-int v0, v0

    move/from16 v52, v0

    move/from16 v30, v52

    .line 1347
    .restart local v30    # "cellw":I
    move/from16 v52, v22

    move/from16 v53, v18

    sub-float v52, v52, v53

    move/from16 v53, v28

    mul-float v52, v52, v53

    move/from16 v53, v23

    move/from16 v54, v19

    sub-float v53, v53, v54

    move/from16 v54, v29

    mul-float v53, v53, v54

    add-float v52, v52, v53

    invoke-static/range {v52 .. v52}, Ljava/lang/Math;->abs(F)F

    move-result v52

    move/from16 v0, v52

    float-to-double v0, v0

    move-wide/from16 v52, v0

    invoke-static/range {v52 .. v53}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v52

    move-wide/from16 v0, v52

    double-to-int v0, v0

    move/from16 v52, v0

    move/from16 v31, v52

    .line 1348
    .restart local v31    # "cellh":I
    sget-object v52, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->IDENT:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v32, v52

    .line 1349
    goto/16 :goto_0

    .line 1350
    .end local v26    # "hdx":F
    .end local v27    # "hdy":F
    .end local v28    # "vdx":F
    .end local v29    # "vdy":F
    .end local v30    # "cellw":I
    .end local v31    # "cellh":I
    .end local v35    # "mxx":F
    .end local v36    # "mxy":F
    .end local v37    # "myx":F
    .end local v38    # "myy":F
    .end local v39    # "tx":F
    .end local v40    # "ty":F
    .end local v41    # "dlen":F
    :cond_5
    sget-object v52, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v53, "Not a 2d transform!"

    invoke-virtual/range {v52 .. v53}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1351
    const/16 v52, 0x0

    move/from16 v2, v52

    goto/16 :goto_1

    .line 1388
    .restart local v26    # "hdx":F
    .restart local v27    # "hdy":F
    .restart local v28    # "vdx":F
    .restart local v29    # "vdy":F
    .restart local v30    # "cellw":I
    .restart local v31    # "cellh":I
    .local v35, "vb":Lcom/sun/prism/impl/VertexBuffer;
    .local v36, "cellmax":I
    .local v37, "v0":F
    .local v38, "v1":F
    .local v39, "rTex":Lcom/sun/prism/Texture;
    :cond_6
    move/from16 v52, v30

    move/from16 v53, v36

    const/16 v54, 0x2

    mul-int/lit8 v53, v53, 0x2

    const/16 v54, 0x1

    add-int/lit8 v53, v53, -0x1

    move/from16 v0, v52

    move/from16 v1, v53

    if-gt v0, v1, :cond_7

    .line 1395
    move/from16 v52, v18

    move/from16 v53, v20

    add-float v52, v52, v53

    const/high16 v53, 0x3f000000    # 0.5f

    mul-float v52, v52, v53

    move/from16 v40, v52

    .line 1396
    .local v40, "xUC":F
    move/from16 v52, v19

    move/from16 v53, v21

    add-float v52, v52, v53

    const/high16 v53, 0x3f000000    # 0.5f

    mul-float v52, v52, v53

    move/from16 v41, v52

    .line 1397
    .local v41, "yUC":F
    move/from16 v52, v22

    move/from16 v53, v24

    add-float v52, v52, v53

    const/high16 v53, 0x3f000000    # 0.5f

    mul-float v52, v52, v53

    move/from16 v42, v52

    .line 1398
    .local v42, "xLC":F
    move/from16 v52, v23

    move/from16 v53, v25

    add-float v52, v52, v53

    const/high16 v53, 0x3f000000    # 0.5f

    mul-float v52, v52, v53

    move/from16 v43, v52

    .line 1399
    .local v43, "yLC":F
    move/from16 v52, v36

    move/from16 v53, v36

    const/16 v54, 0x1

    add-int/lit8 v53, v53, 0x1

    mul-int v52, v52, v53

    const/16 v53, 0x2

    div-int/lit8 v52, v52, 0x2

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    const/high16 v53, 0x3f000000    # 0.5f

    sub-float v52, v52, v53

    move/from16 v44, v52

    .line 1400
    .local v44, "u0":F
    move/from16 v52, v44

    const/high16 v53, 0x3f000000    # 0.5f

    add-float v52, v52, v53

    move/from16 v53, v30

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v53, v0

    const/high16 v54, 0x3f000000    # 0.5f

    mul-float v53, v53, v54

    add-float v52, v52, v53

    move/from16 v45, v52

    .line 1401
    .local v45, "u1":F
    move/from16 v52, v44

    move-object/from16 v53, v39

    invoke-interface/range {v53 .. v53}, Lcom/sun/prism/Texture;->getPhysicalWidth()I

    move-result v53

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v53, v0

    div-float v52, v52, v53

    move/from16 v44, v52

    .line 1402
    move/from16 v52, v45

    move-object/from16 v53, v39

    invoke-interface/range {v53 .. v53}, Lcom/sun/prism/Texture;->getPhysicalWidth()I

    move-result v53

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v53, v0

    div-float v52, v52, v53

    move/from16 v45, v52

    .line 1403
    move-object/from16 v52, v2

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    move-object/from16 v52, v0

    move-object/from16 v53, v2

    move-object/from16 v54, v32

    sget-object v55, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->ALPHA_TEXTURE:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    move-object/from16 v56, v39

    move/from16 v57, v9

    move/from16 v58, v10

    move/from16 v59, v11

    move/from16 v60, v12

    invoke-virtual/range {v52 .. v60}, Lcom/sun/prism/impl/ps/BaseShaderContext;->validatePaintOp(Lcom/sun/prism/impl/ps/BaseShaderGraphics;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;Lcom/sun/prism/Texture;FFFF)Lcom/sun/prism/ps/Shader;

    move-result-object v52

    .line 1406
    move-object/from16 v52, v35

    move/from16 v53, v18

    move/from16 v54, v19

    move/from16 v55, v40

    move/from16 v56, v41

    move/from16 v57, v22

    move/from16 v58, v23

    move/from16 v59, v42

    move/from16 v60, v43

    move/from16 v61, v44

    move/from16 v62, v37

    move/from16 v63, v45

    move/from16 v64, v37

    move/from16 v65, v44

    move/from16 v66, v38

    move/from16 v67, v45

    move/from16 v68, v38

    const/16 v69, 0x0

    const/16 v70, 0x0

    invoke-virtual/range {v52 .. v70}, Lcom/sun/prism/impl/VertexBuffer;->addMappedPgram(FFFFFFFFFFFFFFFFFF)V

    .line 1410
    move-object/from16 v52, v35

    move/from16 v53, v20

    move/from16 v54, v21

    move/from16 v55, v40

    move/from16 v56, v41

    move/from16 v57, v24

    move/from16 v58, v25

    move/from16 v59, v42

    move/from16 v60, v43

    move/from16 v61, v44

    move/from16 v62, v37

    move/from16 v63, v45

    move/from16 v64, v37

    move/from16 v65, v44

    move/from16 v66, v38

    move/from16 v67, v45

    move/from16 v68, v38

    const/16 v69, 0x0

    const/16 v70, 0x0

    invoke-virtual/range {v52 .. v70}, Lcom/sun/prism/impl/VertexBuffer;->addMappedPgram(FFFFFFFFFFFFFFFFFF)V

    .line 1414
    move-object/from16 v52, v39

    invoke-interface/range {v52 .. v52}, Lcom/sun/prism/Texture;->unlock()V

    .line 1415
    const/16 v52, 0x1

    move/from16 v2, v52

    goto/16 :goto_1

    .line 1418
    .end local v40    # "xUC":F
    .end local v41    # "yUC":F
    .end local v42    # "xLC":F
    .end local v43    # "yLC":F
    .end local v44    # "u0":F
    .end local v45    # "u1":F
    :cond_7
    const/high16 v52, 0x3f000000    # 0.5f

    move-object/from16 v53, v39

    invoke-interface/range {v53 .. v53}, Lcom/sun/prism/Texture;->getPhysicalWidth()I

    move-result v53

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v53, v0

    div-float v52, v52, v53

    move/from16 v40, v52

    .line 1419
    .local v40, "u0":F
    const/high16 v52, 0x3fc00000    # 1.5f

    move-object/from16 v53, v39

    invoke-interface/range {v53 .. v53}, Lcom/sun/prism/Texture;->getPhysicalWidth()I

    move-result v53

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v53, v0

    div-float v52, v52, v53

    move/from16 v41, v52

    .line 1421
    .local v41, "u1":F
    move/from16 v52, v26

    const/high16 v53, 0x40000000    # 2.0f

    mul-float v52, v52, v53

    move/from16 v26, v52

    .line 1422
    move/from16 v52, v27

    const/high16 v53, 0x40000000    # 2.0f

    mul-float v52, v52, v53

    move/from16 v27, v52

    .line 1423
    move/from16 v52, v18

    move/from16 v53, v26

    add-float v52, v52, v53

    move/from16 v42, v52

    .line 1424
    .local v42, "xUl":F
    move/from16 v52, v19

    move/from16 v53, v27

    add-float v52, v52, v53

    move/from16 v43, v52

    .line 1425
    .local v43, "yUl":F
    move/from16 v52, v20

    move/from16 v53, v26

    sub-float v52, v52, v53

    move/from16 v44, v52

    .line 1426
    .local v44, "xUr":F
    move/from16 v52, v21

    move/from16 v53, v27

    sub-float v52, v52, v53

    move/from16 v45, v52

    .line 1427
    .local v45, "yUr":F
    move/from16 v52, v22

    move/from16 v53, v26

    add-float v52, v52, v53

    move/from16 v46, v52

    .line 1428
    .local v46, "xLl":F
    move/from16 v52, v23

    move/from16 v53, v27

    add-float v52, v52, v53

    move/from16 v47, v52

    .line 1429
    .local v47, "yLl":F
    move/from16 v52, v24

    move/from16 v53, v26

    sub-float v52, v52, v53

    move/from16 v48, v52

    .line 1430
    .local v48, "xLr":F
    move/from16 v52, v25

    move/from16 v53, v27

    sub-float v52, v52, v53

    move/from16 v49, v52

    .line 1431
    .local v49, "yLr":F
    move-object/from16 v52, v2

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    move-object/from16 v52, v0

    move-object/from16 v53, v2

    move-object/from16 v54, v32

    sget-object v55, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->ALPHA_TEXTURE:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    move-object/from16 v56, v39

    move/from16 v57, v9

    move/from16 v58, v10

    move/from16 v59, v11

    move/from16 v60, v12

    invoke-virtual/range {v52 .. v60}, Lcom/sun/prism/impl/ps/BaseShaderContext;->validatePaintOp(Lcom/sun/prism/impl/ps/BaseShaderGraphics;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;Lcom/sun/prism/Texture;FFFF)Lcom/sun/prism/ps/Shader;

    move-result-object v52

    .line 1434
    move-object/from16 v52, v35

    move/from16 v53, v18

    move/from16 v54, v19

    move/from16 v55, v42

    move/from16 v56, v43

    move/from16 v57, v22

    move/from16 v58, v23

    move/from16 v59, v46

    move/from16 v60, v47

    move/from16 v61, v40

    move/from16 v62, v37

    move/from16 v63, v41

    move/from16 v64, v37

    move/from16 v65, v40

    move/from16 v66, v38

    move/from16 v67, v41

    move/from16 v68, v38

    const/16 v69, 0x0

    const/16 v70, 0x0

    invoke-virtual/range {v52 .. v70}, Lcom/sun/prism/impl/VertexBuffer;->addMappedPgram(FFFFFFFFFFFFFFFFFF)V

    .line 1438
    move-object/from16 v52, v35

    move/from16 v53, v42

    move/from16 v54, v43

    move/from16 v55, v44

    move/from16 v56, v45

    move/from16 v57, v46

    move/from16 v58, v47

    move/from16 v59, v48

    move/from16 v60, v49

    move/from16 v61, v41

    move/from16 v62, v37

    move/from16 v63, v41

    move/from16 v64, v37

    move/from16 v65, v41

    move/from16 v66, v38

    move/from16 v67, v41

    move/from16 v68, v38

    const/16 v69, 0x0

    const/16 v70, 0x0

    invoke-virtual/range {v52 .. v70}, Lcom/sun/prism/impl/VertexBuffer;->addMappedPgram(FFFFFFFFFFFFFFFFFF)V

    .line 1442
    move-object/from16 v52, v35

    move/from16 v53, v44

    move/from16 v54, v45

    move/from16 v55, v20

    move/from16 v56, v21

    move/from16 v57, v48

    move/from16 v58, v49

    move/from16 v59, v24

    move/from16 v60, v25

    move/from16 v61, v41

    move/from16 v62, v37

    move/from16 v63, v40

    move/from16 v64, v37

    move/from16 v65, v41

    move/from16 v66, v38

    move/from16 v67, v40

    move/from16 v68, v38

    const/16 v69, 0x0

    const/16 v70, 0x0

    invoke-virtual/range {v52 .. v70}, Lcom/sun/prism/impl/VertexBuffer;->addMappedPgram(FFFFFFFFFFFFFFFFFF)V

    .line 1446
    move-object/from16 v52, v39

    invoke-interface/range {v52 .. v52}, Lcom/sun/prism/Texture;->unlock()V

    .line 1447
    const/16 v52, 0x1

    move/from16 v2, v52

    goto/16 :goto_1

    .line 1452
    .end local v37    # "v0":F
    .end local v38    # "v1":F
    .end local v39    # "rTex":Lcom/sun/prism/Texture;
    .end local v40    # "u0":F
    .end local v41    # "u1":F
    .end local v42    # "xUl":F
    .end local v43    # "yUl":F
    .end local v44    # "xUr":F
    .end local v45    # "yUr":F
    .end local v46    # "xLl":F
    .end local v47    # "yLl":F
    .end local v48    # "xLr":F
    .end local v49    # "yLr":F
    :cond_8
    move/from16 v52, v18

    move/from16 v53, v20

    add-float v52, v52, v53

    const/high16 v53, 0x3f000000    # 0.5f

    mul-float v52, v52, v53

    move/from16 v37, v52

    .line 1453
    .local v37, "xUC":F
    move/from16 v52, v19

    move/from16 v53, v21

    add-float v52, v52, v53

    const/high16 v53, 0x3f000000    # 0.5f

    mul-float v52, v52, v53

    move/from16 v38, v52

    .line 1454
    .local v38, "yUC":F
    move/from16 v52, v22

    move/from16 v53, v24

    add-float v52, v52, v53

    const/high16 v53, 0x3f000000    # 0.5f

    mul-float v52, v52, v53

    move/from16 v39, v52

    .line 1455
    .local v39, "xLC":F
    move/from16 v52, v23

    move/from16 v53, v25

    add-float v52, v52, v53

    const/high16 v53, 0x3f000000    # 0.5f

    mul-float v52, v52, v53

    move/from16 v40, v52

    .line 1456
    .local v40, "yLC":F
    move/from16 v52, v18

    move/from16 v53, v22

    add-float v52, v52, v53

    const/high16 v53, 0x3f000000    # 0.5f

    mul-float v52, v52, v53

    move/from16 v41, v52

    .line 1457
    .local v41, "xCL":F
    move/from16 v52, v19

    move/from16 v53, v23

    add-float v52, v52, v53

    const/high16 v53, 0x3f000000    # 0.5f

    mul-float v52, v52, v53

    move/from16 v42, v52

    .line 1458
    .local v42, "yCL":F
    move/from16 v52, v20

    move/from16 v53, v24

    add-float v52, v52, v53

    const/high16 v53, 0x3f000000    # 0.5f

    mul-float v52, v52, v53

    move/from16 v43, v52

    .line 1459
    .local v43, "xCR":F
    move/from16 v52, v21

    move/from16 v53, v25

    add-float v52, v52, v53

    const/high16 v53, 0x3f000000    # 0.5f

    mul-float v52, v52, v53

    move/from16 v44, v52

    .line 1460
    .local v44, "yCR":F
    move/from16 v52, v37

    move/from16 v53, v39

    add-float v52, v52, v53

    const/high16 v53, 0x3f000000    # 0.5f

    mul-float v52, v52, v53

    move/from16 v45, v52

    .line 1461
    .local v45, "xCC":F
    move/from16 v52, v38

    move/from16 v53, v40

    add-float v52, v52, v53

    const/high16 v53, 0x3f000000    # 0.5f

    mul-float v52, v52, v53

    move/from16 v46, v52

    .line 1462
    .local v46, "yCC":F
    move-object/from16 v52, v2

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/sun/prism/impl/ps/BaseShaderContext;->getWrapRectTexture()Lcom/sun/prism/Texture;

    move-result-object v52

    move-object/from16 v47, v52

    .line 1463
    .local v47, "rTex":Lcom/sun/prism/Texture;
    const/high16 v52, 0x3f000000    # 0.5f

    move-object/from16 v53, v47

    invoke-interface/range {v53 .. v53}, Lcom/sun/prism/Texture;->getPhysicalWidth()I

    move-result v53

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v53, v0

    div-float v52, v52, v53

    move/from16 v48, v52

    .line 1464
    .local v48, "u0":F
    const/high16 v52, 0x3f000000    # 0.5f

    move-object/from16 v53, v47

    invoke-interface/range {v53 .. v53}, Lcom/sun/prism/Texture;->getPhysicalHeight()I

    move-result v53

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v53, v0

    div-float v52, v52, v53

    move/from16 v49, v52

    .line 1465
    .local v49, "v0":F
    move/from16 v52, v30

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    const/high16 v53, 0x3f000000    # 0.5f

    mul-float v52, v52, v53

    const/high16 v53, 0x3f800000    # 1.0f

    add-float v52, v52, v53

    move-object/from16 v53, v47

    invoke-interface/range {v53 .. v53}, Lcom/sun/prism/Texture;->getPhysicalWidth()I

    move-result v53

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v53, v0

    div-float v52, v52, v53

    move/from16 v50, v52

    .line 1466
    .local v50, "uc":F
    move/from16 v52, v31

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    const/high16 v53, 0x3f000000    # 0.5f

    mul-float v52, v52, v53

    const/high16 v53, 0x3f800000    # 1.0f

    add-float v52, v52, v53

    move-object/from16 v53, v47

    invoke-interface/range {v53 .. v53}, Lcom/sun/prism/Texture;->getPhysicalHeight()I

    move-result v53

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v53, v0

    div-float v52, v52, v53

    move/from16 v51, v52

    .line 1467
    .local v51, "vc":F
    move-object/from16 v52, v2

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    move-object/from16 v52, v0

    move-object/from16 v53, v2

    move-object/from16 v54, v32

    sget-object v55, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->ALPHA_TEXTURE:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    move-object/from16 v56, v47

    move/from16 v57, v9

    move/from16 v58, v10

    move/from16 v59, v11

    move/from16 v60, v12

    invoke-virtual/range {v52 .. v60}, Lcom/sun/prism/impl/ps/BaseShaderContext;->validatePaintOp(Lcom/sun/prism/impl/ps/BaseShaderGraphics;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;Lcom/sun/prism/Texture;FFFF)Lcom/sun/prism/ps/Shader;

    move-result-object v52

    .line 1469
    move-object/from16 v52, v35

    move/from16 v53, v18

    move/from16 v54, v19

    move/from16 v55, v37

    move/from16 v56, v38

    move/from16 v57, v41

    move/from16 v58, v42

    move/from16 v59, v45

    move/from16 v60, v46

    move/from16 v61, v48

    move/from16 v62, v49

    move/from16 v63, v50

    move/from16 v64, v49

    move/from16 v65, v48

    move/from16 v66, v51

    move/from16 v67, v50

    move/from16 v68, v51

    const/16 v69, 0x0

    const/16 v70, 0x0

    invoke-virtual/range {v52 .. v70}, Lcom/sun/prism/impl/VertexBuffer;->addMappedPgram(FFFFFFFFFFFFFFFFFF)V

    .line 1472
    move-object/from16 v52, v35

    move/from16 v53, v20

    move/from16 v54, v21

    move/from16 v55, v37

    move/from16 v56, v38

    move/from16 v57, v43

    move/from16 v58, v44

    move/from16 v59, v45

    move/from16 v60, v46

    move/from16 v61, v48

    move/from16 v62, v49

    move/from16 v63, v50

    move/from16 v64, v49

    move/from16 v65, v48

    move/from16 v66, v51

    move/from16 v67, v50

    move/from16 v68, v51

    const/16 v69, 0x0

    const/16 v70, 0x0

    invoke-virtual/range {v52 .. v70}, Lcom/sun/prism/impl/VertexBuffer;->addMappedPgram(FFFFFFFFFFFFFFFFFF)V

    .line 1475
    move-object/from16 v52, v35

    move/from16 v53, v22

    move/from16 v54, v23

    move/from16 v55, v39

    move/from16 v56, v40

    move/from16 v57, v41

    move/from16 v58, v42

    move/from16 v59, v45

    move/from16 v60, v46

    move/from16 v61, v48

    move/from16 v62, v49

    move/from16 v63, v50

    move/from16 v64, v49

    move/from16 v65, v48

    move/from16 v66, v51

    move/from16 v67, v50

    move/from16 v68, v51

    const/16 v69, 0x0

    const/16 v70, 0x0

    invoke-virtual/range {v52 .. v70}, Lcom/sun/prism/impl/VertexBuffer;->addMappedPgram(FFFFFFFFFFFFFFFFFF)V

    .line 1478
    move-object/from16 v52, v35

    move/from16 v53, v24

    move/from16 v54, v25

    move/from16 v55, v39

    move/from16 v56, v40

    move/from16 v57, v43

    move/from16 v58, v44

    move/from16 v59, v45

    move/from16 v60, v46

    move/from16 v61, v48

    move/from16 v62, v49

    move/from16 v63, v50

    move/from16 v64, v49

    move/from16 v65, v48

    move/from16 v66, v51

    move/from16 v67, v50

    move/from16 v68, v51

    const/16 v69, 0x0

    const/16 v70, 0x0

    invoke-virtual/range {v52 .. v70}, Lcom/sun/prism/impl/VertexBuffer;->addMappedPgram(FFFFFFFFFFFFFFFFFF)V

    .line 1482
    move-object/from16 v52, v47

    invoke-interface/range {v52 .. v52}, Lcom/sun/prism/Texture;->unlock()V

    .line 1483
    const/16 v52, 0x1

    move/from16 v2, v52

    goto/16 :goto_1
.end method

.method drawPrimRect(FFFF)Z
    .locals 83

    .prologue
    .line 1128
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    move/from16 v3, p1

    .local v3, "x":F
    move/from16 v4, p2

    .local v4, "y":F
    move/from16 v5, p3

    .local v5, "w":F
    move/from16 v6, p4

    .local v6, "h":F
    move-object/from16 v60, v2

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->stroke:Lcom/sun/prism/BasicStroke;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Lcom/sun/prism/BasicStroke;->getLineWidth()F

    move-result v60

    move/from16 v7, v60

    .line 1129
    .local v7, "lw":F
    move-object/from16 v60, v2

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->stroke:Lcom/sun/prism/BasicStroke;

    move-object/from16 v60, v0

    invoke-static/range {v60 .. v60}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->getStrokeExpansionFactor(Lcom/sun/prism/BasicStroke;)F

    move-result v60

    move/from16 v61, v7

    mul-float v60, v60, v61

    move/from16 v8, v60

    .line 1130
    .local v8, "pad":F
    move-object/from16 v60, v2

    invoke-virtual/range {v60 .. v60}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->getTransformNoClone()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v60

    move-object/from16 v9, v60

    .line 1131
    .local v9, "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v60, v9

    invoke-virtual/range {v60 .. v60}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxx()D

    move-result-wide v60

    move-wide/from16 v0, v60

    double-to-float v0, v0

    move/from16 v60, v0

    move/from16 v10, v60

    .line 1132
    .local v10, "mxx":F
    move-object/from16 v60, v9

    invoke-virtual/range {v60 .. v60}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxy()D

    move-result-wide v60

    move-wide/from16 v0, v60

    double-to-float v0, v0

    move/from16 v60, v0

    move/from16 v11, v60

    .line 1133
    .local v11, "mxy":F
    move-object/from16 v60, v9

    invoke-virtual/range {v60 .. v60}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxt()D

    move-result-wide v60

    move-wide/from16 v0, v60

    double-to-float v0, v0

    move/from16 v60, v0

    move/from16 v12, v60

    .line 1134
    .local v12, "mxt":F
    move-object/from16 v60, v9

    invoke-virtual/range {v60 .. v60}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyx()D

    move-result-wide v60

    move-wide/from16 v0, v60

    double-to-float v0, v0

    move/from16 v60, v0

    move/from16 v13, v60

    .line 1135
    .local v13, "myx":F
    move-object/from16 v60, v9

    invoke-virtual/range {v60 .. v60}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyy()D

    move-result-wide v60

    move-wide/from16 v0, v60

    double-to-float v0, v0

    move/from16 v60, v0

    move/from16 v14, v60

    .line 1136
    .local v14, "myy":F
    move-object/from16 v60, v9

    invoke-virtual/range {v60 .. v60}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyt()D

    move-result-wide v60

    move-wide/from16 v0, v60

    double-to-float v0, v0

    move/from16 v60, v0

    move/from16 v15, v60

    .line 1137
    .local v15, "myt":F
    move/from16 v60, v10

    move/from16 v61, v13

    invoke-static/range {v60 .. v61}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->len(FF)F

    move-result v60

    move/from16 v16, v60

    .line 1138
    .local v16, "dxdist":F
    move/from16 v60, v11

    move/from16 v61, v14

    invoke-static/range {v60 .. v61}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->len(FF)F

    move-result v60

    move/from16 v17, v60

    .line 1139
    .local v17, "dydist":F
    move/from16 v60, v16

    const/16 v61, 0x0

    cmpl-float v60, v60, v61

    if-eqz v60, :cond_0

    move/from16 v60, v17

    const/16 v61, 0x0

    cmpl-float v60, v60, v61

    if-nez v60, :cond_1

    .line 1141
    :cond_0
    const/16 v60, 0x1

    move/from16 v2, v60

    .line 1270
    .end local v2    # "this":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    :goto_0
    return v2

    .line 1143
    .restart local v2    # "this":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    :cond_1
    const/high16 v60, 0x3f800000    # 1.0f

    move/from16 v61, v16

    div-float v60, v60, v61

    move/from16 v18, v60

    .line 1144
    .local v18, "pixelw":F
    const/high16 v60, 0x3f800000    # 1.0f

    move/from16 v61, v17

    div-float v60, v60, v61

    move/from16 v19, v60

    .line 1145
    .local v19, "pixelh":F
    move/from16 v60, v3

    move/from16 v61, v8

    sub-float v60, v60, v61

    move/from16 v61, v18

    const/high16 v62, 0x3f000000    # 0.5f

    mul-float v61, v61, v62

    sub-float v60, v60, v61

    move/from16 v20, v60

    .line 1146
    .local v20, "x0":F
    move/from16 v60, v4

    move/from16 v61, v8

    sub-float v60, v60, v61

    move/from16 v61, v19

    const/high16 v62, 0x3f000000    # 0.5f

    mul-float v61, v61, v62

    sub-float v60, v60, v61

    move/from16 v21, v60

    .line 1147
    .local v21, "y0":F
    move/from16 v60, v3

    move/from16 v61, v5

    const/high16 v62, 0x3f000000    # 0.5f

    mul-float v61, v61, v62

    add-float v60, v60, v61

    move/from16 v22, v60

    .line 1148
    .local v22, "xc":F
    move/from16 v60, v4

    move/from16 v61, v6

    const/high16 v62, 0x3f000000    # 0.5f

    mul-float v61, v61, v62

    add-float v60, v60, v61

    move/from16 v23, v60

    .line 1149
    .local v23, "yc":F
    move/from16 v60, v3

    move/from16 v61, v5

    add-float v60, v60, v61

    move/from16 v61, v8

    add-float v60, v60, v61

    move/from16 v61, v18

    const/high16 v62, 0x3f000000    # 0.5f

    mul-float v61, v61, v62

    add-float v60, v60, v61

    move/from16 v24, v60

    .line 1150
    .local v24, "x1":F
    move/from16 v60, v4

    move/from16 v61, v6

    add-float v60, v60, v61

    move/from16 v61, v8

    add-float v60, v60, v61

    move/from16 v61, v19

    const/high16 v62, 0x3f000000    # 0.5f

    mul-float v61, v61, v62

    add-float v60, v60, v61

    move/from16 v25, v60

    .line 1151
    .local v25, "y1":F
    move-object/from16 v60, v2

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Lcom/sun/prism/impl/ps/BaseShaderContext;->getWrapRectTexture()Lcom/sun/prism/Texture;

    move-result-object v60

    move-object/from16 v26, v60

    .line 1152
    .local v26, "rTex":Lcom/sun/prism/Texture;
    const/high16 v60, 0x3f800000    # 1.0f

    move-object/from16 v61, v26

    invoke-interface/range {v61 .. v61}, Lcom/sun/prism/Texture;->getPhysicalWidth()I

    move-result v61

    move/from16 v0, v61

    int-to-float v0, v0

    move/from16 v61, v0

    div-float v60, v60, v61

    move/from16 v27, v60

    .line 1153
    .local v27, "wscale":F
    const/high16 v60, 0x3f800000    # 1.0f

    move-object/from16 v61, v26

    invoke-interface/range {v61 .. v61}, Lcom/sun/prism/Texture;->getPhysicalHeight()I

    move-result v61

    move/from16 v0, v61

    int-to-float v0, v0

    move/from16 v61, v0

    div-float v60, v60, v61

    move/from16 v28, v60

    .line 1154
    .local v28, "hscale":F
    const/high16 v60, 0x3f000000    # 0.5f

    move/from16 v61, v27

    mul-float v60, v60, v61

    move/from16 v29, v60

    .line 1155
    .local v29, "ou0":F
    const/high16 v60, 0x3f000000    # 0.5f

    move/from16 v61, v28

    mul-float v60, v60, v61

    move/from16 v30, v60

    .line 1156
    .local v30, "ov0":F
    move/from16 v60, v5

    const/high16 v61, 0x3f000000    # 0.5f

    mul-float v60, v60, v61

    move/from16 v61, v8

    add-float v60, v60, v61

    move/from16 v61, v16

    mul-float v60, v60, v61

    const/high16 v61, 0x3f800000    # 1.0f

    add-float v60, v60, v61

    move/from16 v61, v27

    mul-float v60, v60, v61

    move/from16 v31, v60

    .line 1157
    .local v31, "ouc":F
    move/from16 v60, v6

    const/high16 v61, 0x3f000000    # 0.5f

    mul-float v60, v60, v61

    move/from16 v61, v8

    add-float v60, v60, v61

    move/from16 v61, v17

    mul-float v60, v60, v61

    const/high16 v61, 0x3f800000    # 1.0f

    add-float v60, v60, v61

    move/from16 v61, v28

    mul-float v60, v60, v61

    move/from16 v32, v60

    .line 1158
    .local v32, "ovc":F
    move/from16 v60, v7

    move/from16 v61, v16

    mul-float v60, v60, v61

    move/from16 v61, v27

    mul-float v60, v60, v61

    move/from16 v33, v60

    .line 1159
    .local v33, "offsetx":F
    move/from16 v60, v7

    move/from16 v61, v17

    mul-float v60, v60, v61

    move/from16 v61, v28

    mul-float v60, v60, v61

    move/from16 v34, v60

    .line 1160
    .local v34, "offsety":F
    move-object/from16 v60, v2

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Lcom/sun/prism/impl/ps/BaseShaderContext;->getVertexBuffer()Lcom/sun/prism/impl/VertexBuffer;

    move-result-object v60

    move-object/from16 v35, v60

    .line 1161
    .local v35, "vb":Lcom/sun/prism/impl/VertexBuffer;
    move-object/from16 v60, v9

    invoke-virtual/range {v60 .. v60}, Lcom/sun/javafx/geom/transform/BaseTransform;->isTranslateOrIdentity()Z

    move-result v60

    if-eqz v60, :cond_3

    .line 1162
    move/from16 v60, v20

    move/from16 v61, v12

    add-float v60, v60, v61

    move/from16 v20, v60

    .line 1163
    move/from16 v60, v21

    move/from16 v61, v15

    add-float v60, v60, v61

    move/from16 v21, v60

    .line 1164
    move/from16 v60, v22

    move/from16 v61, v12

    add-float v60, v60, v61

    move/from16 v22, v60

    .line 1165
    move/from16 v60, v23

    move/from16 v61, v15

    add-float v60, v60, v61

    move/from16 v23, v60

    .line 1166
    move/from16 v60, v24

    move/from16 v61, v12

    add-float v60, v60, v61

    move/from16 v24, v60

    .line 1167
    move/from16 v60, v25

    move/from16 v61, v15

    add-float v60, v60, v61

    move/from16 v25, v60

    .line 1168
    sget-object v60, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->IDENT:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v9, v60

    .line 1248
    :goto_1
    move-object/from16 v60, v2

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    move-object/from16 v60, v0

    move-object/from16 v61, v2

    move-object/from16 v62, v9

    sget-object v63, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->ALPHA_TEXTURE_DIFF:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    move-object/from16 v64, v26

    move/from16 v65, v3

    move/from16 v66, v4

    move/from16 v67, v5

    move/from16 v68, v6

    move/from16 v69, v33

    move/from16 v70, v34

    const/16 v71, 0x0

    const/16 v72, 0x0

    const/16 v73, 0x0

    const/16 v74, 0x0

    .line 1249
    invoke-virtual/range {v60 .. v74}, Lcom/sun/prism/impl/ps/BaseShaderContext;->validatePaintOp(Lcom/sun/prism/impl/ps/BaseShaderGraphics;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;Lcom/sun/prism/Texture;FFFFFFFFFF)Lcom/sun/prism/ps/Shader;

    move-result-object v60

    move-object/from16 v36, v60

    .line 1252
    .local v36, "shader":Lcom/sun/prism/ps/Shader;
    move-object/from16 v60, v36

    const-string v61, "innerOffset"

    move/from16 v62, v33

    move/from16 v63, v34

    invoke-interface/range {v60 .. v63}, Lcom/sun/prism/ps/Shader;->setConstant(Ljava/lang/String;FF)V

    .line 1253
    move-object/from16 v60, v2

    sget-object v61, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->IDENT:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v62, v36

    move/from16 v63, v3

    move/from16 v64, v4

    move/from16 v65, v5

    move/from16 v66, v6

    invoke-virtual/range {v60 .. v66}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->getPaintTextureTx(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/ps/Shader;FFFF)Lcom/sun/javafx/geom/transform/AffineBase;

    move-result-object v60

    move-object/from16 v37, v60

    .line 1254
    .local v37, "paintTx":Lcom/sun/javafx/geom/transform/AffineBase;
    move-object/from16 v60, v37

    if-eqz v60, :cond_2

    .line 1255
    move-object/from16 v60, v37

    move/from16 v61, v12

    move/from16 v0, v61

    neg-float v0, v0

    move/from16 v61, v0

    move/from16 v0, v61

    float-to-double v0, v0

    move-wide/from16 v61, v0

    move/from16 v63, v15

    move/from16 v0, v63

    neg-float v0, v0

    move/from16 v63, v0

    move/from16 v0, v63

    float-to-double v0, v0

    move-wide/from16 v63, v0

    invoke-virtual/range {v60 .. v64}, Lcom/sun/javafx/geom/transform/AffineBase;->translate(DD)V

    .line 1257
    :cond_2
    move-object/from16 v60, v35

    move/from16 v61, v20

    move/from16 v62, v21

    move/from16 v63, v22

    move/from16 v64, v23

    move/from16 v65, v29

    move/from16 v66, v30

    move/from16 v67, v31

    move/from16 v68, v32

    move-object/from16 v69, v37

    invoke-virtual/range {v60 .. v69}, Lcom/sun/prism/impl/VertexBuffer;->addQuad(FFFFFFFFLcom/sun/javafx/geom/transform/AffineBase;)V

    .line 1260
    move-object/from16 v60, v35

    move/from16 v61, v24

    move/from16 v62, v21

    move/from16 v63, v22

    move/from16 v64, v23

    move/from16 v65, v29

    move/from16 v66, v30

    move/from16 v67, v31

    move/from16 v68, v32

    move-object/from16 v69, v37

    invoke-virtual/range {v60 .. v69}, Lcom/sun/prism/impl/VertexBuffer;->addQuad(FFFFFFFFLcom/sun/javafx/geom/transform/AffineBase;)V

    .line 1263
    move-object/from16 v60, v35

    move/from16 v61, v20

    move/from16 v62, v25

    move/from16 v63, v22

    move/from16 v64, v23

    move/from16 v65, v29

    move/from16 v66, v30

    move/from16 v67, v31

    move/from16 v68, v32

    move-object/from16 v69, v37

    invoke-virtual/range {v60 .. v69}, Lcom/sun/prism/impl/VertexBuffer;->addQuad(FFFFFFFFLcom/sun/javafx/geom/transform/AffineBase;)V

    .line 1266
    move-object/from16 v60, v35

    move/from16 v61, v24

    move/from16 v62, v25

    move/from16 v63, v22

    move/from16 v64, v23

    move/from16 v65, v29

    move/from16 v66, v30

    move/from16 v67, v31

    move/from16 v68, v32

    move-object/from16 v69, v37

    invoke-virtual/range {v60 .. v69}, Lcom/sun/prism/impl/VertexBuffer;->addQuad(FFFFFFFFLcom/sun/javafx/geom/transform/AffineBase;)V

    .line 1269
    move-object/from16 v60, v26

    invoke-interface/range {v60 .. v60}, Lcom/sun/prism/Texture;->unlock()V

    .line 1270
    const/16 v60, 0x1

    move/from16 v2, v60

    goto/16 :goto_0

    .line 1169
    .end local v36    # "shader":Lcom/sun/prism/ps/Shader;
    .end local v37    # "paintTx":Lcom/sun/javafx/geom/transform/AffineBase;
    :cond_3
    move-object/from16 v60, v9

    invoke-virtual/range {v60 .. v60}, Lcom/sun/javafx/geom/transform/BaseTransform;->is2D()Z

    move-result v60

    if-eqz v60, :cond_5

    .line 1170
    move-object/from16 v60, v2

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    move-object/from16 v60, v0

    move-object/from16 v61, v2

    sget-object v62, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->IDENT:Lcom/sun/javafx/geom/transform/BaseTransform;

    sget-object v63, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->ALPHA_TEXTURE_DIFF:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    move-object/from16 v64, v26

    move/from16 v65, v3

    move/from16 v66, v4

    move/from16 v67, v5

    move/from16 v68, v6

    move/from16 v69, v33

    move/from16 v70, v34

    const/16 v71, 0x0

    const/16 v72, 0x0

    const/16 v73, 0x0

    const/16 v74, 0x0

    .line 1171
    invoke-virtual/range {v60 .. v74}, Lcom/sun/prism/impl/ps/BaseShaderContext;->validatePaintOp(Lcom/sun/prism/impl/ps/BaseShaderGraphics;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;Lcom/sun/prism/Texture;FFFFFFFFFF)Lcom/sun/prism/ps/Shader;

    move-result-object v60

    move-object/from16 v36, v60

    .line 1174
    .restart local v36    # "shader":Lcom/sun/prism/ps/Shader;
    move-object/from16 v60, v36

    const-string v61, "innerOffset"

    move/from16 v62, v33

    move/from16 v63, v34

    invoke-interface/range {v60 .. v63}, Lcom/sun/prism/ps/Shader;->setConstant(Ljava/lang/String;FF)V

    .line 1175
    move-object/from16 v60, v2

    sget-object v61, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->IDENT:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v62, v36

    move/from16 v63, v3

    move/from16 v64, v4

    move/from16 v65, v5

    move/from16 v66, v6

    invoke-virtual/range {v60 .. v66}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->getPaintTextureTx(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/ps/Shader;FFFF)Lcom/sun/javafx/geom/transform/AffineBase;

    move-result-object v60

    move-object/from16 v37, v60

    .line 1176
    .restart local v37    # "paintTx":Lcom/sun/javafx/geom/transform/AffineBase;
    move/from16 v60, v10

    move/from16 v61, v20

    mul-float v60, v60, v61

    move/from16 v38, v60

    .local v38, "mxx_x0":F
    move/from16 v60, v13

    move/from16 v61, v20

    mul-float v60, v60, v61

    move/from16 v39, v60

    .line 1177
    .local v39, "myx_x0":F
    move/from16 v60, v11

    move/from16 v61, v21

    mul-float v60, v60, v61

    move/from16 v40, v60

    .local v40, "mxy_y0":F
    move/from16 v60, v14

    move/from16 v61, v21

    mul-float v60, v60, v61

    move/from16 v41, v60

    .line 1178
    .local v41, "myy_y0":F
    move/from16 v60, v10

    move/from16 v61, v22

    mul-float v60, v60, v61

    move/from16 v42, v60

    .local v42, "mxx_xc":F
    move/from16 v60, v13

    move/from16 v61, v22

    mul-float v60, v60, v61

    move/from16 v43, v60

    .line 1179
    .local v43, "myx_xc":F
    move/from16 v60, v11

    move/from16 v61, v23

    mul-float v60, v60, v61

    move/from16 v44, v60

    .local v44, "mxy_yc":F
    move/from16 v60, v14

    move/from16 v61, v23

    mul-float v60, v60, v61

    move/from16 v45, v60

    .line 1180
    .local v45, "myy_yc":F
    move/from16 v60, v10

    move/from16 v61, v24

    mul-float v60, v60, v61

    move/from16 v46, v60

    .local v46, "mxx_x1":F
    move/from16 v60, v13

    move/from16 v61, v24

    mul-float v60, v60, v61

    move/from16 v47, v60

    .line 1181
    .local v47, "myx_x1":F
    move/from16 v60, v11

    move/from16 v61, v25

    mul-float v60, v60, v61

    move/from16 v48, v60

    .local v48, "mxy_y1":F
    move/from16 v60, v14

    move/from16 v61, v25

    mul-float v60, v60, v61

    move/from16 v49, v60

    .line 1184
    .local v49, "myy_y1":F
    move/from16 v60, v42

    move/from16 v61, v44

    add-float v60, v60, v61

    move/from16 v61, v12

    add-float v60, v60, v61

    move/from16 v50, v60

    .line 1185
    .local v50, "xcc":F
    move/from16 v60, v43

    move/from16 v61, v45

    add-float v60, v60, v61

    move/from16 v61, v15

    add-float v60, v60, v61

    move/from16 v51, v60

    .line 1187
    .local v51, "ycc":F
    move/from16 v60, v42

    move/from16 v61, v40

    add-float v60, v60, v61

    move/from16 v61, v12

    add-float v60, v60, v61

    move/from16 v52, v60

    .line 1188
    .local v52, "xc0":F
    move/from16 v60, v43

    move/from16 v61, v41

    add-float v60, v60, v61

    move/from16 v61, v15

    add-float v60, v60, v61

    move/from16 v53, v60

    .line 1189
    .local v53, "yc0":F
    move/from16 v60, v38

    move/from16 v61, v44

    add-float v60, v60, v61

    move/from16 v61, v12

    add-float v60, v60, v61

    move/from16 v54, v60

    .line 1190
    .local v54, "x0c":F
    move/from16 v60, v39

    move/from16 v61, v45

    add-float v60, v60, v61

    move/from16 v61, v15

    add-float v60, v60, v61

    move/from16 v55, v60

    .line 1191
    .local v55, "y0c":F
    move/from16 v60, v42

    move/from16 v61, v48

    add-float v60, v60, v61

    move/from16 v61, v12

    add-float v60, v60, v61

    move/from16 v56, v60

    .line 1192
    .local v56, "xc1":F
    move/from16 v60, v43

    move/from16 v61, v49

    add-float v60, v60, v61

    move/from16 v61, v15

    add-float v60, v60, v61

    move/from16 v57, v60

    .line 1193
    .local v57, "yc1":F
    move/from16 v60, v46

    move/from16 v61, v44

    add-float v60, v60, v61

    move/from16 v61, v12

    add-float v60, v60, v61

    move/from16 v58, v60

    .line 1194
    .local v58, "x1c":F
    move/from16 v60, v47

    move/from16 v61, v45

    add-float v60, v60, v61

    move/from16 v61, v15

    add-float v60, v60, v61

    move/from16 v59, v60

    .line 1199
    .local v59, "y1c":F
    move-object/from16 v60, v37

    if-nez v60, :cond_4

    .line 1201
    move-object/from16 v60, v35

    move/from16 v61, v38

    move/from16 v62, v40

    add-float v61, v61, v62

    move/from16 v62, v12

    add-float v61, v61, v62

    move/from16 v62, v39

    move/from16 v63, v41

    add-float v62, v62, v63

    move/from16 v63, v15

    add-float v62, v62, v63

    move/from16 v63, v52

    move/from16 v64, v53

    move/from16 v65, v54

    move/from16 v66, v55

    move/from16 v67, v50

    move/from16 v68, v51

    move/from16 v69, v29

    move/from16 v70, v30

    move/from16 v71, v31

    move/from16 v72, v30

    move/from16 v73, v29

    move/from16 v74, v32

    move/from16 v75, v31

    move/from16 v76, v32

    const/16 v77, 0x0

    const/16 v78, 0x0

    invoke-virtual/range {v60 .. v78}, Lcom/sun/prism/impl/VertexBuffer;->addMappedPgram(FFFFFFFFFFFFFFFFFF)V

    .line 1206
    move-object/from16 v60, v35

    move/from16 v61, v46

    move/from16 v62, v40

    add-float v61, v61, v62

    move/from16 v62, v12

    add-float v61, v61, v62

    move/from16 v62, v47

    move/from16 v63, v41

    add-float v62, v62, v63

    move/from16 v63, v15

    add-float v62, v62, v63

    move/from16 v63, v52

    move/from16 v64, v53

    move/from16 v65, v58

    move/from16 v66, v59

    move/from16 v67, v50

    move/from16 v68, v51

    move/from16 v69, v29

    move/from16 v70, v30

    move/from16 v71, v31

    move/from16 v72, v30

    move/from16 v73, v29

    move/from16 v74, v32

    move/from16 v75, v31

    move/from16 v76, v32

    const/16 v77, 0x0

    const/16 v78, 0x0

    invoke-virtual/range {v60 .. v78}, Lcom/sun/prism/impl/VertexBuffer;->addMappedPgram(FFFFFFFFFFFFFFFFFF)V

    .line 1211
    move-object/from16 v60, v35

    move/from16 v61, v38

    move/from16 v62, v48

    add-float v61, v61, v62

    move/from16 v62, v12

    add-float v61, v61, v62

    move/from16 v62, v39

    move/from16 v63, v49

    add-float v62, v62, v63

    move/from16 v63, v15

    add-float v62, v62, v63

    move/from16 v63, v56

    move/from16 v64, v57

    move/from16 v65, v54

    move/from16 v66, v55

    move/from16 v67, v50

    move/from16 v68, v51

    move/from16 v69, v29

    move/from16 v70, v30

    move/from16 v71, v31

    move/from16 v72, v30

    move/from16 v73, v29

    move/from16 v74, v32

    move/from16 v75, v31

    move/from16 v76, v32

    const/16 v77, 0x0

    const/16 v78, 0x0

    invoke-virtual/range {v60 .. v78}, Lcom/sun/prism/impl/VertexBuffer;->addMappedPgram(FFFFFFFFFFFFFFFFFF)V

    .line 1216
    move-object/from16 v60, v35

    move/from16 v61, v46

    move/from16 v62, v48

    add-float v61, v61, v62

    move/from16 v62, v12

    add-float v61, v61, v62

    move/from16 v62, v47

    move/from16 v63, v49

    add-float v62, v62, v63

    move/from16 v63, v15

    add-float v62, v62, v63

    move/from16 v63, v56

    move/from16 v64, v57

    move/from16 v65, v58

    move/from16 v66, v59

    move/from16 v67, v50

    move/from16 v68, v51

    move/from16 v69, v29

    move/from16 v70, v30

    move/from16 v71, v31

    move/from16 v72, v30

    move/from16 v73, v29

    move/from16 v74, v32

    move/from16 v75, v31

    move/from16 v76, v32

    const/16 v77, 0x0

    const/16 v78, 0x0

    invoke-virtual/range {v60 .. v78}, Lcom/sun/prism/impl/VertexBuffer;->addMappedPgram(FFFFFFFFFFFFFFFFFF)V

    .line 1242
    :goto_2
    move-object/from16 v60, v26

    invoke-interface/range {v60 .. v60}, Lcom/sun/prism/Texture;->unlock()V

    .line 1243
    const/16 v60, 0x1

    move/from16 v2, v60

    goto/16 :goto_0

    .line 1222
    :cond_4
    move-object/from16 v60, v35

    move/from16 v61, v38

    move/from16 v62, v40

    add-float v61, v61, v62

    move/from16 v62, v12

    add-float v61, v61, v62

    move/from16 v62, v39

    move/from16 v63, v41

    add-float v62, v62, v63

    move/from16 v63, v15

    add-float v62, v62, v63

    move/from16 v63, v52

    move/from16 v64, v53

    move/from16 v65, v54

    move/from16 v66, v55

    move/from16 v67, v50

    move/from16 v68, v51

    move/from16 v69, v29

    move/from16 v70, v30

    move/from16 v71, v31

    move/from16 v72, v30

    move/from16 v73, v29

    move/from16 v74, v32

    move/from16 v75, v31

    move/from16 v76, v32

    move/from16 v77, v20

    move/from16 v78, v21

    move/from16 v79, v22

    move/from16 v80, v23

    move-object/from16 v81, v37

    invoke-virtual/range {v60 .. v81}, Lcom/sun/prism/impl/VertexBuffer;->addMappedPgram(FFFFFFFFFFFFFFFFFFFFLcom/sun/javafx/geom/transform/AffineBase;)V

    .line 1227
    move-object/from16 v60, v35

    move/from16 v61, v46

    move/from16 v62, v40

    add-float v61, v61, v62

    move/from16 v62, v12

    add-float v61, v61, v62

    move/from16 v62, v47

    move/from16 v63, v41

    add-float v62, v62, v63

    move/from16 v63, v15

    add-float v62, v62, v63

    move/from16 v63, v52

    move/from16 v64, v53

    move/from16 v65, v58

    move/from16 v66, v59

    move/from16 v67, v50

    move/from16 v68, v51

    move/from16 v69, v29

    move/from16 v70, v30

    move/from16 v71, v31

    move/from16 v72, v30

    move/from16 v73, v29

    move/from16 v74, v32

    move/from16 v75, v31

    move/from16 v76, v32

    move/from16 v77, v24

    move/from16 v78, v21

    move/from16 v79, v22

    move/from16 v80, v23

    move-object/from16 v81, v37

    invoke-virtual/range {v60 .. v81}, Lcom/sun/prism/impl/VertexBuffer;->addMappedPgram(FFFFFFFFFFFFFFFFFFFFLcom/sun/javafx/geom/transform/AffineBase;)V

    .line 1232
    move-object/from16 v60, v35

    move/from16 v61, v38

    move/from16 v62, v48

    add-float v61, v61, v62

    move/from16 v62, v12

    add-float v61, v61, v62

    move/from16 v62, v39

    move/from16 v63, v49

    add-float v62, v62, v63

    move/from16 v63, v15

    add-float v62, v62, v63

    move/from16 v63, v56

    move/from16 v64, v57

    move/from16 v65, v54

    move/from16 v66, v55

    move/from16 v67, v50

    move/from16 v68, v51

    move/from16 v69, v29

    move/from16 v70, v30

    move/from16 v71, v31

    move/from16 v72, v30

    move/from16 v73, v29

    move/from16 v74, v32

    move/from16 v75, v31

    move/from16 v76, v32

    move/from16 v77, v20

    move/from16 v78, v25

    move/from16 v79, v22

    move/from16 v80, v23

    move-object/from16 v81, v37

    invoke-virtual/range {v60 .. v81}, Lcom/sun/prism/impl/VertexBuffer;->addMappedPgram(FFFFFFFFFFFFFFFFFFFFLcom/sun/javafx/geom/transform/AffineBase;)V

    .line 1237
    move-object/from16 v60, v35

    move/from16 v61, v46

    move/from16 v62, v48

    add-float v61, v61, v62

    move/from16 v62, v12

    add-float v61, v61, v62

    move/from16 v62, v47

    move/from16 v63, v49

    add-float v62, v62, v63

    move/from16 v63, v15

    add-float v62, v62, v63

    move/from16 v63, v56

    move/from16 v64, v57

    move/from16 v65, v58

    move/from16 v66, v59

    move/from16 v67, v50

    move/from16 v68, v51

    move/from16 v69, v29

    move/from16 v70, v30

    move/from16 v71, v31

    move/from16 v72, v30

    move/from16 v73, v29

    move/from16 v74, v32

    move/from16 v75, v31

    move/from16 v76, v32

    move/from16 v77, v24

    move/from16 v78, v25

    move/from16 v79, v22

    move/from16 v80, v23

    move-object/from16 v81, v37

    invoke-virtual/range {v60 .. v81}, Lcom/sun/prism/impl/VertexBuffer;->addMappedPgram(FFFFFFFFFFFFFFFFFFFFLcom/sun/javafx/geom/transform/AffineBase;)V

    goto/16 :goto_2

    .line 1245
    .end local v36    # "shader":Lcom/sun/prism/ps/Shader;
    .end local v37    # "paintTx":Lcom/sun/javafx/geom/transform/AffineBase;
    .end local v38    # "mxx_x0":F
    .end local v39    # "myx_x0":F
    .end local v40    # "mxy_y0":F
    .end local v41    # "myy_y0":F
    .end local v42    # "mxx_xc":F
    .end local v43    # "myx_xc":F
    .end local v44    # "mxy_yc":F
    .end local v45    # "myy_yc":F
    .end local v46    # "mxx_x1":F
    .end local v47    # "myx_x1":F
    .end local v48    # "mxy_y1":F
    .end local v49    # "myy_y1":F
    .end local v50    # "xcc":F
    .end local v51    # "ycc":F
    .end local v52    # "xc0":F
    .end local v53    # "yc0":F
    .end local v54    # "x0c":F
    .end local v55    # "y0c":F
    .end local v56    # "xc1":F
    .end local v57    # "yc1":F
    .end local v58    # "x1c":F
    .end local v59    # "y1c":F
    :cond_5
    sget-object v60, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v61, "Not a 2d transform!"

    invoke-virtual/range {v60 .. v61}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1246
    const/16 v60, 0x0

    move/from16 v82, v60

    move/from16 v60, v82

    move/from16 v61, v82

    move/from16 v15, v61

    move/from16 v12, v60

    goto/16 :goto_1
.end method

.method public drawRect(FFFF)V
    .locals 14

    .prologue
    .line 1643
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    move v1, p1

    .local v1, "x":F
    move/from16 v2, p2

    .local v2, "y":F
    move/from16 v3, p3

    .local v3, "w":F
    move/from16 v4, p4

    .local v4, "h":F
    move v5, v3

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_0

    move v5, v4

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    .line 1644
    .line 1674
    :cond_0
    :goto_0
    return-void

    .line 1646
    :cond_1
    move v5, v3

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_2

    move v5, v4

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_3

    .line 1647
    :cond_2
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v1

    move v9, v3

    add-float/2addr v8, v9

    move v9, v2

    move v10, v4

    add-float/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->drawLine(FFFF)V

    .line 1648
    goto :goto_0

    .line 1650
    :cond_3
    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->isComplexPaint:Z

    if-eqz v5, :cond_4

    .line 1651
    sget-object v5, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->scratchRRect:Lcom/sun/javafx/geom/RoundRectangle2D;

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Lcom/sun/javafx/geom/RoundRectangle2D;->setRoundRect(FFFFFF)V

    .line 1652
    move-object v5, v0

    sget-object v6, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->scratchRRect:Lcom/sun/javafx/geom/RoundRectangle2D;

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->stroke:Lcom/sun/prism/BasicStroke;

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    invoke-direct/range {v5 .. v11}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->renderWithComplexPaint(Lcom/sun/javafx/geom/Shape;Lcom/sun/prism/BasicStroke;FFFF)V

    .line 1653
    goto :goto_0

    .line 1655
    :cond_4
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->isAntialiasedShape()Z

    move-result v5

    if-nez v5, :cond_5

    .line 1656
    sget-object v5, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->scratchRRect:Lcom/sun/javafx/geom/RoundRectangle2D;

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Lcom/sun/javafx/geom/RoundRectangle2D;->setRoundRect(FFFFFF)V

    .line 1657
    move-object v5, v0

    sget-object v6, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->scratchRRect:Lcom/sun/javafx/geom/RoundRectangle2D;

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->stroke:Lcom/sun/prism/BasicStroke;

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    invoke-virtual/range {v5 .. v11}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->renderShape(Lcom/sun/javafx/geom/Shape;Lcom/sun/prism/BasicStroke;FFFF)V

    .line 1658
    goto :goto_0

    .line 1660
    :cond_5
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->stroke:Lcom/sun/prism/BasicStroke;

    invoke-static {v5}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->canUseStrokeShader(Lcom/sun/prism/BasicStroke;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1661
    sget v5, Lcom/sun/prism/impl/PrismSettings;->primTextureSize:I

    if-eqz v5, :cond_6

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->stroke:Lcom/sun/prism/BasicStroke;

    .line 1662
    invoke-virtual {v5}, Lcom/sun/prism/BasicStroke;->getLineJoin()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_6

    .line 1664
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->drawPrimRect(FFFF)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1665
    goto :goto_0

    .line 1668
    :cond_6
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    const/4 v10, 0x0

    const/4 v11, 0x0

    sget-object v12, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->DRAW_PGRAM:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->stroke:Lcom/sun/prism/BasicStroke;

    invoke-direct/range {v5 .. v13}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->renderGeneralRoundedRect(FFFFFFLcom/sun/prism/impl/ps/BaseShaderContext$MaskType;Lcom/sun/prism/BasicStroke;)V

    .line 1670
    goto/16 :goto_0

    .line 1672
    :cond_7
    sget-object v5, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->scratchRRect:Lcom/sun/javafx/geom/RoundRectangle2D;

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Lcom/sun/javafx/geom/RoundRectangle2D;->setRoundRect(FFFFFF)V

    .line 1673
    move-object v5, v0

    sget-object v6, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->scratchRRect:Lcom/sun/javafx/geom/RoundRectangle2D;

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->stroke:Lcom/sun/prism/BasicStroke;

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    invoke-virtual/range {v5 .. v11}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->renderShape(Lcom/sun/javafx/geom/Shape;Lcom/sun/prism/BasicStroke;FFFF)V

    .line 1674
    goto/16 :goto_0
.end method

.method public drawRoundRect(FFFFFF)V
    .locals 16

    .prologue
    .line 1712
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    move/from16 v1, p1

    .local v1, "x":F
    move/from16 v2, p2

    .local v2, "y":F
    move/from16 v3, p3

    .local v3, "w":F
    move/from16 v4, p4

    .local v4, "h":F
    move/from16 v5, p5

    .local v5, "arcw":F
    move/from16 v6, p6

    .local v6, "arch":F
    move v7, v5

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    move v8, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    move v5, v7

    .line 1713
    move v7, v6

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    move v8, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    move v6, v7

    .line 1715
    move v7, v3

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_0

    move v7, v4

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-gez v7, :cond_1

    .line 1716
    .line 1727
    :cond_0
    :goto_0
    return-void

    .line 1718
    :cond_1
    move-object v7, v0

    iget-boolean v7, v7, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->isComplexPaint:Z

    if-nez v7, :cond_2

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->stroke:Lcom/sun/prism/BasicStroke;

    invoke-virtual {v7}, Lcom/sun/prism/BasicStroke;->isDashed()Z

    move-result v7

    if-nez v7, :cond_2

    move-object v7, v0

    move v8, v5

    move v9, v6

    .line 1719
    invoke-direct {v7, v8, v9}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->checkInnerCurvature(FF)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->isAntialiasedShape()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1721
    move-object v7, v0

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    move v13, v6

    sget-object v14, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->DRAW_ROUNDRECT:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    move-object v15, v0

    iget-object v15, v15, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->stroke:Lcom/sun/prism/BasicStroke;

    invoke-direct/range {v7 .. v15}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->renderGeneralRoundedRect(FFFFFFLcom/sun/prism/impl/ps/BaseShaderContext$MaskType;Lcom/sun/prism/BasicStroke;)V

    .line 1723
    goto :goto_0

    .line 1725
    :cond_2
    sget-object v7, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->scratchRRect:Lcom/sun/javafx/geom/RoundRectangle2D;

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    move v13, v6

    invoke-virtual/range {v7 .. v13}, Lcom/sun/javafx/geom/RoundRectangle2D;->setRoundRect(FFFFFF)V

    .line 1726
    move-object v7, v0

    sget-object v8, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->scratchRRect:Lcom/sun/javafx/geom/RoundRectangle2D;

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->stroke:Lcom/sun/prism/BasicStroke;

    move v10, v1

    move v11, v2

    move v12, v3

    move v13, v4

    invoke-virtual/range {v7 .. v13}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->renderShape(Lcom/sun/javafx/geom/Shape;Lcom/sun/prism/BasicStroke;FFFF)V

    .line 1727
    goto :goto_0
.end method

.method public drawString(Lcom/sun/javafx/scene/text/GlyphList;Lcom/sun/javafx/font/FontStrike;FFLcom/sun/prism/paint/Color;II)V
    .locals 40

    .prologue
    .line 1950
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    move-object/from16 v4, p1

    .local v4, "gl":Lcom/sun/javafx/scene/text/GlyphList;
    move-object/from16 v5, p2

    .local v5, "strike":Lcom/sun/javafx/font/FontStrike;
    move/from16 v6, p3

    .local v6, "x":F
    move/from16 v7, p4

    .local v7, "y":F
    move-object/from16 v8, p5

    .local v8, "selectColor":Lcom/sun/prism/paint/Color;
    move/from16 v9, p6

    .local v9, "selectStart":I
    move/from16 v10, p7

    .local v10, "selectEnd":I
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->isComplexPaint:Z

    move/from16 v28, v0

    if-nez v28, :cond_0

    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->paint:Lcom/sun/prism/paint/Paint;

    move-object/from16 v28, v0

    .line 1951
    invoke-virtual/range {v28 .. v28}, Lcom/sun/prism/paint/Paint;->getType()Lcom/sun/prism/paint/Paint$Type;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/sun/prism/paint/Paint$Type;->isImagePattern()Z

    move-result v28

    if-nez v28, :cond_0

    move-object/from16 v28, v5

    .line 1952
    invoke-interface/range {v28 .. v28}, Lcom/sun/javafx/font/FontStrike;->drawAsShapes()Z

    move-result v28

    if-eqz v28, :cond_1

    .line 1963
    :cond_0
    move/from16 v28, v6

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    move/from16 v30, v7

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    invoke-static/range {v28 .. v31}, Lcom/sun/javafx/geom/transform/BaseTransform;->getTranslateInstance(DD)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v28

    move-object/from16 v11, v28

    .line 1964
    .local v11, "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v28, v5

    move-object/from16 v29, v4

    move-object/from16 v30, v11

    invoke-interface/range {v28 .. v30}, Lcom/sun/javafx/font/FontStrike;->getOutline(Lcom/sun/javafx/scene/text/GlyphList;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/Shape;

    move-result-object v28

    move-object/from16 v12, v28

    .line 1965
    .local v12, "shape":Lcom/sun/javafx/geom/Shape;
    move-object/from16 v28, v3

    move-object/from16 v29, v12

    invoke-virtual/range {v28 .. v29}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->fill(Lcom/sun/javafx/geom/Shape;)V

    .line 1966
    .line 2103
    .end local v12    # "shape":Lcom/sun/javafx/geom/Shape;
    :goto_0
    return-void

    .line 1969
    .end local v11    # "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    :cond_1
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->getTransformNoClone()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v28

    move-object/from16 v11, v28

    .line 1971
    .restart local v11    # "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->getPaint()Lcom/sun/prism/paint/Paint;

    move-result-object v28

    move-object/from16 v12, v28

    .line 1972
    .local v12, "textPaint":Lcom/sun/prism/paint/Paint;
    move-object/from16 v28, v12

    invoke-virtual/range {v28 .. v28}, Lcom/sun/prism/paint/Paint;->getType()Lcom/sun/prism/paint/Paint$Type;

    move-result-object v28

    sget-object v29, Lcom/sun/prism/paint/Paint$Type;->COLOR:Lcom/sun/prism/paint/Paint$Type;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_8

    move-object/from16 v28, v12

    check-cast v28, Lcom/sun/prism/paint/Color;

    :goto_1
    move-object/from16 v13, v28

    .line 1975
    .local v13, "textColor":Lcom/sun/prism/paint/Color;
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->getCompositeMode()Lcom/sun/prism/CompositeMode;

    move-result-object v28

    move-object/from16 v14, v28

    .line 1978
    .local v14, "blendMode":Lcom/sun/prism/CompositeMode;
    move-object/from16 v28, v14

    sget-object v29, Lcom/sun/prism/CompositeMode;->SRC_OVER:Lcom/sun/prism/CompositeMode;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_9

    move-object/from16 v28, v13

    if-eqz v28, :cond_9

    move-object/from16 v28, v11

    .line 1980
    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/geom/transform/BaseTransform;->is2D()Z

    move-result v28

    if-eqz v28, :cond_9

    move-object/from16 v28, v3

    .line 1981
    invoke-virtual/range {v28 .. v28}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->getRenderTarget()Lcom/sun/prism/RenderTarget;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lcom/sun/prism/RenderTarget;->isMSAA()Z

    move-result v28

    if-nez v28, :cond_9

    const/16 v28, 0x1

    :goto_2
    move/from16 v15, v28

    .line 1986
    .local v15, "lcdSupported":Z
    move-object/from16 v28, v5

    invoke-interface/range {v28 .. v28}, Lcom/sun/javafx/font/FontStrike;->getAAMode()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_2

    move/from16 v28, v15

    if-nez v28, :cond_2

    .line 1987
    move-object/from16 v28, v5

    invoke-interface/range {v28 .. v28}, Lcom/sun/javafx/font/FontStrike;->getFontResource()Lcom/sun/javafx/font/FontResource;

    move-result-object v28

    move-object/from16 v16, v28

    .line 1988
    .local v16, "fr":Lcom/sun/javafx/font/FontResource;
    move-object/from16 v28, v5

    invoke-interface/range {v28 .. v28}, Lcom/sun/javafx/font/FontStrike;->getSize()F

    move-result v28

    move/from16 v17, v28

    .line 1989
    .local v17, "size":F
    move-object/from16 v28, v5

    invoke-interface/range {v28 .. v28}, Lcom/sun/javafx/font/FontStrike;->getTransform()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v28

    move-object/from16 v18, v28

    .line 1990
    .local v18, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v28, v16

    move/from16 v29, v17

    move-object/from16 v30, v18

    const/16 v31, 0x0

    invoke-interface/range {v28 .. v31}, Lcom/sun/javafx/font/FontResource;->getStrike(FLcom/sun/javafx/geom/transform/BaseTransform;I)Lcom/sun/javafx/font/FontStrike;

    move-result-object v28

    move-object/from16 v5, v28

    .line 1993
    .end local v16    # "fr":Lcom/sun/javafx/font/FontResource;
    .end local v17    # "size":F
    .end local v18    # "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    :cond_2
    const/16 v28, 0x0

    move/from16 v16, v28

    .local v16, "bx":F
    const/16 v28, 0x0

    move/from16 v17, v28

    .local v17, "by":F
    const/16 v28, 0x0

    move/from16 v18, v28

    .local v18, "bw":F
    const/16 v28, 0x0

    move/from16 v19, v28

    .line 1994
    .local v19, "bh":F
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->paint:Lcom/sun/prism/paint/Paint;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sun/prism/paint/Paint;->getType()Lcom/sun/prism/paint/Paint$Type;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/sun/prism/paint/Paint$Type;->isGradient()Z

    move-result v28

    if-eqz v28, :cond_4

    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->paint:Lcom/sun/prism/paint/Paint;

    move-object/from16 v28, v0

    check-cast v28, Lcom/sun/prism/paint/Gradient;

    invoke-virtual/range {v28 .. v28}, Lcom/sun/prism/paint/Gradient;->isProportional()Z

    move-result v28

    if-eqz v28, :cond_4

    .line 1998
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->nodeBounds:Lcom/sun/javafx/geom/RectBounds;

    move-object/from16 v28, v0

    move-object/from16 v20, v28

    .line 1999
    .local v20, "textBounds":Lcom/sun/javafx/geom/RectBounds;
    move-object/from16 v28, v20

    if-nez v28, :cond_3

    .line 2000
    move-object/from16 v28, v5

    invoke-interface/range {v28 .. v28}, Lcom/sun/javafx/font/FontStrike;->getMetrics()Lcom/sun/javafx/font/Metrics;

    move-result-object v28

    move-object/from16 v21, v28

    .line 2001
    .local v21, "m":Lcom/sun/javafx/font/Metrics;
    move-object/from16 v28, v21

    invoke-interface/range {v28 .. v28}, Lcom/sun/javafx/font/Metrics;->getAscent()F

    move-result v28

    move/from16 v0, v28

    neg-float v0, v0

    move/from16 v28, v0

    const v29, 0x3ecccccd    # 0.4f

    mul-float v28, v28, v29

    move/from16 v22, v28

    .line 2002
    .local v22, "pad":F
    new-instance v28, Lcom/sun/javafx/geom/RectBounds;

    move-object/from16 v39, v28

    move-object/from16 v28, v39

    move-object/from16 v29, v39

    move/from16 v30, v22

    move/from16 v0, v30

    neg-float v0, v0

    move/from16 v30, v0

    move-object/from16 v31, v21

    .line 2003
    invoke-interface/range {v31 .. v31}, Lcom/sun/javafx/font/Metrics;->getAscent()F

    move-result v31

    move-object/from16 v32, v4

    .line 2004
    invoke-interface/range {v32 .. v32}, Lcom/sun/javafx/scene/text/GlyphList;->getWidth()F

    move-result v32

    const/high16 v33, 0x40000000    # 2.0f

    move/from16 v34, v22

    mul-float v33, v33, v34

    add-float v32, v32, v33

    move-object/from16 v33, v21

    .line 2005
    invoke-interface/range {v33 .. v33}, Lcom/sun/javafx/font/Metrics;->getDescent()F

    move-result v33

    move-object/from16 v34, v21

    invoke-interface/range {v34 .. v34}, Lcom/sun/javafx/font/Metrics;->getLineGap()F

    move-result v34

    add-float v33, v33, v34

    invoke-direct/range {v29 .. v33}, Lcom/sun/javafx/geom/RectBounds;-><init>(FFFF)V

    move-object/from16 v20, v28

    .line 2006
    move/from16 v28, v6

    move/from16 v16, v28

    .line 2007
    move/from16 v28, v7

    move/from16 v17, v28

    .line 2010
    .end local v21    # "m":Lcom/sun/javafx/font/Metrics;
    .end local v22    # "pad":F
    :cond_3
    move/from16 v28, v16

    move-object/from16 v29, v20

    invoke-virtual/range {v29 .. v29}, Lcom/sun/javafx/geom/RectBounds;->getMinX()F

    move-result v29

    add-float v28, v28, v29

    move/from16 v16, v28

    .line 2011
    move/from16 v28, v17

    move-object/from16 v29, v20

    invoke-virtual/range {v29 .. v29}, Lcom/sun/javafx/geom/RectBounds;->getMinY()F

    move-result v29

    add-float v28, v28, v29

    move/from16 v17, v28

    .line 2012
    move-object/from16 v28, v20

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/geom/RectBounds;->getWidth()F

    move-result v28

    move/from16 v18, v28

    .line 2013
    move-object/from16 v28, v20

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/geom/RectBounds;->getHeight()F

    move-result v28

    move/from16 v19, v28

    .line 2016
    .end local v20    # "textBounds":Lcom/sun/javafx/geom/RectBounds;
    :cond_4
    const/16 v28, 0x0

    move-object/from16 v20, v28

    .line 2017
    .local v20, "clip":Lcom/sun/javafx/geom/BaseBounds;
    new-instance v28, Lcom/sun/javafx/geom/Point2D;

    move-object/from16 v39, v28

    move-object/from16 v28, v39

    move-object/from16 v29, v39

    move/from16 v30, v6

    move/from16 v31, v7

    invoke-direct/range {v29 .. v31}, Lcom/sun/javafx/geom/Point2D;-><init>(FF)V

    move-object/from16 v21, v28

    .line 2018
    .local v21, "p2d":Lcom/sun/javafx/geom/Point2D;
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->isSimpleTranslate:Z

    move/from16 v28, v0

    if-eqz v28, :cond_5

    .line 2023
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->getFinalClipNoClone()Lcom/sun/javafx/geom/RectBounds;

    move-result-object v28

    move-object/from16 v20, v28

    .line 2024
    sget-object v28, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->IDENT:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v11, v28

    .line 2025
    move-object/from16 v28, v21

    move-object/from16 v39, v28

    move-object/from16 v28, v39

    move-object/from16 v29, v39

    move-object/from16 v0, v29

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->x:F

    move/from16 v29, v0

    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->transX:F

    move/from16 v30, v0

    add-float v29, v29, v30

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/sun/javafx/geom/Point2D;->x:F

    .line 2026
    move-object/from16 v28, v21

    move-object/from16 v39, v28

    move-object/from16 v28, v39

    move-object/from16 v29, v39

    move-object/from16 v0, v29

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->y:F

    move/from16 v29, v0

    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->transY:F

    move/from16 v30, v0

    add-float v29, v29, v30

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/sun/javafx/geom/Point2D;->y:F

    .line 2035
    :cond_5
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    move-object/from16 v28, v0

    move-object/from16 v29, v5

    invoke-virtual/range {v28 .. v29}, Lcom/sun/prism/impl/ps/BaseShaderContext;->getGlyphCache(Lcom/sun/javafx/font/FontStrike;)Lcom/sun/prism/impl/GlyphCache;

    move-result-object v28

    move-object/from16 v22, v28

    .line 2036
    .local v22, "glyphCache":Lcom/sun/prism/impl/GlyphCache;
    move-object/from16 v28, v22

    invoke-virtual/range {v28 .. v28}, Lcom/sun/prism/impl/GlyphCache;->getBackingStore()Lcom/sun/prism/Texture;

    move-result-object v28

    move-object/from16 v23, v28

    .line 2040
    .local v23, "cacheTex":Lcom/sun/prism/Texture;
    move-object/from16 v28, v5

    invoke-interface/range {v28 .. v28}, Lcom/sun/javafx/font/FontStrike;->getAAMode()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_b

    .line 2041
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->nodeBounds:Lcom/sun/javafx/geom/RectBounds;

    move-object/from16 v28, v0

    if-nez v28, :cond_a

    .line 2047
    move-object/from16 v28, v5

    invoke-interface/range {v28 .. v28}, Lcom/sun/javafx/font/FontStrike;->getMetrics()Lcom/sun/javafx/font/Metrics;

    move-result-object v28

    move-object/from16 v24, v28

    .line 2049
    .local v24, "m":Lcom/sun/javafx/font/Metrics;
    new-instance v28, Lcom/sun/javafx/geom/RectBounds;

    move-object/from16 v39, v28

    move-object/from16 v28, v39

    move-object/from16 v29, v39

    move/from16 v30, v6

    const/high16 v31, 0x40000000    # 2.0f

    sub-float v30, v30, v31

    move/from16 v31, v7

    move-object/from16 v32, v24

    .line 2051
    invoke-interface/range {v32 .. v32}, Lcom/sun/javafx/font/Metrics;->getAscent()F

    move-result v32

    add-float v31, v31, v32

    move/from16 v32, v6

    const/high16 v33, 0x40000000    # 2.0f

    add-float v32, v32, v33

    move-object/from16 v33, v4

    .line 2052
    invoke-interface/range {v33 .. v33}, Lcom/sun/javafx/scene/text/GlyphList;->getWidth()F

    move-result v33

    add-float v32, v32, v33

    move/from16 v33, v7

    const/high16 v34, 0x3f800000    # 1.0f

    add-float v33, v33, v34

    move-object/from16 v34, v24

    .line 2053
    invoke-interface/range {v34 .. v34}, Lcom/sun/javafx/font/Metrics;->getDescent()F

    move-result v34

    add-float v33, v33, v34

    move-object/from16 v34, v24

    invoke-interface/range {v34 .. v34}, Lcom/sun/javafx/font/Metrics;->getLineGap()F

    move-result v34

    add-float v33, v33, v34

    invoke-direct/range {v29 .. v33}, Lcom/sun/javafx/geom/RectBounds;-><init>(FFFF)V

    move-object/from16 v25, v28

    .line 2055
    .local v25, "textBounds":Lcom/sun/javafx/geom/RectBounds;
    move-object/from16 v28, v3

    move-object/from16 v29, v25

    invoke-virtual/range {v28 .. v29}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->setNodeBounds(Lcom/sun/javafx/geom/RectBounds;)V

    .line 2056
    move-object/from16 v28, v3

    invoke-direct/range {v28 .. v28}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->initLCDSampleRT()V

    .line 2057
    move-object/from16 v28, v3

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->setNodeBounds(Lcom/sun/javafx/geom/RectBounds;)V

    .line 2058
    .line 2061
    .end local v24    # "m":Lcom/sun/javafx/font/Metrics;
    .end local v25    # "textBounds":Lcom/sun/javafx/geom/RectBounds;
    :goto_3
    invoke-static {}, Lcom/sun/javafx/font/PrismFontFactory;->getLCDContrast()F

    move-result v28

    move/from16 v24, v28

    .line 2062
    .local v24, "invgamma":F
    const/high16 v28, 0x3f800000    # 1.0f

    move/from16 v29, v24

    div-float v28, v28, v29

    move/from16 v25, v28

    .line 2063
    .local v25, "gamma":F
    new-instance v28, Lcom/sun/prism/paint/Color;

    move-object/from16 v39, v28

    move-object/from16 v28, v39

    move-object/from16 v29, v39

    move-object/from16 v30, v13

    invoke-virtual/range {v30 .. v30}, Lcom/sun/prism/paint/Color;->getRed()F

    move-result v30

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    move/from16 v32, v24

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v30 .. v33}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v30

    move-wide/from16 v0, v30

    double-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v31, v13

    .line 2064
    invoke-virtual/range {v31 .. v31}, Lcom/sun/prism/paint/Color;->getGreen()F

    move-result v31

    move/from16 v0, v31

    float-to-double v0, v0

    move-wide/from16 v31, v0

    move/from16 v33, v24

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v33, v0

    invoke-static/range {v31 .. v34}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v31

    move-wide/from16 v0, v31

    double-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v32, v13

    .line 2065
    invoke-virtual/range {v32 .. v32}, Lcom/sun/prism/paint/Color;->getBlue()F

    move-result v32

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    move/from16 v34, v24

    move/from16 v0, v34

    float-to-double v0, v0

    move-wide/from16 v34, v0

    invoke-static/range {v32 .. v35}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v32

    move-wide/from16 v0, v32

    double-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v33, v13

    .line 2066
    invoke-virtual/range {v33 .. v33}, Lcom/sun/prism/paint/Color;->getAlpha()F

    move-result v33

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v33, v0

    move/from16 v35, v24

    move/from16 v0, v35

    float-to-double v0, v0

    move-wide/from16 v35, v0

    invoke-static/range {v33 .. v36}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v33

    move-wide/from16 v0, v33

    double-to-float v0, v0

    move/from16 v33, v0

    invoke-direct/range {v29 .. v33}, Lcom/sun/prism/paint/Color;-><init>(FFFF)V

    move-object/from16 v13, v28

    .line 2067
    move-object/from16 v28, v8

    if-eqz v28, :cond_6

    .line 2068
    new-instance v28, Lcom/sun/prism/paint/Color;

    move-object/from16 v39, v28

    move-object/from16 v28, v39

    move-object/from16 v29, v39

    move-object/from16 v30, v8

    .line 2069
    invoke-virtual/range {v30 .. v30}, Lcom/sun/prism/paint/Color;->getRed()F

    move-result v30

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    move/from16 v32, v24

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v30 .. v33}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v30

    move-wide/from16 v0, v30

    double-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v31, v8

    .line 2070
    invoke-virtual/range {v31 .. v31}, Lcom/sun/prism/paint/Color;->getGreen()F

    move-result v31

    move/from16 v0, v31

    float-to-double v0, v0

    move-wide/from16 v31, v0

    move/from16 v33, v24

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v33, v0

    invoke-static/range {v31 .. v34}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v31

    move-wide/from16 v0, v31

    double-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v32, v8

    .line 2071
    invoke-virtual/range {v32 .. v32}, Lcom/sun/prism/paint/Color;->getBlue()F

    move-result v32

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    move/from16 v34, v24

    move/from16 v0, v34

    float-to-double v0, v0

    move-wide/from16 v34, v0

    invoke-static/range {v32 .. v35}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v32

    move-wide/from16 v0, v32

    double-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v33, v8

    .line 2072
    invoke-virtual/range {v33 .. v33}, Lcom/sun/prism/paint/Color;->getAlpha()F

    move-result v33

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v33, v0

    move/from16 v35, v24

    move/from16 v0, v35

    float-to-double v0, v0

    move-wide/from16 v35, v0

    invoke-static/range {v33 .. v36}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v33

    move-wide/from16 v0, v33

    double-to-float v0, v0

    move/from16 v33, v0

    invoke-direct/range {v29 .. v33}, Lcom/sun/prism/paint/Color;-><init>(FFFF)V

    move-object/from16 v8, v28

    .line 2078
    :cond_6
    move-object/from16 v28, v3

    sget-object v29, Lcom/sun/prism/CompositeMode;->SRC:Lcom/sun/prism/CompositeMode;

    invoke-virtual/range {v28 .. v29}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->setCompositeMode(Lcom/sun/prism/CompositeMode;)V

    .line 2081
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    move-object/from16 v28, v0

    move-object/from16 v29, v3

    sget-object v30, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->IDENT:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    move-object/from16 v31, v0

    .line 2082
    invoke-virtual/range {v31 .. v31}, Lcom/sun/prism/impl/ps/BaseShaderContext;->getLCDBuffer()Lcom/sun/prism/RTTexture;

    move-result-object v31

    move-object/from16 v32, v23

    const/16 v33, 0x0

    move-object/from16 v34, v13

    .line 2081
    invoke-virtual/range {v28 .. v34}, Lcom/sun/prism/impl/ps/BaseShaderContext;->validateLCDOp(Lcom/sun/prism/impl/ps/BaseShaderGraphics;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/Texture;Lcom/sun/prism/Texture;ZLcom/sun/prism/paint/Paint;)Lcom/sun/prism/ps/Shader;

    move-result-object v28

    move-object/from16 v26, v28

    .line 2085
    .local v26, "shader":Lcom/sun/prism/ps/Shader;
    const/high16 v28, 0x3f800000    # 1.0f

    move-object/from16 v29, v23

    invoke-interface/range {v29 .. v29}, Lcom/sun/prism/Texture;->getPhysicalWidth()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    div-float v28, v28, v29

    move/from16 v27, v28

    .line 2086
    .local v27, "unitXCoord":F
    move-object/from16 v28, v26

    const-string v29, "gamma"

    move/from16 v30, v25

    move/from16 v31, v24

    move/from16 v32, v27

    invoke-interface/range {v28 .. v32}, Lcom/sun/prism/ps/Shader;->setConstant(Ljava/lang/String;FFF)V

    .line 2087
    move-object/from16 v28, v3

    move-object/from16 v29, v14

    invoke-virtual/range {v28 .. v29}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->setCompositeMode(Lcom/sun/prism/CompositeMode;)V

    .line 2088
    .line 2091
    .end local v24    # "invgamma":F
    .end local v25    # "gamma":F
    .end local v26    # "shader":Lcom/sun/prism/ps/Shader;
    .end local v27    # "unitXCoord":F
    :goto_4
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->isSimpleTranslate:Z

    move/from16 v28, v0

    if-eqz v28, :cond_7

    .line 2098
    move-object/from16 v28, v21

    move-object/from16 v29, v21

    move-object/from16 v0, v29

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->y:F

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->round(F)I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/sun/javafx/geom/Point2D;->y:F

    .line 2099
    move-object/from16 v28, v21

    move-object/from16 v29, v21

    move-object/from16 v0, v29

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->x:F

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->round(F)I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/sun/javafx/geom/Point2D;->x:F

    .line 2101
    :cond_7
    move-object/from16 v28, v22

    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    move-object/from16 v29, v0

    move-object/from16 v30, v4

    move-object/from16 v31, v21

    move-object/from16 v0, v31

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->x:F

    move/from16 v31, v0

    move-object/from16 v32, v21

    move-object/from16 v0, v32

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->y:F

    move/from16 v32, v0

    move/from16 v33, v9

    move/from16 v34, v10

    move-object/from16 v35, v8

    move-object/from16 v36, v13

    move-object/from16 v37, v11

    move-object/from16 v38, v20

    invoke-virtual/range {v28 .. v38}, Lcom/sun/prism/impl/GlyphCache;->render(Lcom/sun/prism/impl/BaseContext;Lcom/sun/javafx/scene/text/GlyphList;FFIILcom/sun/prism/paint/Color;Lcom/sun/prism/paint/Color;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/BaseBounds;)V

    .line 2103
    goto/16 :goto_0

    .line 1972
    .end local v13    # "textColor":Lcom/sun/prism/paint/Color;
    .end local v14    # "blendMode":Lcom/sun/prism/CompositeMode;
    .end local v15    # "lcdSupported":Z
    .end local v16    # "bx":F
    .end local v17    # "by":F
    .end local v18    # "bw":F
    .end local v19    # "bh":F
    .end local v20    # "clip":Lcom/sun/javafx/geom/BaseBounds;
    .end local v21    # "p2d":Lcom/sun/javafx/geom/Point2D;
    .end local v22    # "glyphCache":Lcom/sun/prism/impl/GlyphCache;
    .end local v23    # "cacheTex":Lcom/sun/prism/Texture;
    :cond_8
    const/16 v28, 0x0

    goto/16 :goto_1

    .line 1981
    .restart local v13    # "textColor":Lcom/sun/prism/paint/Color;
    .restart local v14    # "blendMode":Lcom/sun/prism/CompositeMode;
    :cond_9
    const/16 v28, 0x0

    goto/16 :goto_2

    .line 2059
    .restart local v15    # "lcdSupported":Z
    .restart local v16    # "bx":F
    .restart local v17    # "by":F
    .restart local v18    # "bw":F
    .restart local v19    # "bh":F
    .restart local v20    # "clip":Lcom/sun/javafx/geom/BaseBounds;
    .restart local v21    # "p2d":Lcom/sun/javafx/geom/Point2D;
    .restart local v22    # "glyphCache":Lcom/sun/prism/impl/GlyphCache;
    .restart local v23    # "cacheTex":Lcom/sun/prism/Texture;
    :cond_a
    move-object/from16 v28, v3

    invoke-direct/range {v28 .. v28}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->initLCDSampleRT()V

    goto/16 :goto_3

    .line 2089
    :cond_b
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    move-object/from16 v28, v0

    move-object/from16 v29, v3

    sget-object v30, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->IDENT:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v31, v23

    move/from16 v32, v16

    move/from16 v33, v17

    move/from16 v34, v18

    move/from16 v35, v19

    invoke-virtual/range {v28 .. v35}, Lcom/sun/prism/impl/ps/BaseShaderContext;->validatePaintOp(Lcom/sun/prism/impl/ps/BaseShaderGraphics;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/Texture;FFFF)Lcom/sun/prism/ps/Shader;

    move-result-object v28

    goto/16 :goto_4
.end method

.method public drawTexture(Lcom/sun/prism/Texture;FFFFFFFF)V
    .locals 20

    .prologue
    .line 136
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    move-object/from16 v1, p1

    .local v1, "tex":Lcom/sun/prism/Texture;
    move/from16 v2, p2

    .local v2, "dx1":F
    move/from16 v3, p3

    .local v3, "dy1":F
    move/from16 v4, p4

    .local v4, "dx2":F
    move/from16 v5, p5

    .local v5, "dy2":F
    move/from16 v6, p6

    .local v6, "sx1":F
    move/from16 v7, p7

    .local v7, "sy1":F
    move/from16 v8, p8

    .local v8, "sx2":F
    move/from16 v9, p9

    .local v9, "sy2":F
    move-object v10, v1

    instance-of v10, v10, Lcom/sun/prism/MultiTexture;

    if-eqz v10, :cond_0

    .line 137
    move-object v10, v0

    move-object v11, v1

    check-cast v11, Lcom/sun/prism/MultiTexture;

    move v12, v2

    move v13, v3

    move v14, v4

    move v15, v5

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v8

    move/from16 v19, v9

    invoke-virtual/range {v10 .. v19}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->drawMultiTexture(Lcom/sun/prism/MultiTexture;FFFFFFFF)V

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_0
    move-object v10, v0

    move-object v11, v1

    move v12, v2

    move v13, v3

    move v14, v4

    move v15, v5

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v8

    move/from16 v19, v9

    invoke-super/range {v10 .. v19}, Lcom/sun/prism/impl/BaseGraphics;->drawTexture(Lcom/sun/prism/Texture;FFFFFFFF)V

    goto :goto_0
.end method

.method public drawTexture3SliceH(Lcom/sun/prism/Texture;FFFFFFFFFFFF)V
    .locals 29

    .prologue
    .line 149
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    move-object/from16 v1, p1

    .local v1, "tex":Lcom/sun/prism/Texture;
    move/from16 v2, p2

    .local v2, "dx1":F
    move/from16 v3, p3

    .local v3, "dy1":F
    move/from16 v4, p4

    .local v4, "dx2":F
    move/from16 v5, p5

    .local v5, "dy2":F
    move/from16 v6, p6

    .local v6, "sx1":F
    move/from16 v7, p7

    .local v7, "sy1":F
    move/from16 v8, p8

    .local v8, "sx2":F
    move/from16 v9, p9

    .local v9, "sy2":F
    move/from16 v10, p10

    .local v10, "dh1":F
    move/from16 v11, p11

    .local v11, "dh2":F
    move/from16 v12, p12

    .local v12, "sh1":F
    move/from16 v13, p13

    .local v13, "sh2":F
    move-object v15, v1

    instance-of v15, v15, Lcom/sun/prism/MultiTexture;

    if-nez v15, :cond_0

    .line 150
    move-object v15, v0

    move-object/from16 v16, v1

    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v4

    move/from16 v20, v5

    move/from16 v21, v6

    move/from16 v22, v7

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v25, v10

    move/from16 v26, v11

    move/from16 v27, v12

    move/from16 v28, v13

    invoke-super/range {v15 .. v28}, Lcom/sun/prism/impl/BaseGraphics;->drawTexture3SliceH(Lcom/sun/prism/Texture;FFFFFFFFFFFF)V

    .line 154
    .line 160
    :goto_0
    return-void

    .line 156
    :cond_0
    move-object v15, v1

    check-cast v15, Lcom/sun/prism/MultiTexture;

    move-object v14, v15

    .line 157
    .local v14, "mtex":Lcom/sun/prism/MultiTexture;
    move-object v15, v0

    move-object/from16 v16, v14

    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v10

    move/from16 v20, v5

    move/from16 v21, v6

    move/from16 v22, v7

    move/from16 v23, v12

    move/from16 v24, v9

    invoke-virtual/range {v15 .. v24}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->drawMultiTexture(Lcom/sun/prism/MultiTexture;FFFFFFFF)V

    .line 158
    move-object v15, v0

    move-object/from16 v16, v14

    move/from16 v17, v10

    move/from16 v18, v3

    move/from16 v19, v11

    move/from16 v20, v5

    move/from16 v21, v12

    move/from16 v22, v7

    move/from16 v23, v13

    move/from16 v24, v9

    invoke-virtual/range {v15 .. v24}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->drawMultiTexture(Lcom/sun/prism/MultiTexture;FFFFFFFF)V

    .line 159
    move-object v15, v0

    move-object/from16 v16, v14

    move/from16 v17, v11

    move/from16 v18, v3

    move/from16 v19, v4

    move/from16 v20, v5

    move/from16 v21, v13

    move/from16 v22, v7

    move/from16 v23, v8

    move/from16 v24, v9

    invoke-virtual/range {v15 .. v24}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->drawMultiTexture(Lcom/sun/prism/MultiTexture;FFFFFFFF)V

    .line 160
    goto :goto_0
.end method

.method public drawTexture3SliceV(Lcom/sun/prism/Texture;FFFFFFFFFFFF)V
    .locals 29

    .prologue
    .line 168
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    move-object/from16 v1, p1

    .local v1, "tex":Lcom/sun/prism/Texture;
    move/from16 v2, p2

    .local v2, "dx1":F
    move/from16 v3, p3

    .local v3, "dy1":F
    move/from16 v4, p4

    .local v4, "dx2":F
    move/from16 v5, p5

    .local v5, "dy2":F
    move/from16 v6, p6

    .local v6, "sx1":F
    move/from16 v7, p7

    .local v7, "sy1":F
    move/from16 v8, p8

    .local v8, "sx2":F
    move/from16 v9, p9

    .local v9, "sy2":F
    move/from16 v10, p10

    .local v10, "dv1":F
    move/from16 v11, p11

    .local v11, "dv2":F
    move/from16 v12, p12

    .local v12, "sv1":F
    move/from16 v13, p13

    .local v13, "sv2":F
    move-object v15, v1

    instance-of v15, v15, Lcom/sun/prism/MultiTexture;

    if-nez v15, :cond_0

    .line 169
    move-object v15, v0

    move-object/from16 v16, v1

    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v4

    move/from16 v20, v5

    move/from16 v21, v6

    move/from16 v22, v7

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v25, v10

    move/from16 v26, v11

    move/from16 v27, v12

    move/from16 v28, v13

    invoke-super/range {v15 .. v28}, Lcom/sun/prism/impl/BaseGraphics;->drawTexture3SliceV(Lcom/sun/prism/Texture;FFFFFFFFFFFF)V

    .line 173
    .line 179
    :goto_0
    return-void

    .line 175
    :cond_0
    move-object v15, v1

    check-cast v15, Lcom/sun/prism/MultiTexture;

    move-object v14, v15

    .line 176
    .local v14, "mtex":Lcom/sun/prism/MultiTexture;
    move-object v15, v0

    move-object/from16 v16, v14

    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v4

    move/from16 v20, v10

    move/from16 v21, v6

    move/from16 v22, v7

    move/from16 v23, v8

    move/from16 v24, v12

    invoke-virtual/range {v15 .. v24}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->drawMultiTexture(Lcom/sun/prism/MultiTexture;FFFFFFFF)V

    .line 177
    move-object v15, v0

    move-object/from16 v16, v14

    move/from16 v17, v2

    move/from16 v18, v10

    move/from16 v19, v4

    move/from16 v20, v11

    move/from16 v21, v6

    move/from16 v22, v12

    move/from16 v23, v8

    move/from16 v24, v13

    invoke-virtual/range {v15 .. v24}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->drawMultiTexture(Lcom/sun/prism/MultiTexture;FFFFFFFF)V

    .line 178
    move-object v15, v0

    move-object/from16 v16, v14

    move/from16 v17, v2

    move/from16 v18, v11

    move/from16 v19, v4

    move/from16 v20, v5

    move/from16 v21, v6

    move/from16 v22, v13

    move/from16 v23, v8

    move/from16 v24, v9

    invoke-virtual/range {v15 .. v24}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->drawMultiTexture(Lcom/sun/prism/MultiTexture;FFFFFFFF)V

    .line 179
    goto :goto_0
.end method

.method public drawTexture9Slice(Lcom/sun/prism/Texture;FFFFFFFFFFFFFFFF)V
    .locals 38

    .prologue
    .line 188
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    move-object/from16 v2, p1

    .local v2, "tex":Lcom/sun/prism/Texture;
    move/from16 v3, p2

    .local v3, "dx1":F
    move/from16 v4, p3

    .local v4, "dy1":F
    move/from16 v5, p4

    .local v5, "dx2":F
    move/from16 v6, p5

    .local v6, "dy2":F
    move/from16 v7, p6

    .local v7, "sx1":F
    move/from16 v8, p7

    .local v8, "sy1":F
    move/from16 v9, p8

    .local v9, "sx2":F
    move/from16 v10, p9

    .local v10, "sy2":F
    move/from16 v11, p10

    .local v11, "dh1":F
    move/from16 v12, p11

    .local v12, "dv1":F
    move/from16 v13, p12

    .local v13, "dh2":F
    move/from16 v14, p13

    .local v14, "dv2":F
    move/from16 v15, p14

    .local v15, "sh1":F
    move/from16 v16, p15

    .local v16, "sv1":F
    move/from16 v17, p16

    .local v17, "sh2":F
    move/from16 v18, p17

    .local v18, "sv2":F
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/sun/prism/MultiTexture;

    move/from16 v20, v0

    if-nez v20, :cond_0

    .line 189
    move-object/from16 v20, v1

    move-object/from16 v21, v2

    move/from16 v22, v3

    move/from16 v23, v4

    move/from16 v24, v5

    move/from16 v25, v6

    move/from16 v26, v7

    move/from16 v27, v8

    move/from16 v28, v9

    move/from16 v29, v10

    move/from16 v30, v11

    move/from16 v31, v12

    move/from16 v32, v13

    move/from16 v33, v14

    move/from16 v34, v15

    move/from16 v35, v16

    move/from16 v36, v17

    move/from16 v37, v18

    invoke-super/range {v20 .. v37}, Lcom/sun/prism/impl/BaseGraphics;->drawTexture9Slice(Lcom/sun/prism/Texture;FFFFFFFFFFFFFFFF)V

    .line 194
    .line 208
    :goto_0
    return-void

    .line 196
    :cond_0
    move-object/from16 v20, v2

    check-cast v20, Lcom/sun/prism/MultiTexture;

    move-object/from16 v19, v20

    .line 197
    .local v19, "mtex":Lcom/sun/prism/MultiTexture;
    move-object/from16 v20, v1

    move-object/from16 v21, v19

    move/from16 v22, v3

    move/from16 v23, v4

    move/from16 v24, v11

    move/from16 v25, v12

    move/from16 v26, v7

    move/from16 v27, v8

    move/from16 v28, v15

    move/from16 v29, v16

    invoke-virtual/range {v20 .. v29}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->drawMultiTexture(Lcom/sun/prism/MultiTexture;FFFFFFFF)V

    .line 198
    move-object/from16 v20, v1

    move-object/from16 v21, v19

    move/from16 v22, v11

    move/from16 v23, v4

    move/from16 v24, v13

    move/from16 v25, v12

    move/from16 v26, v15

    move/from16 v27, v8

    move/from16 v28, v17

    move/from16 v29, v16

    invoke-virtual/range {v20 .. v29}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->drawMultiTexture(Lcom/sun/prism/MultiTexture;FFFFFFFF)V

    .line 199
    move-object/from16 v20, v1

    move-object/from16 v21, v19

    move/from16 v22, v13

    move/from16 v23, v4

    move/from16 v24, v5

    move/from16 v25, v12

    move/from16 v26, v17

    move/from16 v27, v8

    move/from16 v28, v9

    move/from16 v29, v16

    invoke-virtual/range {v20 .. v29}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->drawMultiTexture(Lcom/sun/prism/MultiTexture;FFFFFFFF)V

    .line 201
    move-object/from16 v20, v1

    move-object/from16 v21, v19

    move/from16 v22, v3

    move/from16 v23, v12

    move/from16 v24, v11

    move/from16 v25, v14

    move/from16 v26, v7

    move/from16 v27, v16

    move/from16 v28, v15

    move/from16 v29, v18

    invoke-virtual/range {v20 .. v29}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->drawMultiTexture(Lcom/sun/prism/MultiTexture;FFFFFFFF)V

    .line 202
    move-object/from16 v20, v1

    move-object/from16 v21, v19

    move/from16 v22, v11

    move/from16 v23, v12

    move/from16 v24, v13

    move/from16 v25, v14

    move/from16 v26, v15

    move/from16 v27, v16

    move/from16 v28, v17

    move/from16 v29, v18

    invoke-virtual/range {v20 .. v29}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->drawMultiTexture(Lcom/sun/prism/MultiTexture;FFFFFFFF)V

    .line 203
    move-object/from16 v20, v1

    move-object/from16 v21, v19

    move/from16 v22, v13

    move/from16 v23, v12

    move/from16 v24, v5

    move/from16 v25, v14

    move/from16 v26, v17

    move/from16 v27, v16

    move/from16 v28, v9

    move/from16 v29, v18

    invoke-virtual/range {v20 .. v29}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->drawMultiTexture(Lcom/sun/prism/MultiTexture;FFFFFFFF)V

    .line 205
    move-object/from16 v20, v1

    move-object/from16 v21, v19

    move/from16 v22, v3

    move/from16 v23, v14

    move/from16 v24, v11

    move/from16 v25, v6

    move/from16 v26, v7

    move/from16 v27, v18

    move/from16 v28, v15

    move/from16 v29, v10

    invoke-virtual/range {v20 .. v29}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->drawMultiTexture(Lcom/sun/prism/MultiTexture;FFFFFFFF)V

    .line 206
    move-object/from16 v20, v1

    move-object/from16 v21, v19

    move/from16 v22, v11

    move/from16 v23, v14

    move/from16 v24, v13

    move/from16 v25, v6

    move/from16 v26, v15

    move/from16 v27, v18

    move/from16 v28, v17

    move/from16 v29, v10

    invoke-virtual/range {v20 .. v29}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->drawMultiTexture(Lcom/sun/prism/MultiTexture;FFFFFFFF)V

    .line 207
    move-object/from16 v20, v1

    move-object/from16 v21, v19

    move/from16 v22, v13

    move/from16 v23, v14

    move/from16 v24, v5

    move/from16 v25, v6

    move/from16 v26, v17

    move/from16 v27, v18

    move/from16 v28, v9

    move/from16 v29, v10

    invoke-virtual/range {v20 .. v29}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->drawMultiTexture(Lcom/sun/prism/MultiTexture;FFFFFFFF)V

    .line 208
    goto/16 :goto_0
.end method

.method public drawTextureRaw2(Lcom/sun/prism/Texture;Lcom/sun/prism/Texture;FFFFFFFFFFFF)V
    .locals 31

    .prologue
    .line 294
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    move-object/from16 v2, p1

    .local v2, "src1":Lcom/sun/prism/Texture;
    move-object/from16 v3, p2

    .local v3, "src2":Lcom/sun/prism/Texture;
    move/from16 v4, p3

    .local v4, "dx1":F
    move/from16 v5, p4

    .local v5, "dy1":F
    move/from16 v6, p5

    .local v6, "dx2":F
    move/from16 v7, p6

    .local v7, "dy2":F
    move/from16 v8, p7

    .local v8, "t1x1":F
    move/from16 v9, p8

    .local v9, "t1y1":F
    move/from16 v10, p9

    .local v10, "t1x2":F
    move/from16 v11, p10

    .local v11, "t1y2":F
    move/from16 v12, p11

    .local v12, "t2x1":F
    move/from16 v13, p12

    .local v13, "t2y1":F
    move/from16 v14, p13

    .local v14, "t2x2":F
    move/from16 v15, p14

    .local v15, "t2y2":F
    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v18}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->getTransformNoClone()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v18

    move-object/from16 v16, v18

    .line 295
    .local v16, "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->isSimpleTranslate:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 296
    sget-object v18, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->IDENT:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v16, v18

    .line 297
    move/from16 v18, v4

    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->transX:F

    move/from16 v19, v0

    add-float v18, v18, v19

    move/from16 v4, v18

    .line 298
    move/from16 v18, v5

    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->transY:F

    move/from16 v19, v0

    add-float v18, v18, v19

    move/from16 v5, v18

    .line 299
    move/from16 v18, v6

    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->transX:F

    move/from16 v19, v0

    add-float v18, v18, v19

    move/from16 v6, v18

    .line 300
    move/from16 v18, v7

    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->transY:F

    move/from16 v19, v0

    add-float v18, v18, v19

    move/from16 v7, v18

    .line 302
    :cond_0
    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    move-object/from16 v18, v0

    move-object/from16 v19, v1

    move-object/from16 v20, v16

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    sget-object v23, Lcom/sun/prism/PixelFormat;->INT_ARGB_PRE:Lcom/sun/prism/PixelFormat;

    invoke-virtual/range {v18 .. v23}, Lcom/sun/prism/impl/ps/BaseShaderContext;->validateTextureOp(Lcom/sun/prism/impl/ps/BaseShaderGraphics;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/Texture;Lcom/sun/prism/Texture;Lcom/sun/prism/PixelFormat;)Lcom/sun/prism/ps/Shader;

    move-result-object v18

    .line 305
    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sun/prism/impl/ps/BaseShaderContext;->getVertexBuffer()Lcom/sun/prism/impl/VertexBuffer;

    move-result-object v18

    move-object/from16 v17, v18

    .line 306
    .local v17, "vb":Lcom/sun/prism/impl/VertexBuffer;
    move-object/from16 v18, v17

    move/from16 v19, v4

    move/from16 v20, v5

    move/from16 v21, v6

    move/from16 v22, v7

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v25, v10

    move/from16 v26, v11

    move/from16 v27, v12

    move/from16 v28, v13

    move/from16 v29, v14

    move/from16 v30, v15

    invoke-virtual/range {v18 .. v30}, Lcom/sun/prism/impl/VertexBuffer;->addQuad(FFFFFFFFFFFF)V

    .line 309
    return-void
.end method

.method public fillEllipse(FFFF)V
    .locals 16

    .prologue
    .line 1512
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    move/from16 v1, p1

    .local v1, "x":F
    move/from16 v2, p2

    .local v2, "y":F
    move/from16 v3, p3

    .local v3, "w":F
    move/from16 v4, p4

    .local v4, "h":F
    move v5, v3

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-lez v5, :cond_0

    move v5, v4

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_1

    .line 1513
    .line 1536
    :cond_0
    :goto_0
    return-void

    .line 1515
    :cond_1
    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->isComplexPaint:Z

    if-eqz v5, :cond_2

    .line 1516
    sget-object v5, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->scratchEllipse:Lcom/sun/javafx/geom/Ellipse2D;

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sun/javafx/geom/Ellipse2D;->setFrame(FFFF)V

    .line 1517
    move-object v5, v0

    sget-object v6, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->scratchEllipse:Lcom/sun/javafx/geom/Ellipse2D;

    const/4 v7, 0x0

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    invoke-direct/range {v5 .. v11}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->renderWithComplexPaint(Lcom/sun/javafx/geom/Shape;Lcom/sun/prism/BasicStroke;FFFF)V

    .line 1518
    goto :goto_0

    .line 1520
    :cond_2
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->isAntialiasedShape()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1521
    sget-object v5, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->scratchEllipse:Lcom/sun/javafx/geom/Ellipse2D;

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sun/javafx/geom/Ellipse2D;->setFrame(FFFF)V

    .line 1522
    move-object v5, v0

    sget-object v6, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->scratchEllipse:Lcom/sun/javafx/geom/Ellipse2D;

    const/4 v7, 0x0

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    invoke-virtual/range {v5 .. v11}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->renderShape(Lcom/sun/javafx/geom/Shape;Lcom/sun/prism/BasicStroke;FFFF)V

    .line 1523
    goto :goto_0

    .line 1525
    :cond_3
    sget v5, Lcom/sun/prism/impl/PrismSettings;->primTextureSize:I

    if-eqz v5, :cond_4

    .line 1526
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    .line 1527
    invoke-virtual {v10}, Lcom/sun/prism/impl/ps/BaseShaderContext;->getOvalTexture()Lcom/sun/prism/Texture;

    move-result-object v10

    const/4 v11, 0x0

    move v12, v1

    move v13, v2

    move v14, v3

    move v15, v4

    .line 1526
    invoke-virtual/range {v5 .. v15}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->fillPrimRect(FFFFLcom/sun/prism/Texture;Lcom/sun/prism/Texture;FFFF)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1531
    goto :goto_0

    .line 1534
    :cond_4
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    move v10, v3

    move v11, v4

    sget-object v12, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->FILL_ELLIPSE:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    const/4 v13, 0x0

    invoke-direct/range {v5 .. v13}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->renderGeneralRoundedRect(FFFFFFLcom/sun/prism/impl/ps/BaseShaderContext$MaskType;Lcom/sun/prism/BasicStroke;)V

    .line 1536
    goto :goto_0
.end method

.method fillPrimRect(FFFFLcom/sun/prism/Texture;Lcom/sun/prism/Texture;FFFF)Z
    .locals 85

    .prologue
    .line 940
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    move/from16 v3, p1

    .local v3, "x":F
    move/from16 v4, p2

    .local v4, "y":F
    move/from16 v5, p3

    .local v5, "w":F
    move/from16 v6, p4

    .local v6, "h":F
    move-object/from16 v7, p5

    .local v7, "rectTex":Lcom/sun/prism/Texture;
    move-object/from16 v8, p6

    .local v8, "wrapTex":Lcom/sun/prism/Texture;
    move/from16 v9, p7

    .local v9, "bx":F
    move/from16 v10, p8

    .local v10, "by":F
    move/from16 v11, p9

    .local v11, "bw":F
    move/from16 v12, p10

    .local v12, "bh":F
    move-object/from16 v62, v2

    invoke-virtual/range {v62 .. v62}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->getTransformNoClone()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v62

    move-object/from16 v13, v62

    .line 941
    .local v13, "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v62, v13

    invoke-virtual/range {v62 .. v62}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxx()D

    move-result-wide v62

    move-wide/from16 v0, v62

    double-to-float v0, v0

    move/from16 v62, v0

    move/from16 v14, v62

    .line 942
    .local v14, "mxx":F
    move-object/from16 v62, v13

    invoke-virtual/range {v62 .. v62}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxy()D

    move-result-wide v62

    move-wide/from16 v0, v62

    double-to-float v0, v0

    move/from16 v62, v0

    move/from16 v15, v62

    .line 943
    .local v15, "mxy":F
    move-object/from16 v62, v13

    invoke-virtual/range {v62 .. v62}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxt()D

    move-result-wide v62

    move-wide/from16 v0, v62

    double-to-float v0, v0

    move/from16 v62, v0

    move/from16 v16, v62

    .line 944
    .local v16, "mxt":F
    move-object/from16 v62, v13

    invoke-virtual/range {v62 .. v62}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyx()D

    move-result-wide v62

    move-wide/from16 v0, v62

    double-to-float v0, v0

    move/from16 v62, v0

    move/from16 v17, v62

    .line 945
    .local v17, "myx":F
    move-object/from16 v62, v13

    invoke-virtual/range {v62 .. v62}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyy()D

    move-result-wide v62

    move-wide/from16 v0, v62

    double-to-float v0, v0

    move/from16 v62, v0

    move/from16 v18, v62

    .line 946
    .local v18, "myy":F
    move-object/from16 v62, v13

    invoke-virtual/range {v62 .. v62}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyt()D

    move-result-wide v62

    move-wide/from16 v0, v62

    double-to-float v0, v0

    move/from16 v62, v0

    move/from16 v19, v62

    .line 947
    .local v19, "myt":F
    move/from16 v62, v14

    move/from16 v63, v17

    invoke-static/range {v62 .. v63}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->len(FF)F

    move-result v62

    move/from16 v20, v62

    .line 948
    .local v20, "dxdist":F
    move/from16 v62, v15

    move/from16 v63, v18

    invoke-static/range {v62 .. v63}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->len(FF)F

    move-result v62

    move/from16 v21, v62

    .line 949
    .local v21, "dydist":F
    move/from16 v62, v20

    const/16 v63, 0x0

    cmpl-float v62, v62, v63

    if-eqz v62, :cond_0

    move/from16 v62, v21

    const/16 v63, 0x0

    cmpl-float v62, v62, v63

    if-nez v62, :cond_1

    .line 951
    :cond_0
    const/16 v62, 0x1

    move/from16 v2, v62

    .line 1124
    .end local v2    # "this":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    :goto_0
    return v2

    .line 953
    .restart local v2    # "this":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    :cond_1
    const/high16 v62, 0x3f800000    # 1.0f

    move/from16 v63, v20

    div-float v62, v62, v63

    move/from16 v22, v62

    .line 954
    .local v22, "pixelw":F
    const/high16 v62, 0x3f800000    # 1.0f

    move/from16 v63, v21

    div-float v62, v62, v63

    move/from16 v23, v62

    .line 955
    .local v23, "pixelh":F
    move/from16 v62, v3

    move/from16 v63, v22

    const/high16 v64, 0x3f000000    # 0.5f

    mul-float v63, v63, v64

    sub-float v62, v62, v63

    move/from16 v24, v62

    .line 956
    .local v24, "x0":F
    move/from16 v62, v4

    move/from16 v63, v23

    const/high16 v64, 0x3f000000    # 0.5f

    mul-float v63, v63, v64

    sub-float v62, v62, v63

    move/from16 v25, v62

    .line 957
    .local v25, "y0":F
    move/from16 v62, v3

    move/from16 v63, v5

    add-float v62, v62, v63

    move/from16 v63, v22

    const/high16 v64, 0x3f000000    # 0.5f

    mul-float v63, v63, v64

    add-float v62, v62, v63

    move/from16 v26, v62

    .line 958
    .local v26, "x1":F
    move/from16 v62, v4

    move/from16 v63, v6

    add-float v62, v62, v63

    move/from16 v63, v23

    const/high16 v64, 0x3f000000    # 0.5f

    mul-float v63, v63, v64

    add-float v62, v62, v63

    move/from16 v27, v62

    .line 959
    .local v27, "y1":F
    move/from16 v62, v5

    move/from16 v63, v20

    mul-float v62, v62, v63

    const/high16 v63, 0x3b000000    # 0.001953125f

    sub-float v62, v62, v63

    move/from16 v0, v62

    float-to-double v0, v0

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v62

    move-wide/from16 v0, v62

    double-to-int v0, v0

    move/from16 v62, v0

    move/from16 v28, v62

    .line 960
    .local v28, "cellw":I
    move/from16 v62, v6

    move/from16 v63, v21

    mul-float v62, v62, v63

    const/high16 v63, 0x3b000000    # 0.001953125f

    sub-float v62, v62, v63

    move/from16 v0, v62

    float-to-double v0, v0

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v62

    move-wide/from16 v0, v62

    double-to-int v0, v0

    move/from16 v62, v0

    move/from16 v29, v62

    .line 961
    .local v29, "cellh":I
    move-object/from16 v62, v2

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    move-object/from16 v62, v0

    invoke-virtual/range {v62 .. v62}, Lcom/sun/prism/impl/ps/BaseShaderContext;->getVertexBuffer()Lcom/sun/prism/impl/VertexBuffer;

    move-result-object v62

    move-object/from16 v30, v62

    .line 962
    .local v30, "vb":Lcom/sun/prism/impl/VertexBuffer;
    move-object/from16 v62, v2

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    move-object/from16 v62, v0

    invoke-virtual/range {v62 .. v62}, Lcom/sun/prism/impl/ps/BaseShaderContext;->getRectTextureMaxSize()I

    move-result v62

    move/from16 v31, v62

    .line 963
    .local v31, "max":I
    move/from16 v62, v28

    move/from16 v63, v31

    move/from16 v0, v62

    move/from16 v1, v63

    if-gt v0, v1, :cond_6

    move/from16 v62, v29

    move/from16 v63, v31

    move/from16 v0, v62

    move/from16 v1, v63

    if-gt v0, v1, :cond_6

    .line 964
    move/from16 v62, v28

    move/from16 v63, v28

    const/16 v64, 0x1

    add-int/lit8 v63, v63, 0x1

    mul-int v62, v62, v63

    const/16 v63, 0x2

    div-int/lit8 v62, v62, 0x2

    move/from16 v0, v62

    int-to-float v0, v0

    move/from16 v62, v0

    const/high16 v63, 0x3f000000    # 0.5f

    sub-float v62, v62, v63

    move/from16 v32, v62

    .line 965
    .local v32, "u0":F
    move/from16 v62, v29

    move/from16 v63, v29

    const/16 v64, 0x1

    add-int/lit8 v63, v63, 0x1

    mul-int v62, v62, v63

    const/16 v63, 0x2

    div-int/lit8 v62, v62, 0x2

    move/from16 v0, v62

    int-to-float v0, v0

    move/from16 v62, v0

    const/high16 v63, 0x3f000000    # 0.5f

    sub-float v62, v62, v63

    move/from16 v33, v62

    .line 966
    .local v33, "v0":F
    move/from16 v62, v32

    move/from16 v63, v28

    move/from16 v0, v63

    int-to-float v0, v0

    move/from16 v63, v0

    add-float v62, v62, v63

    const/high16 v63, 0x3f800000    # 1.0f

    add-float v62, v62, v63

    move/from16 v34, v62

    .line 967
    .local v34, "u1":F
    move/from16 v62, v33

    move/from16 v63, v29

    move/from16 v0, v63

    int-to-float v0, v0

    move/from16 v63, v0

    add-float v62, v62, v63

    const/high16 v63, 0x3f800000    # 1.0f

    add-float v62, v62, v63

    move/from16 v35, v62

    .line 968
    .local v35, "v1":F
    move/from16 v62, v32

    move-object/from16 v63, v7

    invoke-interface/range {v63 .. v63}, Lcom/sun/prism/Texture;->getPhysicalWidth()I

    move-result v63

    move/from16 v0, v63

    int-to-float v0, v0

    move/from16 v63, v0

    div-float v62, v62, v63

    move/from16 v32, v62

    .line 969
    move/from16 v62, v33

    move-object/from16 v63, v7

    invoke-interface/range {v63 .. v63}, Lcom/sun/prism/Texture;->getPhysicalHeight()I

    move-result v63

    move/from16 v0, v63

    int-to-float v0, v0

    move/from16 v63, v0

    div-float v62, v62, v63

    move/from16 v33, v62

    .line 970
    move/from16 v62, v34

    move-object/from16 v63, v7

    invoke-interface/range {v63 .. v63}, Lcom/sun/prism/Texture;->getPhysicalWidth()I

    move-result v63

    move/from16 v0, v63

    int-to-float v0, v0

    move/from16 v63, v0

    div-float v62, v62, v63

    move/from16 v34, v62

    .line 971
    move/from16 v62, v35

    move-object/from16 v63, v7

    invoke-interface/range {v63 .. v63}, Lcom/sun/prism/Texture;->getPhysicalHeight()I

    move-result v63

    move/from16 v0, v63

    int-to-float v0, v0

    move/from16 v63, v0

    div-float v62, v62, v63

    move/from16 v35, v62

    .line 972
    move-object/from16 v62, v13

    invoke-virtual/range {v62 .. v62}, Lcom/sun/javafx/geom/transform/BaseTransform;->isTranslateOrIdentity()Z

    move-result v62

    if-eqz v62, :cond_2

    .line 973
    move/from16 v62, v24

    move/from16 v63, v16

    add-float v62, v62, v63

    move/from16 v24, v62

    .line 974
    move/from16 v62, v25

    move/from16 v63, v19

    add-float v62, v62, v63

    move/from16 v25, v62

    .line 975
    move/from16 v62, v26

    move/from16 v63, v16

    add-float v62, v62, v63

    move/from16 v26, v62

    .line 976
    move/from16 v62, v27

    move/from16 v63, v19

    add-float v62, v62, v63

    move/from16 v27, v62

    .line 977
    sget-object v62, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->IDENT:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v13, v62

    .line 1002
    :goto_1
    move-object/from16 v62, v2

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    move-object/from16 v62, v0

    move-object/from16 v63, v2

    move-object/from16 v64, v13

    sget-object v65, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->ALPHA_TEXTURE:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    move-object/from16 v66, v7

    move/from16 v67, v9

    move/from16 v68, v10

    move/from16 v69, v11

    move/from16 v70, v12

    .line 1003
    invoke-virtual/range {v62 .. v70}, Lcom/sun/prism/impl/ps/BaseShaderContext;->validatePaintOp(Lcom/sun/prism/impl/ps/BaseShaderGraphics;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;Lcom/sun/prism/Texture;FFFF)Lcom/sun/prism/ps/Shader;

    move-result-object v62

    move-object/from16 v36, v62

    .line 1005
    .local v36, "shader":Lcom/sun/prism/ps/Shader;
    move-object/from16 v62, v2

    sget-object v63, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->IDENT:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v64, v36

    move/from16 v65, v9

    move/from16 v66, v10

    move/from16 v67, v11

    move/from16 v68, v12

    invoke-virtual/range {v62 .. v68}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->getPaintTextureTx(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/ps/Shader;FFFF)Lcom/sun/javafx/geom/transform/AffineBase;

    move-result-object v62

    move-object/from16 v37, v62

    .line 1006
    .local v37, "paintTx":Lcom/sun/javafx/geom/transform/AffineBase;
    move-object/from16 v62, v37

    if-nez v62, :cond_5

    .line 1007
    move-object/from16 v62, v30

    move/from16 v63, v24

    move/from16 v64, v25

    move/from16 v65, v26

    move/from16 v66, v27

    move/from16 v67, v32

    move/from16 v68, v33

    move/from16 v69, v34

    move/from16 v70, v35

    invoke-virtual/range {v62 .. v70}, Lcom/sun/prism/impl/VertexBuffer;->addQuad(FFFFFFFF)V

    .line 1015
    :goto_2
    const/16 v62, 0x1

    move/from16 v2, v62

    goto/16 :goto_0

    .line 978
    .end local v36    # "shader":Lcom/sun/prism/ps/Shader;
    .end local v37    # "paintTx":Lcom/sun/javafx/geom/transform/AffineBase;
    :cond_2
    move-object/from16 v62, v13

    invoke-virtual/range {v62 .. v62}, Lcom/sun/javafx/geom/transform/BaseTransform;->is2D()Z

    move-result v62

    if-eqz v62, :cond_4

    .line 979
    move-object/from16 v62, v2

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    move-object/from16 v62, v0

    move-object/from16 v63, v2

    sget-object v64, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->IDENT:Lcom/sun/javafx/geom/transform/BaseTransform;

    sget-object v65, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->ALPHA_TEXTURE:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    move-object/from16 v66, v7

    move/from16 v67, v9

    move/from16 v68, v10

    move/from16 v69, v11

    move/from16 v70, v12

    .line 980
    invoke-virtual/range {v62 .. v70}, Lcom/sun/prism/impl/ps/BaseShaderContext;->validatePaintOp(Lcom/sun/prism/impl/ps/BaseShaderGraphics;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;Lcom/sun/prism/Texture;FFFF)Lcom/sun/prism/ps/Shader;

    move-result-object v62

    move-object/from16 v36, v62

    .line 982
    .restart local v36    # "shader":Lcom/sun/prism/ps/Shader;
    move-object/from16 v62, v2

    sget-object v63, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->IDENT:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v64, v36

    move/from16 v65, v9

    move/from16 v66, v10

    move/from16 v67, v11

    move/from16 v68, v12

    invoke-virtual/range {v62 .. v68}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->getPaintTextureTx(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/ps/Shader;FFFF)Lcom/sun/javafx/geom/transform/AffineBase;

    move-result-object v62

    move-object/from16 v37, v62

    .line 983
    .restart local v37    # "paintTx":Lcom/sun/javafx/geom/transform/AffineBase;
    move-object/from16 v62, v37

    if-nez v62, :cond_3

    .line 984
    move-object/from16 v62, v30

    move/from16 v63, v24

    move/from16 v64, v14

    mul-float v63, v63, v64

    move/from16 v64, v25

    move/from16 v65, v15

    mul-float v64, v64, v65

    add-float v63, v63, v64

    move/from16 v64, v16

    add-float v63, v63, v64

    move/from16 v64, v24

    move/from16 v65, v17

    mul-float v64, v64, v65

    move/from16 v65, v25

    move/from16 v66, v18

    mul-float v65, v65, v66

    add-float v64, v64, v65

    move/from16 v65, v19

    add-float v64, v64, v65

    move/from16 v65, v26

    move/from16 v66, v14

    mul-float v65, v65, v66

    move/from16 v66, v25

    move/from16 v67, v15

    mul-float v66, v66, v67

    add-float v65, v65, v66

    move/from16 v66, v16

    add-float v65, v65, v66

    move/from16 v66, v26

    move/from16 v67, v17

    mul-float v66, v66, v67

    move/from16 v67, v25

    move/from16 v68, v18

    mul-float v67, v67, v68

    add-float v66, v66, v67

    move/from16 v67, v19

    add-float v66, v66, v67

    move/from16 v67, v24

    move/from16 v68, v14

    mul-float v67, v67, v68

    move/from16 v68, v27

    move/from16 v69, v15

    mul-float v68, v68, v69

    add-float v67, v67, v68

    move/from16 v68, v16

    add-float v67, v67, v68

    move/from16 v68, v24

    move/from16 v69, v17

    mul-float v68, v68, v69

    move/from16 v69, v27

    move/from16 v70, v18

    mul-float v69, v69, v70

    add-float v68, v68, v69

    move/from16 v69, v19

    add-float v68, v68, v69

    move/from16 v69, v26

    move/from16 v70, v14

    mul-float v69, v69, v70

    move/from16 v70, v27

    move/from16 v71, v15

    mul-float v70, v70, v71

    add-float v69, v69, v70

    move/from16 v70, v16

    add-float v69, v69, v70

    move/from16 v70, v26

    move/from16 v71, v17

    mul-float v70, v70, v71

    move/from16 v71, v27

    move/from16 v72, v18

    mul-float v71, v71, v72

    add-float v70, v70, v71

    move/from16 v71, v19

    add-float v70, v70, v71

    move/from16 v71, v32

    move/from16 v72, v33

    move/from16 v73, v34

    move/from16 v74, v33

    move/from16 v75, v32

    move/from16 v76, v35

    move/from16 v77, v34

    move/from16 v78, v35

    const/16 v79, 0x0

    const/16 v80, 0x0

    invoke-virtual/range {v62 .. v80}, Lcom/sun/prism/impl/VertexBuffer;->addMappedPgram(FFFFFFFFFFFFFFFFFF)V

    .line 997
    :goto_3
    const/16 v62, 0x1

    move/from16 v2, v62

    goto/16 :goto_0

    .line 990
    :cond_3
    move-object/from16 v62, v30

    move/from16 v63, v24

    move/from16 v64, v14

    mul-float v63, v63, v64

    move/from16 v64, v25

    move/from16 v65, v15

    mul-float v64, v64, v65

    add-float v63, v63, v64

    move/from16 v64, v16

    add-float v63, v63, v64

    move/from16 v64, v24

    move/from16 v65, v17

    mul-float v64, v64, v65

    move/from16 v65, v25

    move/from16 v66, v18

    mul-float v65, v65, v66

    add-float v64, v64, v65

    move/from16 v65, v19

    add-float v64, v64, v65

    move/from16 v65, v26

    move/from16 v66, v14

    mul-float v65, v65, v66

    move/from16 v66, v25

    move/from16 v67, v15

    mul-float v66, v66, v67

    add-float v65, v65, v66

    move/from16 v66, v16

    add-float v65, v65, v66

    move/from16 v66, v26

    move/from16 v67, v17

    mul-float v66, v66, v67

    move/from16 v67, v25

    move/from16 v68, v18

    mul-float v67, v67, v68

    add-float v66, v66, v67

    move/from16 v67, v19

    add-float v66, v66, v67

    move/from16 v67, v24

    move/from16 v68, v14

    mul-float v67, v67, v68

    move/from16 v68, v27

    move/from16 v69, v15

    mul-float v68, v68, v69

    add-float v67, v67, v68

    move/from16 v68, v16

    add-float v67, v67, v68

    move/from16 v68, v24

    move/from16 v69, v17

    mul-float v68, v68, v69

    move/from16 v69, v27

    move/from16 v70, v18

    mul-float v69, v69, v70

    add-float v68, v68, v69

    move/from16 v69, v19

    add-float v68, v68, v69

    move/from16 v69, v26

    move/from16 v70, v14

    mul-float v69, v69, v70

    move/from16 v70, v27

    move/from16 v71, v15

    mul-float v70, v70, v71

    add-float v69, v69, v70

    move/from16 v70, v16

    add-float v69, v69, v70

    move/from16 v70, v26

    move/from16 v71, v17

    mul-float v70, v70, v71

    move/from16 v71, v27

    move/from16 v72, v18

    mul-float v71, v71, v72

    add-float v70, v70, v71

    move/from16 v71, v19

    add-float v70, v70, v71

    move/from16 v71, v32

    move/from16 v72, v33

    move/from16 v73, v34

    move/from16 v74, v33

    move/from16 v75, v32

    move/from16 v76, v35

    move/from16 v77, v34

    move/from16 v78, v35

    move/from16 v79, v24

    move/from16 v80, v25

    move/from16 v81, v26

    move/from16 v82, v27

    move-object/from16 v83, v37

    invoke-virtual/range {v62 .. v83}, Lcom/sun/prism/impl/VertexBuffer;->addMappedPgram(FFFFFFFFFFFFFFFFFFFFLcom/sun/javafx/geom/transform/AffineBase;)V

    goto/16 :goto_3

    .line 999
    .end local v36    # "shader":Lcom/sun/prism/ps/Shader;
    .end local v37    # "paintTx":Lcom/sun/javafx/geom/transform/AffineBase;
    :cond_4
    sget-object v62, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v63, "Not a 2d transform!"

    invoke-virtual/range {v62 .. v63}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1000
    const/16 v62, 0x0

    move/from16 v84, v62

    move/from16 v62, v84

    move/from16 v63, v84

    move/from16 v19, v63

    move/from16 v16, v62

    goto/16 :goto_1

    .line 1010
    .restart local v36    # "shader":Lcom/sun/prism/ps/Shader;
    .restart local v37    # "paintTx":Lcom/sun/javafx/geom/transform/AffineBase;
    :cond_5
    move-object/from16 v62, v37

    move/from16 v63, v16

    move/from16 v0, v63

    neg-float v0, v0

    move/from16 v63, v0

    move/from16 v0, v63

    float-to-double v0, v0

    move-wide/from16 v63, v0

    move/from16 v65, v19

    move/from16 v0, v65

    neg-float v0, v0

    move/from16 v65, v0

    move/from16 v0, v65

    float-to-double v0, v0

    move-wide/from16 v65, v0

    invoke-virtual/range {v62 .. v66}, Lcom/sun/javafx/geom/transform/AffineBase;->translate(DD)V

    .line 1011
    move-object/from16 v62, v30

    move/from16 v63, v24

    move/from16 v64, v25

    move/from16 v65, v26

    move/from16 v66, v27

    move/from16 v67, v32

    move/from16 v68, v33

    move/from16 v69, v34

    move/from16 v70, v35

    move-object/from16 v71, v37

    invoke-virtual/range {v62 .. v71}, Lcom/sun/prism/impl/VertexBuffer;->addQuad(FFFFFFFFLcom/sun/javafx/geom/transform/AffineBase;)V

    goto/16 :goto_2

    .line 1017
    .end local v32    # "u0":F
    .end local v33    # "v0":F
    .end local v34    # "u1":F
    .end local v35    # "v1":F
    .end local v36    # "shader":Lcom/sun/prism/ps/Shader;
    .end local v37    # "paintTx":Lcom/sun/javafx/geom/transform/AffineBase;
    :cond_6
    move-object/from16 v62, v8

    if-nez v62, :cond_7

    .line 1018
    const/16 v62, 0x0

    move/from16 v2, v62

    goto/16 :goto_0

    .line 1020
    :cond_7
    const/high16 v62, 0x3f000000    # 0.5f

    move-object/from16 v63, v8

    invoke-interface/range {v63 .. v63}, Lcom/sun/prism/Texture;->getPhysicalWidth()I

    move-result v63

    move/from16 v0, v63

    int-to-float v0, v0

    move/from16 v63, v0

    div-float v62, v62, v63

    move/from16 v32, v62

    .line 1021
    .restart local v32    # "u0":F
    const/high16 v62, 0x3f000000    # 0.5f

    move-object/from16 v63, v8

    invoke-interface/range {v63 .. v63}, Lcom/sun/prism/Texture;->getPhysicalHeight()I

    move-result v63

    move/from16 v0, v63

    int-to-float v0, v0

    move/from16 v63, v0

    div-float v62, v62, v63

    move/from16 v33, v62

    .line 1022
    .restart local v33    # "v0":F
    move/from16 v62, v28

    move/from16 v0, v62

    int-to-float v0, v0

    move/from16 v62, v0

    const/high16 v63, 0x3f000000    # 0.5f

    mul-float v62, v62, v63

    const/high16 v63, 0x3f800000    # 1.0f

    add-float v62, v62, v63

    move-object/from16 v63, v8

    invoke-interface/range {v63 .. v63}, Lcom/sun/prism/Texture;->getPhysicalWidth()I

    move-result v63

    move/from16 v0, v63

    int-to-float v0, v0

    move/from16 v63, v0

    div-float v62, v62, v63

    move/from16 v34, v62

    .line 1023
    .local v34, "uc":F
    move/from16 v62, v29

    move/from16 v0, v62

    int-to-float v0, v0

    move/from16 v62, v0

    const/high16 v63, 0x3f000000    # 0.5f

    mul-float v62, v62, v63

    const/high16 v63, 0x3f800000    # 1.0f

    add-float v62, v62, v63

    move-object/from16 v63, v8

    invoke-interface/range {v63 .. v63}, Lcom/sun/prism/Texture;->getPhysicalHeight()I

    move-result v63

    move/from16 v0, v63

    int-to-float v0, v0

    move/from16 v63, v0

    div-float v62, v62, v63

    move/from16 v35, v62

    .line 1024
    .local v35, "vc":F
    move/from16 v62, v3

    move/from16 v63, v5

    const/high16 v64, 0x3f000000    # 0.5f

    mul-float v63, v63, v64

    add-float v62, v62, v63

    move/from16 v36, v62

    .line 1025
    .local v36, "xc":F
    move/from16 v62, v4

    move/from16 v63, v6

    const/high16 v64, 0x3f000000    # 0.5f

    mul-float v63, v63, v64

    add-float v62, v62, v63

    move/from16 v37, v62

    .line 1026
    .local v37, "yc":F
    move-object/from16 v62, v13

    invoke-virtual/range {v62 .. v62}, Lcom/sun/javafx/geom/transform/BaseTransform;->isTranslateOrIdentity()Z

    move-result v62

    if-eqz v62, :cond_9

    .line 1027
    move/from16 v62, v24

    move/from16 v63, v16

    add-float v62, v62, v63

    move/from16 v24, v62

    .line 1028
    move/from16 v62, v25

    move/from16 v63, v19

    add-float v62, v62, v63

    move/from16 v25, v62

    .line 1029
    move/from16 v62, v36

    move/from16 v63, v16

    add-float v62, v62, v63

    move/from16 v36, v62

    .line 1030
    move/from16 v62, v37

    move/from16 v63, v19

    add-float v62, v62, v63

    move/from16 v37, v62

    .line 1031
    move/from16 v62, v26

    move/from16 v63, v16

    add-float v62, v62, v63

    move/from16 v26, v62

    .line 1032
    move/from16 v62, v27

    move/from16 v63, v19

    add-float v62, v62, v63

    move/from16 v27, v62

    .line 1033
    sget-object v62, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->IDENT:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v13, v62

    .line 1105
    :goto_4
    move-object/from16 v62, v2

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    move-object/from16 v62, v0

    move-object/from16 v63, v2

    move-object/from16 v64, v13

    sget-object v65, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->ALPHA_TEXTURE:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    move-object/from16 v66, v8

    move/from16 v67, v9

    move/from16 v68, v10

    move/from16 v69, v11

    move/from16 v70, v12

    .line 1106
    invoke-virtual/range {v62 .. v70}, Lcom/sun/prism/impl/ps/BaseShaderContext;->validatePaintOp(Lcom/sun/prism/impl/ps/BaseShaderGraphics;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;Lcom/sun/prism/Texture;FFFF)Lcom/sun/prism/ps/Shader;

    move-result-object v62

    move-object/from16 v38, v62

    .line 1108
    .local v38, "shader":Lcom/sun/prism/ps/Shader;
    move-object/from16 v62, v2

    sget-object v63, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->IDENT:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v64, v38

    move/from16 v65, v9

    move/from16 v66, v10

    move/from16 v67, v11

    move/from16 v68, v12

    invoke-virtual/range {v62 .. v68}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->getPaintTextureTx(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/ps/Shader;FFFF)Lcom/sun/javafx/geom/transform/AffineBase;

    move-result-object v62

    move-object/from16 v39, v62

    .line 1109
    .local v39, "paintTx":Lcom/sun/javafx/geom/transform/AffineBase;
    move-object/from16 v62, v39

    if-eqz v62, :cond_8

    .line 1110
    move-object/from16 v62, v39

    move/from16 v63, v16

    move/from16 v0, v63

    neg-float v0, v0

    move/from16 v63, v0

    move/from16 v0, v63

    float-to-double v0, v0

    move-wide/from16 v63, v0

    move/from16 v65, v19

    move/from16 v0, v65

    neg-float v0, v0

    move/from16 v65, v0

    move/from16 v0, v65

    float-to-double v0, v0

    move-wide/from16 v65, v0

    invoke-virtual/range {v62 .. v66}, Lcom/sun/javafx/geom/transform/AffineBase;->translate(DD)V

    .line 1112
    :cond_8
    move-object/from16 v62, v30

    move/from16 v63, v24

    move/from16 v64, v25

    move/from16 v65, v36

    move/from16 v66, v37

    move/from16 v67, v32

    move/from16 v68, v33

    move/from16 v69, v34

    move/from16 v70, v35

    move-object/from16 v71, v39

    invoke-virtual/range {v62 .. v71}, Lcom/sun/prism/impl/VertexBuffer;->addQuad(FFFFFFFFLcom/sun/javafx/geom/transform/AffineBase;)V

    .line 1115
    move-object/from16 v62, v30

    move/from16 v63, v26

    move/from16 v64, v25

    move/from16 v65, v36

    move/from16 v66, v37

    move/from16 v67, v32

    move/from16 v68, v33

    move/from16 v69, v34

    move/from16 v70, v35

    move-object/from16 v71, v39

    invoke-virtual/range {v62 .. v71}, Lcom/sun/prism/impl/VertexBuffer;->addQuad(FFFFFFFFLcom/sun/javafx/geom/transform/AffineBase;)V

    .line 1118
    move-object/from16 v62, v30

    move/from16 v63, v24

    move/from16 v64, v27

    move/from16 v65, v36

    move/from16 v66, v37

    move/from16 v67, v32

    move/from16 v68, v33

    move/from16 v69, v34

    move/from16 v70, v35

    move-object/from16 v71, v39

    invoke-virtual/range {v62 .. v71}, Lcom/sun/prism/impl/VertexBuffer;->addQuad(FFFFFFFFLcom/sun/javafx/geom/transform/AffineBase;)V

    .line 1121
    move-object/from16 v62, v30

    move/from16 v63, v26

    move/from16 v64, v27

    move/from16 v65, v36

    move/from16 v66, v37

    move/from16 v67, v32

    move/from16 v68, v33

    move/from16 v69, v34

    move/from16 v70, v35

    move-object/from16 v71, v39

    invoke-virtual/range {v62 .. v71}, Lcom/sun/prism/impl/VertexBuffer;->addQuad(FFFFFFFFLcom/sun/javafx/geom/transform/AffineBase;)V

    .line 1124
    const/16 v62, 0x1

    move/from16 v2, v62

    goto/16 :goto_0

    .line 1034
    .end local v38    # "shader":Lcom/sun/prism/ps/Shader;
    .end local v39    # "paintTx":Lcom/sun/javafx/geom/transform/AffineBase;
    :cond_9
    move-object/from16 v62, v13

    invoke-virtual/range {v62 .. v62}, Lcom/sun/javafx/geom/transform/BaseTransform;->is2D()Z

    move-result v62

    if-eqz v62, :cond_b

    .line 1035
    move-object/from16 v62, v2

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    move-object/from16 v62, v0

    move-object/from16 v63, v2

    sget-object v64, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->IDENT:Lcom/sun/javafx/geom/transform/BaseTransform;

    sget-object v65, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->ALPHA_TEXTURE:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    move-object/from16 v66, v8

    move/from16 v67, v9

    move/from16 v68, v10

    move/from16 v69, v11

    move/from16 v70, v12

    .line 1036
    invoke-virtual/range {v62 .. v70}, Lcom/sun/prism/impl/ps/BaseShaderContext;->validatePaintOp(Lcom/sun/prism/impl/ps/BaseShaderGraphics;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;Lcom/sun/prism/Texture;FFFF)Lcom/sun/prism/ps/Shader;

    move-result-object v62

    move-object/from16 v38, v62

    .line 1038
    .restart local v38    # "shader":Lcom/sun/prism/ps/Shader;
    move-object/from16 v62, v2

    sget-object v63, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->IDENT:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v64, v38

    move/from16 v65, v9

    move/from16 v66, v10

    move/from16 v67, v11

    move/from16 v68, v12

    invoke-virtual/range {v62 .. v68}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->getPaintTextureTx(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/ps/Shader;FFFF)Lcom/sun/javafx/geom/transform/AffineBase;

    move-result-object v62

    move-object/from16 v39, v62

    .line 1039
    .restart local v39    # "paintTx":Lcom/sun/javafx/geom/transform/AffineBase;
    move/from16 v62, v14

    move/from16 v63, v24

    mul-float v62, v62, v63

    move/from16 v40, v62

    .local v40, "mxx_x0":F
    move/from16 v62, v17

    move/from16 v63, v24

    mul-float v62, v62, v63

    move/from16 v41, v62

    .line 1040
    .local v41, "myx_x0":F
    move/from16 v62, v15

    move/from16 v63, v25

    mul-float v62, v62, v63

    move/from16 v42, v62

    .local v42, "mxy_y0":F
    move/from16 v62, v18

    move/from16 v63, v25

    mul-float v62, v62, v63

    move/from16 v43, v62

    .line 1041
    .local v43, "myy_y0":F
    move/from16 v62, v14

    move/from16 v63, v36

    mul-float v62, v62, v63

    move/from16 v44, v62

    .local v44, "mxx_xc":F
    move/from16 v62, v17

    move/from16 v63, v36

    mul-float v62, v62, v63

    move/from16 v45, v62

    .line 1042
    .local v45, "myx_xc":F
    move/from16 v62, v15

    move/from16 v63, v37

    mul-float v62, v62, v63

    move/from16 v46, v62

    .local v46, "mxy_yc":F
    move/from16 v62, v18

    move/from16 v63, v37

    mul-float v62, v62, v63

    move/from16 v47, v62

    .line 1043
    .local v47, "myy_yc":F
    move/from16 v62, v14

    move/from16 v63, v26

    mul-float v62, v62, v63

    move/from16 v48, v62

    .local v48, "mxx_x1":F
    move/from16 v62, v17

    move/from16 v63, v26

    mul-float v62, v62, v63

    move/from16 v49, v62

    .line 1044
    .local v49, "myx_x1":F
    move/from16 v62, v15

    move/from16 v63, v27

    mul-float v62, v62, v63

    move/from16 v50, v62

    .local v50, "mxy_y1":F
    move/from16 v62, v18

    move/from16 v63, v27

    mul-float v62, v62, v63

    move/from16 v51, v62

    .line 1046
    .local v51, "myy_y1":F
    move/from16 v62, v44

    move/from16 v63, v46

    add-float v62, v62, v63

    move/from16 v63, v16

    add-float v62, v62, v63

    move/from16 v52, v62

    .line 1047
    .local v52, "xcc":F
    move/from16 v62, v45

    move/from16 v63, v47

    add-float v62, v62, v63

    move/from16 v63, v19

    add-float v62, v62, v63

    move/from16 v53, v62

    .line 1049
    .local v53, "ycc":F
    move/from16 v62, v44

    move/from16 v63, v42

    add-float v62, v62, v63

    move/from16 v63, v16

    add-float v62, v62, v63

    move/from16 v54, v62

    .line 1050
    .local v54, "xc0":F
    move/from16 v62, v45

    move/from16 v63, v43

    add-float v62, v62, v63

    move/from16 v63, v19

    add-float v62, v62, v63

    move/from16 v55, v62

    .line 1051
    .local v55, "yc0":F
    move/from16 v62, v40

    move/from16 v63, v46

    add-float v62, v62, v63

    move/from16 v63, v16

    add-float v62, v62, v63

    move/from16 v56, v62

    .line 1052
    .local v56, "x0c":F
    move/from16 v62, v41

    move/from16 v63, v47

    add-float v62, v62, v63

    move/from16 v63, v19

    add-float v62, v62, v63

    move/from16 v57, v62

    .line 1053
    .local v57, "y0c":F
    move/from16 v62, v44

    move/from16 v63, v50

    add-float v62, v62, v63

    move/from16 v63, v16

    add-float v62, v62, v63

    move/from16 v58, v62

    .line 1054
    .local v58, "xc1":F
    move/from16 v62, v45

    move/from16 v63, v51

    add-float v62, v62, v63

    move/from16 v63, v19

    add-float v62, v62, v63

    move/from16 v59, v62

    .line 1055
    .local v59, "yc1":F
    move/from16 v62, v48

    move/from16 v63, v46

    add-float v62, v62, v63

    move/from16 v63, v16

    add-float v62, v62, v63

    move/from16 v60, v62

    .line 1056
    .local v60, "x1c":F
    move/from16 v62, v49

    move/from16 v63, v47

    add-float v62, v62, v63

    move/from16 v63, v19

    add-float v62, v62, v63

    move/from16 v61, v62

    .line 1061
    .local v61, "y1c":F
    move-object/from16 v62, v39

    if-nez v62, :cond_a

    .line 1063
    move-object/from16 v62, v30

    move/from16 v63, v24

    move/from16 v64, v14

    mul-float v63, v63, v64

    move/from16 v64, v25

    move/from16 v65, v15

    mul-float v64, v64, v65

    add-float v63, v63, v64

    move/from16 v64, v16

    add-float v63, v63, v64

    move/from16 v64, v24

    move/from16 v65, v17

    mul-float v64, v64, v65

    move/from16 v65, v25

    move/from16 v66, v18

    mul-float v65, v65, v66

    add-float v64, v64, v65

    move/from16 v65, v19

    add-float v64, v64, v65

    move/from16 v65, v54

    move/from16 v66, v55

    move/from16 v67, v56

    move/from16 v68, v57

    move/from16 v69, v52

    move/from16 v70, v53

    move/from16 v71, v32

    move/from16 v72, v33

    move/from16 v73, v34

    move/from16 v74, v33

    move/from16 v75, v32

    move/from16 v76, v35

    move/from16 v77, v34

    move/from16 v78, v35

    const/16 v79, 0x0

    const/16 v80, 0x0

    invoke-virtual/range {v62 .. v80}, Lcom/sun/prism/impl/VertexBuffer;->addMappedPgram(FFFFFFFFFFFFFFFFFF)V

    .line 1067
    move-object/from16 v62, v30

    move/from16 v63, v26

    move/from16 v64, v14

    mul-float v63, v63, v64

    move/from16 v64, v25

    move/from16 v65, v15

    mul-float v64, v64, v65

    add-float v63, v63, v64

    move/from16 v64, v16

    add-float v63, v63, v64

    move/from16 v64, v26

    move/from16 v65, v17

    mul-float v64, v64, v65

    move/from16 v65, v25

    move/from16 v66, v18

    mul-float v65, v65, v66

    add-float v64, v64, v65

    move/from16 v65, v19

    add-float v64, v64, v65

    move/from16 v65, v54

    move/from16 v66, v55

    move/from16 v67, v60

    move/from16 v68, v61

    move/from16 v69, v52

    move/from16 v70, v53

    move/from16 v71, v32

    move/from16 v72, v33

    move/from16 v73, v34

    move/from16 v74, v33

    move/from16 v75, v32

    move/from16 v76, v35

    move/from16 v77, v34

    move/from16 v78, v35

    const/16 v79, 0x0

    const/16 v80, 0x0

    invoke-virtual/range {v62 .. v80}, Lcom/sun/prism/impl/VertexBuffer;->addMappedPgram(FFFFFFFFFFFFFFFFFF)V

    .line 1071
    move-object/from16 v62, v30

    move/from16 v63, v24

    move/from16 v64, v14

    mul-float v63, v63, v64

    move/from16 v64, v27

    move/from16 v65, v15

    mul-float v64, v64, v65

    add-float v63, v63, v64

    move/from16 v64, v16

    add-float v63, v63, v64

    move/from16 v64, v24

    move/from16 v65, v17

    mul-float v64, v64, v65

    move/from16 v65, v27

    move/from16 v66, v18

    mul-float v65, v65, v66

    add-float v64, v64, v65

    move/from16 v65, v19

    add-float v64, v64, v65

    move/from16 v65, v58

    move/from16 v66, v59

    move/from16 v67, v56

    move/from16 v68, v57

    move/from16 v69, v52

    move/from16 v70, v53

    move/from16 v71, v32

    move/from16 v72, v33

    move/from16 v73, v34

    move/from16 v74, v33

    move/from16 v75, v32

    move/from16 v76, v35

    move/from16 v77, v34

    move/from16 v78, v35

    const/16 v79, 0x0

    const/16 v80, 0x0

    invoke-virtual/range {v62 .. v80}, Lcom/sun/prism/impl/VertexBuffer;->addMappedPgram(FFFFFFFFFFFFFFFFFF)V

    .line 1075
    move-object/from16 v62, v30

    move/from16 v63, v26

    move/from16 v64, v14

    mul-float v63, v63, v64

    move/from16 v64, v27

    move/from16 v65, v15

    mul-float v64, v64, v65

    add-float v63, v63, v64

    move/from16 v64, v16

    add-float v63, v63, v64

    move/from16 v64, v26

    move/from16 v65, v17

    mul-float v64, v64, v65

    move/from16 v65, v27

    move/from16 v66, v18

    mul-float v65, v65, v66

    add-float v64, v64, v65

    move/from16 v65, v19

    add-float v64, v64, v65

    move/from16 v65, v58

    move/from16 v66, v59

    move/from16 v67, v60

    move/from16 v68, v61

    move/from16 v69, v52

    move/from16 v70, v53

    move/from16 v71, v32

    move/from16 v72, v33

    move/from16 v73, v34

    move/from16 v74, v33

    move/from16 v75, v32

    move/from16 v76, v35

    move/from16 v77, v34

    move/from16 v78, v35

    const/16 v79, 0x0

    const/16 v80, 0x0

    invoke-virtual/range {v62 .. v80}, Lcom/sun/prism/impl/VertexBuffer;->addMappedPgram(FFFFFFFFFFFFFFFFFF)V

    .line 1100
    :goto_5
    const/16 v62, 0x1

    move/from16 v2, v62

    goto/16 :goto_0

    .line 1080
    :cond_a
    move-object/from16 v62, v30

    move/from16 v63, v24

    move/from16 v64, v14

    mul-float v63, v63, v64

    move/from16 v64, v25

    move/from16 v65, v15

    mul-float v64, v64, v65

    add-float v63, v63, v64

    move/from16 v64, v16

    add-float v63, v63, v64

    move/from16 v64, v24

    move/from16 v65, v17

    mul-float v64, v64, v65

    move/from16 v65, v25

    move/from16 v66, v18

    mul-float v65, v65, v66

    add-float v64, v64, v65

    move/from16 v65, v19

    add-float v64, v64, v65

    move/from16 v65, v54

    move/from16 v66, v55

    move/from16 v67, v56

    move/from16 v68, v57

    move/from16 v69, v52

    move/from16 v70, v53

    move/from16 v71, v32

    move/from16 v72, v33

    move/from16 v73, v34

    move/from16 v74, v33

    move/from16 v75, v32

    move/from16 v76, v35

    move/from16 v77, v34

    move/from16 v78, v35

    move/from16 v79, v24

    move/from16 v80, v25

    move/from16 v81, v36

    move/from16 v82, v37

    move-object/from16 v83, v39

    invoke-virtual/range {v62 .. v83}, Lcom/sun/prism/impl/VertexBuffer;->addMappedPgram(FFFFFFFFFFFFFFFFFFFFLcom/sun/javafx/geom/transform/AffineBase;)V

    .line 1085
    move-object/from16 v62, v30

    move/from16 v63, v26

    move/from16 v64, v14

    mul-float v63, v63, v64

    move/from16 v64, v25

    move/from16 v65, v15

    mul-float v64, v64, v65

    add-float v63, v63, v64

    move/from16 v64, v16

    add-float v63, v63, v64

    move/from16 v64, v26

    move/from16 v65, v17

    mul-float v64, v64, v65

    move/from16 v65, v25

    move/from16 v66, v18

    mul-float v65, v65, v66

    add-float v64, v64, v65

    move/from16 v65, v19

    add-float v64, v64, v65

    move/from16 v65, v54

    move/from16 v66, v55

    move/from16 v67, v60

    move/from16 v68, v61

    move/from16 v69, v52

    move/from16 v70, v53

    move/from16 v71, v32

    move/from16 v72, v33

    move/from16 v73, v34

    move/from16 v74, v33

    move/from16 v75, v32

    move/from16 v76, v35

    move/from16 v77, v34

    move/from16 v78, v35

    move/from16 v79, v26

    move/from16 v80, v25

    move/from16 v81, v36

    move/from16 v82, v37

    move-object/from16 v83, v39

    invoke-virtual/range {v62 .. v83}, Lcom/sun/prism/impl/VertexBuffer;->addMappedPgram(FFFFFFFFFFFFFFFFFFFFLcom/sun/javafx/geom/transform/AffineBase;)V

    .line 1090
    move-object/from16 v62, v30

    move/from16 v63, v24

    move/from16 v64, v14

    mul-float v63, v63, v64

    move/from16 v64, v27

    move/from16 v65, v15

    mul-float v64, v64, v65

    add-float v63, v63, v64

    move/from16 v64, v16

    add-float v63, v63, v64

    move/from16 v64, v24

    move/from16 v65, v17

    mul-float v64, v64, v65

    move/from16 v65, v27

    move/from16 v66, v18

    mul-float v65, v65, v66

    add-float v64, v64, v65

    move/from16 v65, v19

    add-float v64, v64, v65

    move/from16 v65, v58

    move/from16 v66, v59

    move/from16 v67, v56

    move/from16 v68, v57

    move/from16 v69, v52

    move/from16 v70, v53

    move/from16 v71, v32

    move/from16 v72, v33

    move/from16 v73, v34

    move/from16 v74, v33

    move/from16 v75, v32

    move/from16 v76, v35

    move/from16 v77, v34

    move/from16 v78, v35

    move/from16 v79, v24

    move/from16 v80, v27

    move/from16 v81, v36

    move/from16 v82, v37

    move-object/from16 v83, v39

    invoke-virtual/range {v62 .. v83}, Lcom/sun/prism/impl/VertexBuffer;->addMappedPgram(FFFFFFFFFFFFFFFFFFFFLcom/sun/javafx/geom/transform/AffineBase;)V

    .line 1095
    move-object/from16 v62, v30

    move/from16 v63, v26

    move/from16 v64, v14

    mul-float v63, v63, v64

    move/from16 v64, v27

    move/from16 v65, v15

    mul-float v64, v64, v65

    add-float v63, v63, v64

    move/from16 v64, v16

    add-float v63, v63, v64

    move/from16 v64, v26

    move/from16 v65, v17

    mul-float v64, v64, v65

    move/from16 v65, v27

    move/from16 v66, v18

    mul-float v65, v65, v66

    add-float v64, v64, v65

    move/from16 v65, v19

    add-float v64, v64, v65

    move/from16 v65, v58

    move/from16 v66, v59

    move/from16 v67, v60

    move/from16 v68, v61

    move/from16 v69, v52

    move/from16 v70, v53

    move/from16 v71, v32

    move/from16 v72, v33

    move/from16 v73, v34

    move/from16 v74, v33

    move/from16 v75, v32

    move/from16 v76, v35

    move/from16 v77, v34

    move/from16 v78, v35

    move/from16 v79, v26

    move/from16 v80, v27

    move/from16 v81, v36

    move/from16 v82, v37

    move-object/from16 v83, v39

    invoke-virtual/range {v62 .. v83}, Lcom/sun/prism/impl/VertexBuffer;->addMappedPgram(FFFFFFFFFFFFFFFFFFFFLcom/sun/javafx/geom/transform/AffineBase;)V

    goto/16 :goto_5

    .line 1102
    .end local v38    # "shader":Lcom/sun/prism/ps/Shader;
    .end local v39    # "paintTx":Lcom/sun/javafx/geom/transform/AffineBase;
    .end local v40    # "mxx_x0":F
    .end local v41    # "myx_x0":F
    .end local v42    # "mxy_y0":F
    .end local v43    # "myy_y0":F
    .end local v44    # "mxx_xc":F
    .end local v45    # "myx_xc":F
    .end local v46    # "mxy_yc":F
    .end local v47    # "myy_yc":F
    .end local v48    # "mxx_x1":F
    .end local v49    # "myx_x1":F
    .end local v50    # "mxy_y1":F
    .end local v51    # "myy_y1":F
    .end local v52    # "xcc":F
    .end local v53    # "ycc":F
    .end local v54    # "xc0":F
    .end local v55    # "yc0":F
    .end local v56    # "x0c":F
    .end local v57    # "y0c":F
    .end local v58    # "xc1":F
    .end local v59    # "yc1":F
    .end local v60    # "x1c":F
    .end local v61    # "y1c":F
    :cond_b
    sget-object v62, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v63, "Not a 2d transform!"

    invoke-virtual/range {v62 .. v63}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1103
    const/16 v62, 0x0

    move/from16 v84, v62

    move/from16 v62, v84

    move/from16 v63, v84

    move/from16 v19, v63

    move/from16 v16, v62

    goto/16 :goto_4
.end method

.method public fillQuad(FFFF)V
    .locals 27

    .prologue
    .line 1563
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    move/from16 v3, p1

    .local v3, "x1":F
    move/from16 v4, p2

    .local v4, "y1":F
    move/from16 v5, p3

    .local v5, "x2":F
    move/from16 v6, p4

    .local v6, "y2":F
    move/from16 v16, v3

    move/from16 v17, v5

    cmpg-float v16, v16, v17

    if-gtz v16, :cond_0

    .line 1564
    move/from16 v16, v3

    move/from16 v7, v16

    .line 1565
    .local v7, "bx":F
    move/from16 v16, v5

    move/from16 v17, v3

    sub-float v16, v16, v17

    move/from16 v9, v16

    .line 1570
    .local v9, "bw":F
    :goto_0
    move/from16 v16, v4

    move/from16 v17, v6

    cmpg-float v16, v16, v17

    if-gtz v16, :cond_1

    .line 1571
    move/from16 v16, v4

    move/from16 v8, v16

    .line 1572
    .local v8, "by":F
    move/from16 v16, v6

    move/from16 v17, v4

    sub-float v16, v16, v17

    move/from16 v10, v16

    .line 1578
    .local v10, "bh":F
    :goto_1
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->isComplexPaint:Z

    move/from16 v16, v0

    if-eqz v16, :cond_2

    .line 1579
    sget-object v16, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->scratchRRect:Lcom/sun/javafx/geom/RoundRectangle2D;

    move/from16 v17, v7

    move/from16 v18, v8

    move/from16 v19, v9

    move/from16 v20, v10

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v16 .. v22}, Lcom/sun/javafx/geom/RoundRectangle2D;->setRoundRect(FFFFFF)V

    .line 1580
    move-object/from16 v16, v2

    sget-object v17, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->scratchRRect:Lcom/sun/javafx/geom/RoundRectangle2D;

    const/16 v18, 0x0

    move/from16 v19, v7

    move/from16 v20, v8

    move/from16 v21, v9

    move/from16 v22, v10

    invoke-direct/range {v16 .. v22}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->renderWithComplexPaint(Lcom/sun/javafx/geom/Shape;Lcom/sun/prism/BasicStroke;FFFF)V

    .line 1581
    .line 1617
    :goto_2
    return-void

    .line 1567
    .end local v7    # "bx":F
    .end local v8    # "by":F
    .end local v9    # "bw":F
    .end local v10    # "bh":F
    :cond_0
    move/from16 v16, v5

    move/from16 v7, v16

    .line 1568
    .restart local v7    # "bx":F
    move/from16 v16, v3

    move/from16 v17, v5

    sub-float v16, v16, v17

    move/from16 v9, v16

    .restart local v9    # "bw":F
    goto :goto_0

    .line 1574
    :cond_1
    move/from16 v16, v6

    move/from16 v8, v16

    .line 1575
    .restart local v8    # "by":F
    move/from16 v16, v4

    move/from16 v17, v6

    sub-float v16, v16, v17

    move/from16 v10, v16

    .restart local v10    # "bh":F
    goto :goto_1

    .line 1584
    :cond_2
    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->getTransformNoClone()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v16

    move-object/from16 v11, v16

    .line 1585
    .local v11, "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    sget v16, Lcom/sun/prism/impl/PrismSettings;->primTextureSize:I

    if-eqz v16, :cond_5

    .line 1587
    move-object/from16 v16, v11

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/geom/transform/BaseTransform;->isTranslateOrIdentity()Z

    move-result v16

    if-eqz v16, :cond_4

    .line 1588
    move-object/from16 v16, v11

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxt()D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    move/from16 v12, v16

    .line 1589
    .local v12, "mxt":F
    move-object/from16 v16, v11

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyt()D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    move/from16 v13, v16

    .line 1590
    .local v13, "myt":F
    sget-object v16, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->IDENT:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v11, v16

    .line 1591
    move/from16 v16, v3

    move/from16 v17, v12

    add-float v16, v16, v17

    move/from16 v3, v16

    .line 1592
    move/from16 v16, v4

    move/from16 v17, v13

    add-float v16, v16, v17

    move/from16 v4, v16

    .line 1593
    move/from16 v16, v5

    move/from16 v17, v12

    add-float v16, v16, v17

    move/from16 v5, v16

    .line 1594
    move/from16 v16, v6

    move/from16 v17, v13

    add-float v16, v16, v17

    move/from16 v6, v16

    .line 1598
    :goto_3
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v18, v11

    sget-object v19, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->ALPHA_ONE:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    const/16 v20, 0x0

    move/from16 v21, v7

    move/from16 v22, v8

    move/from16 v23, v9

    move/from16 v24, v10

    .line 1599
    invoke-virtual/range {v16 .. v24}, Lcom/sun/prism/impl/ps/BaseShaderContext;->validatePaintOp(Lcom/sun/prism/impl/ps/BaseShaderGraphics;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;Lcom/sun/prism/Texture;FFFF)Lcom/sun/prism/ps/Shader;

    move-result-object v16

    move-object/from16 v14, v16

    .line 1601
    .local v14, "shader":Lcom/sun/prism/ps/Shader;
    move-object/from16 v16, v2

    sget-object v17, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->IDENT:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v18, v14

    move/from16 v19, v7

    move/from16 v20, v8

    move/from16 v21, v9

    move/from16 v22, v10

    invoke-virtual/range {v16 .. v22}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->getPaintTextureTx(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/ps/Shader;FFFF)Lcom/sun/javafx/geom/transform/AffineBase;

    move-result-object v16

    move-object/from16 v15, v16

    .line 1602
    .local v15, "paintTx":Lcom/sun/javafx/geom/transform/AffineBase;
    move-object/from16 v16, v15

    if-eqz v16, :cond_3

    .line 1603
    move-object/from16 v16, v15

    move/from16 v17, v12

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    move/from16 v19, v13

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-virtual/range {v16 .. v20}, Lcom/sun/javafx/geom/transform/AffineBase;->translate(DD)V

    .line 1605
    :cond_3
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sun/prism/impl/ps/BaseShaderContext;->getVertexBuffer()Lcom/sun/prism/impl/VertexBuffer;

    move-result-object v16

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v5

    move/from16 v20, v6

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v25, v15

    invoke-virtual/range {v16 .. v25}, Lcom/sun/prism/impl/VertexBuffer;->addQuad(FFFFFFFFLcom/sun/javafx/geom/transform/AffineBase;)V

    .line 1606
    goto/16 :goto_2

    .line 1596
    .end local v12    # "mxt":F
    .end local v13    # "myt":F
    .end local v14    # "shader":Lcom/sun/prism/ps/Shader;
    .end local v15    # "paintTx":Lcom/sun/javafx/geom/transform/AffineBase;
    :cond_4
    const/16 v16, 0x0

    move/from16 v26, v16

    move/from16 v16, v26

    move/from16 v17, v26

    move/from16 v13, v17

    .restart local v13    # "myt":F
    move/from16 v12, v16

    .restart local v12    # "mxt":F
    goto/16 :goto_3

    .line 1608
    .end local v12    # "mxt":F
    .end local v13    # "myt":F
    :cond_5
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->isSimpleTranslate:Z

    move/from16 v16, v0

    if-eqz v16, :cond_6

    .line 1609
    sget-object v16, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->IDENT:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v11, v16

    .line 1610
    move/from16 v16, v7

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->transX:F

    move/from16 v17, v0

    add-float v16, v16, v17

    move/from16 v7, v16

    .line 1611
    move/from16 v16, v8

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->transY:F

    move/from16 v17, v0

    add-float v16, v16, v17

    move/from16 v8, v16

    .line 1613
    :cond_6
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v18, v11

    sget-object v19, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->SOLID:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    move/from16 v20, v7

    move/from16 v21, v8

    move/from16 v22, v9

    move/from16 v23, v10

    invoke-virtual/range {v16 .. v23}, Lcom/sun/prism/impl/ps/BaseShaderContext;->validatePaintOp(Lcom/sun/prism/impl/ps/BaseShaderGraphics;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;FFFF)Lcom/sun/prism/ps/Shader;

    move-result-object v16

    .line 1615
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sun/prism/impl/ps/BaseShaderContext;->getVertexBuffer()Lcom/sun/prism/impl/VertexBuffer;

    move-result-object v16

    move-object/from16 v12, v16

    .line 1616
    .local v12, "vb":Lcom/sun/prism/impl/VertexBuffer;
    move-object/from16 v16, v12

    move/from16 v17, v7

    move/from16 v18, v8

    move/from16 v19, v7

    move/from16 v20, v9

    add-float v19, v19, v20

    move/from16 v20, v8

    move/from16 v21, v10

    add-float v20, v20, v21

    invoke-virtual/range {v16 .. v20}, Lcom/sun/prism/impl/VertexBuffer;->addQuad(FFFF)V

    .line 1617
    goto/16 :goto_2
.end method

.method public fillRect(FFFF)V
    .locals 19

    .prologue
    .line 1487
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    move/from16 v1, p1

    .local v1, "x":F
    move/from16 v2, p2

    .local v2, "y":F
    move/from16 v3, p3

    .local v3, "w":F
    move/from16 v4, p4

    .local v4, "h":F
    move v8, v3

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-lez v8, :cond_0

    move v8, v4

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_1

    .line 1488
    .line 1509
    :cond_0
    :goto_0
    return-void

    .line 1490
    :cond_1
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->isAntialiasedShape()Z

    move-result v8

    if-nez v8, :cond_2

    .line 1491
    move-object v8, v0

    move v9, v1

    move v10, v2

    move v11, v1

    move v12, v3

    add-float/2addr v11, v12

    move v12, v2

    move v13, v4

    add-float/2addr v12, v13

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->fillQuad(FFFF)V

    .line 1492
    goto :goto_0

    .line 1494
    :cond_2
    move-object v8, v0

    iget-boolean v8, v8, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->isComplexPaint:Z

    if-eqz v8, :cond_3

    .line 1495
    sget-object v8, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->scratchRRect:Lcom/sun/javafx/geom/RoundRectangle2D;

    move v9, v1

    move v10, v2

    move v11, v3

    move v12, v4

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v8 .. v14}, Lcom/sun/javafx/geom/RoundRectangle2D;->setRoundRect(FFFFFF)V

    .line 1496
    move-object v8, v0

    sget-object v9, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->scratchRRect:Lcom/sun/javafx/geom/RoundRectangle2D;

    const/4 v10, 0x0

    move v11, v1

    move v12, v2

    move v13, v3

    move v14, v4

    invoke-direct/range {v8 .. v14}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->renderWithComplexPaint(Lcom/sun/javafx/geom/Shape;Lcom/sun/prism/BasicStroke;FFFF)V

    .line 1497
    goto :goto_0

    .line 1499
    :cond_3
    sget v8, Lcom/sun/prism/impl/PrismSettings;->primTextureSize:I

    if-eqz v8, :cond_4

    .line 1500
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    invoke-virtual {v8}, Lcom/sun/prism/impl/ps/BaseShaderContext;->getRectTexture()Lcom/sun/prism/Texture;

    move-result-object v8

    move-object v5, v8

    .line 1501
    .local v5, "rTex":Lcom/sun/prism/Texture;
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    invoke-virtual {v8}, Lcom/sun/prism/impl/ps/BaseShaderContext;->getWrapRectTexture()Lcom/sun/prism/Texture;

    move-result-object v8

    move-object v6, v8

    .line 1502
    .local v6, "wTex":Lcom/sun/prism/Texture;
    move-object v8, v0

    move v9, v1

    move v10, v2

    move v11, v3

    move v12, v4

    move-object v13, v5

    move-object v14, v6

    move v15, v1

    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v4

    invoke-virtual/range {v8 .. v18}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->fillPrimRect(FFFFLcom/sun/prism/Texture;Lcom/sun/prism/Texture;FFFF)Z

    move-result v8

    move v7, v8

    .line 1503
    .local v7, "success":Z
    move-object v8, v5

    invoke-interface {v8}, Lcom/sun/prism/Texture;->unlock()V

    .line 1504
    move-object v8, v6

    invoke-interface {v8}, Lcom/sun/prism/Texture;->unlock()V

    .line 1505
    move v8, v7

    if-eqz v8, :cond_4

    goto :goto_0

    .line 1507
    .end local v5    # "rTex":Lcom/sun/prism/Texture;
    .end local v6    # "wTex":Lcom/sun/prism/Texture;
    .end local v7    # "success":Z
    :cond_4
    move-object v8, v0

    move v9, v1

    move v10, v2

    move v11, v3

    move v12, v4

    const/4 v13, 0x0

    const/4 v14, 0x0

    sget-object v15, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->FILL_PGRAM:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    const/16 v16, 0x0

    invoke-direct/range {v8 .. v16}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->renderGeneralRoundedRect(FFFFFFLcom/sun/prism/impl/ps/BaseShaderContext$MaskType;Lcom/sun/prism/BasicStroke;)V

    .line 1509
    goto :goto_0
.end method

.method public fillRoundRect(FFFFFF)V
    .locals 16

    .prologue
    .line 1541
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    move/from16 v1, p1

    .local v1, "x":F
    move/from16 v2, p2

    .local v2, "y":F
    move/from16 v3, p3

    .local v3, "w":F
    move/from16 v4, p4

    .local v4, "h":F
    move/from16 v5, p5

    .local v5, "arcw":F
    move/from16 v6, p6

    .local v6, "arch":F
    move v7, v5

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    move v8, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    move v5, v7

    .line 1542
    move v7, v6

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    move v8, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    move v6, v7

    .line 1544
    move v7, v3

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-lez v7, :cond_0

    move v7, v4

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_1

    .line 1545
    .line 1559
    :cond_0
    :goto_0
    return-void

    .line 1547
    :cond_1
    move-object v7, v0

    iget-boolean v7, v7, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->isComplexPaint:Z

    if-eqz v7, :cond_2

    .line 1548
    sget-object v7, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->scratchRRect:Lcom/sun/javafx/geom/RoundRectangle2D;

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    move v13, v6

    invoke-virtual/range {v7 .. v13}, Lcom/sun/javafx/geom/RoundRectangle2D;->setRoundRect(FFFFFF)V

    .line 1549
    move-object v7, v0

    sget-object v8, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->scratchRRect:Lcom/sun/javafx/geom/RoundRectangle2D;

    const/4 v9, 0x0

    move v10, v1

    move v11, v2

    move v12, v3

    move v13, v4

    invoke-direct/range {v7 .. v13}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->renderWithComplexPaint(Lcom/sun/javafx/geom/Shape;Lcom/sun/prism/BasicStroke;FFFF)V

    .line 1550
    goto :goto_0

    .line 1552
    :cond_2
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->isAntialiasedShape()Z

    move-result v7

    if-nez v7, :cond_3

    .line 1553
    sget-object v7, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->scratchRRect:Lcom/sun/javafx/geom/RoundRectangle2D;

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    move v13, v6

    invoke-virtual/range {v7 .. v13}, Lcom/sun/javafx/geom/RoundRectangle2D;->setRoundRect(FFFFFF)V

    .line 1554
    move-object v7, v0

    sget-object v8, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->scratchRRect:Lcom/sun/javafx/geom/RoundRectangle2D;

    const/4 v9, 0x0

    move v10, v1

    move v11, v2

    move v12, v3

    move v13, v4

    invoke-virtual/range {v7 .. v13}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->renderShape(Lcom/sun/javafx/geom/Shape;Lcom/sun/prism/BasicStroke;FFFF)V

    .line 1555
    goto :goto_0

    .line 1557
    :cond_3
    move-object v7, v0

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    move v13, v6

    sget-object v14, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->FILL_ROUNDRECT:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    const/4 v15, 0x0

    invoke-direct/range {v7 .. v15}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->renderGeneralRoundedRect(FFFFFFLcom/sun/prism/impl/ps/BaseShaderContext$MaskType;Lcom/sun/prism/BasicStroke;)V

    .line 1559
    goto :goto_0
.end method

.method getContext()Lcom/sun/prism/impl/ps/BaseShaderContext;
    .locals 2

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    return-object v0
.end method

.method public getExternalShader()Lcom/sun/prism/ps/Shader;
    .locals 2

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->externalShader:Lcom/sun/prism/ps/Shader;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    return-object v0
.end method

.method public final getLights()[Lcom/sun/javafx/sg/prism/NGLightBase;
    .locals 2

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->lights:[Lcom/sun/javafx/sg/prism/NGLightBase;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    return-object v0
.end method

.method public getPaintShaderTransform(Lcom/sun/javafx/geom/transform/Affine3D;)V
    .locals 4

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    move-object v1, p1

    .local v1, "ret":Lcom/sun/javafx/geom/transform/Affine3D;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->getTransformNoClone()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/javafx/geom/transform/Affine3D;->setTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 100
    return-void
.end method

.method getPaintTextureTx(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/ps/Shader;FFFF)Lcom/sun/javafx/geom/transform/AffineBase;
    .locals 16

    .prologue
    .line 913
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    move-object/from16 v1, p1

    .local v1, "renderTx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v2, p2

    .local v2, "shader":Lcom/sun/prism/ps/Shader;
    move/from16 v3, p3

    .local v3, "rx":F
    move/from16 v4, p4

    .local v4, "ry":F
    move/from16 v5, p5

    .local v5, "rw":F
    move/from16 v6, p6

    .local v6, "rh":F
    sget-object v7, Lcom/sun/prism/impl/ps/BaseShaderGraphics$1;->$SwitchMap$com$sun$prism$paint$Paint$Type:[I

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->paint:Lcom/sun/prism/paint/Paint;

    invoke-virtual {v8}, Lcom/sun/prism/paint/Paint;->getType()Lcom/sun/prism/paint/Paint$Type;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sun/prism/paint/Paint$Type;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 929
    new-instance v7, Ljava/lang/InternalError;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unrecogized paint type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->paint:Lcom/sun/prism/paint/Paint;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v7

    .line 915
    :pswitch_0
    const/4 v7, 0x0

    move-object v0, v7

    .line 925
    .end local v0    # "this":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    :goto_0
    return-object v0

    .line 917
    .restart local v0    # "this":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    :pswitch_1
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->paint:Lcom/sun/prism/paint/Paint;

    check-cast v7, Lcom/sun/prism/paint/LinearGradient;

    move-object v8, v2

    move-object v9, v1

    move v10, v3

    move v11, v4

    move v12, v5

    move v13, v6

    invoke-static/range {v7 .. v13}, Lcom/sun/prism/impl/ps/PaintHelper;->getLinearGradientTx(Lcom/sun/prism/paint/LinearGradient;Lcom/sun/prism/ps/Shader;Lcom/sun/javafx/geom/transform/BaseTransform;FFFF)Lcom/sun/javafx/geom/transform/AffineBase;

    move-result-object v7

    move-object v0, v7

    goto :goto_0

    .line 921
    :pswitch_2
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->paint:Lcom/sun/prism/paint/Paint;

    check-cast v7, Lcom/sun/prism/paint/RadialGradient;

    move-object v8, v2

    move-object v9, v1

    move v10, v3

    move v11, v4

    move v12, v5

    move v13, v6

    invoke-static/range {v7 .. v13}, Lcom/sun/prism/impl/ps/PaintHelper;->getRadialGradientTx(Lcom/sun/prism/paint/RadialGradient;Lcom/sun/prism/ps/Shader;Lcom/sun/javafx/geom/transform/BaseTransform;FFFF)Lcom/sun/javafx/geom/transform/AffineBase;

    move-result-object v7

    move-object v0, v7

    goto :goto_0

    .line 925
    :pswitch_3
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->paint:Lcom/sun/prism/paint/Paint;

    check-cast v8, Lcom/sun/prism/paint/ImagePattern;

    move-object v9, v2

    move-object v10, v1

    move v11, v3

    move v12, v4

    move v13, v5

    move v14, v6

    invoke-static/range {v7 .. v14}, Lcom/sun/prism/impl/ps/PaintHelper;->getImagePatternTx(Lcom/sun/prism/ps/ShaderGraphics;Lcom/sun/prism/paint/ImagePattern;Lcom/sun/prism/ps/Shader;Lcom/sun/javafx/geom/transform/BaseTransform;FFFF)Lcom/sun/javafx/geom/transform/AffineBase;

    move-result-object v7

    move-object v0, v7

    goto :goto_0

    .line 913
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method isComplexPaint()Z
    .locals 2

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->isComplexPaint:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    return v0
.end method

.method public maskInterpolatePixels(Lcom/sun/prism/RTTexture;Lcom/sun/prism/RTTexture;IIIIIIII)V
    .locals 43

    .prologue
    .line 371
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    move-object/from16 v2, p1

    .local v2, "imgtex":Lcom/sun/prism/RTTexture;
    move-object/from16 v3, p2

    .local v3, "masktex":Lcom/sun/prism/RTTexture;
    move/from16 v4, p3

    .local v4, "dx":I
    move/from16 v5, p4

    .local v5, "dy":I
    move/from16 v6, p5

    .local v6, "dw":I
    move/from16 v7, p6

    .local v7, "dh":I
    move/from16 v8, p7

    .local v8, "ix":I
    move/from16 v9, p8

    .local v9, "iy":I
    move/from16 v10, p9

    .local v10, "mx":I
    move/from16 v11, p10

    .local v11, "my":I
    move/from16 v30, v6

    if-lez v30, :cond_0

    move/from16 v30, v7

    if-gtz v30, :cond_1

    .line 404
    :cond_0
    :goto_0
    return-void

    .line 372
    :cond_1
    move-object/from16 v30, v2

    invoke-interface/range {v30 .. v30}, Lcom/sun/prism/RTTexture;->getPhysicalWidth()I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move/from16 v12, v30

    .line 373
    .local v12, "iw":F
    move-object/from16 v30, v2

    invoke-interface/range {v30 .. v30}, Lcom/sun/prism/RTTexture;->getPhysicalHeight()I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move/from16 v13, v30

    .line 374
    .local v13, "ih":F
    move-object/from16 v30, v3

    invoke-interface/range {v30 .. v30}, Lcom/sun/prism/RTTexture;->getPhysicalWidth()I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move/from16 v14, v30

    .line 375
    .local v14, "mw":F
    move-object/from16 v30, v3

    invoke-interface/range {v30 .. v30}, Lcom/sun/prism/RTTexture;->getPhysicalHeight()I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move/from16 v15, v30

    .line 376
    .local v15, "mh":F
    move/from16 v30, v4

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move/from16 v16, v30

    .line 377
    .local v16, "dx1":F
    move/from16 v30, v5

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move/from16 v17, v30

    .line 378
    .local v17, "dy1":F
    move/from16 v30, v4

    move/from16 v31, v6

    add-int v30, v30, v31

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move/from16 v18, v30

    .line 379
    .local v18, "dx2":F
    move/from16 v30, v5

    move/from16 v31, v7

    add-int v30, v30, v31

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move/from16 v19, v30

    .line 380
    .local v19, "dy2":F
    move/from16 v30, v8

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move/from16 v31, v12

    div-float v30, v30, v31

    move/from16 v20, v30

    .line 381
    .local v20, "ix1":F
    move/from16 v30, v9

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move/from16 v31, v13

    div-float v30, v30, v31

    move/from16 v21, v30

    .line 382
    .local v21, "iy1":F
    move/from16 v30, v8

    move/from16 v31, v6

    add-int v30, v30, v31

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move/from16 v31, v12

    div-float v30, v30, v31

    move/from16 v22, v30

    .line 383
    .local v22, "ix2":F
    move/from16 v30, v9

    move/from16 v31, v7

    add-int v30, v30, v31

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move/from16 v31, v13

    div-float v30, v30, v31

    move/from16 v23, v30

    .line 384
    .local v23, "iy2":F
    move/from16 v30, v10

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move/from16 v31, v14

    div-float v30, v30, v31

    move/from16 v24, v30

    .line 385
    .local v24, "mx1":F
    move/from16 v30, v11

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move/from16 v31, v15

    div-float v30, v30, v31

    move/from16 v25, v30

    .line 386
    .local v25, "my1":F
    move/from16 v30, v10

    move/from16 v31, v6

    add-int v30, v30, v31

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move/from16 v31, v14

    div-float v30, v30, v31

    move/from16 v26, v30

    .line 387
    .local v26, "mx2":F
    move/from16 v30, v11

    move/from16 v31, v7

    add-int v30, v30, v31

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move/from16 v31, v15

    div-float v30, v30, v31

    move/from16 v27, v30

    .line 388
    .local v27, "my2":F
    move-object/from16 v30, v1

    invoke-virtual/range {v30 .. v30}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->getCompositeMode()Lcom/sun/prism/CompositeMode;

    move-result-object v30

    move-object/from16 v28, v30

    .line 389
    .local v28, "oldmode":Lcom/sun/prism/CompositeMode;
    move-object/from16 v30, v1

    sget-object v31, Lcom/sun/prism/CompositeMode;->DST_OUT:Lcom/sun/prism/CompositeMode;

    invoke-virtual/range {v30 .. v31}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->setCompositeMode(Lcom/sun/prism/CompositeMode;)V

    .line 390
    move-object/from16 v30, v1

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    move-object/from16 v30, v0

    move-object/from16 v31, v1

    sget-object v32, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->IDENT:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v33, v3

    sget-object v34, Lcom/sun/prism/PixelFormat;->INT_ARGB_PRE:Lcom/sun/prism/PixelFormat;

    invoke-virtual/range {v30 .. v34}, Lcom/sun/prism/impl/ps/BaseShaderContext;->validateTextureOp(Lcom/sun/prism/impl/BaseGraphics;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/Texture;Lcom/sun/prism/PixelFormat;)V

    .line 392
    move-object/from16 v30, v1

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sun/prism/impl/ps/BaseShaderContext;->getVertexBuffer()Lcom/sun/prism/impl/VertexBuffer;

    move-result-object v30

    move-object/from16 v29, v30

    .line 393
    .local v29, "vb":Lcom/sun/prism/impl/VertexBuffer;
    move-object/from16 v30, v29

    move/from16 v31, v16

    move/from16 v32, v17

    move/from16 v33, v18

    move/from16 v34, v19

    move/from16 v35, v24

    move/from16 v36, v25

    move/from16 v37, v26

    move/from16 v38, v27

    invoke-virtual/range {v30 .. v38}, Lcom/sun/prism/impl/VertexBuffer;->addQuad(FFFFFFFF)V

    .line 396
    move-object/from16 v30, v1

    sget-object v31, Lcom/sun/prism/CompositeMode;->ADD:Lcom/sun/prism/CompositeMode;

    invoke-virtual/range {v30 .. v31}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->setCompositeMode(Lcom/sun/prism/CompositeMode;)V

    .line 397
    move-object/from16 v30, v1

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    move-object/from16 v30, v0

    move-object/from16 v31, v1

    sget-object v32, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->IDENT:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v33, v2

    move-object/from16 v34, v3

    sget-object v35, Lcom/sun/prism/PixelFormat;->INT_ARGB_PRE:Lcom/sun/prism/PixelFormat;

    invoke-virtual/range {v30 .. v35}, Lcom/sun/prism/impl/ps/BaseShaderContext;->validateMaskTextureOp(Lcom/sun/prism/impl/ps/BaseShaderGraphics;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/Texture;Lcom/sun/prism/Texture;Lcom/sun/prism/PixelFormat;)Lcom/sun/prism/ps/Shader;

    move-result-object v30

    .line 399
    move-object/from16 v30, v29

    move/from16 v31, v16

    move/from16 v32, v17

    move/from16 v33, v18

    move/from16 v34, v19

    move/from16 v35, v20

    move/from16 v36, v21

    move/from16 v37, v22

    move/from16 v38, v23

    move/from16 v39, v24

    move/from16 v40, v25

    move/from16 v41, v26

    move/from16 v42, v27

    invoke-virtual/range {v30 .. v42}, Lcom/sun/prism/impl/VertexBuffer;->addQuad(FFFFFFFFFFFF)V

    .line 403
    move-object/from16 v30, v1

    move-object/from16 v31, v28

    invoke-virtual/range {v30 .. v31}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->setCompositeMode(Lcom/sun/prism/CompositeMode;)V

    .line 404
    goto/16 :goto_0
.end method

.method public readBack(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/prism/RTTexture;
    .locals 20

    .prologue
    .line 2123
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    move-object/from16 v1, p1

    .local v1, "view":Lcom/sun/javafx/geom/Rectangle;
    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->getRenderTarget()Lcom/sun/prism/RenderTarget;

    move-result-object v10

    move-object v2, v10

    .line 2124
    .local v2, "rt":Lcom/sun/prism/RenderTarget;
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    invoke-virtual {v10}, Lcom/sun/prism/impl/ps/BaseShaderContext;->flushVertexBuffer()V

    .line 2125
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    move-object v11, v2

    invoke-virtual {v10, v11}, Lcom/sun/prism/impl/ps/BaseShaderContext;->validateLCDBuffer(Lcom/sun/prism/RenderTarget;)V

    .line 2126
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    invoke-virtual {v10}, Lcom/sun/prism/impl/ps/BaseShaderContext;->getLCDBuffer()Lcom/sun/prism/RTTexture;

    move-result-object v10

    move-object v3, v10

    .line 2127
    .local v3, "lcdrtt":Lcom/sun/prism/RTTexture;
    move-object v10, v2

    check-cast v10, Lcom/sun/prism/ReadbackRenderTarget;

    invoke-interface {v10}, Lcom/sun/prism/ReadbackRenderTarget;->getBackBuffer()Lcom/sun/prism/Texture;

    move-result-object v10

    move-object v4, v10

    .line 2129
    .local v4, "bbtex":Lcom/sun/prism/Texture;
    move-object v10, v1

    iget v10, v10, Lcom/sun/javafx/geom/Rectangle;->x:I

    int-to-float v10, v10

    move v5, v10

    .line 2130
    .local v5, "x1":F
    move-object v10, v1

    iget v10, v10, Lcom/sun/javafx/geom/Rectangle;->y:I

    int-to-float v10, v10

    move v6, v10

    .line 2131
    .local v6, "y1":F
    move v10, v5

    move-object v11, v1

    iget v11, v11, Lcom/sun/javafx/geom/Rectangle;->width:I

    int-to-float v11, v11

    add-float/2addr v10, v11

    move v7, v10

    .line 2132
    .local v7, "x2":F
    move v10, v6

    move-object v11, v1

    iget v11, v11, Lcom/sun/javafx/geom/Rectangle;->height:I

    int-to-float v11, v11

    add-float/2addr v10, v11

    move v8, v10

    .line 2136
    .local v8, "y2":F
    move-object v10, v3

    invoke-interface {v10}, Lcom/sun/prism/RTTexture;->createGraphics()Lcom/sun/prism/Graphics;

    move-result-object v10

    check-cast v10, Lcom/sun/prism/impl/ps/BaseShaderGraphics;

    move-object v9, v10

    .line 2137
    .local v9, "bsg":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    move-object v10, v9

    sget-object v11, Lcom/sun/prism/CompositeMode;->SRC:Lcom/sun/prism/CompositeMode;

    invoke-virtual {v10, v11}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->setCompositeMode(Lcom/sun/prism/CompositeMode;)V

    .line 2138
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    move-object v11, v9

    sget-object v12, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->IDENT:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v13, v4

    move-object v14, v4

    invoke-interface {v14}, Lcom/sun/prism/Texture;->getPixelFormat()Lcom/sun/prism/PixelFormat;

    move-result-object v14

    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/sun/prism/impl/ps/BaseShaderContext;->validateTextureOp(Lcom/sun/prism/impl/BaseGraphics;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/Texture;Lcom/sun/prism/PixelFormat;)V

    .line 2141
    move-object v10, v9

    move-object v11, v4

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v14, v1

    iget v14, v14, Lcom/sun/javafx/geom/Rectangle;->width:I

    int-to-float v14, v14

    move-object v15, v1

    iget v15, v15, Lcom/sun/javafx/geom/Rectangle;->height:I

    int-to-float v15, v15

    move/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v8

    invoke-virtual/range {v10 .. v19}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->drawTexture(Lcom/sun/prism/Texture;FFFFFFFF)V

    .line 2142
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    invoke-virtual {v10}, Lcom/sun/prism/impl/ps/BaseShaderContext;->flushVertexBuffer()V

    .line 2145
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    move-object v11, v0

    invoke-virtual {v10, v11}, Lcom/sun/prism/impl/ps/BaseShaderContext;->setRenderTarget(Lcom/sun/prism/impl/BaseGraphics;)V

    .line 2146
    move-object v10, v3

    move-object v0, v10

    .end local v0    # "this":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    return-object v0
.end method

.method public releaseReadBackBuffer(Lcom/sun/prism/RTTexture;)V
    .locals 0
    .param p1, "rtt"    # Lcom/sun/prism/RTTexture;

    .prologue
    .line 2153
    return-void
.end method

.method protected renderShape(Lcom/sun/javafx/geom/Shape;Lcom/sun/prism/BasicStroke;FFFF)V
    .locals 31

    .prologue
    .line 455
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    move-object/from16 v2, p1

    .local v2, "shape":Lcom/sun/javafx/geom/Shape;
    move-object/from16 v3, p2

    .local v3, "stroke":Lcom/sun/prism/BasicStroke;
    move/from16 v4, p3

    .local v4, "bx":F
    move/from16 v5, p4

    .local v5, "by":F
    move/from16 v6, p5

    .local v6, "bw":F
    move/from16 v7, p6

    .local v7, "bh":F
    move-object/from16 v21, v1

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->isComplexPaint:Z

    move/from16 v21, v0

    if-eqz v21, :cond_0

    .line 456
    move-object/from16 v21, v1

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move/from16 v24, v4

    move/from16 v25, v5

    move/from16 v26, v6

    move/from16 v27, v7

    invoke-direct/range {v21 .. v27}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->renderWithComplexPaint(Lcom/sun/javafx/geom/Shape;Lcom/sun/prism/BasicStroke;FFFF)V

    .line 457
    .line 497
    :goto_0
    return-void

    .line 461
    :cond_0
    move-object/from16 v21, v1

    invoke-virtual/range {v21 .. v21}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->getTransformNoClone()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v21

    move-object/from16 v8, v21

    .line 462
    .local v8, "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v23, v1

    .line 463
    invoke-virtual/range {v23 .. v23}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->getFinalClipNoClone()Lcom/sun/javafx/geom/RectBounds;

    move-result-object v23

    move-object/from16 v24, v8

    const/16 v25, 0x1

    move-object/from16 v26, v1

    invoke-virtual/range {v26 .. v26}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->isAntialiasedShape()Z

    move-result v26

    invoke-static/range {v21 .. v26}, Lcom/sun/prism/impl/shape/ShapeUtil;->rasterizeShape(Lcom/sun/javafx/geom/Shape;Lcom/sun/prism/BasicStroke;Lcom/sun/javafx/geom/RectBounds;Lcom/sun/javafx/geom/transform/BaseTransform;ZZ)Lcom/sun/prism/impl/shape/MaskData;

    move-result-object v21

    move-object/from16 v9, v21

    .line 464
    .local v9, "maskData":Lcom/sun/prism/impl/shape/MaskData;
    move-object/from16 v21, v1

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    move-object/from16 v21, v0

    move-object/from16 v22, v9

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Lcom/sun/prism/impl/ps/BaseShaderContext;->validateMaskTexture(Lcom/sun/prism/impl/shape/MaskData;Z)Lcom/sun/prism/Texture;

    move-result-object v21

    move-object/from16 v10, v21

    .line 467
    .local v10, "maskTex":Lcom/sun/prism/Texture;
    sget v21, Lcom/sun/prism/impl/PrismSettings;->primTextureSize:I

    if-eqz v21, :cond_1

    .line 470
    move-object/from16 v21, v1

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    move-object/from16 v21, v0

    move-object/from16 v22, v1

    sget-object v23, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->IDENT:Lcom/sun/javafx/geom/transform/BaseTransform;

    sget-object v24, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->ALPHA_TEXTURE:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    move-object/from16 v25, v10

    move/from16 v26, v4

    move/from16 v27, v5

    move/from16 v28, v6

    move/from16 v29, v7

    .line 471
    invoke-virtual/range {v21 .. v29}, Lcom/sun/prism/impl/ps/BaseShaderContext;->validatePaintOp(Lcom/sun/prism/impl/ps/BaseShaderGraphics;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;Lcom/sun/prism/Texture;FFFF)Lcom/sun/prism/ps/Shader;

    move-result-object v21

    move-object/from16 v12, v21

    .line 474
    .local v12, "shader":Lcom/sun/prism/ps/Shader;
    move-object/from16 v21, v1

    move-object/from16 v22, v8

    move-object/from16 v23, v12

    move/from16 v24, v4

    move/from16 v25, v5

    move/from16 v26, v6

    move/from16 v27, v7

    invoke-virtual/range {v21 .. v27}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->getPaintTextureTx(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/ps/Shader;FFFF)Lcom/sun/javafx/geom/transform/AffineBase;

    move-result-object v21

    move-object/from16 v11, v21

    .line 482
    .end local v12    # "shader":Lcom/sun/prism/ps/Shader;
    .local v11, "paintTx":Lcom/sun/javafx/geom/transform/AffineBase;
    :goto_1
    move-object/from16 v21, v1

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    move-object/from16 v21, v0

    move-object/from16 v22, v9

    sget-object v23, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->TMP_BOUNDS:Lcom/sun/javafx/geom/RectBounds;

    const/16 v24, 0x0

    invoke-virtual/range {v21 .. v24}, Lcom/sun/prism/impl/ps/BaseShaderContext;->updateMaskTexture(Lcom/sun/prism/impl/shape/MaskData;Lcom/sun/javafx/geom/RectBounds;Z)V

    .line 484
    move-object/from16 v21, v9

    invoke-virtual/range {v21 .. v21}, Lcom/sun/prism/impl/shape/MaskData;->getOriginX()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v12, v21

    .line 485
    .local v12, "dx1":F
    move-object/from16 v21, v9

    invoke-virtual/range {v21 .. v21}, Lcom/sun/prism/impl/shape/MaskData;->getOriginY()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v13, v21

    .line 486
    .local v13, "dy1":F
    move/from16 v21, v12

    move-object/from16 v22, v9

    invoke-virtual/range {v22 .. v22}, Lcom/sun/prism/impl/shape/MaskData;->getWidth()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v21, v21, v22

    move/from16 v14, v21

    .line 487
    .local v14, "dx2":F
    move/from16 v21, v13

    move-object/from16 v22, v9

    invoke-virtual/range {v22 .. v22}, Lcom/sun/prism/impl/shape/MaskData;->getHeight()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v21, v21, v22

    move/from16 v15, v21

    .line 488
    .local v15, "dy2":F
    sget-object v21, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->TMP_BOUNDS:Lcom/sun/javafx/geom/RectBounds;

    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/geom/RectBounds;->getMinX()F

    move-result v21

    move/from16 v16, v21

    .line 489
    .local v16, "tx1":F
    sget-object v21, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->TMP_BOUNDS:Lcom/sun/javafx/geom/RectBounds;

    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/geom/RectBounds;->getMinY()F

    move-result v21

    move/from16 v17, v21

    .line 490
    .local v17, "ty1":F
    sget-object v21, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->TMP_BOUNDS:Lcom/sun/javafx/geom/RectBounds;

    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/geom/RectBounds;->getMaxX()F

    move-result v21

    move/from16 v18, v21

    .line 491
    .local v18, "tx2":F
    sget-object v21, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->TMP_BOUNDS:Lcom/sun/javafx/geom/RectBounds;

    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/geom/RectBounds;->getMaxY()F

    move-result v21

    move/from16 v19, v21

    .line 493
    .local v19, "ty2":F
    move-object/from16 v21, v1

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sun/prism/impl/ps/BaseShaderContext;->getVertexBuffer()Lcom/sun/prism/impl/VertexBuffer;

    move-result-object v21

    move-object/from16 v20, v21

    .line 494
    .local v20, "vb":Lcom/sun/prism/impl/VertexBuffer;
    move-object/from16 v21, v20

    move/from16 v22, v12

    move/from16 v23, v13

    move/from16 v24, v14

    move/from16 v25, v15

    move/from16 v26, v16

    move/from16 v27, v17

    move/from16 v28, v18

    move/from16 v29, v19

    move-object/from16 v30, v11

    invoke-virtual/range {v21 .. v30}, Lcom/sun/prism/impl/VertexBuffer;->addQuad(FFFFFFFFLcom/sun/javafx/geom/transform/AffineBase;)V

    .line 496
    move-object/from16 v21, v10

    invoke-interface/range {v21 .. v21}, Lcom/sun/prism/Texture;->unlock()V

    .line 497
    goto/16 :goto_0

    .line 478
    .end local v11    # "paintTx":Lcom/sun/javafx/geom/transform/AffineBase;
    .end local v12    # "dx1":F
    .end local v13    # "dy1":F
    .end local v14    # "dx2":F
    .end local v15    # "dy2":F
    .end local v16    # "tx1":F
    .end local v17    # "ty1":F
    .end local v18    # "tx2":F
    .end local v19    # "ty2":F
    .end local v20    # "vb":Lcom/sun/prism/impl/VertexBuffer;
    :cond_1
    move-object/from16 v21, v1

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    move-object/from16 v21, v0

    move-object/from16 v22, v1

    sget-object v23, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->IDENT:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v24, v10

    move/from16 v25, v4

    move/from16 v26, v5

    move/from16 v27, v6

    move/from16 v28, v7

    invoke-virtual/range {v21 .. v28}, Lcom/sun/prism/impl/ps/BaseShaderContext;->validatePaintOp(Lcom/sun/prism/impl/ps/BaseShaderGraphics;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/Texture;FFFF)Lcom/sun/prism/ps/Shader;

    move-result-object v21

    .line 479
    const/16 v21, 0x0

    move-object/from16 v11, v21

    .restart local v11    # "paintTx":Lcom/sun/javafx/geom/transform/AffineBase;
    goto/16 :goto_1
.end method

.method public setExternalShader(Lcom/sun/prism/ps/Shader;)V
    .locals 5

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    move-object v1, p1

    .local v1, "shader":Lcom/sun/prism/ps/Shader;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->externalShader:Lcom/sun/prism/ps/Shader;

    .line 108
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sun/prism/impl/ps/BaseShaderContext;->setExternalShader(Lcom/sun/prism/impl/ps/BaseShaderGraphics;Lcom/sun/prism/ps/Shader;)V

    .line 109
    return-void
.end method

.method public setLights([Lcom/sun/javafx/sg/prism/NGLightBase;)V
    .locals 4

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    move-object v1, p1

    .local v1, "lights":[Lcom/sun/javafx/sg/prism/NGLightBase;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->lights:[Lcom/sun/javafx/sg/prism/NGLightBase;

    return-void
.end method

.method public setNodeBounds(Lcom/sun/javafx/geom/RectBounds;)V
    .locals 4

    .prologue
    .line 1905
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    move-object v1, p1

    .local v1, "bounds":Lcom/sun/javafx/geom/RectBounds;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->nodeBounds:Lcom/sun/javafx/geom/RectBounds;

    .line 1906
    move-object v2, v0

    move-object v3, v1

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v2, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->lcdSampleInvalid:Z

    .line 1907
    return-void

    .line 1906
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setPaint(Lcom/sun/prism/paint/Paint;)V
    .locals 6

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    move-object v1, p1

    .local v1, "paint":Lcom/sun/prism/paint/Paint;
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/prism/paint/Paint;->getType()Lcom/sun/prism/paint/Paint$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/prism/paint/Paint$Type;->isGradient()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 114
    move-object v3, v1

    check-cast v3, Lcom/sun/prism/paint/Gradient;

    move-object v2, v3

    .line 115
    .local v2, "grad":Lcom/sun/prism/paint/Gradient;
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/prism/paint/Gradient;->getNumStops()I

    move-result v4

    const/16 v5, 0xc

    if-le v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, v3, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->isComplexPaint:Z

    .line 116
    .line 119
    .end local v2    # "grad":Lcom/sun/prism/paint/Gradient;
    :goto_1
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lcom/sun/prism/impl/BaseGraphics;->setPaint(Lcom/sun/prism/paint/Paint;)V

    .line 120
    return-void

    .line 115
    .restart local v2    # "grad":Lcom/sun/prism/paint/Gradient;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 117
    .end local v2    # "grad":Lcom/sun/prism/paint/Gradient;
    :cond_1
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->isComplexPaint:Z

    goto :goto_1
.end method

.method public setup3DRendering()V
    .locals 3

    .prologue
    .line 2156
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->context:Lcom/sun/prism/impl/ps/BaseShaderContext;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/sun/prism/impl/ps/BaseShaderContext;->setRenderTarget(Lcom/sun/prism/impl/BaseGraphics;)V

    .line 2157
    return-void
.end method
