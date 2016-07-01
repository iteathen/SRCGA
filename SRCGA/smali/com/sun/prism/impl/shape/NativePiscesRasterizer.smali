.class public Lcom/sun/prism/impl/shape/NativePiscesRasterizer;
.super Ljava/lang/Object;
.source "NativePiscesRasterizer.java"

# interfaces
.implements Lcom/sun/prism/impl/shape/ShapeRasterizer;


# static fields
.field private static final SEG_CLOSE:B = 0x4t

.field private static final SEG_CUBICTO:B = 0x3t

.field private static final SEG_LINETO:B = 0x1t

.field private static final SEG_MOVETO:B = 0x0t

.field private static final SEG_QUADTO:B = 0x2t

.field private static emptyData:Lcom/sun/prism/impl/shape/MaskData;


# instance fields
.field private bounds:[I

.field private cachedBuffer:Ljava/nio/ByteBuffer;

.field private cachedData:Lcom/sun/prism/impl/shape/MaskData;

.field private cachedMask:[B

.field private firstTimeAASetting:Z

.field private lastAntialiasedShape:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 41
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sun/prism/impl/shape/MaskData;->create([BIIII)Lcom/sun/prism/impl/shape/MaskData;

    move-result-object v0

    sput-object v0, Lcom/sun/prism/impl/shape/NativePiscesRasterizer;->emptyData:Lcom/sun/prism/impl/shape/MaskData;

    .line 70
    invoke-static {}, Lcom/sun/prism/impl/shape/NativePiscesRasterizer$$Lambda$1;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    .line 82
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/shape/NativePiscesRasterizer;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 52
    move-object v1, v0

    const/4 v2, 0x4

    new-array v2, v2, [I

    iput-object v2, v1, Lcom/sun/prism/impl/shape/NativePiscesRasterizer;->bounds:[I

    .line 54
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/prism/impl/shape/NativePiscesRasterizer;->firstTimeAASetting:Z

    return-void
.end method

.method static synthetic access$lambda$0()Ljava/lang/Void;
    .locals 1

    invoke-static {}, Lcom/sun/prism/impl/shape/NativePiscesRasterizer;->lambda$static$453()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method static native init(II)V
.end method

.method private static synthetic lambda$static$453()Ljava/lang/Void;
    .locals 3

    .prologue
    .line 71
    const-string v1, "prism_common"

    move-object v0, v1

    .line 73
    .local v0, "libName":Ljava/lang/String;
    sget-boolean v1, Lcom/sun/prism/impl/PrismSettings;->verbose:Z

    if-eqz v1, :cond_0

    .line 74
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Loading Prism common native library ..."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 76
    :cond_0
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/glass/utils/NativeLibLoader;->loadLibrary(Ljava/lang/String;)V

    .line 77
    sget-boolean v1, Lcom/sun/prism/impl/PrismSettings;->verbose:Z

    if-eqz v1, :cond_1

    .line 78
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "\tsucceeded."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 80
    :cond_1
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "libName":Ljava/lang/String;
    return-object v0
.end method

.method static native produceFillAlphas([F[BIZDDDDDD[I[B)V
.end method

.method static native produceStrokeAlphas([F[BIFIIF[FFDDDDDD[I[B)V
.end method


# virtual methods
.method public getMaskData(Lcom/sun/javafx/geom/Shape;Lcom/sun/prism/BasicStroke;Lcom/sun/javafx/geom/RectBounds;Lcom/sun/javafx/geom/transform/BaseTransform;ZZ)Lcom/sun/prism/impl/shape/MaskData;
    .locals 53

    .prologue
    .line 90
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/prism/impl/shape/NativePiscesRasterizer;
    move-object/from16 v4, p1

    .local v4, "shape":Lcom/sun/javafx/geom/Shape;
    move-object/from16 v5, p2

    .local v5, "stroke":Lcom/sun/prism/BasicStroke;
    move-object/from16 v6, p3

    .local v6, "xformBounds":Lcom/sun/javafx/geom/RectBounds;
    move-object/from16 v7, p4

    .local v7, "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move/from16 v8, p5

    .local v8, "close":Z
    move/from16 v9, p6

    .local v9, "antialiasedShape":Z
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/sun/prism/impl/shape/NativePiscesRasterizer;->firstTimeAASetting:Z

    move/from16 v28, v0

    if-nez v28, :cond_0

    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/sun/prism/impl/shape/NativePiscesRasterizer;->lastAntialiasedShape:Z

    move/from16 v28, v0

    move/from16 v29, v9

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_1

    .line 91
    :cond_0
    move/from16 v28, v9

    if-eqz v28, :cond_6

    const/16 v28, 0x3

    :goto_0
    move/from16 v10, v28

    .line 92
    .local v10, "subpixelLgPositions":I
    move/from16 v28, v10

    move/from16 v29, v10

    invoke-static/range {v28 .. v29}, Lcom/sun/prism/impl/shape/NativePiscesRasterizer;->init(II)V

    .line 93
    move-object/from16 v28, v3

    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/sun/prism/impl/shape/NativePiscesRasterizer;->firstTimeAASetting:Z

    .line 94
    move-object/from16 v28, v3

    move/from16 v29, v9

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/sun/prism/impl/shape/NativePiscesRasterizer;->lastAntialiasedShape:Z

    .line 97
    .end local v10    # "subpixelLgPositions":I
    :cond_1
    move-object/from16 v28, v5

    if-eqz v28, :cond_2

    move-object/from16 v28, v5

    invoke-virtual/range {v28 .. v28}, Lcom/sun/prism/BasicStroke;->getType()I

    move-result v28

    if-eqz v28, :cond_2

    .line 104
    move-object/from16 v28, v5

    move-object/from16 v29, v4

    invoke-virtual/range {v28 .. v29}, Lcom/sun/prism/BasicStroke;->createStrokedShape(Lcom/sun/javafx/geom/Shape;)Lcom/sun/javafx/geom/Shape;

    move-result-object v28

    move-object/from16 v4, v28

    .line 105
    const/16 v28, 0x0

    move-object/from16 v5, v28

    .line 107
    :cond_2
    move-object/from16 v28, v6

    if-nez v28, :cond_4

    .line 108
    move-object/from16 v28, v5

    if-eqz v28, :cond_3

    .line 112
    move-object/from16 v28, v5

    move-object/from16 v29, v4

    invoke-virtual/range {v28 .. v29}, Lcom/sun/prism/BasicStroke;->createStrokedShape(Lcom/sun/javafx/geom/Shape;)Lcom/sun/javafx/geom/Shape;

    move-result-object v28

    move-object/from16 v4, v28

    .line 113
    const/16 v28, 0x0

    move-object/from16 v5, v28

    .line 116
    :cond_3
    new-instance v28, Lcom/sun/javafx/geom/RectBounds;

    move-object/from16 v51, v28

    move-object/from16 v28, v51

    move-object/from16 v29, v51

    invoke-direct/range {v29 .. v29}, Lcom/sun/javafx/geom/RectBounds;-><init>()V

    move-object/from16 v6, v28

    .line 118
    move-object/from16 v28, v7

    move-object/from16 v29, v4

    invoke-virtual/range {v29 .. v29}, Lcom/sun/javafx/geom/Shape;->getBounds()Lcom/sun/javafx/geom/RectBounds;

    move-result-object v29

    move-object/from16 v30, v6

    invoke-virtual/range {v28 .. v30}, Lcom/sun/javafx/geom/transform/BaseTransform;->transform(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v28

    check-cast v28, Lcom/sun/javafx/geom/RectBounds;

    move-object/from16 v6, v28

    .line 120
    :cond_4
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/prism/impl/shape/NativePiscesRasterizer;->bounds:[I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v30, v6

    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/geom/RectBounds;->getMinX()F

    move-result v30

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->floor(D)D

    move-result-wide v30

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v30, v0

    aput v30, v28, v29

    .line 121
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/prism/impl/shape/NativePiscesRasterizer;->bounds:[I

    move-object/from16 v28, v0

    const/16 v29, 0x1

    move-object/from16 v30, v6

    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/geom/RectBounds;->getMinY()F

    move-result v30

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->floor(D)D

    move-result-wide v30

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v30, v0

    aput v30, v28, v29

    .line 122
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/prism/impl/shape/NativePiscesRasterizer;->bounds:[I

    move-object/from16 v28, v0

    const/16 v29, 0x2

    move-object/from16 v30, v6

    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/geom/RectBounds;->getMaxX()F

    move-result v30

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v30

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v30, v0

    aput v30, v28, v29

    .line 123
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/prism/impl/shape/NativePiscesRasterizer;->bounds:[I

    move-object/from16 v28, v0

    const/16 v29, 0x3

    move-object/from16 v30, v6

    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/geom/RectBounds;->getMaxY()F

    move-result v30

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v30

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v30, v0

    aput v30, v28, v29

    .line 124
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/prism/impl/shape/NativePiscesRasterizer;->bounds:[I

    move-object/from16 v28, v0

    const/16 v29, 0x2

    aget v28, v28, v29

    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/prism/impl/shape/NativePiscesRasterizer;->bounds:[I

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aget v29, v29, v30

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_5

    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/prism/impl/shape/NativePiscesRasterizer;->bounds:[I

    move-object/from16 v28, v0

    const/16 v29, 0x3

    aget v28, v28, v29

    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/prism/impl/shape/NativePiscesRasterizer;->bounds:[I

    move-object/from16 v29, v0

    const/16 v30, 0x1

    aget v29, v29, v30

    move/from16 v0, v28

    move/from16 v1, v29

    if-gt v0, v1, :cond_7

    .line 125
    :cond_5
    sget-object v28, Lcom/sun/prism/impl/shape/NativePiscesRasterizer;->emptyData:Lcom/sun/prism/impl/shape/MaskData;

    move-object/from16 v3, v28

    .line 180
    .end local v3    # "this":Lcom/sun/prism/impl/shape/NativePiscesRasterizer;
    :goto_1
    return-object v3

    .line 91
    .restart local v3    # "this":Lcom/sun/prism/impl/shape/NativePiscesRasterizer;
    :cond_6
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 127
    :cond_7
    move-object/from16 v28, v4

    move-object/from16 v0, v28

    instance-of v0, v0, Lcom/sun/javafx/geom/Path2D;

    move/from16 v28, v0

    if-eqz v28, :cond_a

    move-object/from16 v28, v4

    check-cast v28, Lcom/sun/javafx/geom/Path2D;

    :goto_2
    move-object/from16 v10, v28

    .line 129
    .local v10, "p2d":Lcom/sun/javafx/geom/Path2D;
    move-object/from16 v28, v7

    if-eqz v28, :cond_8

    move-object/from16 v28, v7

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/geom/transform/BaseTransform;->isIdentity()Z

    move-result v28

    if-eqz v28, :cond_b

    .line 130
    :cond_8
    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v51, v28

    move-wide/from16 v28, v51

    move-wide/from16 v30, v51

    move-wide/from16 v19, v30

    .local v19, "myy":D
    move-wide/from16 v11, v28

    .line 131
    .local v11, "mxx":D
    const-wide/16 v28, 0x0

    move-wide/from16 v51, v28

    move-wide/from16 v28, v51

    move-wide/from16 v30, v51

    move-wide/from16 v17, v30

    .local v17, "myx":D
    move-wide/from16 v13, v28

    .line 132
    .local v13, "mxy":D
    const-wide/16 v28, 0x0

    move-wide/from16 v51, v28

    move-wide/from16 v28, v51

    move-wide/from16 v30, v51

    move-wide/from16 v21, v30

    .local v21, "myt":D
    move-wide/from16 v15, v28

    .line 141
    .local v15, "mxt":D
    :goto_3
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/prism/impl/shape/NativePiscesRasterizer;->bounds:[I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aget v28, v28, v29

    move/from16 v23, v28

    .line 142
    .local v23, "x":I
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/prism/impl/shape/NativePiscesRasterizer;->bounds:[I

    move-object/from16 v28, v0

    const/16 v29, 0x1

    aget v28, v28, v29

    move/from16 v24, v28

    .line 143
    .local v24, "y":I
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/prism/impl/shape/NativePiscesRasterizer;->bounds:[I

    move-object/from16 v28, v0

    const/16 v29, 0x2

    aget v28, v28, v29

    move/from16 v29, v23

    sub-int v28, v28, v29

    move/from16 v25, v28

    .line 144
    .local v25, "w":I
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/prism/impl/shape/NativePiscesRasterizer;->bounds:[I

    move-object/from16 v28, v0

    const/16 v29, 0x3

    aget v28, v28, v29

    move/from16 v29, v24

    sub-int v28, v28, v29

    move/from16 v26, v28

    .line 145
    .local v26, "h":I
    move/from16 v28, v25

    if-lez v28, :cond_9

    move/from16 v28, v26

    if-gtz v28, :cond_c

    .line 146
    :cond_9
    sget-object v28, Lcom/sun/prism/impl/shape/NativePiscesRasterizer;->emptyData:Lcom/sun/prism/impl/shape/MaskData;

    move-object/from16 v3, v28

    goto/16 :goto_1

    .line 127
    .end local v10    # "p2d":Lcom/sun/javafx/geom/Path2D;
    .end local v11    # "mxx":D
    .end local v13    # "mxy":D
    .end local v15    # "mxt":D
    .end local v17    # "myx":D
    .end local v19    # "myy":D
    .end local v21    # "myt":D
    .end local v23    # "x":I
    .end local v24    # "y":I
    .end local v25    # "w":I
    .end local v26    # "h":I
    :cond_a
    new-instance v28, Lcom/sun/javafx/geom/Path2D;

    move-object/from16 v51, v28

    move-object/from16 v28, v51

    move-object/from16 v29, v51

    move-object/from16 v30, v4

    invoke-direct/range {v29 .. v30}, Lcom/sun/javafx/geom/Path2D;-><init>(Lcom/sun/javafx/geom/Shape;)V

    goto/16 :goto_2

    .line 134
    .restart local v10    # "p2d":Lcom/sun/javafx/geom/Path2D;
    :cond_b
    move-object/from16 v28, v7

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxx()D

    move-result-wide v28

    move-wide/from16 v11, v28

    .line 135
    .restart local v11    # "mxx":D
    move-object/from16 v28, v7

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxy()D

    move-result-wide v28

    move-wide/from16 v13, v28

    .line 136
    .restart local v13    # "mxy":D
    move-object/from16 v28, v7

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxt()D

    move-result-wide v28

    move-wide/from16 v15, v28

    .line 137
    .restart local v15    # "mxt":D
    move-object/from16 v28, v7

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyx()D

    move-result-wide v28

    move-wide/from16 v17, v28

    .line 138
    .restart local v17    # "myx":D
    move-object/from16 v28, v7

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyy()D

    move-result-wide v28

    move-wide/from16 v19, v28

    .line 139
    .restart local v19    # "myy":D
    move-object/from16 v28, v7

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyt()D

    move-result-wide v28

    move-wide/from16 v21, v28

    .restart local v21    # "myt":D
    goto/16 :goto_3

    .line 148
    .restart local v23    # "x":I
    .restart local v24    # "y":I
    .restart local v25    # "w":I
    .restart local v26    # "h":I
    :cond_c
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/prism/impl/shape/NativePiscesRasterizer;->cachedMask:[B

    move-object/from16 v28, v0

    if-eqz v28, :cond_d

    move/from16 v28, v25

    move/from16 v29, v26

    mul-int v28, v28, v29

    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/prism/impl/shape/NativePiscesRasterizer;->cachedMask:[B

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_e

    .line 149
    :cond_d
    move-object/from16 v28, v3

    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/sun/prism/impl/shape/NativePiscesRasterizer;->cachedMask:[B

    .line 150
    move-object/from16 v28, v3

    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/sun/prism/impl/shape/NativePiscesRasterizer;->cachedBuffer:Ljava/nio/ByteBuffer;

    .line 151
    move-object/from16 v28, v3

    new-instance v29, Lcom/sun/prism/impl/shape/MaskData;

    move-object/from16 v51, v29

    move-object/from16 v29, v51

    move-object/from16 v30, v51

    invoke-direct/range {v30 .. v30}, Lcom/sun/prism/impl/shape/MaskData;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/sun/prism/impl/shape/NativePiscesRasterizer;->cachedData:Lcom/sun/prism/impl/shape/MaskData;

    .line 152
    move/from16 v28, v25

    move/from16 v29, v26

    mul-int v28, v28, v29

    const/16 v29, 0xfff

    move/from16 v0, v28

    add-int/lit16 v0, v0, 0xfff

    move/from16 v28, v0

    const/16 v29, -0x1000

    move/from16 v0, v28

    and-int/lit16 v0, v0, -0x1000

    move/from16 v28, v0

    move/from16 v27, v28

    .line 153
    .local v27, "csize":I
    move-object/from16 v28, v3

    move/from16 v29, v27

    move/from16 v0, v29

    new-array v0, v0, [B

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/sun/prism/impl/shape/NativePiscesRasterizer;->cachedMask:[B

    .line 154
    move-object/from16 v28, v3

    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/prism/impl/shape/NativePiscesRasterizer;->cachedMask:[B

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/sun/prism/impl/shape/NativePiscesRasterizer;->cachedBuffer:Ljava/nio/ByteBuffer;

    .line 156
    .end local v27    # "csize":I
    :cond_e
    move-object/from16 v28, v5

    if-eqz v28, :cond_10

    .line 157
    move-object/from16 v28, v10

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/geom/Path2D;->getFloatCoordsNoClone()[F

    move-result-object v28

    move-object/from16 v29, v10

    .line 158
    invoke-virtual/range {v29 .. v29}, Lcom/sun/javafx/geom/Path2D;->getCommandsNoClone()[B

    move-result-object v29

    move-object/from16 v30, v10

    .line 159
    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/geom/Path2D;->getNumCommands()I

    move-result v30

    move-object/from16 v31, v5

    .line 160
    invoke-virtual/range {v31 .. v31}, Lcom/sun/prism/BasicStroke;->getLineWidth()F

    move-result v31

    move-object/from16 v32, v5

    invoke-virtual/range {v32 .. v32}, Lcom/sun/prism/BasicStroke;->getEndCap()I

    move-result v32

    move-object/from16 v33, v5

    .line 161
    invoke-virtual/range {v33 .. v33}, Lcom/sun/prism/BasicStroke;->getLineJoin()I

    move-result v33

    move-object/from16 v34, v5

    invoke-virtual/range {v34 .. v34}, Lcom/sun/prism/BasicStroke;->getMiterLimit()F

    move-result v34

    move-object/from16 v35, v5

    .line 162
    invoke-virtual/range {v35 .. v35}, Lcom/sun/prism/BasicStroke;->getDashArray()[F

    move-result-object v35

    move-object/from16 v36, v5

    invoke-virtual/range {v36 .. v36}, Lcom/sun/prism/BasicStroke;->getDashPhase()F

    move-result v36

    move-wide/from16 v37, v11

    move-wide/from16 v39, v13

    move-wide/from16 v41, v15

    move-wide/from16 v43, v17

    move-wide/from16 v45, v19

    move-wide/from16 v47, v21

    move-object/from16 v49, v3

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/sun/prism/impl/shape/NativePiscesRasterizer;->bounds:[I

    move-object/from16 v49, v0

    move-object/from16 v50, v3

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/sun/prism/impl/shape/NativePiscesRasterizer;->cachedMask:[B

    move-object/from16 v50, v0

    .line 157
    invoke-static/range {v28 .. v50}, Lcom/sun/prism/impl/shape/NativePiscesRasterizer;->produceStrokeAlphas([F[BIFIIF[FFDDDDDD[I[B)V

    .line 172
    :goto_4
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/prism/impl/shape/NativePiscesRasterizer;->bounds:[I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aget v28, v28, v29

    move/from16 v23, v28

    .line 173
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/prism/impl/shape/NativePiscesRasterizer;->bounds:[I

    move-object/from16 v28, v0

    const/16 v29, 0x1

    aget v28, v28, v29

    move/from16 v24, v28

    .line 174
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/prism/impl/shape/NativePiscesRasterizer;->bounds:[I

    move-object/from16 v28, v0

    const/16 v29, 0x2

    aget v28, v28, v29

    move/from16 v29, v23

    sub-int v28, v28, v29

    move/from16 v25, v28

    .line 175
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/prism/impl/shape/NativePiscesRasterizer;->bounds:[I

    move-object/from16 v28, v0

    const/16 v29, 0x3

    aget v28, v28, v29

    move/from16 v29, v24

    sub-int v28, v28, v29

    move/from16 v26, v28

    .line 176
    move/from16 v28, v25

    if-lez v28, :cond_f

    move/from16 v28, v26

    if-gtz v28, :cond_12

    .line 177
    :cond_f
    sget-object v28, Lcom/sun/prism/impl/shape/NativePiscesRasterizer;->emptyData:Lcom/sun/prism/impl/shape/MaskData;

    move-object/from16 v3, v28

    goto/16 :goto_1

    .line 166
    :cond_10
    move-object/from16 v28, v10

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/geom/Path2D;->getFloatCoordsNoClone()[F

    move-result-object v28

    move-object/from16 v29, v10

    .line 167
    invoke-virtual/range {v29 .. v29}, Lcom/sun/javafx/geom/Path2D;->getCommandsNoClone()[B

    move-result-object v29

    move-object/from16 v30, v10

    .line 168
    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/geom/Path2D;->getNumCommands()I

    move-result v30

    move-object/from16 v31, v10

    invoke-virtual/range {v31 .. v31}, Lcom/sun/javafx/geom/Path2D;->getWindingRule()I

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_11

    const/16 v31, 0x1

    :goto_5
    move-wide/from16 v32, v11

    move-wide/from16 v34, v13

    move-wide/from16 v36, v15

    move-wide/from16 v38, v17

    move-wide/from16 v40, v19

    move-wide/from16 v42, v21

    move-object/from16 v44, v3

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/sun/prism/impl/shape/NativePiscesRasterizer;->bounds:[I

    move-object/from16 v44, v0

    move-object/from16 v45, v3

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/sun/prism/impl/shape/NativePiscesRasterizer;->cachedMask:[B

    move-object/from16 v45, v0

    .line 166
    invoke-static/range {v28 .. v45}, Lcom/sun/prism/impl/shape/NativePiscesRasterizer;->produceFillAlphas([F[BIZDDDDDD[I[B)V

    goto/16 :goto_4

    .line 168
    :cond_11
    const/16 v31, 0x0

    goto :goto_5

    .line 179
    :cond_12
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/prism/impl/shape/NativePiscesRasterizer;->cachedData:Lcom/sun/prism/impl/shape/MaskData;

    move-object/from16 v28, v0

    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/prism/impl/shape/NativePiscesRasterizer;->cachedBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v29, v0

    move/from16 v30, v23

    move/from16 v31, v24

    move/from16 v32, v25

    move/from16 v33, v26

    invoke-virtual/range {v28 .. v33}, Lcom/sun/prism/impl/shape/MaskData;->update(Ljava/nio/ByteBuffer;IIII)V

    .line 180
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/prism/impl/shape/NativePiscesRasterizer;->cachedData:Lcom/sun/prism/impl/shape/MaskData;

    move-object/from16 v28, v0

    move-object/from16 v3, v28

    goto/16 :goto_1
.end method
