.class Lcom/sun/prism/es2/ES2Context;
.super Lcom/sun/prism/impl/ps/BaseShaderContext;
.source "ES2Context.java"


# static fields
.field public static final NUM_QUADS:I

.field private static final flipTx:Lcom/sun/javafx/geom/transform/GeneralTransform3D;

.field private static rawMatrix:[F

.field private static final scratchAffine3DTx:Lcom/sun/javafx/geom/transform/Affine3D;

.field private static scratchTx:Lcom/sun/javafx/geom/transform/GeneralTransform3D;


# instance fields
.field private cameraPos:Lcom/sun/javafx/geom/Vec3d;

.field private currentDrawable:Lcom/sun/prism/es2/GLDrawable;

.field private currentTarget:Lcom/sun/prism/RenderTarget;

.field private final dummyGLDrawable:Lcom/sun/prism/es2/GLDrawable;

.field private final glContext:Lcom/sun/prism/es2/GLContext;

.field private indexBuffer:I

.field private final pixelFormat:Lcom/sun/prism/es2/GLPixelFormat;

.field private projViewTx:Lcom/sun/javafx/geom/transform/GeneralTransform3D;

.field private quadIndices:I

.field private shaderProgram:I

.field private state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

.field private worldTx:Lcom/sun/javafx/geom/transform/GeneralTransform3D;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 51
    new-instance v2, Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;-><init>()V

    sput-object v2, Lcom/sun/prism/es2/ES2Context;->scratchTx:Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    .line 52
    new-instance v2, Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;-><init>()V

    sput-object v2, Lcom/sun/prism/es2/ES2Context;->flipTx:Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    .line 53
    new-instance v2, Lcom/sun/javafx/geom/transform/Affine3D;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Lcom/sun/javafx/geom/transform/Affine3D;-><init>()V

    sput-object v2, Lcom/sun/prism/es2/ES2Context;->scratchAffine3DTx:Lcom/sun/javafx/geom/transform/Affine3D;

    .line 55
    const/16 v2, 0x10

    new-array v2, v2, [F

    sput-object v2, Lcom/sun/prism/es2/ES2Context;->rawMatrix:[F

    .line 72
    sget-boolean v2, Lcom/sun/prism/impl/PrismSettings;->superShader:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x1000

    :goto_0
    sput v2, Lcom/sun/prism/es2/ES2Context;->NUM_QUADS:I

    .line 519
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    invoke-static {v2, v3, v4, v5}, Lcom/sun/javafx/geom/transform/Affine2D;->getScaleInstance(DD)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v2

    move-object v1, v2

    .line 520
    .local v1, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    sget-object v2, Lcom/sun/prism/es2/ES2Context;->flipTx:Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    invoke-virtual {v2}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->setIdentity()Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    move-result-object v2

    .line 521
    sget-object v2, Lcom/sun/prism/es2/ES2Context;->flipTx:Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mul(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    move-result-object v2

    .line 522
    return-void

    .line 72
    .end local v1    # "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    :cond_0
    const/16 v2, 0x100

    goto :goto_0
.end method

.method constructor <init>(Lcom/sun/glass/ui/Screen;Lcom/sun/prism/ps/ShaderFactory;)V
    .locals 13

    .prologue
    .line 79
    move-object v1, p0

    .local v1, "this":Lcom/sun/prism/es2/ES2Context;
    move-object v2, p1

    .local v2, "screen":Lcom/sun/glass/ui/Screen;
    move-object v3, p2

    .local v3, "factory":Lcom/sun/prism/ps/ShaderFactory;
    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-static {}, Lcom/sun/prism/es2/ES2Context;->createVertexBuffer()Lcom/sun/prism/es2/ES2VertexBuffer;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/prism/impl/ps/BaseShaderContext;-><init>(Lcom/sun/glass/ui/Screen;Lcom/sun/prism/ps/ShaderFactory;Lcom/sun/prism/impl/VertexBuffer;)V

    .line 57
    move-object v6, v1

    new-instance v7, Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;-><init>()V

    iput-object v7, v6, Lcom/sun/prism/es2/ES2Context;->projViewTx:Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    .line 58
    move-object v6, v1

    new-instance v7, Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;-><init>()V

    iput-object v7, v6, Lcom/sun/prism/es2/ES2Context;->worldTx:Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    .line 59
    move-object v6, v1

    new-instance v7, Lcom/sun/javafx/geom/Vec3d;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Lcom/sun/javafx/geom/Vec3d;-><init>()V

    iput-object v7, v6, Lcom/sun/prism/es2/ES2Context;->cameraPos:Lcom/sun/javafx/geom/Vec3d;

    .line 68
    move-object v6, v1

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/sun/prism/es2/ES2Context;->currentDrawable:Lcom/sun/prism/es2/GLDrawable;

    .line 69
    move-object v6, v1

    const/4 v7, 0x0

    iput v7, v6, Lcom/sun/prism/es2/ES2Context;->indexBuffer:I

    .line 80
    sget-object v6, Lcom/sun/prism/es2/ES2Pipeline;->glFactory:Lcom/sun/prism/es2/GLFactory;

    move-object v4, v6

    .line 85
    .local v4, "glF":Lcom/sun/prism/es2/GLFactory;
    move-object v6, v1

    move-object v7, v4

    move-object v8, v2

    .line 86
    invoke-virtual {v8}, Lcom/sun/glass/ui/Screen;->getNativeScreen()J

    move-result-wide v8

    sget-object v10, Lcom/sun/prism/es2/ES2Pipeline;->pixelFormatAttributes:Lcom/sun/prism/es2/GLPixelFormat$Attributes;

    invoke-virtual {v7, v8, v9, v10}, Lcom/sun/prism/es2/GLFactory;->createGLPixelFormat(JLcom/sun/prism/es2/GLPixelFormat$Attributes;)Lcom/sun/prism/es2/GLPixelFormat;

    move-result-object v7

    iput-object v7, v6, Lcom/sun/prism/es2/ES2Context;->pixelFormat:Lcom/sun/prism/es2/GLPixelFormat;

    .line 89
    move-object v6, v1

    move-object v7, v4

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/prism/es2/ES2Context;->pixelFormat:Lcom/sun/prism/es2/GLPixelFormat;

    invoke-virtual {v7, v8}, Lcom/sun/prism/es2/GLFactory;->createDummyGLDrawable(Lcom/sun/prism/es2/GLPixelFormat;)Lcom/sun/prism/es2/GLDrawable;

    move-result-object v7

    iput-object v7, v6, Lcom/sun/prism/es2/ES2Context;->dummyGLDrawable:Lcom/sun/prism/es2/GLDrawable;

    .line 90
    move-object v6, v1

    move-object v7, v4

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/prism/es2/ES2Context;->dummyGLDrawable:Lcom/sun/prism/es2/GLDrawable;

    move-object v9, v1

    iget-object v9, v9, Lcom/sun/prism/es2/ES2Context;->pixelFormat:Lcom/sun/prism/es2/GLPixelFormat;

    move-object v10, v4

    .line 91
    invoke-virtual {v10}, Lcom/sun/prism/es2/GLFactory;->getShareContext()Lcom/sun/prism/es2/GLContext;

    move-result-object v10

    sget-boolean v11, Lcom/sun/prism/impl/PrismSettings;->isVsyncEnabled:Z

    .line 90
    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/sun/prism/es2/GLFactory;->createGLContext(Lcom/sun/prism/es2/GLDrawable;Lcom/sun/prism/es2/GLPixelFormat;Lcom/sun/prism/es2/GLContext;Z)Lcom/sun/prism/es2/GLContext;

    move-result-object v7

    iput-object v7, v6, Lcom/sun/prism/es2/ES2Context;->glContext:Lcom/sun/prism/es2/GLContext;

    .line 92
    move-object v6, v1

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/prism/es2/ES2Context;->dummyGLDrawable:Lcom/sun/prism/es2/GLDrawable;

    invoke-virtual {v6, v7}, Lcom/sun/prism/es2/ES2Context;->makeCurrent(Lcom/sun/prism/es2/GLDrawable;)V

    .line 93
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/prism/es2/ES2Context;->getVertexBuffer()Lcom/sun/prism/impl/VertexBuffer;

    move-result-object v6

    check-cast v6, Lcom/sun/prism/es2/ES2VertexBuffer;

    move-object v5, v6

    .line 94
    .local v5, "vb":Lcom/sun/prism/es2/ES2VertexBuffer;
    move-object v6, v5

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/prism/es2/ES2Context;->glContext:Lcom/sun/prism/es2/GLContext;

    invoke-virtual {v6, v7}, Lcom/sun/prism/es2/ES2VertexBuffer;->enableVertexAttributes(Lcom/sun/prism/es2/GLContext;)V

    .line 96
    move-object v6, v1

    move-object v7, v5

    sget v8, Lcom/sun/prism/es2/ES2Context;->NUM_QUADS:I

    invoke-virtual {v7, v8}, Lcom/sun/prism/es2/ES2VertexBuffer;->genQuadsIndexBuffer(I)I

    move-result v7

    iput v7, v6, Lcom/sun/prism/es2/ES2Context;->quadIndices:I

    .line 97
    move-object v6, v1

    move-object v7, v1

    iget v7, v7, Lcom/sun/prism/es2/ES2Context;->quadIndices:I

    invoke-virtual {v6, v7}, Lcom/sun/prism/es2/ES2Context;->setIndexBuffer(I)V

    .line 98
    move-object v6, v1

    new-instance v7, Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Lcom/sun/prism/impl/ps/BaseShaderContext$State;-><init>()V

    iput-object v7, v6, Lcom/sun/prism/es2/ES2Context;->state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    .line 99
    return-void
.end method

.method private static createVertexBuffer()Lcom/sun/prism/es2/ES2VertexBuffer;
    .locals 4

    .prologue
    .line 75
    new-instance v0, Lcom/sun/prism/es2/ES2VertexBuffer;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    sget v2, Lcom/sun/prism/es2/ES2Context;->NUM_QUADS:I

    invoke-direct {v1, v2}, Lcom/sun/prism/es2/ES2VertexBuffer;-><init>(I)V

    return-object v0
.end method

.method private updateRawMatrix(Lcom/sun/javafx/geom/transform/GeneralTransform3D;)V
    .locals 6

    .prologue
    .line 500
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Context;
    move-object v1, p1

    .local v1, "src":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    sget-object v2, Lcom/sun/prism/es2/ES2Context;->rawMatrix:[F

    const/4 v3, 0x0

    move-object v4, v1

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->get(I)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v2, v3

    .line 501
    sget-object v2, Lcom/sun/prism/es2/ES2Context;->rawMatrix:[F

    const/4 v3, 0x1

    move-object v4, v1

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->get(I)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v2, v3

    .line 502
    sget-object v2, Lcom/sun/prism/es2/ES2Context;->rawMatrix:[F

    const/4 v3, 0x2

    move-object v4, v1

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->get(I)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v2, v3

    .line 503
    sget-object v2, Lcom/sun/prism/es2/ES2Context;->rawMatrix:[F

    const/4 v3, 0x3

    move-object v4, v1

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->get(I)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v2, v3

    .line 504
    sget-object v2, Lcom/sun/prism/es2/ES2Context;->rawMatrix:[F

    const/4 v3, 0x4

    move-object v4, v1

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->get(I)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v2, v3

    .line 505
    sget-object v2, Lcom/sun/prism/es2/ES2Context;->rawMatrix:[F

    const/4 v3, 0x5

    move-object v4, v1

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->get(I)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v2, v3

    .line 506
    sget-object v2, Lcom/sun/prism/es2/ES2Context;->rawMatrix:[F

    const/4 v3, 0x6

    move-object v4, v1

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->get(I)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v2, v3

    .line 507
    sget-object v2, Lcom/sun/prism/es2/ES2Context;->rawMatrix:[F

    const/4 v3, 0x7

    move-object v4, v1

    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->get(I)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v2, v3

    .line 508
    sget-object v2, Lcom/sun/prism/es2/ES2Context;->rawMatrix:[F

    const/16 v3, 0x8

    move-object v4, v1

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->get(I)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v2, v3

    .line 509
    sget-object v2, Lcom/sun/prism/es2/ES2Context;->rawMatrix:[F

    const/16 v3, 0x9

    move-object v4, v1

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->get(I)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v2, v3

    .line 510
    sget-object v2, Lcom/sun/prism/es2/ES2Context;->rawMatrix:[F

    const/16 v3, 0xa

    move-object v4, v1

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->get(I)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v2, v3

    .line 511
    sget-object v2, Lcom/sun/prism/es2/ES2Context;->rawMatrix:[F

    const/16 v3, 0xb

    move-object v4, v1

    const/16 v5, 0xe

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->get(I)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v2, v3

    .line 512
    sget-object v2, Lcom/sun/prism/es2/ES2Context;->rawMatrix:[F

    const/16 v3, 0xc

    move-object v4, v1

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->get(I)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v2, v3

    .line 513
    sget-object v2, Lcom/sun/prism/es2/ES2Context;->rawMatrix:[F

    const/16 v3, 0xd

    move-object v4, v1

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->get(I)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v2, v3

    .line 514
    sget-object v2, Lcom/sun/prism/es2/ES2Context;->rawMatrix:[F

    const/16 v3, 0xe

    move-object v4, v1

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->get(I)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v2, v3

    .line 515
    sget-object v2, Lcom/sun/prism/es2/ES2Context;->rawMatrix:[F

    const/16 v3, 0xf

    move-object v4, v1

    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->get(I)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v2, v3

    .line 516
    return-void
.end method


# virtual methods
.method public blit(Lcom/sun/prism/RTTexture;Lcom/sun/prism/RTTexture;IIIIIIII)V
    .locals 24

    .prologue
    .line 442
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Context;
    move-object/from16 v1, p1

    .local v1, "srcRTT":Lcom/sun/prism/RTTexture;
    move-object/from16 v2, p2

    .local v2, "dstRTT":Lcom/sun/prism/RTTexture;
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
    move-object v13, v2

    if-nez v13, :cond_0

    const/4 v13, 0x0

    :goto_0
    move v11, v13

    .line 443
    .local v11, "dstFboID":I
    move-object v13, v1

    check-cast v13, Lcom/sun/prism/es2/ES2RTTexture;

    invoke-virtual {v13}, Lcom/sun/prism/es2/ES2RTTexture;->getFboID()I

    move-result v13

    move v12, v13

    .line 444
    .local v12, "srcFboID":I
    move-object v13, v0

    iget-object v13, v13, Lcom/sun/prism/es2/ES2Context;->glContext:Lcom/sun/prism/es2/GLContext;

    move v14, v12

    move v15, v11

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v21, v8

    move/from16 v22, v9

    move/from16 v23, v10

    invoke-virtual/range {v13 .. v23}, Lcom/sun/prism/es2/GLContext;->blitFBO(IIIIIIIIII)V

    .line 447
    return-void

    .line 442
    .end local v11    # "dstFboID":I
    .end local v12    # "srcFboID":I
    :cond_0
    move-object v13, v2

    check-cast v13, Lcom/sun/prism/es2/ES2RTTexture;

    invoke-virtual {v13}, Lcom/sun/prism/es2/ES2RTTexture;->getFboID()I

    move-result v13

    goto :goto_0
.end method

.method buildNativeGeometry(J[FI[II)Z
    .locals 15

    .prologue
    .line 382
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Context;
    move-wide/from16 v1, p1

    .local v1, "nativeHandle":J
    move-object/from16 v3, p3

    .local v3, "vertexBuffer":[F
    move/from16 v4, p4

    .local v4, "vertexBufferLength":I
    move-object/from16 v5, p5

    .local v5, "indexBuffer":[I
    move/from16 v6, p6

    .local v6, "indexBufferLength":I
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/es2/ES2Context;->glContext:Lcom/sun/prism/es2/GLContext;

    move-wide v8, v1

    move-object v10, v3

    move v11, v4

    move-object v12, v5

    move v13, v6

    invoke-virtual/range {v7 .. v13}, Lcom/sun/prism/es2/GLContext;->buildNativeGeometry(J[FI[II)Z

    move-result v7

    move v0, v7

    .end local v0    # "this":Lcom/sun/prism/es2/ES2Context;
    return v0
.end method

.method buildNativeGeometry(J[FI[SI)Z
    .locals 15

    .prologue
    .line 376
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Context;
    move-wide/from16 v1, p1

    .local v1, "nativeHandle":J
    move-object/from16 v3, p3

    .local v3, "vertexBuffer":[F
    move/from16 v4, p4

    .local v4, "vertexBufferLength":I
    move-object/from16 v5, p5

    .local v5, "indexBuffer":[S
    move/from16 v6, p6

    .local v6, "indexBufferLength":I
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/es2/ES2Context;->glContext:Lcom/sun/prism/es2/GLContext;

    move-wide v8, v1

    move-object v10, v3

    move v11, v4

    move-object v12, v5

    move v13, v6

    invoke-virtual/range {v7 .. v13}, Lcom/sun/prism/es2/GLContext;->buildNativeGeometry(J[FI[SI)Z

    move-result v7

    move v0, v7

    .end local v0    # "this":Lcom/sun/prism/es2/ES2Context;
    return v0
.end method

.method final clearContext()V
    .locals 3

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Context;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/es2/ES2Context;->currentDrawable:Lcom/sun/prism/es2/GLDrawable;

    if-eqz v1, :cond_0

    .line 103
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/es2/ES2Context;->currentDrawable:Lcom/sun/prism/es2/GLDrawable;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/es2/ES2Context;->glContext:Lcom/sun/prism/es2/GLContext;

    invoke-virtual {v1, v2}, Lcom/sun/prism/es2/GLDrawable;->swapBuffers(Lcom/sun/prism/es2/GLContext;)Z

    move-result v1

    .line 105
    :cond_0
    return-void
.end method

.method createES2Mesh()J
    .locals 3

    .prologue
    .line 366
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Context;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/es2/ES2Context;->glContext:Lcom/sun/prism/es2/GLContext;

    invoke-virtual {v1}, Lcom/sun/prism/es2/GLContext;->createES2Mesh()J

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/ES2Context;
    return-wide v0
.end method

.method createES2MeshView(Lcom/sun/prism/es2/ES2Mesh;)J
    .locals 5

    .prologue
    .line 404
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Context;
    move-object v1, p1

    .local v1, "mesh":Lcom/sun/prism/es2/ES2Mesh;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/es2/ES2Context;->glContext:Lcom/sun/prism/es2/GLContext;

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/prism/es2/ES2Mesh;->getNativeHandle()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/sun/prism/es2/GLContext;->createES2MeshView(J)J

    move-result-wide v2

    move-wide v0, v2

    .end local v0    # "this":Lcom/sun/prism/es2/ES2Context;
    return-wide v0
.end method

.method createES2PhongMaterial()J
    .locals 3

    .prologue
    .line 387
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Context;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/es2/ES2Context;->glContext:Lcom/sun/prism/es2/GLContext;

    invoke-virtual {v1}, Lcom/sun/prism/es2/GLContext;->createES2PhongMaterial()J

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/ES2Context;
    return-wide v0
.end method

.method forceRenderTarget(Lcom/sun/prism/es2/ES2Graphics;)V
    .locals 6

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Context;
    move-object v1, p1

    .local v1, "g":Lcom/sun/prism/es2/ES2Graphics;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/prism/es2/ES2Graphics;->getRenderTarget()Lcom/sun/prism/RenderTarget;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/prism/es2/ES2Graphics;->getCameraNoClone()Lcom/sun/javafx/sg/prism/NGCamera;

    move-result-object v4

    move-object v5, v1

    .line 145
    invoke-virtual {v5}, Lcom/sun/prism/es2/ES2Graphics;->isDepthTest()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/prism/es2/ES2Graphics;->isDepthBuffer()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    .line 144
    :goto_0
    invoke-virtual {v2, v3, v4, v5}, Lcom/sun/prism/es2/ES2Context;->updateRenderTarget(Lcom/sun/prism/RenderTarget;Lcom/sun/javafx/sg/prism/NGCamera;Z)Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    move-result-object v2

    .line 146
    return-void

    .line 145
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method getGLContext()Lcom/sun/prism/es2/GLContext;
    .locals 2

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Context;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/es2/ES2Context;->glContext:Lcom/sun/prism/es2/GLContext;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/ES2Context;
    return-object v0
.end method

.method getPhongShader(Lcom/sun/prism/es2/ES2MeshView;)Lcom/sun/prism/es2/ES2Shader;
    .locals 4

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Context;
    move-object v1, p1

    .local v1, "meshView":Lcom/sun/prism/es2/ES2MeshView;
    move-object v2, v1

    move-object v3, v0

    invoke-static {v2, v3}, Lcom/sun/prism/es2/ES2PhongShader;->getShader(Lcom/sun/prism/es2/ES2MeshView;Lcom/sun/prism/es2/ES2Context;)Lcom/sun/prism/es2/ES2Shader;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/prism/es2/ES2Context;
    return-object v0
.end method

.method getPixelFormat()Lcom/sun/prism/es2/GLPixelFormat;
    .locals 2

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Context;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/es2/ES2Context;->pixelFormat:Lcom/sun/prism/es2/GLPixelFormat;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/ES2Context;
    return-object v0
.end method

.method getShaderProgram()I
    .locals 2

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Context;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/es2/ES2Context;->shaderProgram:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/ES2Context;
    return v0
.end method

.method protected init()V
    .locals 2

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Context;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/prism/impl/ps/BaseShaderContext;->init()V

    .line 169
    return-void
.end method

.method makeCurrent(Lcom/sun/prism/es2/GLDrawable;)V
    .locals 4

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Context;
    move-object v1, p1

    .local v1, "drawable":Lcom/sun/prism/es2/GLDrawable;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 127
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/es2/ES2Context;->dummyGLDrawable:Lcom/sun/prism/es2/GLDrawable;

    move-object v1, v2

    .line 129
    :cond_0
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/es2/ES2Context;->currentDrawable:Lcom/sun/prism/es2/GLDrawable;

    if-eq v2, v3, :cond_1

    .line 130
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/es2/ES2Context;->glContext:Lcom/sun/prism/es2/GLContext;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/prism/es2/GLContext;->makeCurrent(Lcom/sun/prism/es2/GLDrawable;)V

    .line 132
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/es2/ES2Context;->glContext:Lcom/sun/prism/es2/GLContext;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sun/prism/es2/GLContext;->bindFBO(I)V

    .line 133
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/prism/es2/ES2Context;->currentDrawable:Lcom/sun/prism/es2/GLDrawable;

    .line 135
    :cond_1
    return-void
.end method

.method printRawMatrix(Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 490
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Context;
    move-object v1, p1

    .local v1, "mesg":Ljava/lang/String;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 491
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    const/4 v4, 0x4

    if-ge v3, v4, :cond_0

    .line 492
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/sun/prism/es2/ES2Context;->rawMatrix:[F

    move v6, v2

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/sun/prism/es2/ES2Context;->rawMatrix:[F

    move v6, v2

    const/4 v7, 0x4

    add-int/lit8 v6, v6, 0x4

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/sun/prism/es2/ES2Context;->rawMatrix:[F

    move v6, v2

    const/16 v7, 0x8

    add-int/lit8 v6, v6, 0x8

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/sun/prism/es2/ES2Context;->rawMatrix:[F

    move v6, v2

    const/16 v7, 0xc

    add-int/lit8 v6, v6, 0xc

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 491
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 495
    :cond_0
    return-void
.end method

.method releaseES2Mesh(J)V
    .locals 7

    .prologue
    .line 371
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Context;
    move-wide v1, p1

    .local v1, "nativeHandle":J
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/es2/ES2Context;->glContext:Lcom/sun/prism/es2/GLContext;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Lcom/sun/prism/es2/GLContext;->releaseES2Mesh(J)V

    .line 372
    return-void
.end method

.method releaseES2MeshView(J)V
    .locals 7

    .prologue
    .line 409
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Context;
    move-wide v1, p1

    .local v1, "nativeHandle":J
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/es2/ES2Context;->glContext:Lcom/sun/prism/es2/GLContext;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Lcom/sun/prism/es2/GLContext;->releaseES2MeshView(J)V

    .line 410
    return-void
.end method

.method releaseES2PhongMaterial(J)V
    .locals 7

    .prologue
    .line 392
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Context;
    move-wide v1, p1

    .local v1, "nativeHandle":J
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/es2/ES2Context;->glContext:Lcom/sun/prism/es2/GLContext;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Lcom/sun/prism/es2/GLContext;->releaseES2PhongMaterial(J)V

    .line 393
    return-void
.end method

.method protected releaseRenderTarget()V
    .locals 3

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Context;
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/prism/es2/ES2Context;->currentTarget:Lcom/sun/prism/RenderTarget;

    .line 174
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/prism/impl/ps/BaseShaderContext;->releaseRenderTarget()V

    .line 175
    return-void
.end method

.method renderMeshView(JLcom/sun/prism/Graphics;Lcom/sun/prism/es2/ES2MeshView;)V
    .locals 17

    .prologue
    .line 451
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Context;
    move-wide/from16 v1, p1

    .local v1, "nativeHandle":J
    move-object/from16 v3, p3

    .local v3, "g":Lcom/sun/prism/Graphics;
    move-object/from16 v4, p4

    .local v4, "meshView":Lcom/sun/prism/es2/ES2MeshView;
    move-object v9, v0

    move-object v10, v4

    invoke-virtual {v9, v10}, Lcom/sun/prism/es2/ES2Context;->getPhongShader(Lcom/sun/prism/es2/ES2MeshView;)Lcom/sun/prism/es2/ES2Shader;

    move-result-object v9

    move-object v5, v9

    .line 452
    .local v5, "shader":Lcom/sun/prism/es2/ES2Shader;
    move-object v9, v0

    move-object v10, v5

    invoke-virtual {v10}, Lcom/sun/prism/es2/ES2Shader;->getProgramObject()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/sun/prism/es2/ES2Context;->setShaderProgram(I)V

    .line 455
    move-object v9, v3

    invoke-interface {v9}, Lcom/sun/prism/Graphics;->getPixelScaleFactor()F

    move-result v9

    move v6, v9

    .line 456
    .local v6, "pixelScaleFactor":F
    move v9, v6

    float-to-double v9, v9

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    cmpl-double v9, v9, v11

    if-eqz v9, :cond_0

    .line 457
    sget-object v9, Lcom/sun/prism/es2/ES2Context;->scratchTx:Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/prism/es2/ES2Context;->projViewTx:Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    invoke-virtual {v9, v10}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->set(Lcom/sun/javafx/geom/transform/GeneralTransform3D;)Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    move-result-object v9

    sput-object v9, Lcom/sun/prism/es2/ES2Context;->scratchTx:Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    .line 458
    sget-object v9, Lcom/sun/prism/es2/ES2Context;->scratchTx:Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    move v10, v6

    float-to-double v10, v10

    move v12, v6

    float-to-double v12, v12

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    invoke-virtual/range {v9 .. v15}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->scale(DDD)Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    move-result-object v9

    .line 459
    move-object v9, v0

    sget-object v10, Lcom/sun/prism/es2/ES2Context;->scratchTx:Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    invoke-direct {v9, v10}, Lcom/sun/prism/es2/ES2Context;->updateRawMatrix(Lcom/sun/javafx/geom/transform/GeneralTransform3D;)V

    .line 463
    :goto_0
    move-object v9, v5

    const-string v10, "viewProjectionMatrix"

    sget-object v11, Lcom/sun/prism/es2/ES2Context;->rawMatrix:[F

    invoke-virtual {v9, v10, v11}, Lcom/sun/prism/es2/ES2Shader;->setMatrix(Ljava/lang/String;[F)V

    .line 464
    move-object v9, v5

    const-string v10, "camPos"

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/prism/es2/ES2Context;->cameraPos:Lcom/sun/javafx/geom/Vec3d;

    iget-wide v11, v11, Lcom/sun/javafx/geom/Vec3d;->x:D

    double-to-float v11, v11

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/prism/es2/ES2Context;->cameraPos:Lcom/sun/javafx/geom/Vec3d;

    iget-wide v12, v12, Lcom/sun/javafx/geom/Vec3d;->y:D

    double-to-float v12, v12

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/prism/es2/ES2Context;->cameraPos:Lcom/sun/javafx/geom/Vec3d;

    iget-wide v13, v13, Lcom/sun/javafx/geom/Vec3d;->z:D

    double-to-float v13, v13

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/sun/prism/es2/ES2Shader;->setConstant(Ljava/lang/String;FFF)V

    .line 469
    move-object v9, v3

    invoke-interface {v9}, Lcom/sun/prism/Graphics;->getTransformNoClone()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v9

    move-object v7, v9

    .line 470
    .local v7, "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move v9, v6

    float-to-double v9, v9

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    cmpl-double v9, v9, v11

    if-eqz v9, :cond_1

    .line 471
    const/high16 v9, 0x3f800000    # 1.0f

    move v10, v6

    div-float/2addr v9, v10

    move v8, v9

    .line 472
    .local v8, "invPSF":F
    sget-object v9, Lcom/sun/prism/es2/ES2Context;->scratchAffine3DTx:Lcom/sun/javafx/geom/transform/Affine3D;

    invoke-virtual {v9}, Lcom/sun/javafx/geom/transform/Affine3D;->setToIdentity()V

    .line 473
    sget-object v9, Lcom/sun/prism/es2/ES2Context;->scratchAffine3DTx:Lcom/sun/javafx/geom/transform/Affine3D;

    move v10, v8

    float-to-double v10, v10

    move v12, v8

    float-to-double v12, v12

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/sun/javafx/geom/transform/Affine3D;->scale(DD)V

    .line 474
    sget-object v9, Lcom/sun/prism/es2/ES2Context;->scratchAffine3DTx:Lcom/sun/javafx/geom/transform/Affine3D;

    move-object v10, v7

    invoke-virtual {v9, v10}, Lcom/sun/javafx/geom/transform/Affine3D;->concatenate(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 475
    move-object v9, v0

    sget-object v10, Lcom/sun/prism/es2/ES2Context;->scratchAffine3DTx:Lcom/sun/javafx/geom/transform/Affine3D;

    invoke-virtual {v9, v10}, Lcom/sun/prism/es2/ES2Context;->updateWorldTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 476
    .line 479
    .end local v8    # "invPSF":F
    :goto_1
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/prism/es2/ES2Context;->worldTx:Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    invoke-direct {v9, v10}, Lcom/sun/prism/es2/ES2Context;->updateRawMatrix(Lcom/sun/javafx/geom/transform/GeneralTransform3D;)V

    .line 481
    move-object v9, v5

    const-string v10, "worldMatrix"

    sget-object v11, Lcom/sun/prism/es2/ES2Context;->rawMatrix:[F

    invoke-virtual {v9, v10, v11}, Lcom/sun/prism/es2/ES2Shader;->setMatrix(Ljava/lang/String;[F)V

    .line 484
    move-object v9, v5

    move-object v10, v4

    move-object v11, v0

    invoke-static {v9, v10, v11}, Lcom/sun/prism/es2/ES2PhongShader;->setShaderParamaters(Lcom/sun/prism/es2/ES2Shader;Lcom/sun/prism/es2/ES2MeshView;Lcom/sun/prism/es2/ES2Context;)V

    .line 486
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/prism/es2/ES2Context;->glContext:Lcom/sun/prism/es2/GLContext;

    move-wide v10, v1

    invoke-virtual {v9, v10, v11}, Lcom/sun/prism/es2/GLContext;->renderMeshView(J)V

    .line 487
    return-void

    .line 461
    .end local v7    # "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    :cond_0
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/prism/es2/ES2Context;->projViewTx:Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    invoke-direct {v9, v10}, Lcom/sun/prism/es2/ES2Context;->updateRawMatrix(Lcom/sun/javafx/geom/transform/GeneralTransform3D;)V

    goto :goto_0

    .line 477
    .restart local v7    # "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    :cond_1
    move-object v9, v0

    move-object v10, v7

    invoke-virtual {v9, v10}, Lcom/sun/prism/es2/ES2Context;->updateWorldTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    goto :goto_1
.end method

.method setAmbientLight(JFFF)V
    .locals 13

    .prologue
    .line 429
    move-object v1, p0

    .local v1, "this":Lcom/sun/prism/es2/ES2Context;
    move-wide v2, p1

    .local v2, "nativeHandle":J
    move/from16 v4, p3

    .local v4, "r":F
    move/from16 v5, p4

    .local v5, "g":F
    move/from16 v6, p5

    .local v6, "b":F
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/prism/es2/ES2Context;->glContext:Lcom/sun/prism/es2/GLContext;

    move-wide v8, v2

    move v10, v4

    move v11, v5

    move v12, v6

    invoke-virtual/range {v7 .. v12}, Lcom/sun/prism/es2/GLContext;->setAmbientLight(JFFF)V

    .line 430
    return-void
.end method

.method setCullingMode(JI)V
    .locals 9

    .prologue
    .line 414
    move-object v1, p0

    .local v1, "this":Lcom/sun/prism/es2/ES2Context;
    move-wide v2, p1

    .local v2, "nativeHandle":J
    move v4, p3

    .local v4, "cullingMode":I
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/prism/es2/ES2Context;->glContext:Lcom/sun/prism/es2/GLContext;

    move-wide v6, v2

    move v8, v4

    invoke-virtual {v5, v6, v7, v8}, Lcom/sun/prism/es2/GLContext;->setCullingMode(JI)V

    .line 415
    return-void
.end method

.method public setDeviceParametersFor2D()V
    .locals 4

    .prologue
    .line 344
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Context;
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/sun/prism/es2/ES2Context;->indexBuffer:I

    .line 345
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/sun/prism/es2/ES2Context;->shaderProgram:I

    .line 346
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/es2/ES2Context;->glContext:Lcom/sun/prism/es2/GLContext;

    invoke-virtual {v2}, Lcom/sun/prism/es2/GLContext;->setDeviceParametersFor2D()V

    .line 348
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/prism/es2/ES2Context;->getVertexBuffer()Lcom/sun/prism/impl/VertexBuffer;

    move-result-object v2

    check-cast v2, Lcom/sun/prism/es2/ES2VertexBuffer;

    move-object v1, v2

    .line 351
    .local v1, "vb":Lcom/sun/prism/es2/ES2VertexBuffer;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/es2/ES2Context;->glContext:Lcom/sun/prism/es2/GLContext;

    invoke-virtual {v2, v3}, Lcom/sun/prism/es2/ES2VertexBuffer;->enableVertexAttributes(Lcom/sun/prism/es2/GLContext;)V

    .line 352
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/sun/prism/es2/ES2Context;->quadIndices:I

    invoke-virtual {v2, v3}, Lcom/sun/prism/es2/ES2Context;->setIndexBuffer(I)V

    .line 353
    return-void
.end method

.method public setDeviceParametersFor3D()V
    .locals 4

    .prologue
    .line 358
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Context;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/prism/es2/ES2Context;->getVertexBuffer()Lcom/sun/prism/impl/VertexBuffer;

    move-result-object v2

    check-cast v2, Lcom/sun/prism/es2/ES2VertexBuffer;

    move-object v1, v2

    .line 361
    .local v1, "vb":Lcom/sun/prism/es2/ES2VertexBuffer;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/es2/ES2Context;->glContext:Lcom/sun/prism/es2/GLContext;

    invoke-virtual {v2, v3}, Lcom/sun/prism/es2/ES2VertexBuffer;->disableVertexAttributes(Lcom/sun/prism/es2/GLContext;)V

    .line 362
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/es2/ES2Context;->glContext:Lcom/sun/prism/es2/GLContext;

    invoke-virtual {v2}, Lcom/sun/prism/es2/GLContext;->setDeviceParametersFor3D()V

    .line 363
    return-void
.end method

.method final setIndexBuffer(I)V
    .locals 8

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Context;
    move v1, p1

    .local v1, "ib":I
    move-object v2, v0

    iget v2, v2, Lcom/sun/prism/es2/ES2Context;->indexBuffer:I

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 109
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/es2/ES2Context;->glContext:Lcom/sun/prism/es2/GLContext;

    move-object v3, v0

    move v4, v1

    move-object v6, v3

    move v7, v4

    move v3, v7

    move-object v4, v6

    move v5, v7

    iput v5, v4, Lcom/sun/prism/es2/ES2Context;->indexBuffer:I

    invoke-virtual {v2, v3}, Lcom/sun/prism/es2/GLContext;->setIndexBuffer(I)V

    .line 111
    :cond_0
    return-void
.end method

.method setMap(JII)V
    .locals 11

    .prologue
    .line 400
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Context;
    move-wide v1, p1

    .local v1, "nativeHandle":J
    move v3, p3

    .local v3, "mapType":I
    move v4, p4

    .local v4, "texID":I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/prism/es2/ES2Context;->glContext:Lcom/sun/prism/es2/GLContext;

    move-wide v6, v1

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sun/prism/es2/GLContext;->setMap(JII)V

    .line 401
    return-void
.end method

.method setMaterial(JLcom/sun/prism/Material;)V
    .locals 11

    .prologue
    .line 418
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Context;
    move-wide v1, p1

    .local v1, "nativeHandle":J
    move-object v3, p3

    .local v3, "material":Lcom/sun/prism/Material;
    move-object v5, v3

    check-cast v5, Lcom/sun/prism/es2/ES2PhongMaterial;

    move-object v4, v5

    .line 420
    .local v4, "es2Material":Lcom/sun/prism/es2/ES2PhongMaterial;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/prism/es2/ES2Context;->glContext:Lcom/sun/prism/es2/GLContext;

    move-wide v6, v1

    move-object v8, v4

    .line 421
    invoke-virtual {v8}, Lcom/sun/prism/es2/ES2PhongMaterial;->getNativeHandle()J

    move-result-wide v8

    .line 420
    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sun/prism/es2/GLContext;->setMaterial(JJ)V

    .line 422
    return-void
.end method

.method setPointLight(JIFFFFFFF)V
    .locals 23

    .prologue
    .line 433
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Context;
    move-wide/from16 v1, p1

    .local v1, "nativeHandle":J
    move/from16 v3, p3

    .local v3, "index":I
    move/from16 v4, p4

    .local v4, "x":F
    move/from16 v5, p5

    .local v5, "y":F
    move/from16 v6, p6

    .local v6, "z":F
    move/from16 v7, p7

    .local v7, "r":F
    move/from16 v8, p8

    .local v8, "g":F
    move/from16 v9, p9

    .local v9, "b":F
    move/from16 v10, p10

    .local v10, "w":F
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/prism/es2/ES2Context;->glContext:Lcom/sun/prism/es2/GLContext;

    move-wide v12, v1

    move v14, v3

    move v15, v4

    move/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v8

    move/from16 v20, v9

    move/from16 v21, v10

    invoke-virtual/range {v11 .. v21}, Lcom/sun/prism/es2/GLContext;->setPointLight(JIFFFFFFF)V

    .line 434
    return-void
.end method

.method setShaderProgram(I)V
    .locals 4

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Context;
    move v1, p1

    .local v1, "progid":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/prism/es2/ES2Context;->shaderProgram:I

    .line 155
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/es2/ES2Context;->glContext:Lcom/sun/prism/es2/GLContext;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/prism/es2/GLContext;->setShaderProgram(I)V

    .line 156
    return-void
.end method

.method setSolidColor(JFFFF)V
    .locals 15

    .prologue
    .line 396
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Context;
    move-wide/from16 v1, p1

    .local v1, "nativeHandle":J
    move/from16 v3, p3

    .local v3, "r":F
    move/from16 v4, p4

    .local v4, "g":F
    move/from16 v5, p5

    .local v5, "b":F
    move/from16 v6, p6

    .local v6, "a":F
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/es2/ES2Context;->glContext:Lcom/sun/prism/es2/GLContext;

    move-wide v8, v1

    move v10, v3

    move v11, v4

    move v12, v5

    move v13, v6

    invoke-virtual/range {v7 .. v13}, Lcom/sun/prism/es2/GLContext;->setSolidColor(JFFFF)V

    .line 397
    return-void
.end method

.method setWireframe(JZ)V
    .locals 9

    .prologue
    .line 425
    move-object v1, p0

    .local v1, "this":Lcom/sun/prism/es2/ES2Context;
    move-wide v2, p1

    .local v2, "nativeHandle":J
    move v4, p3

    .local v4, "wireframe":Z
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/prism/es2/ES2Context;->glContext:Lcom/sun/prism/es2/GLContext;

    move-wide v6, v2

    move v8, v4

    invoke-virtual {v5, v6, v7, v8}, Lcom/sun/prism/es2/GLContext;->setWireframe(JZ)V

    .line 426
    return-void
.end method

.method protected updateClipRect(Lcom/sun/javafx/geom/Rectangle;)V
    .locals 13

    .prologue
    .line 294
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Context;
    move-object v1, p1

    .local v1, "clipRect":Lcom/sun/javafx/geom/Rectangle;
    move-object v7, v1

    if-eqz v7, :cond_0

    move-object v7, v1

    invoke-virtual {v7}, Lcom/sun/javafx/geom/Rectangle;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 295
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/es2/ES2Context;->glContext:Lcom/sun/prism/es2/GLContext;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Lcom/sun/prism/es2/GLContext;->scissorTest(ZIIII)V

    .line 316
    :goto_0
    return-void

    .line 302
    :cond_1
    move-object v7, v1

    iget v7, v7, Lcom/sun/javafx/geom/Rectangle;->width:I

    move v2, v7

    .line 303
    .local v2, "w":I
    move-object v7, v1

    iget v7, v7, Lcom/sun/javafx/geom/Rectangle;->height:I

    move v3, v7

    .line 304
    .local v3, "h":I
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/es2/ES2Context;->currentTarget:Lcom/sun/prism/RenderTarget;

    invoke-interface {v7}, Lcom/sun/prism/RenderTarget;->getContentX()I

    move-result v7

    move v4, v7

    .line 305
    .local v4, "x":I
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/es2/ES2Context;->currentTarget:Lcom/sun/prism/RenderTarget;

    invoke-interface {v7}, Lcom/sun/prism/RenderTarget;->getContentY()I

    move-result v7

    move v5, v7

    .line 306
    .local v5, "y":I
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/es2/ES2Context;->currentTarget:Lcom/sun/prism/RenderTarget;

    instance-of v7, v7, Lcom/sun/prism/es2/ES2RTTexture;

    if-eqz v7, :cond_2

    .line 307
    move v7, v4

    move-object v8, v1

    iget v8, v8, Lcom/sun/javafx/geom/Rectangle;->x:I

    add-int/2addr v7, v8

    move v4, v7

    .line 308
    move v7, v5

    move-object v8, v1

    iget v8, v8, Lcom/sun/javafx/geom/Rectangle;->y:I

    add-int/2addr v7, v8

    move v5, v7

    .line 314
    :goto_1
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/es2/ES2Context;->glContext:Lcom/sun/prism/es2/GLContext;

    const/4 v8, 0x1

    move v9, v4

    move v10, v5

    move v11, v2

    move v12, v3

    invoke-virtual/range {v7 .. v12}, Lcom/sun/prism/es2/GLContext;->scissorTest(ZIIII)V

    goto :goto_0

    .line 310
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/es2/ES2Context;->currentTarget:Lcom/sun/prism/RenderTarget;

    invoke-interface {v7}, Lcom/sun/prism/RenderTarget;->getPhysicalHeight()I

    move-result v7

    move v6, v7

    .line 311
    .local v6, "dsth":I
    move v7, v4

    move-object v8, v1

    iget v8, v8, Lcom/sun/javafx/geom/Rectangle;->x:I

    add-int/2addr v7, v8

    move v4, v7

    .line 312
    move v7, v5

    move v8, v6

    move-object v9, v1

    iget v9, v9, Lcom/sun/javafx/geom/Rectangle;->y:I

    move v10, v3

    add-int/2addr v9, v10

    sub-int/2addr v8, v9

    add-int/2addr v7, v8

    move v5, v7

    goto :goto_1
.end method

.method protected updateCompositeMode(Lcom/sun/prism/CompositeMode;)V
    .locals 7

    .prologue
    .line 320
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Context;
    move-object v1, p1

    .local v1, "mode":Lcom/sun/prism/CompositeMode;
    sget-object v2, Lcom/sun/prism/es2/ES2Context$1;->$SwitchMap$com$sun$prism$CompositeMode:[I

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/prism/CompositeMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 337
    new-instance v2, Ljava/lang/InternalError;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unrecognized composite mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 322
    :pswitch_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/es2/ES2Context;->glContext:Lcom/sun/prism/es2/GLContext;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sun/prism/es2/GLContext;->blendFunc(II)V

    .line 323
    .line 339
    :goto_0
    return-void

    .line 325
    :pswitch_1
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/es2/ES2Context;->glContext:Lcom/sun/prism/es2/GLContext;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sun/prism/es2/GLContext;->blendFunc(II)V

    .line 326
    goto :goto_0

    .line 328
    :pswitch_2
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/es2/ES2Context;->glContext:Lcom/sun/prism/es2/GLContext;

    const/4 v3, 0x1

    const/4 v4, 0x7

    invoke-virtual {v2, v3, v4}, Lcom/sun/prism/es2/GLContext;->blendFunc(II)V

    .line 329
    goto :goto_0

    .line 331
    :pswitch_3
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/es2/ES2Context;->glContext:Lcom/sun/prism/es2/GLContext;

    const/4 v3, 0x0

    const/4 v4, 0x7

    invoke-virtual {v2, v3, v4}, Lcom/sun/prism/es2/GLContext;->blendFunc(II)V

    .line 332
    goto :goto_0

    .line 334
    :pswitch_4
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/es2/ES2Context;->glContext:Lcom/sun/prism/es2/GLContext;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/sun/prism/es2/GLContext;->blendFunc(II)V

    .line 335
    goto :goto_0

    .line 320
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected updateRenderTarget(Lcom/sun/prism/RenderTarget;Lcom/sun/javafx/sg/prism/NGCamera;Z)Lcom/sun/prism/impl/ps/BaseShaderContext$State;
    .locals 23

    .prologue
    .line 180
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/prism/es2/ES2Context;
    move-object/from16 v3, p1

    .local v3, "target":Lcom/sun/prism/RenderTarget;
    move-object/from16 v4, p2

    .local v4, "camera":Lcom/sun/javafx/sg/prism/NGCamera;
    move/from16 v5, p3

    .local v5, "depthTest":Z
    move-object/from16 v16, v3

    check-cast v16, Lcom/sun/prism/es2/ES2RenderTarget;

    invoke-interface/range {v16 .. v16}, Lcom/sun/prism/es2/ES2RenderTarget;->getFboID()I

    move-result v16

    move/from16 v6, v16

    .line 181
    .local v6, "fboID":I
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/prism/es2/ES2Context;->glContext:Lcom/sun/prism/es2/GLContext;

    move-object/from16 v16, v0

    move/from16 v17, v6

    invoke-virtual/range {v16 .. v17}, Lcom/sun/prism/es2/GLContext;->bindFBO(I)V

    .line 183
    const/16 v16, 0x0

    move/from16 v7, v16

    .line 184
    .local v7, "msaa":Z
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/sun/prism/es2/ES2RTTexture;

    move/from16 v16, v0

    if-eqz v16, :cond_0

    .line 186
    move-object/from16 v16, v3

    check-cast v16, Lcom/sun/prism/es2/ES2RTTexture;

    move-object/from16 v8, v16

    .line 187
    .local v8, "rtTarget":Lcom/sun/prism/es2/ES2RTTexture;
    move-object/from16 v16, v8

    invoke-virtual/range {v16 .. v16}, Lcom/sun/prism/es2/ES2RTTexture;->isMSAA()Z

    move-result v16

    move/from16 v7, v16

    .line 188
    move/from16 v16, v5

    if-eqz v16, :cond_0

    .line 189
    move-object/from16 v16, v8

    move-object/from16 v17, v2

    invoke-virtual/range {v16 .. v17}, Lcom/sun/prism/es2/ES2RTTexture;->attachDepthBuffer(Lcom/sun/prism/es2/ES2Context;)V

    .line 194
    .end local v8    # "rtTarget":Lcom/sun/prism/es2/ES2RTTexture;
    :cond_0
    move-object/from16 v16, v3

    invoke-interface/range {v16 .. v16}, Lcom/sun/prism/RenderTarget;->getContentX()I

    move-result v16

    move/from16 v8, v16

    .line 195
    .local v8, "x":I
    move-object/from16 v16, v3

    invoke-interface/range {v16 .. v16}, Lcom/sun/prism/RenderTarget;->getContentY()I

    move-result v16

    move/from16 v9, v16

    .line 196
    .local v9, "y":I
    move-object/from16 v16, v3

    invoke-interface/range {v16 .. v16}, Lcom/sun/prism/RenderTarget;->getContentWidth()I

    move-result v16

    move/from16 v10, v16

    .line 197
    .local v10, "w":I
    move-object/from16 v16, v3

    invoke-interface/range {v16 .. v16}, Lcom/sun/prism/RenderTarget;->getContentHeight()I

    move-result v16

    move/from16 v11, v16

    .line 198
    .local v11, "h":I
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/prism/es2/ES2Context;->glContext:Lcom/sun/prism/es2/GLContext;

    move-object/from16 v16, v0

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v10

    move/from16 v20, v11

    move/from16 v21, v5

    invoke-virtual/range {v16 .. v21}, Lcom/sun/prism/es2/GLContext;->updateViewportAndDepthTest(IIIIZ)V

    .line 199
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/prism/es2/ES2Context;->glContext:Lcom/sun/prism/es2/GLContext;

    move-object/from16 v16, v0

    move/from16 v17, v7

    invoke-virtual/range {v16 .. v17}, Lcom/sun/prism/es2/GLContext;->updateMSAAState(Z)V

    .line 201
    move-object/from16 v16, v4

    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/sun/javafx/sg/prism/NGDefaultCamera;

    move/from16 v16, v0

    if-eqz v16, :cond_2

    .line 204
    move-object/from16 v16, v4

    check-cast v16, Lcom/sun/javafx/sg/prism/NGDefaultCamera;

    move/from16 v17, v10

    move/from16 v18, v11

    invoke-virtual/range {v16 .. v18}, Lcom/sun/javafx/sg/prism/NGDefaultCamera;->validate(II)V

    .line 205
    move-object/from16 v16, v4

    sget-object v17, Lcom/sun/prism/es2/ES2Context;->scratchTx:Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    invoke-virtual/range {v16 .. v17}, Lcom/sun/javafx/sg/prism/NGCamera;->getProjViewTx(Lcom/sun/javafx/geom/transform/GeneralTransform3D;)Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    move-result-object v16

    sput-object v16, Lcom/sun/prism/es2/ES2Context;->scratchTx:Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    .line 217
    :cond_1
    :goto_0
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/sun/prism/es2/ES2RTTexture;

    move/from16 v16, v0

    if-eqz v16, :cond_4

    .line 219
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/prism/es2/ES2Context;->projViewTx:Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    move-object/from16 v16, v0

    sget-object v17, Lcom/sun/prism/es2/ES2Context;->flipTx:Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    invoke-virtual/range {v16 .. v17}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->set(Lcom/sun/javafx/geom/transform/GeneralTransform3D;)Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    move-result-object v16

    .line 220
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/prism/es2/ES2Context;->projViewTx:Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    move-object/from16 v16, v0

    sget-object v17, Lcom/sun/prism/es2/ES2Context;->scratchTx:Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    invoke-virtual/range {v16 .. v17}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mul(Lcom/sun/javafx/geom/transform/GeneralTransform3D;)Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    move-result-object v16

    .line 227
    :goto_1
    move-object/from16 v16, v2

    move-object/from16 v17, v4

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/prism/es2/ES2Context;->cameraPos:Lcom/sun/javafx/geom/Vec3d;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/sun/javafx/sg/prism/NGCamera;->getPositionInWorld(Lcom/sun/javafx/geom/Vec3d;)Lcom/sun/javafx/geom/Vec3d;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/sun/prism/es2/ES2Context;->cameraPos:Lcom/sun/javafx/geom/Vec3d;

    .line 229
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/sun/prism/es2/ES2Context;->currentTarget:Lcom/sun/prism/RenderTarget;

    .line 230
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/prism/es2/ES2Context;->state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    move-object/from16 v16, v0

    move-object/from16 v2, v16

    .end local v2    # "this":Lcom/sun/prism/es2/ES2Context;
    return-object v2

    .line 207
    .restart local v2    # "this":Lcom/sun/prism/es2/ES2Context;
    :cond_2
    move-object/from16 v16, v4

    sget-object v17, Lcom/sun/prism/es2/ES2Context;->scratchTx:Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    invoke-virtual/range {v16 .. v17}, Lcom/sun/javafx/sg/prism/NGCamera;->getProjViewTx(Lcom/sun/javafx/geom/transform/GeneralTransform3D;)Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    move-result-object v16

    sput-object v16, Lcom/sun/prism/es2/ES2Context;->scratchTx:Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    .line 210
    move-object/from16 v16, v4

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/sg/prism/NGCamera;->getViewWidth()D

    move-result-wide v16

    move-wide/from16 v12, v16

    .line 211
    .local v12, "vw":D
    move-object/from16 v16, v4

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/sg/prism/NGCamera;->getViewHeight()D

    move-result-wide v16

    move-wide/from16 v14, v16

    .line 212
    .local v14, "vh":D
    move/from16 v16, v10

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v18, v12

    cmpl-double v16, v16, v18

    if-nez v16, :cond_3

    move/from16 v16, v11

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v18, v14

    cmpl-double v16, v16, v18

    if-eqz v16, :cond_1

    .line 213
    :cond_3
    sget-object v16, Lcom/sun/prism/es2/ES2Context;->scratchTx:Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    move-wide/from16 v17, v12

    move/from16 v19, v10

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    div-double v17, v17, v19

    move-wide/from16 v19, v14

    move/from16 v21, v11

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    div-double v19, v19, v21

    const-wide/high16 v21, 0x3ff0000000000000L    # 1.0

    invoke-virtual/range {v16 .. v22}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->scale(DDD)Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    move-result-object v16

    goto/16 :goto_0

    .line 222
    .end local v12    # "vw":D
    .end local v14    # "vh":D
    :cond_4
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/prism/es2/ES2Context;->projViewTx:Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    move-object/from16 v16, v0

    sget-object v17, Lcom/sun/prism/es2/ES2Context;->scratchTx:Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    invoke-virtual/range {v16 .. v17}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->set(Lcom/sun/javafx/geom/transform/GeneralTransform3D;)Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    move-result-object v16

    goto/16 :goto_1
.end method

.method updateShaderProgram(I)V
    .locals 4

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Context;
    move v1, p1

    .local v1, "progid":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/prism/es2/ES2Context;->shaderProgram:I

    if-eq v2, v3, :cond_0

    .line 162
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/prism/es2/ES2Context;->setShaderProgram(I)V

    .line 164
    :cond_0
    return-void
.end method

.method protected updateShaderTransform(Lcom/sun/prism/ps/Shader;Lcom/sun/javafx/geom/transform/BaseTransform;)V
    .locals 14

    .prologue
    .line 249
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Context;
    move-object v1, p1

    .local v1, "shader":Lcom/sun/prism/ps/Shader;
    move-object/from16 v2, p2

    .local v2, "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v8, v2

    if-nez v8, :cond_0

    .line 250
    sget-object v8, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v2, v8

    .line 253
    :cond_0
    sget-object v8, Lcom/sun/prism/es2/ES2Context;->scratchTx:Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/prism/es2/ES2Context;->projViewTx:Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    invoke-virtual {v8, v9}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->set(Lcom/sun/javafx/geom/transform/GeneralTransform3D;)Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    move-result-object v8

    .line 254
    move-object v8, v0

    sget-object v9, Lcom/sun/prism/es2/ES2Context;->scratchTx:Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    move-object v10, v2

    invoke-virtual {v9, v10}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mul(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/sun/prism/es2/ES2Context;->updateRawMatrix(Lcom/sun/javafx/geom/transform/GeneralTransform3D;)V

    .line 256
    move-object v8, v1

    check-cast v8, Lcom/sun/prism/es2/ES2Shader;

    move-object v3, v8

    .line 257
    .local v3, "es2shader":Lcom/sun/prism/es2/ES2Shader;
    move-object v8, v3

    const-string v9, "mvpMatrix"

    sget-object v10, Lcom/sun/prism/es2/ES2Context;->rawMatrix:[F

    invoke-virtual {v8, v9, v10}, Lcom/sun/prism/es2/ES2Shader;->setMatrix(Ljava/lang/String;[F)V

    .line 260
    move-object v8, v3

    invoke-virtual {v8}, Lcom/sun/prism/es2/ES2Shader;->isPixcoordUsed()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 268
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/prism/es2/ES2Context;->currentTarget:Lcom/sun/prism/RenderTarget;

    invoke-interface {v8}, Lcom/sun/prism/RenderTarget;->getContentX()I

    move-result v8

    int-to-float v8, v8

    move v4, v8

    .line 269
    .local v4, "xoff":F
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/prism/es2/ES2Context;->currentTarget:Lcom/sun/prism/RenderTarget;

    invoke-interface {v8}, Lcom/sun/prism/RenderTarget;->getContentY()I

    move-result v8

    int-to-float v8, v8

    move v5, v8

    .line 271
    .local v5, "yoff":F
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/prism/es2/ES2Context;->currentTarget:Lcom/sun/prism/RenderTarget;

    instance-of v8, v8, Lcom/sun/prism/es2/ES2SwapChain;

    if-eqz v8, :cond_2

    .line 273
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/prism/es2/ES2Context;->currentTarget:Lcom/sun/prism/RenderTarget;

    invoke-interface {v8}, Lcom/sun/prism/RenderTarget;->getPhysicalHeight()I

    move-result v8

    int-to-float v8, v8

    move v6, v8

    .line 274
    .local v6, "yinv":F
    const/high16 v8, 0x3f800000    # 1.0f

    move v7, v8

    .line 280
    .local v7, "yflip":F
    :goto_0
    move-object v8, v1

    const-string v9, "jsl_pixCoordOffset"

    move v10, v4

    move v11, v5

    move v12, v6

    move v13, v7

    invoke-interface/range {v8 .. v13}, Lcom/sun/prism/ps/Shader;->setConstant(Ljava/lang/String;FFFF)V

    .line 282
    .end local v4    # "xoff":F
    .end local v5    # "yoff":F
    .end local v6    # "yinv":F
    .end local v7    # "yflip":F
    :cond_1
    return-void

    .line 277
    .restart local v4    # "xoff":F
    .restart local v5    # "yoff":F
    :cond_2
    const/4 v8, 0x0

    move v6, v8

    .line 278
    .restart local v6    # "yinv":F
    const/high16 v8, -0x40800000    # -1.0f

    move v7, v8

    .restart local v7    # "yflip":F
    goto :goto_0
.end method

.method protected updateTexture(ILcom/sun/prism/Texture;)V
    .locals 6

    .prologue
    .line 235
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Context;
    move v1, p1

    .local v1, "texUnit":I
    move-object v2, p2

    .local v2, "tex":Lcom/sun/prism/Texture;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/prism/es2/ES2Context;->glContext:Lcom/sun/prism/es2/GLContext;

    move v5, v1

    invoke-virtual {v4, v5}, Lcom/sun/prism/es2/GLContext;->updateActiveTextureUnit(I)V

    .line 237
    move-object v4, v2

    if-nez v4, :cond_0

    .line 238
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/prism/es2/ES2Context;->glContext:Lcom/sun/prism/es2/GLContext;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sun/prism/es2/GLContext;->updateBoundTexture(I)V

    .line 245
    :goto_0
    return-void

    .line 240
    :cond_0
    move-object v4, v2

    check-cast v4, Lcom/sun/prism/es2/ES2Texture;

    move-object v3, v4

    .line 241
    .local v3, "es2Tex":Lcom/sun/prism/es2/ES2Texture;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/prism/es2/ES2Context;->glContext:Lcom/sun/prism/es2/GLContext;

    move-object v5, v3

    invoke-virtual {v5}, Lcom/sun/prism/es2/ES2Texture;->getNativeSourceHandle()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sun/prism/es2/GLContext;->updateBoundTexture(I)V

    .line 242
    move-object v4, v3

    invoke-virtual {v4}, Lcom/sun/prism/es2/ES2Texture;->updateWrapState()V

    .line 243
    move-object v4, v3

    invoke-virtual {v4}, Lcom/sun/prism/es2/ES2Texture;->updateFilterState()V

    goto :goto_0
.end method

.method protected updateWorldTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)V
    .locals 4

    .prologue
    .line 286
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Context;
    move-object v1, p1

    .local v1, "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/es2/ES2Context;->worldTx:Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    invoke-virtual {v2}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->setIdentity()Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    move-result-object v2

    .line 287
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/geom/transform/BaseTransform;->isIdentity()Z

    move-result v2

    if-nez v2, :cond_0

    .line 288
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/es2/ES2Context;->worldTx:Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mul(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    move-result-object v2

    .line 290
    :cond_0
    return-void
.end method
