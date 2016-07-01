.class Lcom/sun/prism/impl/ps/PaintHelper;
.super Ljava/lang/Object;
.source "PaintHelper.java"


# static fields
.field private static final FULL_TEXEL_Y:F = 0.00390625f

.field private static final GTEX_CLR_TABLE_MIRRORED_SIZE:I = 0xc9

.field private static final GTEX_CLR_TABLE_SIZE:I = 0x65

.field private static final HALF_TEXEL_Y:F = 0.001953125f

.field private static final MULTI_CACHE_SIZE:I = 0x100

.field static final MULTI_MAX_FRACTIONS:I = 0xc

.field private static final MULTI_TEXTURE_SIZE:I = 0x10

.field private static PINK:Lcom/sun/prism/paint/Color;

.field private static final bgraColors:Ljava/nio/ByteBuffer;

.field private static cacheOffset:J

.field private static final colorsImg:Lcom/sun/prism/Image;

.field private static gradientCacheTexture:Lcom/sun/prism/Texture;

.field private static gtexCacheTexture:Lcom/sun/prism/Texture;

.field private static final gtexColors:[B

.field private static final gtexImg:Lcom/sun/prism/Image;

.field private static final previousColors:[I

.field private static final scratchXform2D:Lcom/sun/javafx/geom/transform/Affine2D;

.field private static final scratchXform3D:Lcom/sun/javafx/geom/transform/Affine3D;

.field private static final stopVals:Ljava/nio/FloatBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 91
    const/16 v0, 0x30

    .line 92
    invoke-static {v0}, Lcom/sun/prism/impl/BufferUtil;->newFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/sun/prism/impl/ps/PaintHelper;->stopVals:Ljava/nio/FloatBuffer;

    .line 93
    const/16 v0, 0x40

    .line 94
    invoke-static {v0}, Lcom/sun/prism/impl/BufferUtil;->newByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/sun/prism/impl/ps/PaintHelper;->bgraColors:Ljava/nio/ByteBuffer;

    .line 95
    sget-object v0, Lcom/sun/prism/impl/ps/PaintHelper;->bgraColors:Ljava/nio/ByteBuffer;

    const/16 v1, 0x10

    const/4 v2, 0x1

    .line 96
    invoke-static {v0, v1, v2}, Lcom/sun/prism/Image;->fromByteBgraPreData(Ljava/nio/ByteBuffer;II)Lcom/sun/prism/Image;

    move-result-object v0

    sput-object v0, Lcom/sun/prism/impl/ps/PaintHelper;->colorsImg:Lcom/sun/prism/Image;

    .line 97
    const/16 v0, 0x10

    new-array v0, v0, [I

    sput-object v0, Lcom/sun/prism/impl/ps/PaintHelper;->previousColors:[I

    .line 99
    const/16 v0, 0x324

    new-array v0, v0, [B

    sput-object v0, Lcom/sun/prism/impl/ps/PaintHelper;->gtexColors:[B

    .line 100
    sget-object v0, Lcom/sun/prism/impl/ps/PaintHelper;->gtexColors:[B

    .line 101
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/16 v1, 0xc9

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sun/prism/Image;->fromByteBgraPreData(Ljava/nio/ByteBuffer;II)Lcom/sun/prism/Image;

    move-result-object v0

    sput-object v0, Lcom/sun/prism/impl/ps/PaintHelper;->gtexImg:Lcom/sun/prism/Image;

    .line 103
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/sun/prism/impl/ps/PaintHelper;->cacheOffset:J

    .line 105
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/prism/impl/ps/PaintHelper;->gradientCacheTexture:Lcom/sun/prism/Texture;

    .line 106
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/prism/impl/ps/PaintHelper;->gtexCacheTexture:Lcom/sun/prism/Texture;

    .line 108
    new-instance v0, Lcom/sun/javafx/geom/transform/Affine2D;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    invoke-direct {v1}, Lcom/sun/javafx/geom/transform/Affine2D;-><init>()V

    sput-object v0, Lcom/sun/prism/impl/ps/PaintHelper;->scratchXform2D:Lcom/sun/javafx/geom/transform/Affine2D;

    .line 109
    new-instance v0, Lcom/sun/javafx/geom/transform/Affine3D;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    invoke-direct {v1}, Lcom/sun/javafx/geom/transform/Affine3D;-><init>()V

    sput-object v0, Lcom/sun/prism/impl/ps/PaintHelper;->scratchXform3D:Lcom/sun/javafx/geom/transform/Affine3D;

    .line 212
    new-instance v0, Lcom/sun/prism/paint/Color;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3da0a0a1

    const v4, 0x3f139394

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sun/prism/paint/Color;-><init>(FFFF)V

    sput-object v0, Lcom/sun/prism/impl/ps/PaintHelper;->PINK:Lcom/sun/prism/paint/Color;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/PaintHelper;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getGradientTexture(Lcom/sun/prism/ps/ShaderGraphics;Lcom/sun/prism/paint/Gradient;)Lcom/sun/prism/Texture;
    .locals 3

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "g":Lcom/sun/prism/ps/ShaderGraphics;
    move-object v1, p1

    .local v1, "paint":Lcom/sun/prism/paint/Gradient;
    sget-object v2, Lcom/sun/prism/impl/ps/PaintHelper;->gradientCacheTexture:Lcom/sun/prism/Texture;

    if-nez v2, :cond_0

    .line 141
    move-object v2, v0

    invoke-static {v2}, Lcom/sun/prism/impl/ps/PaintHelper;->initGradientTextures(Lcom/sun/prism/ps/ShaderGraphics;)V

    .line 148
    :cond_0
    sget-object v2, Lcom/sun/prism/impl/ps/PaintHelper;->gradientCacheTexture:Lcom/sun/prism/Texture;

    invoke-interface {v2}, Lcom/sun/prism/Texture;->lock()V

    .line 149
    sget-object v2, Lcom/sun/prism/impl/ps/PaintHelper;->gradientCacheTexture:Lcom/sun/prism/Texture;

    move-object v0, v2

    .end local v0    # "g":Lcom/sun/prism/ps/ShaderGraphics;
    return-object v0
.end method

.method static getImagePatternTx(Lcom/sun/prism/ps/ShaderGraphics;Lcom/sun/prism/paint/ImagePattern;Lcom/sun/prism/ps/Shader;Lcom/sun/javafx/geom/transform/BaseTransform;FFFF)Lcom/sun/javafx/geom/transform/AffineBase;
    .locals 32

    .prologue
    .line 828
    move-object/from16 v2, p0

    .local v2, "g":Lcom/sun/prism/ps/ShaderGraphics;
    move-object/from16 v3, p1

    .local v3, "paint":Lcom/sun/prism/paint/ImagePattern;
    move-object/from16 v4, p2

    .local v4, "shader":Lcom/sun/prism/ps/Shader;
    move-object/from16 v5, p3

    .local v5, "renderTx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move/from16 v6, p4

    .local v6, "rx":F
    move/from16 v7, p5

    .local v7, "ry":F
    move/from16 v8, p6

    .local v8, "rw":F
    move/from16 v9, p7

    .local v9, "rh":F
    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Lcom/sun/prism/paint/ImagePattern;->getX()F

    move-result v25

    move/from16 v10, v25

    .line 829
    .local v10, "px":F
    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Lcom/sun/prism/paint/ImagePattern;->getY()F

    move-result v25

    move/from16 v11, v25

    .line 830
    .local v11, "py":F
    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Lcom/sun/prism/paint/ImagePattern;->getWidth()F

    move-result v25

    move/from16 v12, v25

    .line 831
    .local v12, "pw":F
    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Lcom/sun/prism/paint/ImagePattern;->getHeight()F

    move-result v25

    move/from16 v13, v25

    .line 832
    .local v13, "ph":F
    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Lcom/sun/prism/paint/ImagePattern;->isProportional()Z

    move-result v25

    if-eqz v25, :cond_0

    .line 833
    move/from16 v25, v6

    move/from16 v26, v10

    move/from16 v27, v8

    mul-float v26, v26, v27

    add-float v25, v25, v26

    move/from16 v10, v25

    .line 834
    move/from16 v25, v7

    move/from16 v26, v11

    move/from16 v27, v9

    mul-float v26, v26, v27

    add-float v25, v25, v26

    move/from16 v11, v25

    .line 835
    move/from16 v25, v12

    move/from16 v26, v8

    mul-float v25, v25, v26

    move/from16 v12, v25

    .line 836
    move/from16 v25, v13

    move/from16 v26, v9

    mul-float v25, v25, v26

    move/from16 v13, v25

    .line 839
    :cond_0
    move-object/from16 v25, v2

    invoke-interface/range {v25 .. v25}, Lcom/sun/prism/ps/ShaderGraphics;->getResourceFactory()Lcom/sun/prism/ResourceFactory;

    move-result-object v25

    move-object/from16 v14, v25

    .line 840
    .local v14, "rf":Lcom/sun/prism/ResourceFactory;
    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Lcom/sun/prism/paint/ImagePattern;->getImage()Lcom/sun/prism/Image;

    move-result-object v25

    move-object/from16 v15, v25

    .line 841
    .local v15, "img":Lcom/sun/prism/Image;
    move-object/from16 v25, v14

    move-object/from16 v26, v15

    sget-object v27, Lcom/sun/prism/Texture$WrapMode;->REPEAT:Lcom/sun/prism/Texture$WrapMode;

    invoke-interface/range {v25 .. v27}, Lcom/sun/prism/ResourceFactory;->getCachedTexture(Lcom/sun/prism/Image;Lcom/sun/prism/Texture$WrapMode;)Lcom/sun/prism/Texture;

    move-result-object v25

    move-object/from16 v16, v25

    .line 842
    .local v16, "paintTex":Lcom/sun/prism/Texture;
    move-object/from16 v25, v16

    invoke-interface/range {v25 .. v25}, Lcom/sun/prism/Texture;->getContentX()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v17, v25

    .line 843
    .local v17, "cx":F
    move-object/from16 v25, v16

    invoke-interface/range {v25 .. v25}, Lcom/sun/prism/Texture;->getContentY()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v18, v25

    .line 844
    .local v18, "cy":F
    move-object/from16 v25, v16

    invoke-interface/range {v25 .. v25}, Lcom/sun/prism/Texture;->getContentWidth()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v19, v25

    .line 845
    .local v19, "cw":F
    move-object/from16 v25, v16

    invoke-interface/range {v25 .. v25}, Lcom/sun/prism/Texture;->getContentHeight()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v20, v25

    .line 846
    .local v20, "ch":F
    move-object/from16 v25, v16

    invoke-interface/range {v25 .. v25}, Lcom/sun/prism/Texture;->getPhysicalWidth()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v21, v25

    .line 847
    .local v21, "texw":F
    move-object/from16 v25, v16

    invoke-interface/range {v25 .. v25}, Lcom/sun/prism/Texture;->getPhysicalHeight()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v22, v25

    .line 848
    .local v22, "texh":F
    move-object/from16 v25, v16

    invoke-interface/range {v25 .. v25}, Lcom/sun/prism/Texture;->unlock()V

    .line 852
    move-object/from16 v25, v5

    invoke-virtual/range {v25 .. v25}, Lcom/sun/javafx/geom/transform/BaseTransform;->isIdentity()Z

    move-result v25

    if-eqz v25, :cond_3

    .line 853
    sget-object v25, Lcom/sun/prism/impl/ps/PaintHelper;->scratchXform2D:Lcom/sun/javafx/geom/transform/Affine2D;

    move-object/from16 v24, v25

    .line 855
    .local v24, "at":Lcom/sun/javafx/geom/transform/Affine2D;
    move-object/from16 v25, v24

    move/from16 v26, v10

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    move/from16 v28, v11

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-virtual/range {v25 .. v29}, Lcom/sun/javafx/geom/transform/Affine2D;->setToTranslation(DD)V

    .line 856
    move-object/from16 v25, v24

    move/from16 v26, v12

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    move/from16 v28, v13

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-virtual/range {v25 .. v29}, Lcom/sun/javafx/geom/transform/Affine2D;->scale(DD)V

    .line 857
    move-object/from16 v25, v24

    move-object/from16 v23, v25

    .line 868
    .end local v24    # "at":Lcom/sun/javafx/geom/transform/Affine2D;
    .local v23, "ret":Lcom/sun/javafx/geom/transform/AffineBase;
    :goto_0
    move/from16 v25, v19

    move/from16 v26, v21

    cmpg-float v25, v25, v26

    if-gez v25, :cond_1

    .line 869
    move-object/from16 v25, v23

    const-wide/high16 v26, 0x3fe0000000000000L    # 0.5

    move/from16 v28, v19

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    div-double v26, v26, v28

    const-wide/16 v28, 0x0

    invoke-virtual/range {v25 .. v29}, Lcom/sun/javafx/geom/transform/AffineBase;->translate(DD)V

    .line 870
    move/from16 v25, v17

    const/high16 v26, 0x3f000000    # 0.5f

    add-float v25, v25, v26

    move/from16 v17, v25

    .line 872
    :cond_1
    move/from16 v25, v20

    move/from16 v26, v22

    cmpg-float v25, v25, v26

    if-gez v25, :cond_2

    .line 873
    move-object/from16 v25, v23

    const-wide/16 v26, 0x0

    const-wide/high16 v28, 0x3fe0000000000000L    # 0.5

    move/from16 v30, v20

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    div-double v28, v28, v30

    invoke-virtual/range {v25 .. v29}, Lcom/sun/javafx/geom/transform/AffineBase;->translate(DD)V

    .line 874
    move/from16 v25, v18

    const/high16 v26, 0x3f000000    # 0.5f

    add-float v25, v25, v26

    move/from16 v18, v25

    .line 878
    :cond_2
    move-object/from16 v25, v23

    :try_start_0
    invoke-virtual/range {v25 .. v25}, Lcom/sun/javafx/geom/transform/AffineBase;->invert()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 882
    .line 884
    :goto_1
    move/from16 v25, v17

    move/from16 v26, v21

    div-float v25, v25, v26

    move/from16 v17, v25

    .line 885
    move/from16 v25, v18

    move/from16 v26, v22

    div-float v25, v25, v26

    move/from16 v18, v25

    .line 886
    move/from16 v25, v19

    move/from16 v26, v21

    div-float v25, v25, v26

    move/from16 v19, v25

    .line 887
    move/from16 v25, v20

    move/from16 v26, v22

    div-float v25, v25, v26

    move/from16 v20, v25

    .line 888
    move-object/from16 v25, v4

    const-string v26, "content"

    move/from16 v27, v17

    move/from16 v28, v18

    move/from16 v29, v19

    move/from16 v30, v20

    invoke-interface/range {v25 .. v30}, Lcom/sun/prism/ps/Shader;->setConstant(Ljava/lang/String;FFFF)V

    .line 890
    move-object/from16 v25, v23

    move-object/from16 v2, v25

    .end local v2    # "g":Lcom/sun/prism/ps/ShaderGraphics;
    return-object v2

    .line 859
    .end local v23    # "ret":Lcom/sun/javafx/geom/transform/AffineBase;
    .restart local v2    # "g":Lcom/sun/prism/ps/ShaderGraphics;
    :cond_3
    sget-object v25, Lcom/sun/prism/impl/ps/PaintHelper;->scratchXform3D:Lcom/sun/javafx/geom/transform/Affine3D;

    move-object/from16 v24, v25

    .line 860
    .local v24, "at":Lcom/sun/javafx/geom/transform/Affine3D;
    move-object/from16 v25, v24

    move-object/from16 v26, v5

    invoke-virtual/range {v25 .. v26}, Lcom/sun/javafx/geom/transform/Affine3D;->setTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 862
    move-object/from16 v25, v24

    move/from16 v26, v10

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    move/from16 v28, v11

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-virtual/range {v25 .. v29}, Lcom/sun/javafx/geom/transform/Affine3D;->translate(DD)V

    .line 863
    move-object/from16 v25, v24

    move/from16 v26, v12

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    move/from16 v28, v13

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-virtual/range {v25 .. v29}, Lcom/sun/javafx/geom/transform/Affine3D;->scale(DD)V

    .line 864
    move-object/from16 v25, v24

    move-object/from16 v23, v25

    .restart local v23    # "ret":Lcom/sun/javafx/geom/transform/AffineBase;
    goto/16 :goto_0

    .line 879
    .end local v24    # "at":Lcom/sun/javafx/geom/transform/Affine3D;
    :catch_0
    move-exception v25

    move-object/from16 v24, v25

    .line 880
    .local v24, "e":Ljava/lang/Exception;
    sget-object v25, Lcom/sun/prism/impl/ps/PaintHelper;->scratchXform2D:Lcom/sun/javafx/geom/transform/Affine2D;

    move-object/from16 v23, v25

    .line 881
    sget-object v25, Lcom/sun/prism/impl/ps/PaintHelper;->scratchXform2D:Lcom/sun/javafx/geom/transform/Affine2D;

    const-wide/16 v26, 0x0

    const-wide/16 v28, 0x0

    invoke-virtual/range {v25 .. v29}, Lcom/sun/javafx/geom/transform/Affine2D;->setToScale(DD)V

    goto :goto_1
.end method

.method static getLinearGradientTx(Lcom/sun/prism/paint/LinearGradient;Lcom/sun/prism/ps/Shader;Lcom/sun/javafx/geom/transform/BaseTransform;FFFF)Lcom/sun/javafx/geom/transform/AffineBase;
    .locals 24

    .prologue
    .line 442
    move-object/from16 v2, p0

    .local v2, "paint":Lcom/sun/prism/paint/LinearGradient;
    move-object/from16 v3, p1

    .local v3, "shader":Lcom/sun/prism/ps/Shader;
    move-object/from16 v4, p2

    .local v4, "renderTx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move/from16 v5, p3

    .local v5, "rx":F
    move/from16 v6, p4

    .local v6, "ry":F
    move/from16 v7, p5

    .local v7, "rw":F
    move/from16 v8, p6

    .local v8, "rh":F
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lcom/sun/prism/paint/LinearGradient;->getX1()F

    move-result v19

    move/from16 v10, v19

    .line 443
    .local v10, "x1":F
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lcom/sun/prism/paint/LinearGradient;->getY1()F

    move-result v19

    move/from16 v11, v19

    .line 444
    .local v11, "y1":F
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lcom/sun/prism/paint/LinearGradient;->getX2()F

    move-result v19

    move/from16 v12, v19

    .line 445
    .local v12, "x2":F
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lcom/sun/prism/paint/LinearGradient;->getY2()F

    move-result v19

    move/from16 v13, v19

    .line 446
    .local v13, "y2":F
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lcom/sun/prism/paint/LinearGradient;->isProportional()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 447
    move/from16 v19, v5

    move/from16 v20, v10

    move/from16 v21, v7

    mul-float v20, v20, v21

    add-float v19, v19, v20

    move/from16 v10, v19

    .line 448
    move/from16 v19, v6

    move/from16 v20, v11

    move/from16 v21, v8

    mul-float v20, v20, v21

    add-float v19, v19, v20

    move/from16 v11, v19

    .line 449
    move/from16 v19, v5

    move/from16 v20, v12

    move/from16 v21, v7

    mul-float v20, v20, v21

    add-float v19, v19, v20

    move/from16 v12, v19

    .line 450
    move/from16 v19, v6

    move/from16 v20, v13

    move/from16 v21, v8

    mul-float v20, v20, v21

    add-float v19, v19, v20

    move/from16 v13, v19

    .line 452
    :cond_0
    move/from16 v19, v12

    move/from16 v20, v10

    sub-float v19, v19, v20

    move/from16 v14, v19

    .line 453
    .local v14, "dx":F
    move/from16 v19, v13

    move/from16 v20, v11

    sub-float v19, v19, v20

    move/from16 v15, v19

    .line 454
    .local v15, "dy":F
    move/from16 v19, v14

    move/from16 v20, v15

    invoke-static/range {v19 .. v20}, Lcom/sun/prism/impl/ps/PaintHelper;->len(FF)F

    move-result v19

    move/from16 v16, v19

    .line 455
    .local v16, "len":F
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lcom/sun/prism/paint/LinearGradient;->getSpreadMethod()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 456
    move/from16 v19, v16

    const/high16 v20, 0x40000000    # 2.0f

    mul-float v19, v19, v20

    move/from16 v16, v19

    .line 459
    :cond_1
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lcom/sun/prism/paint/LinearGradient;->getGradientTransformNoClone()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v19

    move-object/from16 v17, v19

    .line 460
    .local v17, "paintXform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v19, v17

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/geom/transform/BaseTransform;->isIdentity()Z

    move-result v19

    if-eqz v19, :cond_2

    move-object/from16 v19, v4

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/geom/transform/BaseTransform;->isIdentity()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 461
    sget-object v19, Lcom/sun/prism/impl/ps/PaintHelper;->scratchXform2D:Lcom/sun/javafx/geom/transform/Affine2D;

    move-object/from16 v18, v19

    .line 464
    .local v18, "at":Lcom/sun/javafx/geom/transform/Affine2D;
    move-object/from16 v19, v18

    move/from16 v20, v10

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move/from16 v22, v11

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-virtual/range {v19 .. v23}, Lcom/sun/javafx/geom/transform/Affine2D;->setToTranslation(DD)V

    .line 466
    move-object/from16 v19, v18

    move/from16 v20, v14

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move/from16 v22, v15

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-virtual/range {v19 .. v23}, Lcom/sun/javafx/geom/transform/Affine2D;->rotate(DD)V

    .line 468
    move-object/from16 v19, v18

    move/from16 v20, v16

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    invoke-virtual/range {v19 .. v23}, Lcom/sun/javafx/geom/transform/Affine2D;->scale(DD)V

    .line 471
    move-object/from16 v19, v18

    move-object/from16 v9, v19

    .line 489
    .end local v18    # "at":Lcom/sun/javafx/geom/transform/Affine2D;
    .local v9, "ret":Lcom/sun/javafx/geom/transform/AffineBase;
    :goto_0
    move-object/from16 v19, v9

    :try_start_0
    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/geom/transform/AffineBase;->invert()V
    :try_end_0
    .catch Lcom/sun/javafx/geom/transform/NoninvertibleTransformException; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    .line 495
    :goto_1
    move-object/from16 v19, v3

    move-object/from16 v20, v2

    invoke-static/range {v19 .. v20}, Lcom/sun/prism/impl/ps/PaintHelper;->setTextureGradient(Lcom/sun/prism/ps/Shader;Lcom/sun/prism/paint/Gradient;)V

    .line 497
    move-object/from16 v19, v9

    move-object/from16 v2, v19

    .end local v2    # "paint":Lcom/sun/prism/paint/LinearGradient;
    return-object v2

    .line 473
    .end local v9    # "ret":Lcom/sun/javafx/geom/transform/AffineBase;
    .restart local v2    # "paint":Lcom/sun/prism/paint/LinearGradient;
    :cond_2
    sget-object v19, Lcom/sun/prism/impl/ps/PaintHelper;->scratchXform3D:Lcom/sun/javafx/geom/transform/Affine3D;

    move-object/from16 v18, v19

    .line 474
    .local v18, "at":Lcom/sun/javafx/geom/transform/Affine3D;
    move-object/from16 v19, v18

    move-object/from16 v20, v4

    invoke-virtual/range {v19 .. v20}, Lcom/sun/javafx/geom/transform/Affine3D;->setTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 475
    move-object/from16 v19, v18

    move-object/from16 v20, v17

    invoke-virtual/range {v19 .. v20}, Lcom/sun/javafx/geom/transform/Affine3D;->concatenate(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 478
    move-object/from16 v19, v18

    move/from16 v20, v10

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move/from16 v22, v11

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-virtual/range {v19 .. v23}, Lcom/sun/javafx/geom/transform/Affine3D;->translate(DD)V

    .line 480
    move-object/from16 v19, v18

    move/from16 v20, v15

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move/from16 v22, v14

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Lcom/sun/javafx/geom/transform/Affine3D;->rotate(D)V

    .line 482
    move-object/from16 v19, v18

    move/from16 v20, v16

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    invoke-virtual/range {v19 .. v23}, Lcom/sun/javafx/geom/transform/Affine3D;->scale(DD)V

    .line 485
    move-object/from16 v19, v18

    move-object/from16 v9, v19

    .restart local v9    # "ret":Lcom/sun/javafx/geom/transform/AffineBase;
    goto :goto_0

    .line 490
    .end local v18    # "at":Lcom/sun/javafx/geom/transform/Affine3D;
    :catch_0
    move-exception v19

    move-object/from16 v18, v19

    .line 491
    .local v18, "e":Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
    sget-object v19, Lcom/sun/prism/impl/ps/PaintHelper;->scratchXform2D:Lcom/sun/javafx/geom/transform/Affine2D;

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    invoke-virtual/range {v19 .. v23}, Lcom/sun/javafx/geom/transform/Affine2D;->setToScale(DD)V

    .line 492
    sget-object v19, Lcom/sun/prism/impl/ps/PaintHelper;->scratchXform2D:Lcom/sun/javafx/geom/transform/Affine2D;

    move-object/from16 v9, v19

    goto :goto_1
.end method

.method static getRadialGradientTx(Lcom/sun/prism/paint/RadialGradient;Lcom/sun/prism/ps/Shader;Lcom/sun/javafx/geom/transform/BaseTransform;FFFF)Lcom/sun/javafx/geom/transform/AffineBase;
    .locals 26

    .prologue
    .line 631
    move-object/from16 v3, p0

    .local v3, "paint":Lcom/sun/prism/paint/RadialGradient;
    move-object/from16 v4, p1

    .local v4, "shader":Lcom/sun/prism/ps/Shader;
    move-object/from16 v5, p2

    .local v5, "renderTx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move/from16 v6, p3

    .local v6, "rx":F
    move/from16 v7, p4

    .local v7, "ry":F
    move/from16 v8, p5

    .local v8, "rw":F
    move/from16 v9, p6

    .local v9, "rh":F
    sget-object v19, Lcom/sun/prism/impl/ps/PaintHelper;->scratchXform3D:Lcom/sun/javafx/geom/transform/Affine3D;

    move-object/from16 v10, v19

    .line 632
    .local v10, "at":Lcom/sun/javafx/geom/transform/Affine3D;
    move-object/from16 v19, v10

    move-object/from16 v20, v5

    invoke-virtual/range {v19 .. v20}, Lcom/sun/javafx/geom/transform/Affine3D;->setTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 636
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Lcom/sun/prism/paint/RadialGradient;->getRadius()F

    move-result v19

    move/from16 v11, v19

    .line 637
    .local v11, "radius":F
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Lcom/sun/prism/paint/RadialGradient;->getCenterX()F

    move-result v19

    move/from16 v12, v19

    .line 638
    .local v12, "cx":F
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Lcom/sun/prism/paint/RadialGradient;->getCenterY()F

    move-result v19

    move/from16 v13, v19

    .line 639
    .local v13, "cy":F
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Lcom/sun/prism/paint/RadialGradient;->getFocusAngle()F

    move-result v19

    move/from16 v14, v19

    .line 640
    .local v14, "fa":F
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Lcom/sun/prism/paint/RadialGradient;->getFocusDistance()F

    move-result v19

    move/from16 v15, v19

    .line 641
    .local v15, "fd":F
    move/from16 v19, v15

    const/16 v20, 0x0

    cmpg-float v19, v19, v20

    if-gez v19, :cond_0

    .line 642
    move/from16 v19, v15

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v19, v0

    move/from16 v15, v19

    .line 643
    move/from16 v19, v14

    const/high16 v20, 0x43340000    # 180.0f

    add-float v19, v19, v20

    move/from16 v14, v19

    .line 645
    :cond_0
    move/from16 v19, v14

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    move/from16 v14, v19

    .line 646
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Lcom/sun/prism/paint/RadialGradient;->isProportional()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 647
    move/from16 v19, v6

    move/from16 v20, v8

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    add-float v19, v19, v20

    move/from16 v16, v19

    .line 648
    .local v16, "bcx":F
    move/from16 v19, v7

    move/from16 v20, v9

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    add-float v19, v19, v20

    move/from16 v17, v19

    .line 649
    .local v17, "bcy":F
    move/from16 v19, v8

    move/from16 v20, v9

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(FF)F

    move-result v19

    move/from16 v18, v19

    .line 650
    .local v18, "scale":F
    move/from16 v19, v12

    const/high16 v20, 0x3f000000    # 0.5f

    sub-float v19, v19, v20

    move/from16 v20, v18

    mul-float v19, v19, v20

    move/from16 v20, v16

    add-float v19, v19, v20

    move/from16 v12, v19

    .line 651
    move/from16 v19, v13

    const/high16 v20, 0x3f000000    # 0.5f

    sub-float v19, v19, v20

    move/from16 v20, v18

    mul-float v19, v19, v20

    move/from16 v20, v17

    add-float v19, v19, v20

    move/from16 v13, v19

    .line 652
    move/from16 v19, v8

    move/from16 v20, v9

    cmpl-float v19, v19, v20

    if-eqz v19, :cond_1

    move/from16 v19, v8

    const/16 v20, 0x0

    cmpl-float v19, v19, v20

    if-eqz v19, :cond_1

    move/from16 v19, v9

    const/16 v20, 0x0

    cmpl-float v19, v19, v20

    if-eqz v19, :cond_1

    .line 653
    move-object/from16 v19, v10

    move/from16 v20, v16

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move/from16 v22, v17

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-virtual/range {v19 .. v23}, Lcom/sun/javafx/geom/transform/Affine3D;->translate(DD)V

    .line 654
    move-object/from16 v19, v10

    move/from16 v20, v8

    move/from16 v21, v18

    div-float v20, v20, v21

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move/from16 v22, v9

    move/from16 v23, v18

    div-float v22, v22, v23

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-virtual/range {v19 .. v23}, Lcom/sun/javafx/geom/transform/Affine3D;->scale(DD)V

    .line 655
    move-object/from16 v19, v10

    move/from16 v20, v16

    move/from16 v0, v20

    neg-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move/from16 v22, v17

    move/from16 v0, v22

    neg-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-virtual/range {v19 .. v23}, Lcom/sun/javafx/geom/transform/Affine3D;->translate(DD)V

    .line 657
    :cond_1
    move/from16 v19, v11

    move/from16 v20, v18

    mul-float v19, v19, v20

    move/from16 v11, v19

    .line 659
    .end local v16    # "bcx":F
    .end local v17    # "bcy":F
    .end local v18    # "scale":F
    :cond_2
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Lcom/sun/prism/paint/RadialGradient;->getSpreadMethod()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 660
    move/from16 v19, v11

    const/high16 v20, 0x40000000    # 2.0f

    mul-float v19, v19, v20

    move/from16 v11, v19

    .line 664
    :cond_3
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Lcom/sun/prism/paint/RadialGradient;->getGradientTransformNoClone()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v19

    move-object/from16 v16, v19

    .line 665
    .local v16, "paintXform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v19, v16

    if-eqz v19, :cond_4

    .line 666
    move-object/from16 v19, v10

    move-object/from16 v20, v16

    invoke-virtual/range {v19 .. v20}, Lcom/sun/javafx/geom/transform/Affine3D;->concatenate(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 672
    :cond_4
    move-object/from16 v19, v10

    move/from16 v20, v12

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move/from16 v22, v13

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-virtual/range {v19 .. v23}, Lcom/sun/javafx/geom/transform/Affine3D;->translate(DD)V

    .line 673
    move-object/from16 v19, v10

    move/from16 v20, v14

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Lcom/sun/javafx/geom/transform/Affine3D;->rotate(D)V

    .line 674
    move-object/from16 v19, v10

    move/from16 v20, v11

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move/from16 v22, v11

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-virtual/range {v19 .. v23}, Lcom/sun/javafx/geom/transform/Affine3D;->scale(DD)V

    .line 678
    move-object/from16 v19, v10

    :try_start_0
    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/geom/transform/Affine3D;->invert()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 681
    .line 685
    :goto_0
    move/from16 v19, v15

    const v20, 0x3f7d70a4    # 0.99f

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(FF)F

    move-result v19

    move/from16 v15, v19

    .line 688
    const/high16 v19, 0x3f800000    # 1.0f

    move/from16 v20, v15

    move/from16 v21, v15

    mul-float v20, v20, v21

    sub-float v19, v19, v20

    move/from16 v17, v19

    .line 689
    .local v17, "denom":F
    const/high16 v19, 0x3f800000    # 1.0f

    move/from16 v20, v17

    div-float v19, v19, v20

    move/from16 v18, v19

    .line 690
    .local v18, "inv_denom":F
    move-object/from16 v19, v4

    const-string v20, "precalc"

    move/from16 v21, v15

    move/from16 v22, v17

    move/from16 v23, v18

    invoke-interface/range {v19 .. v23}, Lcom/sun/prism/ps/Shader;->setConstant(Ljava/lang/String;FFF)V

    .line 692
    move-object/from16 v19, v4

    move-object/from16 v20, v3

    invoke-static/range {v19 .. v20}, Lcom/sun/prism/impl/ps/PaintHelper;->setTextureGradient(Lcom/sun/prism/ps/Shader;Lcom/sun/prism/paint/Gradient;)V

    .line 694
    move-object/from16 v19, v10

    move-object/from16 v3, v19

    .end local v3    # "paint":Lcom/sun/prism/paint/RadialGradient;
    return-object v3

    .line 679
    .end local v17    # "denom":F
    .end local v18    # "inv_denom":F
    .restart local v3    # "paint":Lcom/sun/prism/paint/RadialGradient;
    :catch_0
    move-exception v19

    move-object/from16 v17, v19

    .line 680
    .local v17, "e":Ljava/lang/Exception;
    move-object/from16 v19, v10

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    invoke-virtual/range {v19 .. v25}, Lcom/sun/javafx/geom/transform/Affine3D;->setToScale(DDD)V

    goto :goto_0
.end method

.method static getWrapGradientTexture(Lcom/sun/prism/ps/ShaderGraphics;)Lcom/sun/prism/Texture;
    .locals 2

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "g":Lcom/sun/prism/ps/ShaderGraphics;
    sget-object v1, Lcom/sun/prism/impl/ps/PaintHelper;->gtexCacheTexture:Lcom/sun/prism/Texture;

    if-nez v1, :cond_0

    .line 154
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/prism/impl/ps/PaintHelper;->initGradientTextures(Lcom/sun/prism/ps/ShaderGraphics;)V

    .line 161
    :cond_0
    sget-object v1, Lcom/sun/prism/impl/ps/PaintHelper;->gtexCacheTexture:Lcom/sun/prism/Texture;

    invoke-interface {v1}, Lcom/sun/prism/Texture;->lock()V

    .line 162
    sget-object v1, Lcom/sun/prism/impl/ps/PaintHelper;->gtexCacheTexture:Lcom/sun/prism/Texture;

    move-object v0, v1

    .end local v0    # "g":Lcom/sun/prism/ps/ShaderGraphics;
    return-object v0
.end method

.method public static initGradient(Lcom/sun/prism/paint/Gradient;)I
    .locals 16

    .prologue
    .line 254
    move-object/from16 v0, p0

    .local v0, "paint":Lcom/sun/prism/paint/Gradient;
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/prism/paint/Gradient;->getGradientOffset()J

    move-result-wide v8

    move-wide v1, v8

    .line 255
    .local v1, "offset":J
    move-wide v8, v1

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-ltz v8, :cond_0

    move-wide v8, v1

    sget-wide v10, Lcom/sun/prism/impl/ps/PaintHelper;->cacheOffset:J

    const-wide/16 v12, 0x100

    sub-long/2addr v10, v12

    cmp-long v8, v8, v10

    if-lez v8, :cond_0

    .line 256
    move-wide v8, v1

    const-wide/16 v10, 0x100

    rem-long/2addr v8, v10

    long-to-int v8, v8

    move v0, v8

    .line 270
    .end local v0    # "paint":Lcom/sun/prism/paint/Gradient;
    :goto_0
    return v0

    .line 258
    .restart local v0    # "paint":Lcom/sun/prism/paint/Gradient;
    :cond_0
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/prism/paint/Gradient;->getStops()Ljava/util/List;

    move-result-object v8

    move-object v3, v8

    .line 259
    .local v3, "stops":Ljava/util/List;, "Ljava/util/List<Lcom/sun/prism/paint/Stop;>;"
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/prism/paint/Gradient;->getNumStops()I

    move-result v8

    move v4, v8

    .line 260
    .local v4, "numStops":I
    move-object v8, v3

    move v9, v4

    invoke-static {v8, v9}, Lcom/sun/prism/impl/ps/PaintHelper;->stopsToImage(Ljava/util/List;I)V

    .line 261
    move-object v8, v3

    move v9, v4

    invoke-static {v8, v9}, Lcom/sun/prism/impl/ps/PaintHelper;->stopsToGtexImage(Ljava/util/List;I)V

    .line 262
    sget-wide v8, Lcom/sun/prism/impl/ps/PaintHelper;->cacheOffset:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    move-wide v14, v8

    move-wide v8, v14

    move-wide v10, v14

    sput-wide v10, Lcom/sun/prism/impl/ps/PaintHelper;->cacheOffset:J

    move-wide v5, v8

    .line 263
    .local v5, "nextOffset":J
    move-object v8, v0

    move-wide v9, v5

    invoke-virtual {v8, v9, v10}, Lcom/sun/prism/paint/Gradient;->setGradientOffset(J)V

    .line 264
    move-wide v8, v5

    const-wide/16 v10, 0x100

    rem-long/2addr v8, v10

    long-to-int v8, v8

    move v7, v8

    .line 268
    .local v7, "cacheIdx":I
    sget-object v8, Lcom/sun/prism/impl/ps/PaintHelper;->gradientCacheTexture:Lcom/sun/prism/Texture;

    sget-object v9, Lcom/sun/prism/impl/ps/PaintHelper;->colorsImg:Lcom/sun/prism/Image;

    const/4 v10, 0x0

    move v11, v7

    invoke-interface {v8, v9, v10, v11}, Lcom/sun/prism/Texture;->update(Lcom/sun/prism/Image;II)V

    .line 269
    sget-object v8, Lcom/sun/prism/impl/ps/PaintHelper;->gtexCacheTexture:Lcom/sun/prism/Texture;

    sget-object v9, Lcom/sun/prism/impl/ps/PaintHelper;->gtexImg:Lcom/sun/prism/Image;

    const/4 v10, 0x0

    move v11, v7

    invoke-interface {v8, v9, v10, v11}, Lcom/sun/prism/Texture;->update(Lcom/sun/prism/Image;II)V

    .line 270
    move v8, v7

    move v0, v8

    goto :goto_0
.end method

.method static initGradientTextures(Lcom/sun/prism/ps/ShaderGraphics;)V
    .locals 7

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "g":Lcom/sun/prism/ps/ShaderGraphics;
    move-object v1, v0

    invoke-interface {v1}, Lcom/sun/prism/ps/ShaderGraphics;->getResourceFactory()Lcom/sun/prism/ResourceFactory;

    move-result-object v1

    sget-object v2, Lcom/sun/prism/PixelFormat;->BYTE_BGRA_PRE:Lcom/sun/prism/PixelFormat;

    sget-object v3, Lcom/sun/prism/Texture$Usage;->DEFAULT:Lcom/sun/prism/Texture$Usage;

    sget-object v4, Lcom/sun/prism/Texture$WrapMode;->CLAMP_TO_EDGE:Lcom/sun/prism/Texture$WrapMode;

    const/16 v5, 0x10

    const/16 v6, 0x100

    invoke-interface/range {v1 .. v6}, Lcom/sun/prism/ResourceFactory;->createTexture(Lcom/sun/prism/PixelFormat;Lcom/sun/prism/Texture$Usage;Lcom/sun/prism/Texture$WrapMode;II)Lcom/sun/prism/Texture;

    move-result-object v1

    sput-object v1, Lcom/sun/prism/impl/ps/PaintHelper;->gradientCacheTexture:Lcom/sun/prism/Texture;

    .line 121
    sget-object v1, Lcom/sun/prism/impl/ps/PaintHelper;->gradientCacheTexture:Lcom/sun/prism/Texture;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/sun/prism/Texture;->setLinearFiltering(Z)V

    .line 125
    sget-object v1, Lcom/sun/prism/impl/ps/PaintHelper;->gradientCacheTexture:Lcom/sun/prism/Texture;

    invoke-interface {v1}, Lcom/sun/prism/Texture;->contentsUseful()V

    .line 126
    sget-object v1, Lcom/sun/prism/impl/ps/PaintHelper;->gradientCacheTexture:Lcom/sun/prism/Texture;

    invoke-interface {v1}, Lcom/sun/prism/Texture;->makePermanent()V

    .line 128
    move-object v1, v0

    invoke-interface {v1}, Lcom/sun/prism/ps/ShaderGraphics;->getResourceFactory()Lcom/sun/prism/ResourceFactory;

    move-result-object v1

    sget-object v2, Lcom/sun/prism/PixelFormat;->BYTE_BGRA_PRE:Lcom/sun/prism/PixelFormat;

    sget-object v3, Lcom/sun/prism/Texture$Usage;->DEFAULT:Lcom/sun/prism/Texture$Usage;

    sget-object v4, Lcom/sun/prism/Texture$WrapMode;->CLAMP_NOT_NEEDED:Lcom/sun/prism/Texture$WrapMode;

    const/16 v5, 0xc9

    const/16 v6, 0x100

    invoke-interface/range {v1 .. v6}, Lcom/sun/prism/ResourceFactory;->createTexture(Lcom/sun/prism/PixelFormat;Lcom/sun/prism/Texture$Usage;Lcom/sun/prism/Texture$WrapMode;II)Lcom/sun/prism/Texture;

    move-result-object v1

    sput-object v1, Lcom/sun/prism/impl/ps/PaintHelper;->gtexCacheTexture:Lcom/sun/prism/Texture;

    .line 131
    sget-object v1, Lcom/sun/prism/impl/ps/PaintHelper;->gtexCacheTexture:Lcom/sun/prism/Texture;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/sun/prism/Texture;->setLinearFiltering(Z)V

    .line 135
    sget-object v1, Lcom/sun/prism/impl/ps/PaintHelper;->gtexCacheTexture:Lcom/sun/prism/Texture;

    invoke-interface {v1}, Lcom/sun/prism/Texture;->contentsUseful()V

    .line 136
    sget-object v1, Lcom/sun/prism/impl/ps/PaintHelper;->gtexCacheTexture:Lcom/sun/prism/Texture;

    invoke-interface {v1}, Lcom/sun/prism/Texture;->makePermanent()V

    .line 137
    return-void
.end method

.method private static insertInterpColor([BILcom/sun/prism/paint/Color;Lcom/sun/prism/paint/Color;F)V
    .locals 11

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "colors":[B
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "c0":Lcom/sun/prism/paint/Color;
    move-object v3, p3

    .local v3, "c1":Lcom/sun/prism/paint/Color;
    move v4, p4

    .local v4, "t":F
    move v6, v4

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float/2addr v6, v7

    move v4, v6

    .line 204
    const/high16 v6, 0x437f0000    # 255.0f

    move v7, v4

    sub-float/2addr v6, v7

    move v5, v6

    .line 205
    .local v5, "u":F
    move v6, v1

    const/4 v7, 0x4

    mul-int/lit8 v6, v6, 0x4

    move v1, v6

    .line 206
    move-object v6, v0

    move v7, v1

    const/4 v8, 0x0

    add-int/lit8 v7, v7, 0x0

    move-object v8, v2

    invoke-virtual {v8}, Lcom/sun/prism/paint/Color;->getBluePremult()F

    move-result v8

    move v9, v5

    mul-float/2addr v8, v9

    move-object v9, v3

    invoke-virtual {v9}, Lcom/sun/prism/paint/Color;->getBluePremult()F

    move-result v9

    move v10, v4

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v8, v9

    float-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 207
    move-object v6, v0

    move v7, v1

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move-object v8, v2

    invoke-virtual {v8}, Lcom/sun/prism/paint/Color;->getGreenPremult()F

    move-result v8

    move v9, v5

    mul-float/2addr v8, v9

    move-object v9, v3

    invoke-virtual {v9}, Lcom/sun/prism/paint/Color;->getGreenPremult()F

    move-result v9

    move v10, v4

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v8, v9

    float-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 208
    move-object v6, v0

    move v7, v1

    const/4 v8, 0x2

    add-int/lit8 v7, v7, 0x2

    move-object v8, v2

    invoke-virtual {v8}, Lcom/sun/prism/paint/Color;->getRedPremult()F

    move-result v8

    move v9, v5

    mul-float/2addr v8, v9

    move-object v9, v3

    invoke-virtual {v9}, Lcom/sun/prism/paint/Color;->getRedPremult()F

    move-result v9

    move v10, v4

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v8, v9

    float-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 209
    move-object v6, v0

    move v7, v1

    const/4 v8, 0x3

    add-int/lit8 v7, v7, 0x3

    move-object v8, v2

    invoke-virtual {v8}, Lcom/sun/prism/paint/Color;->getAlpha()F

    move-result v8

    move v9, v5

    mul-float/2addr v8, v9

    move-object v9, v3

    invoke-virtual {v9}, Lcom/sun/prism/paint/Color;->getAlpha()F

    move-result v9

    move v10, v4

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v8, v9

    float-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 210
    return-void
.end method

.method private static len(FF)F
    .locals 5

    .prologue
    .line 112
    move v0, p0

    .local v0, "dx":F
    move v1, p1

    .local v1, "dy":F
    move v2, v0

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    move v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 114
    :goto_0
    move v0, v2

    .end local v0    # "dx":F
    return v0

    .line 112
    .restart local v0    # "dx":F
    :cond_0
    move v2, v1

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    move v2, v0

    .line 113
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

    .line 114
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    goto :goto_0
.end method

.method static project(FFLcom/sun/javafx/sg/prism/NGCamera;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/PickRay;Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Point2D;)Lcom/sun/javafx/geom/PickRay;
    .locals 12

    .prologue
    .line 897
    move v0, p0

    .local v0, "x":F
    move v1, p1

    .local v1, "y":F
    move-object v2, p2

    .local v2, "cam":Lcom/sun/javafx/sg/prism/NGCamera;
    move-object v3, p3

    .local v3, "inv":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v4, p4

    .local v4, "tmpray":Lcom/sun/javafx/geom/PickRay;
    move-object/from16 v5, p5

    .local v5, "tmpvec":Lcom/sun/javafx/geom/Vec3d;
    move-object/from16 v6, p6

    .local v6, "ret":Lcom/sun/javafx/geom/Point2D;
    move-object v7, v2

    move v8, v0

    move v9, v1

    move-object v10, v4

    invoke-virtual {v7, v8, v9, v10}, Lcom/sun/javafx/sg/prism/NGCamera;->computePickRay(FFLcom/sun/javafx/geom/PickRay;)Lcom/sun/javafx/geom/PickRay;

    move-result-object v7

    move-object v4, v7

    .line 898
    move-object v7, v4

    move-object v8, v3

    move-object v9, v2

    instance-of v9, v9, Lcom/sun/javafx/sg/prism/NGPerspectiveCamera;

    move-object v10, v5

    move-object v11, v6

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/sun/javafx/geom/PickRay;->project(Lcom/sun/javafx/geom/transform/BaseTransform;ZLcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Point2D;)Lcom/sun/javafx/geom/PickRay;

    move-result-object v7

    move-object v0, v7

    .end local v0    # "x":F
    return-object v0
.end method

.method static setImagePattern(Lcom/sun/prism/ps/ShaderGraphics;Lcom/sun/prism/ps/Shader;Lcom/sun/prism/paint/ImagePattern;FFFF)V
    .locals 56

    .prologue
    .line 733
    move-object/from16 v3, p0

    .local v3, "g":Lcom/sun/prism/ps/ShaderGraphics;
    move-object/from16 v4, p1

    .local v4, "shader":Lcom/sun/prism/ps/Shader;
    move-object/from16 v5, p2

    .local v5, "paint":Lcom/sun/prism/paint/ImagePattern;
    move/from16 v6, p3

    .local v6, "rx":F
    move/from16 v7, p4

    .local v7, "ry":F
    move/from16 v8, p5

    .local v8, "rw":F
    move/from16 v9, p6

    .local v9, "rh":F
    move/from16 v48, v6

    move-object/from16 v49, v5

    invoke-virtual/range {v49 .. v49}, Lcom/sun/prism/paint/ImagePattern;->getX()F

    move-result v49

    move/from16 v50, v8

    mul-float v49, v49, v50

    add-float v48, v48, v49

    move/from16 v10, v48

    .line 734
    .local v10, "x1":F
    move/from16 v48, v7

    move-object/from16 v49, v5

    invoke-virtual/range {v49 .. v49}, Lcom/sun/prism/paint/ImagePattern;->getY()F

    move-result v49

    move/from16 v50, v9

    mul-float v49, v49, v50

    add-float v48, v48, v49

    move/from16 v11, v48

    .line 735
    .local v11, "y1":F
    move/from16 v48, v10

    move-object/from16 v49, v5

    invoke-virtual/range {v49 .. v49}, Lcom/sun/prism/paint/ImagePattern;->getWidth()F

    move-result v49

    move/from16 v50, v8

    mul-float v49, v49, v50

    add-float v48, v48, v49

    move/from16 v12, v48

    .line 736
    .local v12, "x2":F
    move/from16 v48, v11

    move-object/from16 v49, v5

    invoke-virtual/range {v49 .. v49}, Lcom/sun/prism/paint/ImagePattern;->getHeight()F

    move-result v49

    move/from16 v50, v9

    mul-float v49, v49, v50

    add-float v48, v48, v49

    move/from16 v13, v48

    .line 738
    .local v13, "y2":F
    move-object/from16 v48, v3

    invoke-interface/range {v48 .. v48}, Lcom/sun/prism/ps/ShaderGraphics;->getResourceFactory()Lcom/sun/prism/ResourceFactory;

    move-result-object v48

    move-object/from16 v14, v48

    .line 739
    .local v14, "rf":Lcom/sun/prism/ResourceFactory;
    move-object/from16 v48, v5

    invoke-virtual/range {v48 .. v48}, Lcom/sun/prism/paint/ImagePattern;->getImage()Lcom/sun/prism/Image;

    move-result-object v48

    move-object/from16 v15, v48

    .line 740
    .local v15, "img":Lcom/sun/prism/Image;
    move-object/from16 v48, v14

    move-object/from16 v49, v15

    sget-object v50, Lcom/sun/prism/Texture$WrapMode;->REPEAT:Lcom/sun/prism/Texture$WrapMode;

    invoke-interface/range {v48 .. v50}, Lcom/sun/prism/ResourceFactory;->getCachedTexture(Lcom/sun/prism/Image;Lcom/sun/prism/Texture$WrapMode;)Lcom/sun/prism/Texture;

    move-result-object v48

    move-object/from16 v16, v48

    .line 741
    .local v16, "paintTex":Lcom/sun/prism/Texture;
    move-object/from16 v48, v16

    invoke-interface/range {v48 .. v48}, Lcom/sun/prism/Texture;->getContentX()I

    move-result v48

    move/from16 v0, v48

    int-to-float v0, v0

    move/from16 v48, v0

    move/from16 v17, v48

    .line 742
    .local v17, "cx":F
    move-object/from16 v48, v16

    invoke-interface/range {v48 .. v48}, Lcom/sun/prism/Texture;->getContentY()I

    move-result v48

    move/from16 v0, v48

    int-to-float v0, v0

    move/from16 v48, v0

    move/from16 v18, v48

    .line 743
    .local v18, "cy":F
    move-object/from16 v48, v16

    invoke-interface/range {v48 .. v48}, Lcom/sun/prism/Texture;->getContentWidth()I

    move-result v48

    move/from16 v0, v48

    int-to-float v0, v0

    move/from16 v48, v0

    move/from16 v19, v48

    .line 744
    .local v19, "cw":F
    move-object/from16 v48, v16

    invoke-interface/range {v48 .. v48}, Lcom/sun/prism/Texture;->getContentHeight()I

    move-result v48

    move/from16 v0, v48

    int-to-float v0, v0

    move/from16 v48, v0

    move/from16 v20, v48

    .line 745
    .local v20, "ch":F
    move-object/from16 v48, v16

    invoke-interface/range {v48 .. v48}, Lcom/sun/prism/Texture;->getPhysicalWidth()I

    move-result v48

    move/from16 v0, v48

    int-to-float v0, v0

    move/from16 v48, v0

    move/from16 v21, v48

    .line 746
    .local v21, "texw":F
    move-object/from16 v48, v16

    invoke-interface/range {v48 .. v48}, Lcom/sun/prism/Texture;->getPhysicalHeight()I

    move-result v48

    move/from16 v0, v48

    int-to-float v0, v0

    move/from16 v48, v0

    move/from16 v22, v48

    .line 747
    .local v22, "texh":F
    move-object/from16 v48, v16

    invoke-interface/range {v48 .. v48}, Lcom/sun/prism/Texture;->unlock()V

    .line 750
    sget-object v48, Lcom/sun/prism/impl/ps/PaintHelper;->scratchXform3D:Lcom/sun/javafx/geom/transform/Affine3D;

    move-object/from16 v23, v48

    .line 751
    .local v23, "at":Lcom/sun/javafx/geom/transform/Affine3D;
    move-object/from16 v48, v3

    move-object/from16 v49, v23

    invoke-interface/range {v48 .. v49}, Lcom/sun/prism/ps/ShaderGraphics;->getPaintShaderTransform(Lcom/sun/javafx/geom/transform/Affine3D;)V

    .line 753
    move-object/from16 v48, v23

    move/from16 v49, v10

    move/from16 v0, v49

    float-to-double v0, v0

    move-wide/from16 v49, v0

    move/from16 v51, v11

    move/from16 v0, v51

    float-to-double v0, v0

    move-wide/from16 v51, v0

    invoke-virtual/range {v48 .. v52}, Lcom/sun/javafx/geom/transform/Affine3D;->translate(DD)V

    .line 754
    move-object/from16 v48, v23

    move/from16 v49, v12

    move/from16 v50, v10

    sub-float v49, v49, v50

    move/from16 v0, v49

    float-to-double v0, v0

    move-wide/from16 v49, v0

    move/from16 v51, v13

    move/from16 v52, v11

    sub-float v51, v51, v52

    move/from16 v0, v51

    float-to-double v0, v0

    move-wide/from16 v51, v0

    invoke-virtual/range {v48 .. v52}, Lcom/sun/javafx/geom/transform/Affine3D;->scale(DD)V

    .line 756
    move/from16 v48, v19

    move/from16 v49, v21

    cmpg-float v48, v48, v49

    if-gez v48, :cond_0

    .line 757
    move-object/from16 v48, v23

    const-wide/high16 v49, 0x3fe0000000000000L    # 0.5

    move/from16 v51, v19

    move/from16 v0, v51

    float-to-double v0, v0

    move-wide/from16 v51, v0

    div-double v49, v49, v51

    const-wide/16 v51, 0x0

    invoke-virtual/range {v48 .. v52}, Lcom/sun/javafx/geom/transform/Affine3D;->translate(DD)V

    .line 758
    move/from16 v48, v17

    const/high16 v49, 0x3f000000    # 0.5f

    add-float v48, v48, v49

    move/from16 v17, v48

    .line 760
    :cond_0
    move/from16 v48, v20

    move/from16 v49, v22

    cmpg-float v48, v48, v49

    if-gez v48, :cond_1

    .line 761
    move-object/from16 v48, v23

    const-wide/16 v49, 0x0

    const-wide/high16 v51, 0x3fe0000000000000L    # 0.5

    move/from16 v53, v20

    move/from16 v0, v53

    float-to-double v0, v0

    move-wide/from16 v53, v0

    div-double v51, v51, v53

    invoke-virtual/range {v48 .. v52}, Lcom/sun/javafx/geom/transform/Affine3D;->translate(DD)V

    .line 762
    move/from16 v48, v18

    const/high16 v49, 0x3f000000    # 0.5f

    add-float v48, v48, v49

    move/from16 v18, v48

    .line 766
    :cond_1
    move-object/from16 v48, v23

    :try_start_0
    invoke-virtual/range {v48 .. v48}, Lcom/sun/javafx/geom/transform/Affine3D;->invert()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 769
    .line 771
    :goto_0
    move-object/from16 v48, v23

    invoke-virtual/range {v48 .. v48}, Lcom/sun/javafx/geom/transform/Affine3D;->is2D()Z

    move-result v48

    if-nez v48, :cond_2

    .line 772
    move-object/from16 v48, v3

    invoke-interface/range {v48 .. v48}, Lcom/sun/prism/ps/ShaderGraphics;->getCameraNoClone()Lcom/sun/javafx/sg/prism/NGCamera;

    move-result-object v48

    move-object/from16 v24, v48

    .line 773
    .local v24, "cam":Lcom/sun/javafx/sg/prism/NGCamera;
    new-instance v48, Lcom/sun/javafx/geom/Vec3d;

    move-object/from16 v55, v48

    move-object/from16 v48, v55

    move-object/from16 v49, v55

    invoke-direct/range {v49 .. v49}, Lcom/sun/javafx/geom/Vec3d;-><init>()V

    move-object/from16 v25, v48

    .line 774
    .local v25, "tmpVec":Lcom/sun/javafx/geom/Vec3d;
    new-instance v48, Lcom/sun/javafx/geom/PickRay;

    move-object/from16 v55, v48

    move-object/from16 v48, v55

    move-object/from16 v49, v55

    invoke-direct/range {v49 .. v49}, Lcom/sun/javafx/geom/PickRay;-><init>()V

    move-object/from16 v26, v48

    .line 775
    .local v26, "tmpvec":Lcom/sun/javafx/geom/PickRay;
    const/16 v48, 0x0

    const/16 v49, 0x0

    move-object/from16 v50, v24

    move-object/from16 v51, v23

    move-object/from16 v52, v26

    move-object/from16 v53, v25

    const/16 v54, 0x0

    invoke-static/range {v48 .. v54}, Lcom/sun/prism/impl/ps/PaintHelper;->project(FFLcom/sun/javafx/sg/prism/NGCamera;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/PickRay;Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Point2D;)Lcom/sun/javafx/geom/PickRay;

    move-result-object v48

    move-object/from16 v27, v48

    .line 776
    .local v27, "ray00":Lcom/sun/javafx/geom/PickRay;
    const/high16 v48, 0x3f800000    # 1.0f

    const/16 v49, 0x0

    move-object/from16 v50, v24

    move-object/from16 v51, v23

    move-object/from16 v52, v26

    move-object/from16 v53, v25

    const/16 v54, 0x0

    invoke-static/range {v48 .. v54}, Lcom/sun/prism/impl/ps/PaintHelper;->project(FFLcom/sun/javafx/sg/prism/NGCamera;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/PickRay;Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Point2D;)Lcom/sun/javafx/geom/PickRay;

    move-result-object v48

    move-object/from16 v28, v48

    .line 777
    .local v28, "ray10":Lcom/sun/javafx/geom/PickRay;
    const/16 v48, 0x0

    const/high16 v49, 0x3f800000    # 1.0f

    move-object/from16 v50, v24

    move-object/from16 v51, v23

    move-object/from16 v52, v26

    move-object/from16 v53, v25

    const/16 v54, 0x0

    invoke-static/range {v48 .. v54}, Lcom/sun/prism/impl/ps/PaintHelper;->project(FFLcom/sun/javafx/sg/prism/NGCamera;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/PickRay;Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Point2D;)Lcom/sun/javafx/geom/PickRay;

    move-result-object v48

    move-object/from16 v29, v48

    .line 779
    .local v29, "ray01":Lcom/sun/javafx/geom/PickRay;
    move-object/from16 v48, v28

    invoke-virtual/range {v48 .. v48}, Lcom/sun/javafx/geom/PickRay;->getDirectionNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v48

    move-object/from16 v0, v48

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v48, v0

    move-object/from16 v50, v27

    invoke-virtual/range {v50 .. v50}, Lcom/sun/javafx/geom/PickRay;->getDirectionNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v50

    move-object/from16 v0, v50

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v50, v0

    sub-double v48, v48, v50

    move-wide/from16 v30, v48

    .line 780
    .local v30, "p0":D
    move-object/from16 v48, v29

    invoke-virtual/range {v48 .. v48}, Lcom/sun/javafx/geom/PickRay;->getDirectionNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v48

    move-object/from16 v0, v48

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v48, v0

    move-object/from16 v50, v27

    invoke-virtual/range {v50 .. v50}, Lcom/sun/javafx/geom/PickRay;->getDirectionNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v50

    move-object/from16 v0, v50

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v50, v0

    sub-double v48, v48, v50

    move-wide/from16 v32, v48

    .line 781
    .local v32, "p1":D
    move-object/from16 v48, v27

    invoke-virtual/range {v48 .. v48}, Lcom/sun/javafx/geom/PickRay;->getDirectionNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v48

    move-object/from16 v0, v48

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v48, v0

    move-wide/from16 v34, v48

    .line 783
    .local v34, "p2":D
    move-object/from16 v48, v28

    invoke-virtual/range {v48 .. v48}, Lcom/sun/javafx/geom/PickRay;->getDirectionNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v48

    move-object/from16 v0, v48

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v48, v0

    move-object/from16 v50, v27

    invoke-virtual/range {v50 .. v50}, Lcom/sun/javafx/geom/PickRay;->getDirectionNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v50

    move-object/from16 v0, v50

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v50, v0

    sub-double v48, v48, v50

    move-wide/from16 v36, v48

    .line 784
    .local v36, "py0":D
    move-object/from16 v48, v29

    invoke-virtual/range {v48 .. v48}, Lcom/sun/javafx/geom/PickRay;->getDirectionNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v48

    move-object/from16 v0, v48

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v48, v0

    move-object/from16 v50, v27

    invoke-virtual/range {v50 .. v50}, Lcom/sun/javafx/geom/PickRay;->getDirectionNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v50

    move-object/from16 v0, v50

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v50, v0

    sub-double v48, v48, v50

    move-wide/from16 v38, v48

    .line 785
    .local v38, "py1":D
    move-object/from16 v48, v27

    invoke-virtual/range {v48 .. v48}, Lcom/sun/javafx/geom/PickRay;->getDirectionNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v48

    move-object/from16 v0, v48

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v48, v0

    move-wide/from16 v40, v48

    .line 787
    .local v40, "py2":D
    move-wide/from16 v48, v30

    move-object/from16 v50, v27

    invoke-virtual/range {v50 .. v50}, Lcom/sun/javafx/geom/PickRay;->getOriginNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v50

    move-object/from16 v0, v50

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v50, v0

    move-wide/from16 v0, v50

    neg-double v0, v0

    move-wide/from16 v50, v0

    mul-double v48, v48, v50

    move-wide/from16 v30, v48

    .line 788
    move-wide/from16 v48, v32

    move-object/from16 v50, v27

    invoke-virtual/range {v50 .. v50}, Lcom/sun/javafx/geom/PickRay;->getOriginNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v50

    move-object/from16 v0, v50

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v50, v0

    move-wide/from16 v0, v50

    neg-double v0, v0

    move-wide/from16 v50, v0

    mul-double v48, v48, v50

    move-wide/from16 v32, v48

    .line 789
    move-wide/from16 v48, v34

    move-object/from16 v50, v27

    invoke-virtual/range {v50 .. v50}, Lcom/sun/javafx/geom/PickRay;->getOriginNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v50

    move-object/from16 v0, v50

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v50, v0

    move-wide/from16 v0, v50

    neg-double v0, v0

    move-wide/from16 v50, v0

    mul-double v48, v48, v50

    move-wide/from16 v34, v48

    .line 791
    move-wide/from16 v48, v36

    move-object/from16 v50, v27

    invoke-virtual/range {v50 .. v50}, Lcom/sun/javafx/geom/PickRay;->getOriginNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v50

    move-object/from16 v0, v50

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v50, v0

    move-wide/from16 v0, v50

    neg-double v0, v0

    move-wide/from16 v50, v0

    mul-double v48, v48, v50

    move-wide/from16 v36, v48

    .line 792
    move-wide/from16 v48, v38

    move-object/from16 v50, v27

    invoke-virtual/range {v50 .. v50}, Lcom/sun/javafx/geom/PickRay;->getOriginNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v50

    move-object/from16 v0, v50

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v50, v0

    move-wide/from16 v0, v50

    neg-double v0, v0

    move-wide/from16 v50, v0

    mul-double v48, v48, v50

    move-wide/from16 v38, v48

    .line 793
    move-wide/from16 v48, v40

    move-object/from16 v50, v27

    invoke-virtual/range {v50 .. v50}, Lcom/sun/javafx/geom/PickRay;->getOriginNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v50

    move-object/from16 v0, v50

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v50, v0

    move-wide/from16 v0, v50

    neg-double v0, v0

    move-wide/from16 v50, v0

    mul-double v48, v48, v50

    move-wide/from16 v40, v48

    .line 795
    move-object/from16 v48, v28

    invoke-virtual/range {v48 .. v48}, Lcom/sun/javafx/geom/PickRay;->getDirectionNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v48

    move-object/from16 v0, v48

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v48, v0

    move-object/from16 v50, v27

    invoke-virtual/range {v50 .. v50}, Lcom/sun/javafx/geom/PickRay;->getDirectionNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v50

    move-object/from16 v0, v50

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v50, v0

    sub-double v48, v48, v50

    move-wide/from16 v42, v48

    .line 796
    .local v42, "wv0":D
    move-object/from16 v48, v29

    invoke-virtual/range {v48 .. v48}, Lcom/sun/javafx/geom/PickRay;->getDirectionNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v48

    move-object/from16 v0, v48

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v48, v0

    move-object/from16 v50, v27

    invoke-virtual/range {v50 .. v50}, Lcom/sun/javafx/geom/PickRay;->getDirectionNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v50

    move-object/from16 v0, v50

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v50, v0

    sub-double v48, v48, v50

    move-wide/from16 v44, v48

    .line 797
    .local v44, "wv1":D
    move-object/from16 v48, v27

    invoke-virtual/range {v48 .. v48}, Lcom/sun/javafx/geom/PickRay;->getDirectionNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v48

    move-object/from16 v0, v48

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v48, v0

    move-wide/from16 v46, v48

    .line 799
    .local v46, "wv2":D
    move-object/from16 v48, v4

    const-string v49, "perspVec"

    move-wide/from16 v50, v42

    move-wide/from16 v0, v50

    double-to-float v0, v0

    move/from16 v50, v0

    move-wide/from16 v51, v44

    move-wide/from16 v0, v51

    double-to-float v0, v0

    move/from16 v51, v0

    move-wide/from16 v52, v46

    move-wide/from16 v0, v52

    double-to-float v0, v0

    move/from16 v52, v0

    invoke-interface/range {v48 .. v52}, Lcom/sun/prism/ps/Shader;->setConstant(Ljava/lang/String;FFF)V

    .line 800
    move-object/from16 v48, v4

    const-string v49, "xParams"

    move-wide/from16 v50, v30

    move-wide/from16 v0, v50

    double-to-float v0, v0

    move/from16 v50, v0

    move-wide/from16 v51, v32

    move-wide/from16 v0, v51

    double-to-float v0, v0

    move/from16 v51, v0

    move-wide/from16 v52, v34

    move-wide/from16 v0, v52

    double-to-float v0, v0

    move/from16 v52, v0

    move-object/from16 v53, v27

    invoke-virtual/range {v53 .. v53}, Lcom/sun/javafx/geom/PickRay;->getOriginNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v53

    move-object/from16 v0, v53

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v53, v0

    move-wide/from16 v0, v53

    double-to-float v0, v0

    move/from16 v53, v0

    invoke-interface/range {v48 .. v53}, Lcom/sun/prism/ps/Shader;->setConstant(Ljava/lang/String;FFFF)V

    .line 801
    move-object/from16 v48, v4

    const-string v49, "yParams"

    move-wide/from16 v50, v36

    move-wide/from16 v0, v50

    double-to-float v0, v0

    move/from16 v50, v0

    move-wide/from16 v51, v38

    move-wide/from16 v0, v51

    double-to-float v0, v0

    move/from16 v51, v0

    move-wide/from16 v52, v40

    move-wide/from16 v0, v52

    double-to-float v0, v0

    move/from16 v52, v0

    move-object/from16 v53, v27

    invoke-virtual/range {v53 .. v53}, Lcom/sun/javafx/geom/PickRay;->getOriginNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v53

    move-object/from16 v0, v53

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v53, v0

    move-wide/from16 v0, v53

    double-to-float v0, v0

    move/from16 v53, v0

    invoke-interface/range {v48 .. v53}, Lcom/sun/prism/ps/Shader;->setConstant(Ljava/lang/String;FFFF)V

    .line 802
    .line 815
    .end local v24    # "cam":Lcom/sun/javafx/sg/prism/NGCamera;
    .end local v25    # "tmpVec":Lcom/sun/javafx/geom/Vec3d;
    .end local v26    # "tmpvec":Lcom/sun/javafx/geom/PickRay;
    .end local v27    # "ray00":Lcom/sun/javafx/geom/PickRay;
    .end local v28    # "ray10":Lcom/sun/javafx/geom/PickRay;
    .end local v29    # "ray01":Lcom/sun/javafx/geom/PickRay;
    .end local v30    # "p0":D
    .end local v32    # "p1":D
    .end local v34    # "p2":D
    .end local v36    # "py0":D
    .end local v38    # "py1":D
    .end local v40    # "py2":D
    .end local v42    # "wv0":D
    .end local v44    # "wv1":D
    .end local v46    # "wv2":D
    :goto_1
    move/from16 v48, v17

    move/from16 v49, v21

    div-float v48, v48, v49

    move/from16 v17, v48

    .line 816
    move/from16 v48, v18

    move/from16 v49, v22

    div-float v48, v48, v49

    move/from16 v18, v48

    .line 817
    move/from16 v48, v19

    move/from16 v49, v21

    div-float v48, v48, v49

    move/from16 v19, v48

    .line 818
    move/from16 v48, v20

    move/from16 v49, v22

    div-float v48, v48, v49

    move/from16 v20, v48

    .line 819
    move-object/from16 v48, v4

    const-string v49, "content"

    move/from16 v50, v17

    move/from16 v51, v18

    move/from16 v52, v19

    move/from16 v53, v20

    invoke-interface/range {v48 .. v53}, Lcom/sun/prism/ps/Shader;->setConstant(Ljava/lang/String;FFFF)V

    .line 820
    return-void

    .line 767
    :catch_0
    move-exception v48

    move-object/from16 v24, v48

    .line 768
    .local v24, "e":Ljava/lang/Exception;
    move-object/from16 v48, v23

    const-wide/16 v49, 0x0

    const-wide/16 v51, 0x0

    const-wide/16 v53, 0x0

    invoke-virtual/range {v48 .. v54}, Lcom/sun/javafx/geom/transform/Affine3D;->setToScale(DDD)V

    goto/16 :goto_0

    .line 803
    .end local v24    # "e":Ljava/lang/Exception;
    :cond_2
    move-object/from16 v48, v23

    invoke-virtual/range {v48 .. v48}, Lcom/sun/javafx/geom/transform/Affine3D;->getMxx()D

    move-result-wide v48

    move-wide/from16 v0, v48

    double-to-float v0, v0

    move/from16 v48, v0

    move/from16 v24, v48

    .line 804
    .local v24, "m00":F
    move-object/from16 v48, v23

    invoke-virtual/range {v48 .. v48}, Lcom/sun/javafx/geom/transform/Affine3D;->getMxy()D

    move-result-wide v48

    move-wide/from16 v0, v48

    double-to-float v0, v0

    move/from16 v48, v0

    move/from16 v25, v48

    .line 805
    .local v25, "m01":F
    move-object/from16 v48, v23

    invoke-virtual/range {v48 .. v48}, Lcom/sun/javafx/geom/transform/Affine3D;->getMxt()D

    move-result-wide v48

    move-wide/from16 v0, v48

    double-to-float v0, v0

    move/from16 v48, v0

    move/from16 v26, v48

    .line 806
    .local v26, "m02":F
    move-object/from16 v48, v4

    const-string v49, "xParams"

    move/from16 v50, v24

    move/from16 v51, v25

    move/from16 v52, v26

    const/16 v53, 0x0

    invoke-interface/range {v48 .. v53}, Lcom/sun/prism/ps/Shader;->setConstant(Ljava/lang/String;FFFF)V

    .line 808
    move-object/from16 v48, v23

    invoke-virtual/range {v48 .. v48}, Lcom/sun/javafx/geom/transform/Affine3D;->getMyx()D

    move-result-wide v48

    move-wide/from16 v0, v48

    double-to-float v0, v0

    move/from16 v48, v0

    move/from16 v27, v48

    .line 809
    .local v27, "m10":F
    move-object/from16 v48, v23

    invoke-virtual/range {v48 .. v48}, Lcom/sun/javafx/geom/transform/Affine3D;->getMyy()D

    move-result-wide v48

    move-wide/from16 v0, v48

    double-to-float v0, v0

    move/from16 v48, v0

    move/from16 v28, v48

    .line 810
    .local v28, "m11":F
    move-object/from16 v48, v23

    invoke-virtual/range {v48 .. v48}, Lcom/sun/javafx/geom/transform/Affine3D;->getMyt()D

    move-result-wide v48

    move-wide/from16 v0, v48

    double-to-float v0, v0

    move/from16 v48, v0

    move/from16 v29, v48

    .line 811
    .local v29, "m12":F
    move-object/from16 v48, v4

    const-string v49, "yParams"

    move/from16 v50, v27

    move/from16 v51, v28

    move/from16 v52, v29

    const/16 v53, 0x0

    invoke-interface/range {v48 .. v53}, Lcom/sun/prism/ps/Shader;->setConstant(Ljava/lang/String;FFFF)V

    .line 812
    move-object/from16 v48, v4

    const-string v49, "perspVec"

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/high16 v52, 0x3f800000    # 1.0f

    invoke-interface/range {v48 .. v52}, Lcom/sun/prism/ps/Shader;->setConstant(Ljava/lang/String;FFF)V

    goto/16 :goto_1
.end method

.method static setLinearGradient(Lcom/sun/prism/ps/ShaderGraphics;Lcom/sun/prism/ps/Shader;Lcom/sun/prism/paint/LinearGradient;FFFF)V
    .locals 46

    .prologue
    .line 359
    move-object/from16 v2, p0

    .local v2, "g":Lcom/sun/prism/ps/ShaderGraphics;
    move-object/from16 v3, p1

    .local v3, "shader":Lcom/sun/prism/ps/Shader;
    move-object/from16 v4, p2

    .local v4, "paint":Lcom/sun/prism/paint/LinearGradient;
    move/from16 v5, p3

    .local v5, "rx":F
    move/from16 v6, p4

    .local v6, "ry":F
    move/from16 v7, p5

    .local v7, "rw":F
    move/from16 v8, p6

    .local v8, "rh":F
    move-object/from16 v38, v4

    invoke-virtual/range {v38 .. v38}, Lcom/sun/prism/paint/LinearGradient;->getGradientTransformNoClone()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v38

    move-object/from16 v9, v38

    .line 360
    .local v9, "paintXform":Lcom/sun/javafx/geom/transform/BaseTransform;
    sget-object v38, Lcom/sun/prism/impl/ps/PaintHelper;->scratchXform3D:Lcom/sun/javafx/geom/transform/Affine3D;

    move-object/from16 v10, v38

    .line 361
    .local v10, "at":Lcom/sun/javafx/geom/transform/Affine3D;
    move-object/from16 v38, v2

    move-object/from16 v39, v10

    invoke-interface/range {v38 .. v39}, Lcom/sun/prism/ps/ShaderGraphics;->getPaintShaderTransform(Lcom/sun/javafx/geom/transform/Affine3D;)V

    .line 363
    move-object/from16 v38, v9

    if-eqz v38, :cond_0

    .line 364
    move-object/from16 v38, v10

    move-object/from16 v39, v9

    invoke-virtual/range {v38 .. v39}, Lcom/sun/javafx/geom/transform/Affine3D;->concatenate(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 367
    :cond_0
    move/from16 v38, v5

    move-object/from16 v39, v4

    invoke-virtual/range {v39 .. v39}, Lcom/sun/prism/paint/LinearGradient;->getX1()F

    move-result v39

    move/from16 v40, v7

    mul-float v39, v39, v40

    add-float v38, v38, v39

    move/from16 v11, v38

    .line 368
    .local v11, "x1":F
    move/from16 v38, v6

    move-object/from16 v39, v4

    invoke-virtual/range {v39 .. v39}, Lcom/sun/prism/paint/LinearGradient;->getY1()F

    move-result v39

    move/from16 v40, v8

    mul-float v39, v39, v40

    add-float v38, v38, v39

    move/from16 v12, v38

    .line 369
    .local v12, "y1":F
    move/from16 v38, v5

    move-object/from16 v39, v4

    invoke-virtual/range {v39 .. v39}, Lcom/sun/prism/paint/LinearGradient;->getX2()F

    move-result v39

    move/from16 v40, v7

    mul-float v39, v39, v40

    add-float v38, v38, v39

    move/from16 v13, v38

    .line 370
    .local v13, "x2":F
    move/from16 v38, v6

    move-object/from16 v39, v4

    invoke-virtual/range {v39 .. v39}, Lcom/sun/prism/paint/LinearGradient;->getY2()F

    move-result v39

    move/from16 v40, v8

    mul-float v39, v39, v40

    add-float v38, v38, v39

    move/from16 v14, v38

    .line 373
    .local v14, "y2":F
    move/from16 v38, v11

    move/from16 v15, v38

    .line 374
    .local v15, "x":F
    move/from16 v38, v12

    move/from16 v16, v38

    .line 375
    .local v16, "y":F
    move-object/from16 v38, v10

    move/from16 v39, v15

    move/from16 v0, v39

    float-to-double v0, v0

    move-wide/from16 v39, v0

    move/from16 v41, v16

    move/from16 v0, v41

    float-to-double v0, v0

    move-wide/from16 v41, v0

    invoke-virtual/range {v38 .. v42}, Lcom/sun/javafx/geom/transform/Affine3D;->translate(DD)V

    .line 377
    move/from16 v38, v13

    move/from16 v39, v15

    sub-float v38, v38, v39

    move/from16 v15, v38

    .line 378
    move/from16 v38, v14

    move/from16 v39, v16

    sub-float v38, v38, v39

    move/from16 v16, v38

    .line 379
    move/from16 v38, v15

    move/from16 v39, v16

    invoke-static/range {v38 .. v39}, Lcom/sun/prism/impl/ps/PaintHelper;->len(FF)F

    move-result v38

    move/from16 v0, v38

    float-to-double v0, v0

    move-wide/from16 v38, v0

    move-wide/from16 v17, v38

    .line 381
    .local v17, "len":D
    move-object/from16 v38, v10

    move/from16 v39, v16

    move/from16 v0, v39

    float-to-double v0, v0

    move-wide/from16 v39, v0

    move/from16 v41, v15

    move/from16 v0, v41

    float-to-double v0, v0

    move-wide/from16 v41, v0

    invoke-static/range {v39 .. v42}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v39

    invoke-virtual/range {v38 .. v40}, Lcom/sun/javafx/geom/transform/Affine3D;->rotate(D)V

    .line 383
    move-object/from16 v38, v10

    move-wide/from16 v39, v17

    const-wide/high16 v41, 0x3ff0000000000000L    # 1.0

    invoke-virtual/range {v38 .. v42}, Lcom/sun/javafx/geom/transform/Affine3D;->scale(DD)V

    .line 388
    move-object/from16 v38, v10

    invoke-virtual/range {v38 .. v38}, Lcom/sun/javafx/geom/transform/Affine3D;->is2D()Z

    move-result v38

    if-nez v38, :cond_1

    .line 391
    move-object/from16 v38, v10

    :try_start_0
    invoke-virtual/range {v38 .. v38}, Lcom/sun/javafx/geom/transform/Affine3D;->createInverse()Lcom/sun/javafx/geom/transform/BaseTransform;
    :try_end_0
    .catch Lcom/sun/javafx/geom/transform/NoninvertibleTransformException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v38

    move-object/from16 v25, v38

    .line 395
    .line 397
    .local v25, "inv":Lcom/sun/javafx/geom/transform/BaseTransform;
    :goto_0
    move-object/from16 v38, v2

    invoke-interface/range {v38 .. v38}, Lcom/sun/prism/ps/ShaderGraphics;->getCameraNoClone()Lcom/sun/javafx/sg/prism/NGCamera;

    move-result-object v38

    move-object/from16 v26, v38

    .line 398
    .local v26, "cam":Lcom/sun/javafx/sg/prism/NGCamera;
    new-instance v38, Lcom/sun/javafx/geom/Vec3d;

    move-object/from16 v45, v38

    move-object/from16 v38, v45

    move-object/from16 v39, v45

    invoke-direct/range {v39 .. v39}, Lcom/sun/javafx/geom/Vec3d;-><init>()V

    move-object/from16 v27, v38

    .line 399
    .local v27, "tmpVec":Lcom/sun/javafx/geom/Vec3d;
    new-instance v38, Lcom/sun/javafx/geom/PickRay;

    move-object/from16 v45, v38

    move-object/from16 v38, v45

    move-object/from16 v39, v45

    invoke-direct/range {v39 .. v39}, Lcom/sun/javafx/geom/PickRay;-><init>()V

    move-object/from16 v28, v38

    .line 401
    .local v28, "tmpvec":Lcom/sun/javafx/geom/PickRay;
    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v40, v26

    move-object/from16 v41, v25

    move-object/from16 v42, v28

    move-object/from16 v43, v27

    const/16 v44, 0x0

    invoke-static/range {v38 .. v44}, Lcom/sun/prism/impl/ps/PaintHelper;->project(FFLcom/sun/javafx/sg/prism/NGCamera;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/PickRay;Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Point2D;)Lcom/sun/javafx/geom/PickRay;

    move-result-object v38

    move-object/from16 v29, v38

    .line 402
    .local v29, "ray00":Lcom/sun/javafx/geom/PickRay;
    const/high16 v38, 0x3f800000    # 1.0f

    const/16 v39, 0x0

    move-object/from16 v40, v26

    move-object/from16 v41, v25

    move-object/from16 v42, v28

    move-object/from16 v43, v27

    const/16 v44, 0x0

    invoke-static/range {v38 .. v44}, Lcom/sun/prism/impl/ps/PaintHelper;->project(FFLcom/sun/javafx/sg/prism/NGCamera;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/PickRay;Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Point2D;)Lcom/sun/javafx/geom/PickRay;

    move-result-object v38

    move-object/from16 v30, v38

    .line 403
    .local v30, "ray10":Lcom/sun/javafx/geom/PickRay;
    const/16 v38, 0x0

    const/high16 v39, 0x3f800000    # 1.0f

    move-object/from16 v40, v26

    move-object/from16 v41, v25

    move-object/from16 v42, v28

    move-object/from16 v43, v27

    const/16 v44, 0x0

    invoke-static/range {v38 .. v44}, Lcom/sun/prism/impl/ps/PaintHelper;->project(FFLcom/sun/javafx/sg/prism/NGCamera;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/PickRay;Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Point2D;)Lcom/sun/javafx/geom/PickRay;

    move-result-object v38

    move-object/from16 v31, v38

    .line 405
    .local v31, "ray01":Lcom/sun/javafx/geom/PickRay;
    move-object/from16 v38, v30

    invoke-virtual/range {v38 .. v38}, Lcom/sun/javafx/geom/PickRay;->getDirectionNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v38

    move-object/from16 v0, v38

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v38, v0

    move-object/from16 v40, v29

    invoke-virtual/range {v40 .. v40}, Lcom/sun/javafx/geom/PickRay;->getDirectionNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v40

    move-object/from16 v0, v40

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v40, v0

    sub-double v38, v38, v40

    move-wide/from16 v19, v38

    .line 406
    .local v19, "p0":D
    move-object/from16 v38, v31

    invoke-virtual/range {v38 .. v38}, Lcom/sun/javafx/geom/PickRay;->getDirectionNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v38

    move-object/from16 v0, v38

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v38, v0

    move-object/from16 v40, v29

    invoke-virtual/range {v40 .. v40}, Lcom/sun/javafx/geom/PickRay;->getDirectionNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v40

    move-object/from16 v0, v40

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v40, v0

    sub-double v38, v38, v40

    move-wide/from16 v21, v38

    .line 407
    .local v21, "p1":D
    move-object/from16 v38, v29

    invoke-virtual/range {v38 .. v38}, Lcom/sun/javafx/geom/PickRay;->getDirectionNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v38

    move-object/from16 v0, v38

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v38, v0

    move-wide/from16 v23, v38

    .line 409
    .local v23, "p2":D
    move-wide/from16 v38, v19

    move-object/from16 v40, v29

    invoke-virtual/range {v40 .. v40}, Lcom/sun/javafx/geom/PickRay;->getOriginNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v40

    move-object/from16 v0, v40

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v40, v0

    move-wide/from16 v0, v40

    neg-double v0, v0

    move-wide/from16 v40, v0

    mul-double v38, v38, v40

    move-wide/from16 v19, v38

    .line 410
    move-wide/from16 v38, v21

    move-object/from16 v40, v29

    invoke-virtual/range {v40 .. v40}, Lcom/sun/javafx/geom/PickRay;->getOriginNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v40

    move-object/from16 v0, v40

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v40, v0

    move-wide/from16 v0, v40

    neg-double v0, v0

    move-wide/from16 v40, v0

    mul-double v38, v38, v40

    move-wide/from16 v21, v38

    .line 411
    move-wide/from16 v38, v23

    move-object/from16 v40, v29

    invoke-virtual/range {v40 .. v40}, Lcom/sun/javafx/geom/PickRay;->getOriginNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v40

    move-object/from16 v0, v40

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v40, v0

    move-wide/from16 v0, v40

    neg-double v0, v0

    move-wide/from16 v40, v0

    mul-double v38, v38, v40

    move-wide/from16 v23, v38

    .line 413
    move-object/from16 v38, v30

    invoke-virtual/range {v38 .. v38}, Lcom/sun/javafx/geom/PickRay;->getDirectionNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v38

    move-object/from16 v0, v38

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v38, v0

    move-object/from16 v40, v29

    invoke-virtual/range {v40 .. v40}, Lcom/sun/javafx/geom/PickRay;->getDirectionNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v40

    move-object/from16 v0, v40

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v40, v0

    sub-double v38, v38, v40

    move-wide/from16 v32, v38

    .line 414
    .local v32, "wv0":D
    move-object/from16 v38, v31

    invoke-virtual/range {v38 .. v38}, Lcom/sun/javafx/geom/PickRay;->getDirectionNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v38

    move-object/from16 v0, v38

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v38, v0

    move-object/from16 v40, v29

    invoke-virtual/range {v40 .. v40}, Lcom/sun/javafx/geom/PickRay;->getDirectionNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v40

    move-object/from16 v0, v40

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v40, v0

    sub-double v38, v38, v40

    move-wide/from16 v34, v38

    .line 415
    .local v34, "wv1":D
    move-object/from16 v38, v29

    invoke-virtual/range {v38 .. v38}, Lcom/sun/javafx/geom/PickRay;->getDirectionNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v38

    move-object/from16 v0, v38

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v38, v0

    move-wide/from16 v36, v38

    .line 417
    .local v36, "wv2":D
    move-object/from16 v38, v3

    const-string v39, "gradParams"

    move-wide/from16 v40, v19

    move-wide/from16 v0, v40

    double-to-float v0, v0

    move/from16 v40, v0

    move-wide/from16 v41, v21

    move-wide/from16 v0, v41

    double-to-float v0, v0

    move/from16 v41, v0

    move-wide/from16 v42, v23

    move-wide/from16 v0, v42

    double-to-float v0, v0

    move/from16 v42, v0

    move-object/from16 v43, v29

    invoke-virtual/range {v43 .. v43}, Lcom/sun/javafx/geom/PickRay;->getOriginNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v43

    move-object/from16 v0, v43

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v43, v0

    move-wide/from16 v0, v43

    double-to-float v0, v0

    move/from16 v43, v0

    invoke-interface/range {v38 .. v43}, Lcom/sun/prism/ps/Shader;->setConstant(Ljava/lang/String;FFFF)V

    .line 418
    move-object/from16 v38, v3

    const-string v39, "perspVec"

    move-wide/from16 v40, v32

    move-wide/from16 v0, v40

    double-to-float v0, v0

    move/from16 v40, v0

    move-wide/from16 v41, v34

    move-wide/from16 v0, v41

    double-to-float v0, v0

    move/from16 v41, v0

    move-wide/from16 v42, v36

    move-wide/from16 v0, v42

    double-to-float v0, v0

    move/from16 v42, v0

    invoke-interface/range {v38 .. v42}, Lcom/sun/prism/ps/Shader;->setConstant(Ljava/lang/String;FFF)V

    .line 419
    .line 432
    .end local v25    # "inv":Lcom/sun/javafx/geom/transform/BaseTransform;
    .end local v26    # "cam":Lcom/sun/javafx/sg/prism/NGCamera;
    .end local v27    # "tmpVec":Lcom/sun/javafx/geom/Vec3d;
    .end local v28    # "tmpvec":Lcom/sun/javafx/geom/PickRay;
    .end local v29    # "ray00":Lcom/sun/javafx/geom/PickRay;
    .end local v30    # "ray10":Lcom/sun/javafx/geom/PickRay;
    .end local v31    # "ray01":Lcom/sun/javafx/geom/PickRay;
    .end local v32    # "wv0":D
    .end local v34    # "wv1":D
    .end local v36    # "wv2":D
    :goto_1
    move-object/from16 v38, v3

    move-object/from16 v39, v4

    invoke-static/range {v38 .. v39}, Lcom/sun/prism/impl/ps/PaintHelper;->setMultiGradient(Lcom/sun/prism/ps/Shader;Lcom/sun/prism/paint/Gradient;)V

    .line 433
    return-void

    .line 392
    .end local v19    # "p0":D
    .end local v21    # "p1":D
    .end local v23    # "p2":D
    :catch_0
    move-exception v38

    move-object/from16 v26, v38

    .line 393
    .local v26, "e":Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
    move-object/from16 v38, v10

    const-wide/16 v39, 0x0

    const-wide/16 v41, 0x0

    const-wide/16 v43, 0x0

    invoke-virtual/range {v38 .. v44}, Lcom/sun/javafx/geom/transform/Affine3D;->setToScale(DDD)V

    .line 394
    move-object/from16 v38, v10

    move-object/from16 v25, v38

    .restart local v25    # "inv":Lcom/sun/javafx/geom/transform/BaseTransform;
    goto/16 :goto_0

    .line 421
    .end local v25    # "inv":Lcom/sun/javafx/geom/transform/BaseTransform;
    .end local v26    # "e":Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
    :cond_1
    move-object/from16 v38, v10

    :try_start_1
    invoke-virtual/range {v38 .. v38}, Lcom/sun/javafx/geom/transform/Affine3D;->invert()V
    :try_end_1
    .catch Lcom/sun/javafx/geom/transform/NoninvertibleTransformException; {:try_start_1 .. :try_end_1} :catch_1

    .line 424
    .line 425
    :goto_2
    move-object/from16 v38, v10

    invoke-virtual/range {v38 .. v38}, Lcom/sun/javafx/geom/transform/Affine3D;->getMxx()D

    move-result-wide v38

    move-wide/from16 v0, v38

    double-to-float v0, v0

    move/from16 v38, v0

    move/from16 v0, v38

    float-to-double v0, v0

    move-wide/from16 v38, v0

    move-wide/from16 v19, v38

    .line 426
    .restart local v19    # "p0":D
    move-object/from16 v38, v10

    invoke-virtual/range {v38 .. v38}, Lcom/sun/javafx/geom/transform/Affine3D;->getMxy()D

    move-result-wide v38

    move-wide/from16 v0, v38

    double-to-float v0, v0

    move/from16 v38, v0

    move/from16 v0, v38

    float-to-double v0, v0

    move-wide/from16 v38, v0

    move-wide/from16 v21, v38

    .line 427
    .restart local v21    # "p1":D
    move-object/from16 v38, v10

    invoke-virtual/range {v38 .. v38}, Lcom/sun/javafx/geom/transform/Affine3D;->getMxt()D

    move-result-wide v38

    move-wide/from16 v0, v38

    double-to-float v0, v0

    move/from16 v38, v0

    move/from16 v0, v38

    float-to-double v0, v0

    move-wide/from16 v38, v0

    move-wide/from16 v23, v38

    .line 428
    .restart local v23    # "p2":D
    move-object/from16 v38, v3

    const-string v39, "gradParams"

    move-wide/from16 v40, v19

    move-wide/from16 v0, v40

    double-to-float v0, v0

    move/from16 v40, v0

    move-wide/from16 v41, v21

    move-wide/from16 v0, v41

    double-to-float v0, v0

    move/from16 v41, v0

    move-wide/from16 v42, v23

    move-wide/from16 v0, v42

    double-to-float v0, v0

    move/from16 v42, v0

    const/16 v43, 0x0

    invoke-interface/range {v38 .. v43}, Lcom/sun/prism/ps/Shader;->setConstant(Ljava/lang/String;FFFF)V

    .line 429
    move-object/from16 v38, v3

    const-string v39, "perspVec"

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/high16 v42, 0x3f800000    # 1.0f

    invoke-interface/range {v38 .. v42}, Lcom/sun/prism/ps/Shader;->setConstant(Ljava/lang/String;FFF)V

    goto/16 :goto_1

    .line 422
    .end local v19    # "p0":D
    .end local v21    # "p1":D
    .end local v23    # "p2":D
    :catch_1
    move-exception v38

    move-object/from16 v25, v38

    .line 423
    .local v25, "ex":Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
    move-object/from16 v38, v10

    const-wide/16 v39, 0x0

    const-wide/16 v41, 0x0

    const-wide/16 v43, 0x0

    invoke-virtual/range {v38 .. v44}, Lcom/sun/javafx/geom/transform/Affine3D;->setToScale(DDD)V

    goto :goto_2
.end method

.method private static setMultiGradient(Lcom/sun/prism/ps/Shader;Lcom/sun/prism/paint/Gradient;)V
    .locals 10

    .prologue
    .line 277
    move-object v0, p0

    .local v0, "shader":Lcom/sun/prism/ps/Shader;
    move-object v1, p1

    .local v1, "paint":Lcom/sun/prism/paint/Gradient;
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/prism/paint/Gradient;->getStops()Ljava/util/List;

    move-result-object v5

    move-object v2, v5

    .line 278
    .local v2, "stops":Ljava/util/List;, "Ljava/util/List<Lcom/sun/prism/paint/Stop;>;"
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/prism/paint/Gradient;->getNumStops()I

    move-result v5

    move v3, v5

    .line 280
    .local v3, "numStops":I
    sget-object v5, Lcom/sun/prism/impl/ps/PaintHelper;->stopVals:Ljava/nio/FloatBuffer;

    invoke-virtual {v5}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v5

    .line 281
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    const/16 v6, 0xc

    if-ge v5, v6, :cond_2

    .line 283
    sget-object v5, Lcom/sun/prism/impl/ps/PaintHelper;->stopVals:Ljava/nio/FloatBuffer;

    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_0

    move-object v6, v2

    move v7, v4

    .line 284
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/prism/paint/Stop;

    invoke-virtual {v6}, Lcom/sun/prism/paint/Stop;->getOffset()F

    move-result v6

    .line 283
    :goto_1
    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v5

    .line 285
    sget-object v5, Lcom/sun/prism/impl/ps/PaintHelper;->stopVals:Ljava/nio/FloatBuffer;

    move v6, v4

    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_1

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v7, v2

    move v8, v4

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    .line 286
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/prism/paint/Stop;

    invoke-virtual {v7}, Lcom/sun/prism/paint/Stop;->getOffset()F

    move-result v7

    move-object v8, v2

    move v9, v4

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/prism/paint/Stop;

    invoke-virtual {v8}, Lcom/sun/prism/paint/Stop;->getOffset()F

    move-result v8

    sub-float/2addr v7, v8

    div-float/2addr v6, v7

    .line 285
    :goto_2
    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v5

    .line 287
    sget-object v5, Lcom/sun/prism/impl/ps/PaintHelper;->stopVals:Ljava/nio/FloatBuffer;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v5

    .line 288
    sget-object v5, Lcom/sun/prism/impl/ps/PaintHelper;->stopVals:Ljava/nio/FloatBuffer;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v5

    .line 281
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 284
    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    .line 286
    :cond_1
    const/4 v6, 0x0

    goto :goto_2

    .line 290
    :cond_2
    sget-object v5, Lcom/sun/prism/impl/ps/PaintHelper;->stopVals:Ljava/nio/FloatBuffer;

    invoke-virtual {v5}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v5

    .line 291
    move-object v5, v0

    const-string v6, "fractions"

    sget-object v7, Lcom/sun/prism/impl/ps/PaintHelper;->stopVals:Ljava/nio/FloatBuffer;

    const/4 v8, 0x0

    const/16 v9, 0xc

    invoke-interface {v5, v6, v7, v8, v9}, Lcom/sun/prism/ps/Shader;->setConstants(Ljava/lang/String;Ljava/nio/FloatBuffer;II)V

    .line 292
    move-object v5, v1

    invoke-static {v5}, Lcom/sun/prism/impl/ps/PaintHelper;->initGradient(Lcom/sun/prism/paint/Gradient;)I

    move-result v5

    int-to-float v5, v5

    move v4, v5

    .line 293
    .local v4, "index_y":F
    move-object v5, v0

    const-string v6, "offset"

    move v7, v4

    const/high16 v8, 0x43800000    # 256.0f

    div-float/2addr v7, v8

    const/high16 v8, 0x3b000000    # 0.001953125f

    add-float/2addr v7, v8

    invoke-interface {v5, v6, v7}, Lcom/sun/prism/ps/Shader;->setConstant(Ljava/lang/String;F)V

    .line 297
    return-void
.end method

.method static setRadialGradient(Lcom/sun/prism/ps/ShaderGraphics;Lcom/sun/prism/ps/Shader;Lcom/sun/prism/paint/RadialGradient;FFFF)V
    .locals 48

    .prologue
    .line 519
    move-object/from16 v2, p0

    .local v2, "g":Lcom/sun/prism/ps/ShaderGraphics;
    move-object/from16 v3, p1

    .local v3, "shader":Lcom/sun/prism/ps/Shader;
    move-object/from16 v4, p2

    .local v4, "paint":Lcom/sun/prism/paint/RadialGradient;
    move/from16 v5, p3

    .local v5, "rx":F
    move/from16 v6, p4

    .local v6, "ry":F
    move/from16 v7, p5

    .local v7, "rw":F
    move/from16 v8, p6

    .local v8, "rh":F
    sget-object v40, Lcom/sun/prism/impl/ps/PaintHelper;->scratchXform3D:Lcom/sun/javafx/geom/transform/Affine3D;

    move-object/from16 v9, v40

    .line 520
    .local v9, "at":Lcom/sun/javafx/geom/transform/Affine3D;
    move-object/from16 v40, v2

    move-object/from16 v41, v9

    invoke-interface/range {v40 .. v41}, Lcom/sun/prism/ps/ShaderGraphics;->getPaintShaderTransform(Lcom/sun/javafx/geom/transform/Affine3D;)V

    .line 524
    move-object/from16 v40, v4

    invoke-virtual/range {v40 .. v40}, Lcom/sun/prism/paint/RadialGradient;->getRadius()F

    move-result v40

    move/from16 v10, v40

    .line 525
    .local v10, "radius":F
    move-object/from16 v40, v4

    invoke-virtual/range {v40 .. v40}, Lcom/sun/prism/paint/RadialGradient;->getCenterX()F

    move-result v40

    move/from16 v11, v40

    .line 526
    .local v11, "cx":F
    move-object/from16 v40, v4

    invoke-virtual/range {v40 .. v40}, Lcom/sun/prism/paint/RadialGradient;->getCenterY()F

    move-result v40

    move/from16 v12, v40

    .line 527
    .local v12, "cy":F
    move-object/from16 v40, v4

    invoke-virtual/range {v40 .. v40}, Lcom/sun/prism/paint/RadialGradient;->getFocusAngle()F

    move-result v40

    move/from16 v13, v40

    .line 528
    .local v13, "fa":F
    move-object/from16 v40, v4

    invoke-virtual/range {v40 .. v40}, Lcom/sun/prism/paint/RadialGradient;->getFocusDistance()F

    move-result v40

    move/from16 v14, v40

    .line 529
    .local v14, "fd":F
    move/from16 v40, v14

    const/16 v41, 0x0

    cmpg-float v40, v40, v41

    if-gez v40, :cond_0

    .line 530
    move/from16 v40, v14

    move/from16 v0, v40

    neg-float v0, v0

    move/from16 v40, v0

    move/from16 v14, v40

    .line 531
    move/from16 v40, v13

    const/high16 v41, 0x43340000    # 180.0f

    add-float v40, v40, v41

    move/from16 v13, v40

    .line 533
    :cond_0
    move/from16 v40, v13

    move/from16 v0, v40

    float-to-double v0, v0

    move-wide/from16 v40, v0

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v40

    move-wide/from16 v0, v40

    double-to-float v0, v0

    move/from16 v40, v0

    move/from16 v13, v40

    .line 534
    move-object/from16 v40, v4

    invoke-virtual/range {v40 .. v40}, Lcom/sun/prism/paint/RadialGradient;->isProportional()Z

    move-result v40

    if-eqz v40, :cond_2

    .line 535
    move/from16 v40, v5

    move/from16 v41, v7

    const/high16 v42, 0x40000000    # 2.0f

    div-float v41, v41, v42

    add-float v40, v40, v41

    move/from16 v15, v40

    .line 536
    .local v15, "bcx":F
    move/from16 v40, v6

    move/from16 v41, v8

    const/high16 v42, 0x40000000    # 2.0f

    div-float v41, v41, v42

    add-float v40, v40, v41

    move/from16 v16, v40

    .line 537
    .local v16, "bcy":F
    move/from16 v40, v7

    move/from16 v41, v8

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->min(FF)F

    move-result v40

    move/from16 v17, v40

    .line 538
    .local v17, "scale":F
    move/from16 v40, v11

    const/high16 v41, 0x3f000000    # 0.5f

    sub-float v40, v40, v41

    move/from16 v41, v17

    mul-float v40, v40, v41

    move/from16 v41, v15

    add-float v40, v40, v41

    move/from16 v11, v40

    .line 539
    move/from16 v40, v12

    const/high16 v41, 0x3f000000    # 0.5f

    sub-float v40, v40, v41

    move/from16 v41, v17

    mul-float v40, v40, v41

    move/from16 v41, v16

    add-float v40, v40, v41

    move/from16 v12, v40

    .line 540
    move/from16 v40, v7

    move/from16 v41, v8

    cmpl-float v40, v40, v41

    if-eqz v40, :cond_1

    move/from16 v40, v7

    const/16 v41, 0x0

    cmpl-float v40, v40, v41

    if-eqz v40, :cond_1

    move/from16 v40, v8

    const/16 v41, 0x0

    cmpl-float v40, v40, v41

    if-eqz v40, :cond_1

    .line 541
    move-object/from16 v40, v9

    move/from16 v41, v15

    move/from16 v0, v41

    float-to-double v0, v0

    move-wide/from16 v41, v0

    move/from16 v43, v16

    move/from16 v0, v43

    float-to-double v0, v0

    move-wide/from16 v43, v0

    invoke-virtual/range {v40 .. v44}, Lcom/sun/javafx/geom/transform/Affine3D;->translate(DD)V

    .line 542
    move-object/from16 v40, v9

    move/from16 v41, v7

    move/from16 v42, v17

    div-float v41, v41, v42

    move/from16 v0, v41

    float-to-double v0, v0

    move-wide/from16 v41, v0

    move/from16 v43, v8

    move/from16 v44, v17

    div-float v43, v43, v44

    move/from16 v0, v43

    float-to-double v0, v0

    move-wide/from16 v43, v0

    invoke-virtual/range {v40 .. v44}, Lcom/sun/javafx/geom/transform/Affine3D;->scale(DD)V

    .line 543
    move-object/from16 v40, v9

    move/from16 v41, v15

    move/from16 v0, v41

    neg-float v0, v0

    move/from16 v41, v0

    move/from16 v0, v41

    float-to-double v0, v0

    move-wide/from16 v41, v0

    move/from16 v43, v16

    move/from16 v0, v43

    neg-float v0, v0

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-double v0, v0

    move-wide/from16 v43, v0

    invoke-virtual/range {v40 .. v44}, Lcom/sun/javafx/geom/transform/Affine3D;->translate(DD)V

    .line 545
    :cond_1
    move/from16 v40, v10

    move/from16 v41, v17

    mul-float v40, v40, v41

    move/from16 v10, v40

    .line 549
    .end local v15    # "bcx":F
    .end local v16    # "bcy":F
    .end local v17    # "scale":F
    :cond_2
    move-object/from16 v40, v4

    invoke-virtual/range {v40 .. v40}, Lcom/sun/prism/paint/RadialGradient;->getGradientTransformNoClone()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v40

    move-object/from16 v15, v40

    .line 550
    .local v15, "paintXform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v40, v15

    if-eqz v40, :cond_3

    .line 551
    move-object/from16 v40, v9

    move-object/from16 v41, v15

    invoke-virtual/range {v40 .. v41}, Lcom/sun/javafx/geom/transform/Affine3D;->concatenate(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 557
    :cond_3
    move-object/from16 v40, v9

    move/from16 v41, v11

    move/from16 v0, v41

    float-to-double v0, v0

    move-wide/from16 v41, v0

    move/from16 v43, v12

    move/from16 v0, v43

    float-to-double v0, v0

    move-wide/from16 v43, v0

    invoke-virtual/range {v40 .. v44}, Lcom/sun/javafx/geom/transform/Affine3D;->translate(DD)V

    .line 558
    move-object/from16 v40, v9

    move/from16 v41, v13

    move/from16 v0, v41

    float-to-double v0, v0

    move-wide/from16 v41, v0

    invoke-virtual/range {v40 .. v42}, Lcom/sun/javafx/geom/transform/Affine3D;->rotate(D)V

    .line 559
    move-object/from16 v40, v9

    move/from16 v41, v10

    move/from16 v0, v41

    float-to-double v0, v0

    move-wide/from16 v41, v0

    move/from16 v43, v10

    move/from16 v0, v43

    float-to-double v0, v0

    move-wide/from16 v43, v0

    invoke-virtual/range {v40 .. v44}, Lcom/sun/javafx/geom/transform/Affine3D;->scale(DD)V

    .line 563
    move-object/from16 v40, v9

    :try_start_0
    invoke-virtual/range {v40 .. v40}, Lcom/sun/javafx/geom/transform/Affine3D;->invert()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 566
    .line 568
    :goto_0
    move-object/from16 v40, v9

    invoke-virtual/range {v40 .. v40}, Lcom/sun/javafx/geom/transform/Affine3D;->is2D()Z

    move-result v40

    if-nez v40, :cond_4

    .line 569
    move-object/from16 v40, v2

    invoke-interface/range {v40 .. v40}, Lcom/sun/prism/ps/ShaderGraphics;->getCameraNoClone()Lcom/sun/javafx/sg/prism/NGCamera;

    move-result-object v40

    move-object/from16 v16, v40

    .line 570
    .local v16, "cam":Lcom/sun/javafx/sg/prism/NGCamera;
    new-instance v40, Lcom/sun/javafx/geom/Vec3d;

    move-object/from16 v47, v40

    move-object/from16 v40, v47

    move-object/from16 v41, v47

    invoke-direct/range {v41 .. v41}, Lcom/sun/javafx/geom/Vec3d;-><init>()V

    move-object/from16 v17, v40

    .line 571
    .local v17, "tmpVec":Lcom/sun/javafx/geom/Vec3d;
    new-instance v40, Lcom/sun/javafx/geom/PickRay;

    move-object/from16 v47, v40

    move-object/from16 v40, v47

    move-object/from16 v41, v47

    invoke-direct/range {v41 .. v41}, Lcom/sun/javafx/geom/PickRay;-><init>()V

    move-object/from16 v18, v40

    .line 573
    .local v18, "tmpvec":Lcom/sun/javafx/geom/PickRay;
    const/16 v40, 0x0

    const/16 v41, 0x0

    move-object/from16 v42, v16

    move-object/from16 v43, v9

    move-object/from16 v44, v18

    move-object/from16 v45, v17

    const/16 v46, 0x0

    invoke-static/range {v40 .. v46}, Lcom/sun/prism/impl/ps/PaintHelper;->project(FFLcom/sun/javafx/sg/prism/NGCamera;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/PickRay;Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Point2D;)Lcom/sun/javafx/geom/PickRay;

    move-result-object v40

    move-object/from16 v19, v40

    .line 574
    .local v19, "ray00":Lcom/sun/javafx/geom/PickRay;
    const/high16 v40, 0x3f800000    # 1.0f

    const/16 v41, 0x0

    move-object/from16 v42, v16

    move-object/from16 v43, v9

    move-object/from16 v44, v18

    move-object/from16 v45, v17

    const/16 v46, 0x0

    invoke-static/range {v40 .. v46}, Lcom/sun/prism/impl/ps/PaintHelper;->project(FFLcom/sun/javafx/sg/prism/NGCamera;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/PickRay;Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Point2D;)Lcom/sun/javafx/geom/PickRay;

    move-result-object v40

    move-object/from16 v20, v40

    .line 575
    .local v20, "ray10":Lcom/sun/javafx/geom/PickRay;
    const/16 v40, 0x0

    const/high16 v41, 0x3f800000    # 1.0f

    move-object/from16 v42, v16

    move-object/from16 v43, v9

    move-object/from16 v44, v18

    move-object/from16 v45, v17

    const/16 v46, 0x0

    invoke-static/range {v40 .. v46}, Lcom/sun/prism/impl/ps/PaintHelper;->project(FFLcom/sun/javafx/sg/prism/NGCamera;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/PickRay;Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Point2D;)Lcom/sun/javafx/geom/PickRay;

    move-result-object v40

    move-object/from16 v21, v40

    .line 577
    .local v21, "ray01":Lcom/sun/javafx/geom/PickRay;
    move-object/from16 v40, v20

    invoke-virtual/range {v40 .. v40}, Lcom/sun/javafx/geom/PickRay;->getDirectionNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v40

    move-object/from16 v0, v40

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v40, v0

    move-object/from16 v42, v19

    invoke-virtual/range {v42 .. v42}, Lcom/sun/javafx/geom/PickRay;->getDirectionNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v42

    move-object/from16 v0, v42

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v42, v0

    sub-double v40, v40, v42

    move-wide/from16 v22, v40

    .line 578
    .local v22, "p0":D
    move-object/from16 v40, v21

    invoke-virtual/range {v40 .. v40}, Lcom/sun/javafx/geom/PickRay;->getDirectionNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v40

    move-object/from16 v0, v40

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v40, v0

    move-object/from16 v42, v19

    invoke-virtual/range {v42 .. v42}, Lcom/sun/javafx/geom/PickRay;->getDirectionNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v42

    move-object/from16 v0, v42

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v42, v0

    sub-double v40, v40, v42

    move-wide/from16 v24, v40

    .line 579
    .local v24, "p1":D
    move-object/from16 v40, v19

    invoke-virtual/range {v40 .. v40}, Lcom/sun/javafx/geom/PickRay;->getDirectionNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v40

    move-object/from16 v0, v40

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v40, v0

    move-wide/from16 v26, v40

    .line 581
    .local v26, "p2":D
    move-object/from16 v40, v20

    invoke-virtual/range {v40 .. v40}, Lcom/sun/javafx/geom/PickRay;->getDirectionNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v40

    move-object/from16 v0, v40

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v40, v0

    move-object/from16 v42, v19

    invoke-virtual/range {v42 .. v42}, Lcom/sun/javafx/geom/PickRay;->getDirectionNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v42

    move-object/from16 v0, v42

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v42, v0

    sub-double v40, v40, v42

    move-wide/from16 v28, v40

    .line 582
    .local v28, "py0":D
    move-object/from16 v40, v21

    invoke-virtual/range {v40 .. v40}, Lcom/sun/javafx/geom/PickRay;->getDirectionNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v40

    move-object/from16 v0, v40

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v40, v0

    move-object/from16 v42, v19

    invoke-virtual/range {v42 .. v42}, Lcom/sun/javafx/geom/PickRay;->getDirectionNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v42

    move-object/from16 v0, v42

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v42, v0

    sub-double v40, v40, v42

    move-wide/from16 v30, v40

    .line 583
    .local v30, "py1":D
    move-object/from16 v40, v19

    invoke-virtual/range {v40 .. v40}, Lcom/sun/javafx/geom/PickRay;->getDirectionNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v40

    move-object/from16 v0, v40

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v40, v0

    move-wide/from16 v32, v40

    .line 585
    .local v32, "py2":D
    move-wide/from16 v40, v22

    move-object/from16 v42, v19

    invoke-virtual/range {v42 .. v42}, Lcom/sun/javafx/geom/PickRay;->getOriginNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v42

    move-object/from16 v0, v42

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v42, v0

    move-wide/from16 v0, v42

    neg-double v0, v0

    move-wide/from16 v42, v0

    mul-double v40, v40, v42

    move-wide/from16 v22, v40

    .line 586
    move-wide/from16 v40, v24

    move-object/from16 v42, v19

    invoke-virtual/range {v42 .. v42}, Lcom/sun/javafx/geom/PickRay;->getOriginNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v42

    move-object/from16 v0, v42

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v42, v0

    move-wide/from16 v0, v42

    neg-double v0, v0

    move-wide/from16 v42, v0

    mul-double v40, v40, v42

    move-wide/from16 v24, v40

    .line 587
    move-wide/from16 v40, v26

    move-object/from16 v42, v19

    invoke-virtual/range {v42 .. v42}, Lcom/sun/javafx/geom/PickRay;->getOriginNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v42

    move-object/from16 v0, v42

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v42, v0

    move-wide/from16 v0, v42

    neg-double v0, v0

    move-wide/from16 v42, v0

    mul-double v40, v40, v42

    move-wide/from16 v26, v40

    .line 589
    move-wide/from16 v40, v28

    move-object/from16 v42, v19

    invoke-virtual/range {v42 .. v42}, Lcom/sun/javafx/geom/PickRay;->getOriginNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v42

    move-object/from16 v0, v42

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v42, v0

    move-wide/from16 v0, v42

    neg-double v0, v0

    move-wide/from16 v42, v0

    mul-double v40, v40, v42

    move-wide/from16 v28, v40

    .line 590
    move-wide/from16 v40, v30

    move-object/from16 v42, v19

    invoke-virtual/range {v42 .. v42}, Lcom/sun/javafx/geom/PickRay;->getOriginNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v42

    move-object/from16 v0, v42

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v42, v0

    move-wide/from16 v0, v42

    neg-double v0, v0

    move-wide/from16 v42, v0

    mul-double v40, v40, v42

    move-wide/from16 v30, v40

    .line 591
    move-wide/from16 v40, v32

    move-object/from16 v42, v19

    invoke-virtual/range {v42 .. v42}, Lcom/sun/javafx/geom/PickRay;->getOriginNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v42

    move-object/from16 v0, v42

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v42, v0

    move-wide/from16 v0, v42

    neg-double v0, v0

    move-wide/from16 v42, v0

    mul-double v40, v40, v42

    move-wide/from16 v32, v40

    .line 593
    move-object/from16 v40, v20

    invoke-virtual/range {v40 .. v40}, Lcom/sun/javafx/geom/PickRay;->getDirectionNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v40

    move-object/from16 v0, v40

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v40, v0

    move-object/from16 v42, v19

    invoke-virtual/range {v42 .. v42}, Lcom/sun/javafx/geom/PickRay;->getDirectionNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v42

    move-object/from16 v0, v42

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v42, v0

    sub-double v40, v40, v42

    move-wide/from16 v34, v40

    .line 594
    .local v34, "wv0":D
    move-object/from16 v40, v21

    invoke-virtual/range {v40 .. v40}, Lcom/sun/javafx/geom/PickRay;->getDirectionNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v40

    move-object/from16 v0, v40

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v40, v0

    move-object/from16 v42, v19

    invoke-virtual/range {v42 .. v42}, Lcom/sun/javafx/geom/PickRay;->getDirectionNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v42

    move-object/from16 v0, v42

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v42, v0

    sub-double v40, v40, v42

    move-wide/from16 v36, v40

    .line 595
    .local v36, "wv1":D
    move-object/from16 v40, v19

    invoke-virtual/range {v40 .. v40}, Lcom/sun/javafx/geom/PickRay;->getDirectionNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v40

    move-object/from16 v0, v40

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v40, v0

    move-wide/from16 v38, v40

    .line 597
    .local v38, "wv2":D
    move-object/from16 v40, v3

    const-string v41, "perspVec"

    move-wide/from16 v42, v34

    move-wide/from16 v0, v42

    double-to-float v0, v0

    move/from16 v42, v0

    move-wide/from16 v43, v36

    move-wide/from16 v0, v43

    double-to-float v0, v0

    move/from16 v43, v0

    move-wide/from16 v44, v38

    move-wide/from16 v0, v44

    double-to-float v0, v0

    move/from16 v44, v0

    invoke-interface/range {v40 .. v44}, Lcom/sun/prism/ps/Shader;->setConstant(Ljava/lang/String;FFF)V

    .line 598
    move-object/from16 v40, v3

    const-string v41, "m0"

    move-wide/from16 v42, v22

    move-wide/from16 v0, v42

    double-to-float v0, v0

    move/from16 v42, v0

    move-wide/from16 v43, v24

    move-wide/from16 v0, v43

    double-to-float v0, v0

    move/from16 v43, v0

    move-wide/from16 v44, v26

    move-wide/from16 v0, v44

    double-to-float v0, v0

    move/from16 v44, v0

    move-object/from16 v45, v19

    invoke-virtual/range {v45 .. v45}, Lcom/sun/javafx/geom/PickRay;->getOriginNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v45

    move-object/from16 v0, v45

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v45, v0

    move-wide/from16 v0, v45

    double-to-float v0, v0

    move/from16 v45, v0

    invoke-interface/range {v40 .. v45}, Lcom/sun/prism/ps/Shader;->setConstant(Ljava/lang/String;FFFF)V

    .line 599
    move-object/from16 v40, v3

    const-string v41, "m1"

    move-wide/from16 v42, v28

    move-wide/from16 v0, v42

    double-to-float v0, v0

    move/from16 v42, v0

    move-wide/from16 v43, v30

    move-wide/from16 v0, v43

    double-to-float v0, v0

    move/from16 v43, v0

    move-wide/from16 v44, v32

    move-wide/from16 v0, v44

    double-to-float v0, v0

    move/from16 v44, v0

    move-object/from16 v45, v19

    invoke-virtual/range {v45 .. v45}, Lcom/sun/javafx/geom/PickRay;->getOriginNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v45

    move-object/from16 v0, v45

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v45, v0

    move-wide/from16 v0, v45

    double-to-float v0, v0

    move/from16 v45, v0

    invoke-interface/range {v40 .. v45}, Lcom/sun/prism/ps/Shader;->setConstant(Ljava/lang/String;FFFF)V

    .line 600
    .line 616
    .end local v16    # "cam":Lcom/sun/javafx/sg/prism/NGCamera;
    .end local v17    # "tmpVec":Lcom/sun/javafx/geom/Vec3d;
    .end local v18    # "tmpvec":Lcom/sun/javafx/geom/PickRay;
    .end local v19    # "ray00":Lcom/sun/javafx/geom/PickRay;
    .end local v20    # "ray10":Lcom/sun/javafx/geom/PickRay;
    .end local v21    # "ray01":Lcom/sun/javafx/geom/PickRay;
    .end local v22    # "p0":D
    .end local v24    # "p1":D
    .end local v26    # "p2":D
    .end local v28    # "py0":D
    .end local v30    # "py1":D
    .end local v32    # "py2":D
    .end local v34    # "wv0":D
    .end local v36    # "wv1":D
    .end local v38    # "wv2":D
    :goto_1
    move/from16 v40, v14

    const v41, 0x3f7d70a4    # 0.99f

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->min(FF)F

    move-result v40

    move/from16 v14, v40

    .line 619
    const/high16 v40, 0x3f800000    # 1.0f

    move/from16 v41, v14

    move/from16 v42, v14

    mul-float v41, v41, v42

    sub-float v40, v40, v41

    move/from16 v16, v40

    .line 620
    .local v16, "denom":F
    const/high16 v40, 0x3f800000    # 1.0f

    move/from16 v41, v16

    div-float v40, v40, v41

    move/from16 v17, v40

    .line 621
    .local v17, "inv_denom":F
    move-object/from16 v40, v3

    const-string v41, "precalc"

    move/from16 v42, v14

    move/from16 v43, v16

    move/from16 v44, v17

    invoke-interface/range {v40 .. v44}, Lcom/sun/prism/ps/Shader;->setConstant(Ljava/lang/String;FFF)V

    .line 623
    move-object/from16 v40, v3

    move-object/from16 v41, v4

    invoke-static/range {v40 .. v41}, Lcom/sun/prism/impl/ps/PaintHelper;->setMultiGradient(Lcom/sun/prism/ps/Shader;Lcom/sun/prism/paint/Gradient;)V

    .line 624
    return-void

    .line 564
    .end local v16    # "denom":F
    .end local v17    # "inv_denom":F
    :catch_0
    move-exception v40

    move-object/from16 v16, v40

    .line 565
    .local v16, "e":Ljava/lang/Exception;
    move-object/from16 v40, v9

    const-wide/16 v41, 0x0

    const-wide/16 v43, 0x0

    const-wide/16 v45, 0x0

    invoke-virtual/range {v40 .. v46}, Lcom/sun/javafx/geom/transform/Affine3D;->setToScale(DDD)V

    goto/16 :goto_0

    .line 601
    .end local v16    # "e":Ljava/lang/Exception;
    :cond_4
    move-object/from16 v40, v9

    invoke-virtual/range {v40 .. v40}, Lcom/sun/javafx/geom/transform/Affine3D;->getMxx()D

    move-result-wide v40

    move-wide/from16 v0, v40

    double-to-float v0, v0

    move/from16 v40, v0

    move/from16 v16, v40

    .line 602
    .local v16, "m00":F
    move-object/from16 v40, v9

    invoke-virtual/range {v40 .. v40}, Lcom/sun/javafx/geom/transform/Affine3D;->getMxy()D

    move-result-wide v40

    move-wide/from16 v0, v40

    double-to-float v0, v0

    move/from16 v40, v0

    move/from16 v17, v40

    .line 603
    .local v17, "m01":F
    move-object/from16 v40, v9

    invoke-virtual/range {v40 .. v40}, Lcom/sun/javafx/geom/transform/Affine3D;->getMxt()D

    move-result-wide v40

    move-wide/from16 v0, v40

    double-to-float v0, v0

    move/from16 v40, v0

    move/from16 v18, v40

    .line 604
    .local v18, "m02":F
    move-object/from16 v40, v3

    const-string v41, "m0"

    move/from16 v42, v16

    move/from16 v43, v17

    move/from16 v44, v18

    const/16 v45, 0x0

    invoke-interface/range {v40 .. v45}, Lcom/sun/prism/ps/Shader;->setConstant(Ljava/lang/String;FFFF)V

    .line 606
    move-object/from16 v40, v9

    invoke-virtual/range {v40 .. v40}, Lcom/sun/javafx/geom/transform/Affine3D;->getMyx()D

    move-result-wide v40

    move-wide/from16 v0, v40

    double-to-float v0, v0

    move/from16 v40, v0

    move/from16 v19, v40

    .line 607
    .local v19, "m10":F
    move-object/from16 v40, v9

    invoke-virtual/range {v40 .. v40}, Lcom/sun/javafx/geom/transform/Affine3D;->getMyy()D

    move-result-wide v40

    move-wide/from16 v0, v40

    double-to-float v0, v0

    move/from16 v40, v0

    move/from16 v20, v40

    .line 608
    .local v20, "m11":F
    move-object/from16 v40, v9

    invoke-virtual/range {v40 .. v40}, Lcom/sun/javafx/geom/transform/Affine3D;->getMyt()D

    move-result-wide v40

    move-wide/from16 v0, v40

    double-to-float v0, v0

    move/from16 v40, v0

    move/from16 v21, v40

    .line 609
    .local v21, "m12":F
    move-object/from16 v40, v3

    const-string v41, "m1"

    move/from16 v42, v19

    move/from16 v43, v20

    move/from16 v44, v21

    const/16 v45, 0x0

    invoke-interface/range {v40 .. v45}, Lcom/sun/prism/ps/Shader;->setConstant(Ljava/lang/String;FFFF)V

    .line 611
    move-object/from16 v40, v3

    const-string v41, "perspVec"

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/high16 v44, 0x3f800000    # 1.0f

    invoke-interface/range {v40 .. v44}, Lcom/sun/prism/ps/Shader;->setConstant(Ljava/lang/String;FFF)V

    goto/16 :goto_1
.end method

.method private static setTextureGradient(Lcom/sun/prism/ps/Shader;Lcom/sun/prism/paint/Gradient;)V
    .locals 14

    .prologue
    .line 302
    move-object v0, p0

    .local v0, "shader":Lcom/sun/prism/ps/Shader;
    move-object v1, p1

    .local v1, "paint":Lcom/sun/prism/paint/Gradient;
    move-object v8, v1

    invoke-static {v8}, Lcom/sun/prism/impl/ps/PaintHelper;->initGradient(Lcom/sun/prism/paint/Gradient;)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v8, v9

    move v2, v8

    .line 303
    .local v2, "cy":F
    const/high16 v8, 0x3f000000    # 0.5f

    move v3, v8

    .line 304
    .local v3, "cx":F
    const/4 v8, 0x0

    move v4, v8

    .local v4, "fractmul":F
    const/4 v8, 0x0

    move v5, v8

    .line 305
    .local v5, "clampmul":F
    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/prism/paint/Gradient;->getSpreadMethod()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 319
    :goto_0
    const/high16 v8, 0x3f800000    # 1.0f

    sget-object v9, Lcom/sun/prism/impl/ps/PaintHelper;->gtexCacheTexture:Lcom/sun/prism/Texture;

    invoke-interface {v9}, Lcom/sun/prism/Texture;->getPhysicalWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    move v6, v8

    .line 320
    .local v6, "xscale":F
    const/high16 v8, 0x3f800000    # 1.0f

    sget-object v9, Lcom/sun/prism/impl/ps/PaintHelper;->gtexCacheTexture:Lcom/sun/prism/Texture;

    invoke-interface {v9}, Lcom/sun/prism/Texture;->getPhysicalHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    move v7, v8

    .line 321
    .local v7, "yscale":F
    move v8, v3

    move v9, v6

    mul-float/2addr v8, v9

    move v3, v8

    .line 322
    move v8, v2

    move v9, v7

    mul-float/2addr v8, v9

    move v2, v8

    .line 323
    move v8, v4

    move v9, v6

    mul-float/2addr v8, v9

    move v4, v8

    .line 324
    move v8, v5

    move v9, v6

    mul-float/2addr v8, v9

    move v5, v8

    .line 325
    move-object v8, v0

    const-string v9, "content"

    move v10, v3

    move v11, v2

    move v12, v4

    move v13, v5

    invoke-interface/range {v8 .. v13}, Lcom/sun/prism/ps/Shader;->setConstant(Ljava/lang/String;FFFF)V

    .line 329
    return-void

    .line 308
    .end local v6    # "xscale":F
    .end local v7    # "yscale":F
    :pswitch_0
    const/high16 v8, 0x42c80000    # 100.0f

    move v5, v8

    .line 309
    goto :goto_0

    .line 312
    :pswitch_1
    const/high16 v8, 0x42c80000    # 100.0f

    move v4, v8

    .line 313
    goto :goto_0

    .line 316
    :pswitch_2
    const/high16 v8, 0x43480000    # 200.0f

    move v4, v8

    goto :goto_0

    .line 305
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static stopsToGtexImage(Ljava/util/List;I)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sun/prism/paint/Stop;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "stops":Ljava/util/List;, "Ljava/util/List<Lcom/sun/prism/paint/Stop;>;"
    move/from16 v1, p1

    .local v1, "numStops":I
    move-object v10, v0

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sun/prism/paint/Stop;

    invoke-virtual {v10}, Lcom/sun/prism/paint/Stop;->getColor()Lcom/sun/prism/paint/Color;

    move-result-object v10

    move-object v2, v10

    .line 216
    .local v2, "lastColor":Lcom/sun/prism/paint/Color;
    move-object v10, v0

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sun/prism/paint/Stop;

    invoke-virtual {v10}, Lcom/sun/prism/paint/Stop;->getOffset()F

    move-result v10

    move v3, v10

    .line 217
    .local v3, "offset":F
    move v10, v3

    const/high16 v11, 0x42c80000    # 100.0f

    mul-float/2addr v10, v11

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    float-to-int v10, v10

    move v4, v10

    .line 218
    .local v4, "lastIndex":I
    sget-object v10, Lcom/sun/prism/impl/ps/PaintHelper;->gtexColors:[B

    const/4 v11, 0x0

    move-object v12, v2

    move-object v13, v2

    const/4 v14, 0x0

    invoke-static {v10, v11, v12, v13, v14}, Lcom/sun/prism/impl/ps/PaintHelper;->insertInterpColor([BILcom/sun/prism/paint/Color;Lcom/sun/prism/paint/Color;F)V

    .line 219
    const/4 v10, 0x1

    move v5, v10

    .local v5, "i":I
    :goto_0
    move v10, v5

    move v11, v1

    if-ge v10, v11, :cond_2

    .line 220
    move-object v10, v0

    move v11, v5

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sun/prism/paint/Stop;

    invoke-virtual {v10}, Lcom/sun/prism/paint/Stop;->getColor()Lcom/sun/prism/paint/Color;

    move-result-object v10

    move-object v6, v10

    .line 221
    .local v6, "color":Lcom/sun/prism/paint/Color;
    move-object v10, v0

    move v11, v5

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sun/prism/paint/Stop;

    invoke-virtual {v10}, Lcom/sun/prism/paint/Stop;->getOffset()F

    move-result v10

    move v3, v10

    .line 222
    move v10, v3

    const/high16 v11, 0x42c80000    # 100.0f

    mul-float/2addr v10, v11

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    float-to-int v10, v10

    move v7, v10

    .line 223
    .local v7, "index":I
    move v10, v7

    move v11, v4

    if-ne v10, v11, :cond_1

    .line 224
    sget-object v10, Lcom/sun/prism/impl/ps/PaintHelper;->gtexColors:[B

    move v11, v7

    move-object v12, v2

    move-object v13, v6

    const/high16 v14, 0x3f000000    # 0.5f

    invoke-static {v10, v11, v12, v13, v14}, Lcom/sun/prism/impl/ps/PaintHelper;->insertInterpColor([BILcom/sun/prism/paint/Color;Lcom/sun/prism/paint/Color;F)V

    .line 232
    :cond_0
    move v10, v7

    move v4, v10

    .line 233
    move-object v10, v6

    move-object v2, v10

    .line 219
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 226
    :cond_1
    move v10, v4

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    move v8, v10

    .local v8, "j":I
    :goto_1
    move v10, v8

    move v11, v7

    if-gt v10, v11, :cond_0

    .line 227
    move v10, v8

    move v11, v4

    sub-int/2addr v10, v11

    int-to-float v10, v10

    move v9, v10

    .line 228
    .local v9, "t":F
    move v10, v9

    move v11, v7

    move v12, v4

    sub-int/2addr v11, v12

    int-to-float v11, v11

    div-float/2addr v10, v11

    move v9, v10

    .line 229
    sget-object v10, Lcom/sun/prism/impl/ps/PaintHelper;->gtexColors:[B

    move v11, v8

    move-object v12, v2

    move-object v13, v6

    move v14, v9

    invoke-static {v10, v11, v12, v13, v14}, Lcom/sun/prism/impl/ps/PaintHelper;->insertInterpColor([BILcom/sun/prism/paint/Color;Lcom/sun/prism/paint/Color;F)V

    .line 226
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 239
    .end local v6    # "color":Lcom/sun/prism/paint/Color;
    .end local v7    # "index":I
    .end local v8    # "j":I
    .end local v9    # "t":F
    :cond_2
    const/4 v10, 0x1

    move v5, v10

    :goto_2
    move v10, v5

    const/16 v11, 0x65

    if-ge v10, v11, :cond_3

    .line 240
    const/16 v10, 0x64

    move v11, v5

    add-int/2addr v10, v11

    const/4 v11, 0x4

    mul-int/lit8 v10, v10, 0x4

    move v6, v10

    .line 241
    .local v6, "j":I
    const/16 v10, 0x64

    move v11, v5

    rsub-int/lit8 v10, v11, 0x64

    const/4 v11, 0x4

    mul-int/lit8 v10, v10, 0x4

    move v7, v10

    .line 242
    .local v7, "k":I
    sget-object v10, Lcom/sun/prism/impl/ps/PaintHelper;->gtexColors:[B

    move v11, v6

    const/4 v12, 0x0

    add-int/lit8 v11, v11, 0x0

    sget-object v12, Lcom/sun/prism/impl/ps/PaintHelper;->gtexColors:[B

    move v13, v7

    const/4 v14, 0x0

    add-int/lit8 v13, v13, 0x0

    aget-byte v12, v12, v13

    aput-byte v12, v10, v11

    .line 243
    sget-object v10, Lcom/sun/prism/impl/ps/PaintHelper;->gtexColors:[B

    move v11, v6

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    sget-object v12, Lcom/sun/prism/impl/ps/PaintHelper;->gtexColors:[B

    move v13, v7

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    aget-byte v12, v12, v13

    aput-byte v12, v10, v11

    .line 244
    sget-object v10, Lcom/sun/prism/impl/ps/PaintHelper;->gtexColors:[B

    move v11, v6

    const/4 v12, 0x2

    add-int/lit8 v11, v11, 0x2

    sget-object v12, Lcom/sun/prism/impl/ps/PaintHelper;->gtexColors:[B

    move v13, v7

    const/4 v14, 0x2

    add-int/lit8 v13, v13, 0x2

    aget-byte v12, v12, v13

    aput-byte v12, v10, v11

    .line 245
    sget-object v10, Lcom/sun/prism/impl/ps/PaintHelper;->gtexColors:[B

    move v11, v6

    const/4 v12, 0x3

    add-int/lit8 v11, v11, 0x3

    sget-object v12, Lcom/sun/prism/impl/ps/PaintHelper;->gtexColors:[B

    move v13, v7

    const/4 v14, 0x3

    add-int/lit8 v13, v13, 0x3

    aget-byte v12, v12, v13

    aput-byte v12, v10, v11

    .line 239
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 247
    .end local v6    # "j":I
    .end local v7    # "k":I
    :cond_3
    return-void
.end method

.method private static stopsToImage(Ljava/util/List;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sun/prism/paint/Stop;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "stops":Ljava/util/List;, "Ljava/util/List<Lcom/sun/prism/paint/Stop;>;"
    move v1, p1

    .local v1, "numStops":I
    move v6, v1

    const/16 v7, 0xc

    if-le v6, v7, :cond_0

    .line 168
    new-instance v6, Ljava/lang/RuntimeException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Maximum number of gradient stops exceeded (paint uses "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " stops, but max is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0xc

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 174
    :cond_0
    sget-object v6, Lcom/sun/prism/impl/ps/PaintHelper;->bgraColors:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v6

    .line 175
    const/4 v6, 0x0

    move-object v2, v6

    .line 176
    .local v2, "lastColor":Lcom/sun/prism/paint/Color;
    const/4 v6, 0x0

    move v3, v6

    .local v3, "i":I
    :goto_0
    move v6, v3

    const/16 v7, 0x10

    if-ge v6, v7, :cond_3

    .line 178
    move v6, v3

    move v7, v1

    if-ge v6, v7, :cond_2

    .line 179
    move-object v6, v0

    move v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/prism/paint/Stop;

    invoke-virtual {v6}, Lcom/sun/prism/paint/Stop;->getColor()Lcom/sun/prism/paint/Color;

    move-result-object v6

    move-object v4, v6

    .line 180
    .local v4, "c":Lcom/sun/prism/paint/Color;
    move-object v6, v4

    move-object v2, v6

    .line 187
    :goto_1
    move-object v6, v4

    sget-object v7, Lcom/sun/prism/impl/ps/PaintHelper;->bgraColors:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v7}, Lcom/sun/prism/paint/Color;->putBgraPreBytes(Ljava/nio/ByteBuffer;)V

    .line 192
    move-object v6, v4

    invoke-virtual {v6}, Lcom/sun/prism/paint/Color;->getIntArgbPre()I

    move-result v6

    move v5, v6

    .line 193
    .local v5, "argb":I
    move v6, v5

    sget-object v7, Lcom/sun/prism/impl/ps/PaintHelper;->previousColors:[I

    move v8, v3

    aget v7, v7, v8

    if-eq v6, v7, :cond_1

    .line 194
    sget-object v6, Lcom/sun/prism/impl/ps/PaintHelper;->previousColors:[I

    move v7, v3

    move v8, v5

    aput v8, v6, v7

    .line 176
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 185
    .end local v4    # "c":Lcom/sun/prism/paint/Color;
    .end local v5    # "argb":I
    :cond_2
    move-object v6, v2

    move-object v4, v6

    .restart local v4    # "c":Lcom/sun/prism/paint/Color;
    goto :goto_1

    .line 197
    .end local v4    # "c":Lcom/sun/prism/paint/Color;
    :cond_3
    sget-object v6, Lcom/sun/prism/impl/ps/PaintHelper;->bgraColors:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v6

    .line 198
    return-void
.end method
