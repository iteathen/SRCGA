.class public final Lcom/sun/openpisces/Renderer;
.super Ljava/lang/Object;
.source "Renderer.java"

# interfaces
.implements Lcom/sun/javafx/geom/PathConsumer2D;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/openpisces/Renderer$ScanlineIterator;
    }
.end annotation


# static fields
.field private static final CURX:I = 0x1

.field private static final DEC_BND:F = 1.0f

.field private static final INC_BND:F = 0.4f

.field private static final NEXT:I = 0x4

.field private static final OR:I = 0x2

.field private static final SIZEOF_EDGE:I = 0x5

.field private static final SLOPE:I = 0x3

.field public static final WIND_EVEN_ODD:I = 0x0

.field public static final WIND_NON_ZERO:I = 0x1

.field private static final YMAX:I


# instance fields
.field final MAX_AA_ALPHA:I

.field private final SUBPIXEL_LG_POSITIONS_X:I

.field private final SUBPIXEL_LG_POSITIONS_Y:I

.field private final SUBPIXEL_MASK_X:I

.field private final SUBPIXEL_MASK_Y:I

.field private final SUBPIXEL_POSITIONS_X:I

.field private final SUBPIXEL_POSITIONS_Y:I

.field private boundsMaxX:I

.field private boundsMaxY:I

.field private boundsMinX:I

.field private boundsMinY:I

.field private c:Lcom/sun/openpisces/Curve;

.field private edgeBuckets:[I

.field private edgeMaxX:F

.field private edgeMinX:F

.field private edges:[F

.field private numEdges:I

.field private pix_sx0:F

.field private pix_sy0:F

.field private sampleRowMax:I

.field private sampleRowMin:I

.field private savedAlpha:[I

.field private savedIterator:Lcom/sun/openpisces/Renderer$ScanlineIterator;

.field private windingRule:I

.field private x0:F

.field private y0:F


# direct methods
.method public constructor <init>(II)V
    .locals 7

    .prologue
    .line 338
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Renderer;
    move v1, p1

    .local v1, "subpixelLgPositionsX":I
    move v2, p2

    .local v2, "subpixelLgPositionsY":I
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 415
    move-object v3, v0

    new-instance v4, Lcom/sun/openpisces/Curve;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lcom/sun/openpisces/Curve;-><init>()V

    iput-object v4, v3, Lcom/sun/openpisces/Renderer;->c:Lcom/sun/openpisces/Curve;

    .line 339
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/sun/openpisces/Renderer;->SUBPIXEL_LG_POSITIONS_X:I

    .line 340
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/sun/openpisces/Renderer;->SUBPIXEL_LG_POSITIONS_Y:I

    .line 341
    move-object v3, v0

    const/4 v4, 0x1

    move-object v5, v0

    iget v5, v5, Lcom/sun/openpisces/Renderer;->SUBPIXEL_LG_POSITIONS_X:I

    shl-int/2addr v4, v5

    iput v4, v3, Lcom/sun/openpisces/Renderer;->SUBPIXEL_POSITIONS_X:I

    .line 342
    move-object v3, v0

    const/4 v4, 0x1

    move-object v5, v0

    iget v5, v5, Lcom/sun/openpisces/Renderer;->SUBPIXEL_LG_POSITIONS_Y:I

    shl-int/2addr v4, v5

    iput v4, v3, Lcom/sun/openpisces/Renderer;->SUBPIXEL_POSITIONS_Y:I

    .line 343
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lcom/sun/openpisces/Renderer;->SUBPIXEL_POSITIONS_X:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/sun/openpisces/Renderer;->SUBPIXEL_MASK_X:I

    .line 344
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lcom/sun/openpisces/Renderer;->SUBPIXEL_POSITIONS_Y:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/sun/openpisces/Renderer;->SUBPIXEL_MASK_Y:I

    .line 345
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lcom/sun/openpisces/Renderer;->SUBPIXEL_POSITIONS_X:I

    move-object v5, v0

    iget v5, v5, Lcom/sun/openpisces/Renderer;->SUBPIXEL_POSITIONS_Y:I

    mul-int/2addr v4, v5

    iput v4, v3, Lcom/sun/openpisces/Renderer;->MAX_AA_ALPHA:I

    .line 346
    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .locals 14

    .prologue
    .line 353
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Renderer;
    move v1, p1

    .local v1, "subpixelLgPositionsX":I
    move/from16 v2, p2

    .local v2, "subpixelLgPositionsY":I
    move/from16 v3, p3

    .local v3, "pix_boundsX":I
    move/from16 v4, p4

    .local v4, "pix_boundsY":I
    move/from16 v5, p5

    .local v5, "pix_boundsWidth":I
    move/from16 v6, p6

    .local v6, "pix_boundsHeight":I
    move/from16 v7, p7

    .local v7, "windingRule":I
    move-object v8, v0

    move v9, v1

    move v10, v2

    invoke-direct {v8, v9, v10}, Lcom/sun/openpisces/Renderer;-><init>(II)V

    .line 354
    move-object v8, v0

    move v9, v3

    move v10, v4

    move v11, v5

    move v12, v6

    move v13, v7

    invoke-virtual/range {v8 .. v13}, Lcom/sun/openpisces/Renderer;->reset(IIIII)V

    .line 356
    return-void
.end method

.method static synthetic access$000(Lcom/sun/openpisces/Renderer;)I
    .locals 2

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "x0":Lcom/sun/openpisces/Renderer;
    move-object v1, v0

    iget v1, v1, Lcom/sun/openpisces/Renderer;->sampleRowMin:I

    move v0, v1

    .end local v0    # "x0":Lcom/sun/openpisces/Renderer;
    return v0
.end method

.method static synthetic access$100(Lcom/sun/openpisces/Renderer;)I
    .locals 2

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "x0":Lcom/sun/openpisces/Renderer;
    move-object v1, v0

    iget v1, v1, Lcom/sun/openpisces/Renderer;->boundsMinY:I

    move v0, v1

    .end local v0    # "x0":Lcom/sun/openpisces/Renderer;
    return v0
.end method

.method static synthetic access$200(Lcom/sun/openpisces/Renderer;)[F
    .locals 2

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "x0":Lcom/sun/openpisces/Renderer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/openpisces/Renderer;->edges:[F

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/openpisces/Renderer;
    return-object v0
.end method

.method static synthetic access$300(Lcom/sun/openpisces/Renderer;)[I
    .locals 2

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "x0":Lcom/sun/openpisces/Renderer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/openpisces/Renderer;->edgeBuckets:[I

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/openpisces/Renderer;
    return-object v0
.end method

.method static synthetic access$400(Lcom/sun/openpisces/Renderer;)I
    .locals 2

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "x0":Lcom/sun/openpisces/Renderer;
    move-object v1, v0

    iget v1, v1, Lcom/sun/openpisces/Renderer;->sampleRowMax:I

    move v0, v1

    .end local v0    # "x0":Lcom/sun/openpisces/Renderer;
    return v0
.end method

.method private addEdgeToBucket(II)V
    .locals 10

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Renderer;
    move v1, p1

    .local v1, "eptr":I
    move v2, p2

    .local v2, "bucket":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/openpisces/Renderer;->edges:[F

    move v4, v1

    const/4 v5, 0x4

    add-int/lit8 v4, v4, 0x4

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/openpisces/Renderer;->edgeBuckets:[I

    move v6, v2

    const/4 v7, 0x2

    mul-int/lit8 v6, v6, 0x2

    aget v5, v5, v6

    int-to-float v5, v5

    aput v5, v3, v4

    .line 166
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/openpisces/Renderer;->edgeBuckets:[I

    move v4, v2

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v4

    .line 167
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/openpisces/Renderer;->edgeBuckets:[I

    move v4, v2

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move-object v8, v3

    move v9, v4

    move-object v3, v8

    move v4, v9

    move-object v5, v8

    move v6, v9

    aget v5, v5, v6

    const/4 v6, 0x2

    add-int/lit8 v5, v5, 0x2

    aput v5, v3, v4

    .line 168
    return-void
.end method

.method private addLine(FFFF)V
    .locals 19

    .prologue
    .line 269
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/openpisces/Renderer;
    move/from16 v2, p1

    .local v2, "x1":F
    move/from16 v3, p2

    .local v3, "y1":F
    move/from16 v4, p3

    .local v4, "x2":F
    move/from16 v5, p4

    .local v5, "y2":F
    const/high16 v12, 0x3f800000    # 1.0f

    move v6, v12

    .line 270
    .local v6, "or":F
    move v12, v5

    move v13, v3

    cmpg-float v12, v12, v13

    if-gez v12, :cond_0

    .line 271
    move v12, v5

    move v6, v12

    .line 272
    move v12, v3

    move v5, v12

    .line 273
    move v12, v6

    move v3, v12

    .line 274
    move v12, v4

    move v6, v12

    .line 275
    move v12, v2

    move v4, v12

    .line 276
    move v12, v6

    move v2, v12

    .line 277
    const/4 v12, 0x0

    move v6, v12

    .line 279
    :cond_0
    move v12, v3

    const/high16 v13, 0x3f000000    # 0.5f

    sub-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v12, v12

    move-object v13, v1

    iget v13, v13, Lcom/sun/openpisces/Renderer;->boundsMinY:I

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    move v7, v12

    .line 280
    .local v7, "firstCrossing":I
    move v12, v5

    const/high16 v13, 0x3f000000    # 0.5f

    sub-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v12, v12

    move-object v13, v1

    iget v13, v13, Lcom/sun/openpisces/Renderer;->boundsMaxY:I

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    move v8, v12

    .line 281
    .local v8, "lastCrossing":I
    move v12, v7

    move v13, v8

    if-lt v12, v13, :cond_1

    .line 282
    .line 307
    :goto_0
    return-void

    .line 284
    :cond_1
    move v12, v7

    move-object v13, v1

    iget v13, v13, Lcom/sun/openpisces/Renderer;->sampleRowMin:I

    if-ge v12, v13, :cond_2

    move-object v12, v1

    move v13, v7

    iput v13, v12, Lcom/sun/openpisces/Renderer;->sampleRowMin:I

    .line 285
    :cond_2
    move v12, v8

    move-object v13, v1

    iget v13, v13, Lcom/sun/openpisces/Renderer;->sampleRowMax:I

    if-le v12, v13, :cond_3

    move-object v12, v1

    move v13, v8

    iput v13, v12, Lcom/sun/openpisces/Renderer;->sampleRowMax:I

    .line 287
    :cond_3
    move v12, v4

    move v13, v2

    sub-float/2addr v12, v13

    move v13, v5

    move v14, v3

    sub-float/2addr v13, v14

    div-float/2addr v12, v13

    move v9, v12

    .line 289
    .local v9, "slope":F
    move v12, v9

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_6

    .line 290
    move v12, v2

    move-object v13, v1

    iget v13, v13, Lcom/sun/openpisces/Renderer;->edgeMinX:F

    cmpg-float v12, v12, v13

    if-gez v12, :cond_4

    move-object v12, v1

    move v13, v2

    iput v13, v12, Lcom/sun/openpisces/Renderer;->edgeMinX:F

    .line 291
    :cond_4
    move v12, v4

    move-object v13, v1

    iget v13, v13, Lcom/sun/openpisces/Renderer;->edgeMaxX:F

    cmpl-float v12, v12, v13

    if-lez v12, :cond_5

    move-object v12, v1

    move v13, v4

    iput v13, v12, Lcom/sun/openpisces/Renderer;->edgeMaxX:F

    .line 297
    :cond_5
    :goto_1
    move-object v12, v1

    iget v12, v12, Lcom/sun/openpisces/Renderer;->numEdges:I

    const/4 v13, 0x5

    mul-int/lit8 v12, v12, 0x5

    move v10, v12

    .line 298
    .local v10, "ptr":I
    move-object v12, v1

    move-object v13, v1

    iget-object v13, v13, Lcom/sun/openpisces/Renderer;->edges:[F

    move v14, v10

    const/4 v15, 0x5

    invoke-static {v13, v14, v15}, Lcom/sun/openpisces/Helpers;->widenArray([FII)[F

    move-result-object v13

    iput-object v13, v12, Lcom/sun/openpisces/Renderer;->edges:[F

    .line 299
    move-object v12, v1

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    iget v13, v13, Lcom/sun/openpisces/Renderer;->numEdges:I

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    iput v13, v12, Lcom/sun/openpisces/Renderer;->numEdges:I

    .line 300
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/openpisces/Renderer;->edges:[F

    move v13, v10

    const/4 v14, 0x2

    add-int/lit8 v13, v13, 0x2

    move v14, v6

    aput v14, v12, v13

    .line 301
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/openpisces/Renderer;->edges:[F

    move v13, v10

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    move v14, v2

    move v15, v7

    int-to-float v15, v15

    const/high16 v16, 0x3f000000    # 0.5f

    add-float v15, v15, v16

    move/from16 v16, v3

    sub-float v15, v15, v16

    move/from16 v16, v9

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    aput v14, v12, v13

    .line 302
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/openpisces/Renderer;->edges:[F

    move v13, v10

    const/4 v14, 0x3

    add-int/lit8 v13, v13, 0x3

    move v14, v9

    aput v14, v12, v13

    .line 303
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/openpisces/Renderer;->edges:[F

    move v13, v10

    const/4 v14, 0x0

    add-int/lit8 v13, v13, 0x0

    move v14, v8

    int-to-float v14, v14

    aput v14, v12, v13

    .line 304
    move v12, v7

    move-object v13, v1

    iget v13, v13, Lcom/sun/openpisces/Renderer;->boundsMinY:I

    sub-int/2addr v12, v13

    move v11, v12

    .line 305
    .local v11, "bucketIdx":I
    move-object v12, v1

    move v13, v10

    move v14, v11

    invoke-direct {v12, v13, v14}, Lcom/sun/openpisces/Renderer;->addEdgeToBucket(II)V

    .line 306
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/openpisces/Renderer;->edgeBuckets:[I

    move v13, v8

    move-object v14, v1

    iget v14, v14, Lcom/sun/openpisces/Renderer;->boundsMinY:I

    sub-int/2addr v13, v14

    const/4 v14, 0x2

    mul-int/lit8 v13, v13, 0x2

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v17, v12

    move/from16 v18, v13

    move-object/from16 v12, v17

    move/from16 v13, v18

    move-object/from16 v14, v17

    move/from16 v15, v18

    aget v14, v14, v15

    const/4 v15, 0x1

    or-int/lit8 v14, v14, 0x1

    aput v14, v12, v13

    .line 307
    goto/16 :goto_0

    .line 293
    .end local v10    # "ptr":I
    .end local v11    # "bucketIdx":I
    :cond_6
    move v12, v4

    move-object v13, v1

    iget v13, v13, Lcom/sun/openpisces/Renderer;->edgeMinX:F

    cmpg-float v12, v12, v13

    if-gez v12, :cond_7

    move-object v12, v1

    move v13, v4

    iput v13, v12, Lcom/sun/openpisces/Renderer;->edgeMinX:F

    .line 294
    :cond_7
    move v12, v2

    move-object v13, v1

    iget v13, v13, Lcom/sun/openpisces/Renderer;->edgeMaxX:F

    cmpl-float v12, v12, v13

    if-lez v12, :cond_5

    move-object v12, v1

    move v13, v2

    iput v13, v12, Lcom/sun/openpisces/Renderer;->edgeMaxX:F

    goto/16 :goto_1
.end method

.method private curveBreakIntoLinesAndAdd(FFLcom/sun/openpisces/Curve;FF)V
    .locals 22

    .prologue
    .line 214
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/openpisces/Renderer;
    move/from16 v2, p1

    .local v2, "x0":F
    move/from16 v3, p2

    .local v3, "y0":F
    move-object/from16 v4, p3

    .local v4, "c":Lcom/sun/openpisces/Curve;
    move/from16 v5, p4

    .local v5, "x3":F
    move/from16 v6, p5

    .local v6, "y3":F
    const/16 v17, 0x3

    move/from16 v7, v17

    .line 215
    .local v7, "countlg":I
    const/16 v17, 0x8

    move/from16 v8, v17

    .line 220
    .local v8, "count":I
    const/high16 v17, 0x40000000    # 2.0f

    move-object/from16 v18, v4

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/openpisces/Curve;->dax:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    const/high16 v18, 0x44000000    # 512.0f

    div-float v17, v17, v18

    move/from16 v9, v17

    .line 221
    .local v9, "dddx":F
    const/high16 v17, 0x40000000    # 2.0f

    move-object/from16 v18, v4

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/openpisces/Curve;->day:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    const/high16 v18, 0x44000000    # 512.0f

    div-float v17, v17, v18

    move/from16 v10, v17

    .line 223
    .local v10, "dddy":F
    move/from16 v17, v9

    move-object/from16 v18, v4

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/openpisces/Curve;->dbx:F

    move/from16 v18, v0

    const/high16 v19, 0x42800000    # 64.0f

    div-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v11, v17

    .line 224
    .local v11, "ddx":F
    move/from16 v17, v10

    move-object/from16 v18, v4

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/openpisces/Curve;->dby:F

    move/from16 v18, v0

    const/high16 v19, 0x42800000    # 64.0f

    div-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v12, v17

    .line 225
    .local v12, "ddy":F
    move-object/from16 v17, v4

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/openpisces/Curve;->ax:F

    move/from16 v17, v0

    const/high16 v18, 0x44000000    # 512.0f

    div-float v17, v17, v18

    move-object/from16 v18, v4

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/openpisces/Curve;->bx:F

    move/from16 v18, v0

    const/high16 v19, 0x42800000    # 64.0f

    div-float v18, v18, v19

    add-float v17, v17, v18

    move-object/from16 v18, v4

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/openpisces/Curve;->cx:F

    move/from16 v18, v0

    const/high16 v19, 0x41000000    # 8.0f

    div-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v13, v17

    .line 226
    .local v13, "dx":F
    move-object/from16 v17, v4

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/openpisces/Curve;->ay:F

    move/from16 v17, v0

    const/high16 v18, 0x44000000    # 512.0f

    div-float v17, v17, v18

    move-object/from16 v18, v4

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/openpisces/Curve;->by:F

    move/from16 v18, v0

    const/high16 v19, 0x42800000    # 64.0f

    div-float v18, v18, v19

    add-float v17, v17, v18

    move-object/from16 v18, v4

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/openpisces/Curve;->cy:F

    move/from16 v18, v0

    const/high16 v19, 0x41000000    # 8.0f

    div-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v14, v17

    .line 229
    .local v14, "dy":F
    move/from16 v17, v2

    move/from16 v15, v17

    .local v15, "x1":F
    move/from16 v17, v3

    move/from16 v16, v17

    .line 230
    .local v16, "y1":F
    :goto_0
    move/from16 v17, v8

    if-lez v17, :cond_4

    .line 231
    :goto_1
    move/from16 v17, v11

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    const/high16 v18, 0x3f800000    # 1.0f

    cmpl-float v17, v17, v18

    if-gtz v17, :cond_0

    move/from16 v17, v12

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    const/high16 v18, 0x3f800000    # 1.0f

    cmpl-float v17, v17, v18

    if-lez v17, :cond_1

    .line 232
    :cond_0
    move/from16 v17, v9

    const/high16 v18, 0x41000000    # 8.0f

    div-float v17, v17, v18

    move/from16 v9, v17

    .line 233
    move/from16 v17, v10

    const/high16 v18, 0x41000000    # 8.0f

    div-float v17, v17, v18

    move/from16 v10, v17

    .line 234
    move/from16 v17, v11

    const/high16 v18, 0x40800000    # 4.0f

    div-float v17, v17, v18

    move/from16 v18, v9

    sub-float v17, v17, v18

    move/from16 v11, v17

    .line 235
    move/from16 v17, v12

    const/high16 v18, 0x40800000    # 4.0f

    div-float v17, v17, v18

    move/from16 v18, v10

    sub-float v17, v17, v18

    move/from16 v12, v17

    .line 236
    move/from16 v17, v13

    move/from16 v18, v11

    sub-float v17, v17, v18

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    move/from16 v13, v17

    .line 237
    move/from16 v17, v14

    move/from16 v18, v12

    sub-float v17, v17, v18

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    move/from16 v14, v17

    .line 238
    move/from16 v17, v8

    const/16 v18, 0x1

    shl-int/lit8 v17, v17, 0x1

    move/from16 v8, v17

    goto :goto_1

    .line 241
    :cond_1
    :goto_2
    move/from16 v17, v8

    const/16 v18, 0x2

    rem-int/lit8 v17, v17, 0x2

    if-nez v17, :cond_2

    move/from16 v17, v13

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    const v18, 0x3ecccccd    # 0.4f

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_2

    move/from16 v17, v14

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    const v18, 0x3ecccccd    # 0.4f

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_2

    .line 242
    const/high16 v17, 0x40000000    # 2.0f

    move/from16 v18, v13

    mul-float v17, v17, v18

    move/from16 v18, v11

    add-float v17, v17, v18

    move/from16 v13, v17

    .line 243
    const/high16 v17, 0x40000000    # 2.0f

    move/from16 v18, v14

    mul-float v17, v17, v18

    move/from16 v18, v12

    add-float v17, v17, v18

    move/from16 v14, v17

    .line 244
    const/high16 v17, 0x40800000    # 4.0f

    move/from16 v18, v11

    move/from16 v19, v9

    add-float v18, v18, v19

    mul-float v17, v17, v18

    move/from16 v11, v17

    .line 245
    const/high16 v17, 0x40800000    # 4.0f

    move/from16 v18, v12

    move/from16 v19, v10

    add-float v18, v18, v19

    mul-float v17, v17, v18

    move/from16 v12, v17

    .line 246
    const/high16 v17, 0x41000000    # 8.0f

    move/from16 v18, v9

    mul-float v17, v17, v18

    move/from16 v9, v17

    .line 247
    const/high16 v17, 0x41000000    # 8.0f

    move/from16 v18, v10

    mul-float v17, v17, v18

    move/from16 v10, v17

    .line 248
    move/from16 v17, v8

    const/16 v18, 0x1

    shr-int/lit8 v17, v17, 0x1

    move/from16 v8, v17

    goto :goto_2

    .line 250
    :cond_2
    add-int/lit8 v8, v8, -0x1

    .line 251
    move/from16 v17, v8

    if-lez v17, :cond_3

    .line 252
    move/from16 v17, v15

    move/from16 v18, v13

    add-float v17, v17, v18

    move/from16 v15, v17

    .line 253
    move/from16 v17, v13

    move/from16 v18, v11

    add-float v17, v17, v18

    move/from16 v13, v17

    .line 254
    move/from16 v17, v11

    move/from16 v18, v9

    add-float v17, v17, v18

    move/from16 v11, v17

    .line 255
    move/from16 v17, v16

    move/from16 v18, v14

    add-float v17, v17, v18

    move/from16 v16, v17

    .line 256
    move/from16 v17, v14

    move/from16 v18, v12

    add-float v17, v17, v18

    move/from16 v14, v17

    .line 257
    move/from16 v17, v12

    move/from16 v18, v10

    add-float v17, v17, v18

    move/from16 v12, v17

    .line 262
    :goto_3
    move-object/from16 v17, v1

    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v15

    move/from16 v21, v16

    invoke-direct/range {v17 .. v21}, Lcom/sun/openpisces/Renderer;->addLine(FFFF)V

    .line 263
    move/from16 v17, v15

    move/from16 v2, v17

    .line 264
    move/from16 v17, v16

    move/from16 v3, v17

    goto/16 :goto_0

    .line 259
    :cond_3
    move/from16 v17, v5

    move/from16 v15, v17

    .line 260
    move/from16 v17, v6

    move/from16 v16, v17

    goto :goto_3

    .line 266
    :cond_4
    return-void
.end method

.method private quadBreakIntoLinesAndAdd(FFLcom/sun/openpisces/Curve;FF)V
    .locals 24

    .prologue
    .line 177
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/openpisces/Renderer;
    move/from16 v3, p1

    .local v3, "x0":F
    move/from16 v4, p2

    .local v4, "y0":F
    move-object/from16 v5, p3

    .local v5, "c":Lcom/sun/openpisces/Curve;
    move/from16 v6, p4

    .local v6, "x2":F
    move/from16 v7, p5

    .local v7, "y2":F
    const/high16 v19, 0x42000000    # 32.0f

    move/from16 v8, v19

    .line 178
    .local v8, "QUAD_DEC_BND":F
    const/16 v19, 0x4

    move/from16 v9, v19

    .line 179
    .local v9, "countlg":I
    const/16 v19, 0x10

    move/from16 v10, v19

    .line 180
    .local v10, "count":I
    move/from16 v19, v10

    move/from16 v20, v10

    mul-int v19, v19, v20

    move/from16 v11, v19

    .line 181
    .local v11, "countsq":I
    move-object/from16 v19, v5

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/openpisces/Curve;->dbx:F

    move/from16 v19, v0

    move/from16 v20, v11

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    move-object/from16 v20, v5

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/openpisces/Curve;->dby:F

    move/from16 v20, v0

    move/from16 v21, v11

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(FF)F

    move-result v19

    move/from16 v12, v19

    .line 182
    .local v12, "maxDD":F
    :goto_0
    move/from16 v19, v12

    const/high16 v20, 0x42000000    # 32.0f

    cmpl-float v19, v19, v20

    if-lez v19, :cond_0

    .line 183
    move/from16 v19, v12

    const/high16 v20, 0x40800000    # 4.0f

    div-float v19, v19, v20

    move/from16 v12, v19

    .line 184
    move/from16 v19, v10

    const/16 v20, 0x1

    shl-int/lit8 v19, v19, 0x1

    move/from16 v10, v19

    goto :goto_0

    .line 187
    :cond_0
    move/from16 v19, v10

    move/from16 v20, v10

    mul-int v19, v19, v20

    move/from16 v11, v19

    .line 188
    move-object/from16 v19, v5

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/openpisces/Curve;->dbx:F

    move/from16 v19, v0

    move/from16 v20, v11

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    move/from16 v13, v19

    .line 189
    .local v13, "ddx":F
    move-object/from16 v19, v5

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/openpisces/Curve;->dby:F

    move/from16 v19, v0

    move/from16 v20, v11

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    move/from16 v14, v19

    .line 190
    .local v14, "ddy":F
    move-object/from16 v19, v5

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/openpisces/Curve;->bx:F

    move/from16 v19, v0

    move/from16 v20, v11

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    move-object/from16 v20, v5

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/openpisces/Curve;->cx:F

    move/from16 v20, v0

    move/from16 v21, v10

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    add-float v19, v19, v20

    move/from16 v15, v19

    .line 191
    .local v15, "dx":F
    move-object/from16 v19, v5

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/openpisces/Curve;->by:F

    move/from16 v19, v0

    move/from16 v20, v11

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    move-object/from16 v20, v5

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/openpisces/Curve;->cy:F

    move/from16 v20, v0

    move/from16 v21, v10

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    add-float v19, v19, v20

    move/from16 v16, v19

    .line 193
    .local v16, "dy":F
    :goto_1
    move/from16 v19, v10

    add-int/lit8 v10, v10, -0x1

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_1

    .line 194
    move/from16 v19, v3

    move/from16 v20, v15

    add-float v19, v19, v20

    move/from16 v17, v19

    .line 195
    .local v17, "x1":F
    move/from16 v19, v15

    move/from16 v20, v13

    add-float v19, v19, v20

    move/from16 v15, v19

    .line 196
    move/from16 v19, v4

    move/from16 v20, v16

    add-float v19, v19, v20

    move/from16 v18, v19

    .line 197
    .local v18, "y1":F
    move/from16 v19, v16

    move/from16 v20, v14

    add-float v19, v19, v20

    move/from16 v16, v19

    .line 198
    move-object/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v22, v17

    move/from16 v23, v18

    invoke-direct/range {v19 .. v23}, Lcom/sun/openpisces/Renderer;->addLine(FFFF)V

    .line 199
    move/from16 v19, v17

    move/from16 v3, v19

    .line 200
    move/from16 v19, v18

    move/from16 v4, v19

    .line 201
    goto :goto_1

    .line 202
    .end local v17    # "x1":F
    .end local v18    # "y1":F
    :cond_1
    move-object/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v22, v6

    move/from16 v23, v7

    invoke-direct/range {v19 .. v23}, Lcom/sun/openpisces/Renderer;->addLine(FFFF)V

    .line 203
    return-void
.end method

.method private tosubpixx(F)F
    .locals 4

    .prologue
    .line 393
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Renderer;
    move v1, p1

    .local v1, "pix_x":F
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/openpisces/Renderer;->SUBPIXEL_POSITIONS_X:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    move v0, v2

    .end local v0    # "this":Lcom/sun/openpisces/Renderer;
    return v0
.end method

.method private tosubpixy(F)F
    .locals 4

    .prologue
    .line 396
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Renderer;
    move v1, p1

    .local v1, "pix_y":F
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/openpisces/Renderer;->SUBPIXEL_POSITIONS_Y:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    move v0, v2

    .end local v0    # "this":Lcom/sun/openpisces/Renderer;
    return v0
.end method


# virtual methods
.method public closePath()V
    .locals 4

    .prologue
    .line 439
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Renderer;
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/sun/openpisces/Renderer;->pix_sx0:F

    move-object v3, v0

    iget v3, v3, Lcom/sun/openpisces/Renderer;->pix_sy0:F

    invoke-virtual {v1, v2, v3}, Lcom/sun/openpisces/Renderer;->lineTo(FF)V

    .line 440
    return-void
.end method

.method public curveTo(FFFFFF)V
    .locals 18

    .prologue
    .line 420
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/openpisces/Renderer;
    move/from16 v1, p1

    .local v1, "x1":F
    move/from16 v2, p2

    .local v2, "y1":F
    move/from16 v3, p3

    .local v3, "x2":F
    move/from16 v4, p4

    .local v4, "y2":F
    move/from16 v5, p5

    .local v5, "x3":F
    move/from16 v6, p6

    .local v6, "y3":F
    move-object v9, v0

    move v10, v5

    invoke-direct {v9, v10}, Lcom/sun/openpisces/Renderer;->tosubpixx(F)F

    move-result v9

    move v7, v9

    .line 421
    .local v7, "xe":F
    move-object v9, v0

    move v10, v6

    invoke-direct {v9, v10}, Lcom/sun/openpisces/Renderer;->tosubpixy(F)F

    move-result v9

    move v8, v9

    .line 422
    .local v8, "ye":F
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/openpisces/Renderer;->c:Lcom/sun/openpisces/Curve;

    move-object v10, v0

    iget v10, v10, Lcom/sun/openpisces/Renderer;->x0:F

    move-object v11, v0

    iget v11, v11, Lcom/sun/openpisces/Renderer;->y0:F

    move-object v12, v0

    move v13, v1

    invoke-direct {v12, v13}, Lcom/sun/openpisces/Renderer;->tosubpixx(F)F

    move-result v12

    move-object v13, v0

    move v14, v2

    invoke-direct {v13, v14}, Lcom/sun/openpisces/Renderer;->tosubpixy(F)F

    move-result v13

    move-object v14, v0

    move v15, v3

    invoke-direct {v14, v15}, Lcom/sun/openpisces/Renderer;->tosubpixx(F)F

    move-result v14

    move-object v15, v0

    move/from16 v16, v4

    invoke-direct/range {v15 .. v16}, Lcom/sun/openpisces/Renderer;->tosubpixy(F)F

    move-result v15

    move/from16 v16, v7

    move/from16 v17, v8

    invoke-virtual/range {v9 .. v17}, Lcom/sun/openpisces/Curve;->set(FFFFFFFF)V

    .line 423
    move-object v9, v0

    move-object v10, v0

    iget v10, v10, Lcom/sun/openpisces/Renderer;->x0:F

    move-object v11, v0

    iget v11, v11, Lcom/sun/openpisces/Renderer;->y0:F

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/openpisces/Renderer;->c:Lcom/sun/openpisces/Curve;

    move v13, v7

    move v14, v8

    invoke-direct/range {v9 .. v14}, Lcom/sun/openpisces/Renderer;->curveBreakIntoLinesAndAdd(FFLcom/sun/openpisces/Curve;FF)V

    .line 424
    move-object v9, v0

    move v10, v7

    iput v10, v9, Lcom/sun/openpisces/Renderer;->x0:F

    .line 425
    move-object v9, v0

    move v10, v8

    iput v10, v9, Lcom/sun/openpisces/Renderer;->y0:F

    .line 426
    return-void
.end method

.method public getOutpixMaxX()I
    .locals 3

    .prologue
    .line 575
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Renderer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/openpisces/Renderer;->getSubpixMaxX()I

    move-result v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/openpisces/Renderer;->SUBPIXEL_MASK_X:I

    add-int/2addr v1, v2

    move-object v2, v0

    iget v2, v2, Lcom/sun/openpisces/Renderer;->SUBPIXEL_LG_POSITIONS_X:I

    shr-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/sun/openpisces/Renderer;
    return v0
.end method

.method public getOutpixMaxY()I
    .locals 3

    .prologue
    .line 583
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Renderer;
    move-object v1, v0

    iget v1, v1, Lcom/sun/openpisces/Renderer;->sampleRowMax:I

    move-object v2, v0

    iget v2, v2, Lcom/sun/openpisces/Renderer;->SUBPIXEL_MASK_Y:I

    add-int/2addr v1, v2

    move-object v2, v0

    iget v2, v2, Lcom/sun/openpisces/Renderer;->SUBPIXEL_LG_POSITIONS_Y:I

    shr-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/sun/openpisces/Renderer;
    return v0
.end method

.method public getOutpixMinX()I
    .locals 3

    .prologue
    .line 571
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Renderer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/openpisces/Renderer;->getSubpixMinX()I

    move-result v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/openpisces/Renderer;->SUBPIXEL_LG_POSITIONS_X:I

    shr-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/sun/openpisces/Renderer;
    return v0
.end method

.method public getOutpixMinY()I
    .locals 3

    .prologue
    .line 579
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Renderer;
    move-object v1, v0

    iget v1, v1, Lcom/sun/openpisces/Renderer;->sampleRowMin:I

    move-object v2, v0

    iget v2, v2, Lcom/sun/openpisces/Renderer;->SUBPIXEL_LG_POSITIONS_Y:I

    shr-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/sun/openpisces/Renderer;
    return v0
.end method

.method public getSubpixMaxX()I
    .locals 4

    .prologue
    .line 557
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Renderer;
    move-object v2, v0

    iget v2, v2, Lcom/sun/openpisces/Renderer;->edgeMaxX:F

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    move v1, v2

    .line 558
    .local v1, "sampleColMax":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/openpisces/Renderer;->boundsMaxX:I

    if-le v2, v3, :cond_0

    move-object v2, v0

    iget v2, v2, Lcom/sun/openpisces/Renderer;->boundsMaxX:I

    move v1, v2

    .line 559
    :cond_0
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/sun/openpisces/Renderer;
    return v0
.end method

.method public getSubpixMaxY()I
    .locals 2

    .prologue
    .line 567
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Renderer;
    move-object v1, v0

    iget v1, v1, Lcom/sun/openpisces/Renderer;->sampleRowMax:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/openpisces/Renderer;
    return v0
.end method

.method public getSubpixMinX()I
    .locals 4

    .prologue
    .line 551
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Renderer;
    move-object v2, v0

    iget v2, v2, Lcom/sun/openpisces/Renderer;->edgeMinX:F

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    move v1, v2

    .line 552
    .local v1, "sampleColMin":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/openpisces/Renderer;->boundsMinX:I

    if-ge v2, v3, :cond_0

    move-object v2, v0

    iget v2, v2, Lcom/sun/openpisces/Renderer;->boundsMinX:I

    move v1, v2

    .line 553
    :cond_0
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/sun/openpisces/Renderer;
    return v0
.end method

.method public getSubpixMinY()I
    .locals 2

    .prologue
    .line 563
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Renderer;
    move-object v1, v0

    iget v1, v1, Lcom/sun/openpisces/Renderer;->sampleRowMin:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/openpisces/Renderer;
    return v0
.end method

.method public lineTo(FF)V
    .locals 10

    .prologue
    .line 408
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Renderer;
    move v1, p1

    .local v1, "pix_x1":F
    move v2, p2

    .local v2, "pix_y1":F
    move-object v5, v0

    move v6, v1

    invoke-direct {v5, v6}, Lcom/sun/openpisces/Renderer;->tosubpixx(F)F

    move-result v5

    move v3, v5

    .line 409
    .local v3, "x1":F
    move-object v5, v0

    move v6, v2

    invoke-direct {v5, v6}, Lcom/sun/openpisces/Renderer;->tosubpixy(F)F

    move-result v5

    move v4, v5

    .line 410
    .local v4, "y1":F
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Lcom/sun/openpisces/Renderer;->x0:F

    move-object v7, v0

    iget v7, v7, Lcom/sun/openpisces/Renderer;->y0:F

    move v8, v3

    move v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sun/openpisces/Renderer;->addLine(FFFF)V

    .line 411
    move-object v5, v0

    move v6, v3

    iput v6, v5, Lcom/sun/openpisces/Renderer;->x0:F

    .line 412
    move-object v5, v0

    move v6, v4

    iput v6, v5, Lcom/sun/openpisces/Renderer;->y0:F

    .line 413
    return-void
.end method

.method public moveTo(FF)V
    .locals 6

    .prologue
    .line 400
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Renderer;
    move v1, p1

    .local v1, "pix_x0":F
    move v2, p2

    .local v2, "pix_y0":F
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/openpisces/Renderer;->closePath()V

    .line 401
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/sun/openpisces/Renderer;->pix_sx0:F

    .line 402
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/sun/openpisces/Renderer;->pix_sy0:F

    .line 403
    move-object v3, v0

    move-object v4, v0

    move v5, v2

    invoke-direct {v4, v5}, Lcom/sun/openpisces/Renderer;->tosubpixy(F)F

    move-result v4

    iput v4, v3, Lcom/sun/openpisces/Renderer;->y0:F

    .line 404
    move-object v3, v0

    move-object v4, v0

    move v5, v1

    invoke-direct {v4, v5}, Lcom/sun/openpisces/Renderer;->tosubpixx(F)F

    move-result v4

    iput v4, v3, Lcom/sun/openpisces/Renderer;->x0:F

    .line 405
    return-void
.end method

.method public pathDone()V
    .locals 2

    .prologue
    .line 443
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Renderer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/openpisces/Renderer;->closePath()V

    .line 444
    return-void
.end method

.method public produceAlphas(Lcom/sun/openpisces/AlphaConsumer;)V
    .locals 34

    .prologue
    .line 449
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/openpisces/Renderer;
    move-object/from16 v3, p1

    .local v3, "ac":Lcom/sun/openpisces/AlphaConsumer;
    move-object/from16 v26, v3

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget v0, v0, Lcom/sun/openpisces/Renderer;->MAX_AA_ALPHA:I

    move/from16 v27, v0

    invoke-interface/range {v26 .. v27}, Lcom/sun/openpisces/AlphaConsumer;->setMaxAlpha(I)V

    .line 453
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Lcom/sun/openpisces/Renderer;->windingRule:I

    move/from16 v26, v0

    if-nez v26, :cond_3

    const/16 v26, 0x1

    :goto_0
    move/from16 v4, v26

    .line 456
    .local v4, "mask":I
    move-object/from16 v26, v3

    invoke-interface/range {v26 .. v26}, Lcom/sun/openpisces/AlphaConsumer;->getWidth()I

    move-result v26

    move/from16 v5, v26

    .line 457
    .local v5, "width":I
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/openpisces/Renderer;->savedAlpha:[I

    move-object/from16 v26, v0

    move-object/from16 v6, v26

    .line 458
    .local v6, "alpha":[I
    move-object/from16 v26, v6

    if-eqz v26, :cond_0

    move-object/from16 v26, v6

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v27, v5

    const/16 v28, 0x2

    add-int/lit8 v27, v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_4

    .line 459
    :cond_0
    move-object/from16 v26, v2

    move/from16 v27, v5

    const/16 v28, 0x2

    add-int/lit8 v27, v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v27, v0

    move-object/from16 v32, v27

    move-object/from16 v27, v32

    move-object/from16 v28, v32

    move-object/from16 v6, v28

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/sun/openpisces/Renderer;->savedAlpha:[I

    .line 464
    :goto_1
    move-object/from16 v26, v3

    invoke-interface/range {v26 .. v26}, Lcom/sun/openpisces/AlphaConsumer;->getOriginX()I

    move-result v26

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget v0, v0, Lcom/sun/openpisces/Renderer;->SUBPIXEL_LG_POSITIONS_X:I

    move/from16 v27, v0

    shl-int v26, v26, v27

    move/from16 v7, v26

    .line 465
    .local v7, "bboxx0":I
    move/from16 v26, v7

    move/from16 v27, v5

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget v0, v0, Lcom/sun/openpisces/Renderer;->SUBPIXEL_LG_POSITIONS_X:I

    move/from16 v28, v0

    shl-int v27, v27, v28

    add-int v26, v26, v27

    move/from16 v8, v26

    .line 473
    .local v8, "bboxx1":I
    move/from16 v26, v8

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget v0, v0, Lcom/sun/openpisces/Renderer;->SUBPIXEL_LG_POSITIONS_X:I

    move/from16 v27, v0

    shr-int v26, v26, v27

    move/from16 v9, v26

    .line 474
    .local v9, "pix_maxX":I
    move/from16 v26, v7

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget v0, v0, Lcom/sun/openpisces/Renderer;->SUBPIXEL_LG_POSITIONS_Y:I

    move/from16 v27, v0

    shr-int v26, v26, v27

    move/from16 v10, v26

    .line 476
    .local v10, "pix_minX":I
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Lcom/sun/openpisces/Renderer;->boundsMinY:I

    move/from16 v26, v0

    move/from16 v11, v26

    .line 477
    .local v11, "y":I
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/openpisces/Renderer;->savedIterator:Lcom/sun/openpisces/Renderer$ScanlineIterator;

    move-object/from16 v26, v0

    move-object/from16 v12, v26

    .line 478
    .local v12, "it":Lcom/sun/openpisces/Renderer$ScanlineIterator;
    move-object/from16 v26, v12

    if-nez v26, :cond_5

    .line 479
    move-object/from16 v26, v2

    new-instance v27, Lcom/sun/openpisces/Renderer$ScanlineIterator;

    move-object/from16 v32, v27

    move-object/from16 v27, v32

    move-object/from16 v28, v32

    move-object/from16 v29, v2

    const/16 v30, 0x0

    invoke-direct/range {v28 .. v30}, Lcom/sun/openpisces/Renderer$ScanlineIterator;-><init>(Lcom/sun/openpisces/Renderer;Lcom/sun/openpisces/Renderer$1;)V

    move-object/from16 v32, v27

    move-object/from16 v27, v32

    move-object/from16 v28, v32

    move-object/from16 v12, v28

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/sun/openpisces/Renderer;->savedIterator:Lcom/sun/openpisces/Renderer$ScanlineIterator;

    .line 483
    :goto_2
    move-object/from16 v26, v12

    invoke-static/range {v26 .. v26}, Lcom/sun/openpisces/Renderer$ScanlineIterator;->access$600(Lcom/sun/openpisces/Renderer$ScanlineIterator;)Z

    move-result v26

    if-eqz v26, :cond_9

    .line 484
    move-object/from16 v26, v12

    invoke-static/range {v26 .. v26}, Lcom/sun/openpisces/Renderer$ScanlineIterator;->access$700(Lcom/sun/openpisces/Renderer$ScanlineIterator;)I

    move-result v26

    move/from16 v13, v26

    .line 485
    .local v13, "numCrossings":I
    move-object/from16 v26, v12

    invoke-static/range {v26 .. v26}, Lcom/sun/openpisces/Renderer$ScanlineIterator;->access$800(Lcom/sun/openpisces/Renderer$ScanlineIterator;)[I

    move-result-object v26

    move-object/from16 v14, v26

    .line 486
    .local v14, "crossings":[I
    move-object/from16 v26, v12

    invoke-static/range {v26 .. v26}, Lcom/sun/openpisces/Renderer$ScanlineIterator;->access$900(Lcom/sun/openpisces/Renderer$ScanlineIterator;)I

    move-result v26

    move/from16 v11, v26

    .line 488
    move/from16 v26, v13

    if-lez v26, :cond_1

    .line 489
    move-object/from16 v26, v14

    const/16 v27, 0x0

    aget v26, v26, v27

    const/16 v27, 0x1

    shr-int/lit8 v26, v26, 0x1

    move/from16 v15, v26

    .line 490
    .local v15, "lowx":I
    move-object/from16 v26, v14

    move/from16 v27, v13

    const/16 v28, 0x1

    add-int/lit8 v27, v27, -0x1

    aget v26, v26, v27

    const/16 v27, 0x1

    shr-int/lit8 v26, v26, 0x1

    move/from16 v16, v26

    .line 491
    .local v16, "highx":I
    move/from16 v26, v15

    move/from16 v27, v7

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->max(II)I

    move-result v26

    move/from16 v17, v26

    .line 492
    .local v17, "x0":I
    move/from16 v26, v16

    move/from16 v27, v8

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->min(II)I

    move-result v26

    move/from16 v18, v26

    .line 494
    .local v18, "x1":I
    move/from16 v26, v10

    move/from16 v27, v17

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget v0, v0, Lcom/sun/openpisces/Renderer;->SUBPIXEL_LG_POSITIONS_X:I

    move/from16 v28, v0

    shr-int v27, v27, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->min(II)I

    move-result v26

    move/from16 v10, v26

    .line 495
    move/from16 v26, v9

    move/from16 v27, v18

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget v0, v0, Lcom/sun/openpisces/Renderer;->SUBPIXEL_LG_POSITIONS_X:I

    move/from16 v28, v0

    shr-int v27, v27, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->max(II)I

    move-result v26

    move/from16 v9, v26

    .line 498
    .end local v15    # "lowx":I
    .end local v16    # "highx":I
    .end local v17    # "x0":I
    .end local v18    # "x1":I
    :cond_1
    const/16 v26, 0x0

    move/from16 v15, v26

    .line 499
    .local v15, "sum":I
    move/from16 v26, v7

    move/from16 v16, v26

    .line 500
    .local v16, "prev":I
    const/16 v26, 0x0

    move/from16 v17, v26

    .local v17, "i":I
    :goto_3
    move/from16 v26, v17

    move/from16 v27, v13

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_7

    .line 501
    move-object/from16 v26, v14

    move/from16 v27, v17

    aget v26, v26, v27

    move/from16 v18, v26

    .line 502
    .local v18, "curxo":I
    move/from16 v26, v18

    const/16 v27, 0x1

    shr-int/lit8 v26, v26, 0x1

    move/from16 v19, v26

    .line 503
    .local v19, "curx":I
    move/from16 v26, v18

    const/16 v27, 0x1

    and-int/lit8 v26, v26, 0x1

    const/16 v27, 0x1

    shl-int/lit8 v26, v26, 0x1

    const/16 v27, 0x1

    add-int/lit8 v26, v26, -0x1

    move/from16 v20, v26

    .line 504
    .local v20, "crorientation":I
    move/from16 v26, v15

    move/from16 v27, v4

    and-int v26, v26, v27

    if-eqz v26, :cond_2

    .line 505
    move/from16 v26, v16

    move/from16 v27, v7

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->max(II)I

    move-result v26

    move/from16 v21, v26

    .line 506
    .local v21, "x0":I
    move/from16 v26, v19

    move/from16 v27, v8

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->min(II)I

    move-result v26

    move/from16 v22, v26

    .line 507
    .local v22, "x1":I
    move/from16 v26, v21

    move/from16 v27, v22

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_2

    .line 508
    move/from16 v26, v21

    move/from16 v27, v7

    sub-int v26, v26, v27

    move/from16 v21, v26

    .line 509
    move/from16 v26, v22

    move/from16 v27, v7

    sub-int v26, v26, v27

    move/from16 v22, v26

    .line 511
    move/from16 v26, v21

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget v0, v0, Lcom/sun/openpisces/Renderer;->SUBPIXEL_LG_POSITIONS_X:I

    move/from16 v27, v0

    shr-int v26, v26, v27

    move/from16 v23, v26

    .line 512
    .local v23, "pix_x":I
    move/from16 v26, v22

    const/16 v27, 0x1

    add-int/lit8 v26, v26, -0x1

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget v0, v0, Lcom/sun/openpisces/Renderer;->SUBPIXEL_LG_POSITIONS_X:I

    move/from16 v27, v0

    shr-int v26, v26, v27

    move/from16 v24, v26

    .line 514
    .local v24, "pix_xmaxm1":I
    move/from16 v26, v23

    move/from16 v27, v24

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_6

    .line 516
    move-object/from16 v26, v6

    move/from16 v27, v23

    move-object/from16 v32, v26

    move/from16 v33, v27

    move-object/from16 v26, v32

    move/from16 v27, v33

    move-object/from16 v28, v32

    move/from16 v29, v33

    aget v28, v28, v29

    move/from16 v29, v22

    move/from16 v30, v21

    sub-int v29, v29, v30

    add-int v28, v28, v29

    aput v28, v26, v27

    .line 517
    move-object/from16 v26, v6

    move/from16 v27, v23

    const/16 v28, 0x1

    add-int/lit8 v27, v27, 0x1

    move-object/from16 v32, v26

    move/from16 v33, v27

    move-object/from16 v26, v32

    move/from16 v27, v33

    move-object/from16 v28, v32

    move/from16 v29, v33

    aget v28, v28, v29

    move/from16 v29, v22

    move/from16 v30, v21

    sub-int v29, v29, v30

    sub-int v28, v28, v29

    aput v28, v26, v27

    .line 527
    .end local v21    # "x0":I
    .end local v22    # "x1":I
    .end local v23    # "pix_x":I
    .end local v24    # "pix_xmaxm1":I
    :cond_2
    :goto_4
    move/from16 v26, v15

    move/from16 v27, v20

    add-int v26, v26, v27

    move/from16 v15, v26

    .line 528
    move/from16 v26, v19

    move/from16 v16, v26

    .line 500
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_3

    .line 453
    .end local v4    # "mask":I
    .end local v5    # "width":I
    .end local v6    # "alpha":[I
    .end local v7    # "bboxx0":I
    .end local v8    # "bboxx1":I
    .end local v9    # "pix_maxX":I
    .end local v10    # "pix_minX":I
    .end local v11    # "y":I
    .end local v12    # "it":Lcom/sun/openpisces/Renderer$ScanlineIterator;
    .end local v13    # "numCrossings":I
    .end local v14    # "crossings":[I
    .end local v15    # "sum":I
    .end local v16    # "prev":I
    .end local v17    # "i":I
    .end local v18    # "curxo":I
    .end local v19    # "curx":I
    .end local v20    # "crorientation":I
    :cond_3
    const/16 v26, -0x1

    goto/16 :goto_0

    .line 461
    .restart local v4    # "mask":I
    .restart local v5    # "width":I
    .restart local v6    # "alpha":[I
    :cond_4
    move-object/from16 v26, v6

    const/16 v27, 0x0

    move/from16 v28, v5

    const/16 v29, 0x2

    add-int/lit8 v28, v28, 0x2

    const/16 v29, 0x0

    invoke-static/range {v26 .. v29}, Ljava/util/Arrays;->fill([IIII)V

    goto/16 :goto_1

    .line 481
    .restart local v7    # "bboxx0":I
    .restart local v8    # "bboxx1":I
    .restart local v9    # "pix_maxX":I
    .restart local v10    # "pix_minX":I
    .restart local v11    # "y":I
    .restart local v12    # "it":Lcom/sun/openpisces/Renderer$ScanlineIterator;
    :cond_5
    move-object/from16 v26, v12

    invoke-virtual/range {v26 .. v26}, Lcom/sun/openpisces/Renderer$ScanlineIterator;->reset()V

    goto/16 :goto_2

    .line 519
    .restart local v13    # "numCrossings":I
    .restart local v14    # "crossings":[I
    .restart local v15    # "sum":I
    .restart local v16    # "prev":I
    .restart local v17    # "i":I
    .restart local v18    # "curxo":I
    .restart local v19    # "curx":I
    .restart local v20    # "crorientation":I
    .restart local v21    # "x0":I
    .restart local v22    # "x1":I
    .restart local v23    # "pix_x":I
    .restart local v24    # "pix_xmaxm1":I
    :cond_6
    move/from16 v26, v22

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget v0, v0, Lcom/sun/openpisces/Renderer;->SUBPIXEL_LG_POSITIONS_X:I

    move/from16 v27, v0

    shr-int v26, v26, v27

    move/from16 v25, v26

    .line 520
    .local v25, "pix_xmax":I
    move-object/from16 v26, v6

    move/from16 v27, v23

    move-object/from16 v32, v26

    move/from16 v33, v27

    move-object/from16 v26, v32

    move/from16 v27, v33

    move-object/from16 v28, v32

    move/from16 v29, v33

    aget v28, v28, v29

    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget v0, v0, Lcom/sun/openpisces/Renderer;->SUBPIXEL_POSITIONS_X:I

    move/from16 v29, v0

    move/from16 v30, v21

    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget v0, v0, Lcom/sun/openpisces/Renderer;->SUBPIXEL_MASK_X:I

    move/from16 v31, v0

    and-int v30, v30, v31

    sub-int v29, v29, v30

    add-int v28, v28, v29

    aput v28, v26, v27

    .line 521
    move-object/from16 v26, v6

    move/from16 v27, v23

    const/16 v28, 0x1

    add-int/lit8 v27, v27, 0x1

    move-object/from16 v32, v26

    move/from16 v33, v27

    move-object/from16 v26, v32

    move/from16 v27, v33

    move-object/from16 v28, v32

    move/from16 v29, v33

    aget v28, v28, v29

    move/from16 v29, v21

    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget v0, v0, Lcom/sun/openpisces/Renderer;->SUBPIXEL_MASK_X:I

    move/from16 v30, v0

    and-int v29, v29, v30

    add-int v28, v28, v29

    aput v28, v26, v27

    .line 522
    move-object/from16 v26, v6

    move/from16 v27, v25

    move-object/from16 v32, v26

    move/from16 v33, v27

    move-object/from16 v26, v32

    move/from16 v27, v33

    move-object/from16 v28, v32

    move/from16 v29, v33

    aget v28, v28, v29

    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget v0, v0, Lcom/sun/openpisces/Renderer;->SUBPIXEL_POSITIONS_X:I

    move/from16 v29, v0

    move/from16 v30, v22

    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget v0, v0, Lcom/sun/openpisces/Renderer;->SUBPIXEL_MASK_X:I

    move/from16 v31, v0

    and-int v30, v30, v31

    sub-int v29, v29, v30

    sub-int v28, v28, v29

    aput v28, v26, v27

    .line 523
    move-object/from16 v26, v6

    move/from16 v27, v25

    const/16 v28, 0x1

    add-int/lit8 v27, v27, 0x1

    move-object/from16 v32, v26

    move/from16 v33, v27

    move-object/from16 v26, v32

    move/from16 v27, v33

    move-object/from16 v28, v32

    move/from16 v29, v33

    aget v28, v28, v29

    move/from16 v29, v22

    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget v0, v0, Lcom/sun/openpisces/Renderer;->SUBPIXEL_MASK_X:I

    move/from16 v30, v0

    and-int v29, v29, v30

    sub-int v28, v28, v29

    aput v28, v26, v27

    goto/16 :goto_4

    .line 534
    .end local v18    # "curxo":I
    .end local v19    # "curx":I
    .end local v20    # "crorientation":I
    .end local v21    # "x0":I
    .end local v22    # "x1":I
    .end local v23    # "pix_x":I
    .end local v24    # "pix_xmaxm1":I
    .end local v25    # "pix_xmax":I
    :cond_7
    move/from16 v26, v11

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget v0, v0, Lcom/sun/openpisces/Renderer;->SUBPIXEL_MASK_Y:I

    move/from16 v27, v0

    and-int v26, v26, v27

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget v0, v0, Lcom/sun/openpisces/Renderer;->SUBPIXEL_MASK_Y:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_8

    .line 535
    move-object/from16 v26, v3

    move-object/from16 v27, v6

    move/from16 v28, v11

    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget v0, v0, Lcom/sun/openpisces/Renderer;->SUBPIXEL_LG_POSITIONS_Y:I

    move/from16 v29, v0

    shr-int v28, v28, v29

    move/from16 v29, v10

    move/from16 v30, v9

    invoke-interface/range {v26 .. v30}, Lcom/sun/openpisces/AlphaConsumer;->setAndClearRelativeAlphas([IIII)V

    .line 537
    move/from16 v26, v8

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget v0, v0, Lcom/sun/openpisces/Renderer;->SUBPIXEL_LG_POSITIONS_X:I

    move/from16 v27, v0

    shr-int v26, v26, v27

    move/from16 v9, v26

    .line 538
    move/from16 v26, v7

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget v0, v0, Lcom/sun/openpisces/Renderer;->SUBPIXEL_LG_POSITIONS_Y:I

    move/from16 v27, v0

    shr-int v26, v26, v27

    move/from16 v10, v26

    .line 540
    :cond_8
    goto/16 :goto_2

    .line 544
    .end local v13    # "numCrossings":I
    .end local v14    # "crossings":[I
    .end local v15    # "sum":I
    .end local v16    # "prev":I
    .end local v17    # "i":I
    :cond_9
    move/from16 v26, v11

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget v0, v0, Lcom/sun/openpisces/Renderer;->SUBPIXEL_MASK_Y:I

    move/from16 v27, v0

    and-int v26, v26, v27

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget v0, v0, Lcom/sun/openpisces/Renderer;->SUBPIXEL_MASK_Y:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_a

    .line 545
    move-object/from16 v26, v3

    move-object/from16 v27, v6

    move/from16 v28, v11

    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget v0, v0, Lcom/sun/openpisces/Renderer;->SUBPIXEL_LG_POSITIONS_Y:I

    move/from16 v29, v0

    shr-int v28, v28, v29

    move/from16 v29, v10

    move/from16 v30, v9

    invoke-interface/range {v26 .. v30}, Lcom/sun/openpisces/AlphaConsumer;->setAndClearRelativeAlphas([IIII)V

    .line 548
    :cond_a
    return-void
.end method

.method public quadTo(FFFF)V
    .locals 14

    .prologue
    .line 429
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Renderer;
    move v1, p1

    .local v1, "x1":F
    move/from16 v2, p2

    .local v2, "y1":F
    move/from16 v3, p3

    .local v3, "x2":F
    move/from16 v4, p4

    .local v4, "y2":F
    move-object v7, v0

    move v8, v3

    invoke-direct {v7, v8}, Lcom/sun/openpisces/Renderer;->tosubpixx(F)F

    move-result v7

    move v5, v7

    .line 430
    .local v5, "xe":F
    move-object v7, v0

    move v8, v4

    invoke-direct {v7, v8}, Lcom/sun/openpisces/Renderer;->tosubpixy(F)F

    move-result v7

    move v6, v7

    .line 431
    .local v6, "ye":F
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/openpisces/Renderer;->c:Lcom/sun/openpisces/Curve;

    move-object v8, v0

    iget v8, v8, Lcom/sun/openpisces/Renderer;->x0:F

    move-object v9, v0

    iget v9, v9, Lcom/sun/openpisces/Renderer;->y0:F

    move-object v10, v0

    move v11, v1

    invoke-direct {v10, v11}, Lcom/sun/openpisces/Renderer;->tosubpixx(F)F

    move-result v10

    move-object v11, v0

    move v12, v2

    invoke-direct {v11, v12}, Lcom/sun/openpisces/Renderer;->tosubpixy(F)F

    move-result v11

    move v12, v5

    move v13, v6

    invoke-virtual/range {v7 .. v13}, Lcom/sun/openpisces/Curve;->set(FFFFFF)V

    .line 432
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Lcom/sun/openpisces/Renderer;->x0:F

    move-object v9, v0

    iget v9, v9, Lcom/sun/openpisces/Renderer;->y0:F

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/openpisces/Renderer;->c:Lcom/sun/openpisces/Curve;

    move v11, v5

    move v12, v6

    invoke-direct/range {v7 .. v12}, Lcom/sun/openpisces/Renderer;->quadBreakIntoLinesAndAdd(FFLcom/sun/openpisces/Curve;FF)V

    .line 433
    move-object v7, v0

    move v8, v5

    iput v8, v7, Lcom/sun/openpisces/Renderer;->x0:F

    .line 434
    move-object v7, v0

    move v8, v6

    iput v8, v7, Lcom/sun/openpisces/Renderer;->y0:F

    .line 435
    return-void
.end method

.method public reset(IIIII)V
    .locals 15

    .prologue
    .line 362
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Renderer;
    move/from16 v1, p1

    .local v1, "pix_boundsX":I
    move/from16 v2, p2

    .local v2, "pix_boundsY":I
    move/from16 v3, p3

    .local v3, "pix_boundsWidth":I
    move/from16 v4, p4

    .local v4, "pix_boundsHeight":I
    move/from16 v5, p5

    .local v5, "windingRule":I
    move-object v7, v0

    move v8, v5

    iput v8, v7, Lcom/sun/openpisces/Renderer;->windingRule:I

    .line 364
    move-object v7, v0

    move v8, v1

    move-object v9, v0

    iget v9, v9, Lcom/sun/openpisces/Renderer;->SUBPIXEL_POSITIONS_X:I

    mul-int/2addr v8, v9

    iput v8, v7, Lcom/sun/openpisces/Renderer;->boundsMinX:I

    .line 365
    move-object v7, v0

    move v8, v2

    move-object v9, v0

    iget v9, v9, Lcom/sun/openpisces/Renderer;->SUBPIXEL_POSITIONS_Y:I

    mul-int/2addr v8, v9

    iput v8, v7, Lcom/sun/openpisces/Renderer;->boundsMinY:I

    .line 366
    move-object v7, v0

    move v8, v1

    move v9, v3

    add-int/2addr v8, v9

    move-object v9, v0

    iget v9, v9, Lcom/sun/openpisces/Renderer;->SUBPIXEL_POSITIONS_X:I

    mul-int/2addr v8, v9

    iput v8, v7, Lcom/sun/openpisces/Renderer;->boundsMaxX:I

    .line 367
    move-object v7, v0

    move v8, v2

    move v9, v4

    add-int/2addr v8, v9

    move-object v9, v0

    iget v9, v9, Lcom/sun/openpisces/Renderer;->SUBPIXEL_POSITIONS_Y:I

    mul-int/2addr v8, v9

    iput v8, v7, Lcom/sun/openpisces/Renderer;->boundsMaxY:I

    .line 369
    move-object v7, v0

    const/high16 v8, 0x7f800000    # Float.POSITIVE_INFINITY

    iput v8, v7, Lcom/sun/openpisces/Renderer;->edgeMinX:F

    .line 370
    move-object v7, v0

    const/high16 v8, -0x800000    # Float.NEGATIVE_INFINITY

    iput v8, v7, Lcom/sun/openpisces/Renderer;->edgeMaxX:F

    .line 371
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Lcom/sun/openpisces/Renderer;->boundsMinY:I

    iput v8, v7, Lcom/sun/openpisces/Renderer;->sampleRowMax:I

    .line 372
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Lcom/sun/openpisces/Renderer;->boundsMaxY:I

    iput v8, v7, Lcom/sun/openpisces/Renderer;->sampleRowMin:I

    .line 374
    move-object v7, v0

    iget v7, v7, Lcom/sun/openpisces/Renderer;->boundsMaxY:I

    move-object v8, v0

    iget v8, v8, Lcom/sun/openpisces/Renderer;->boundsMinY:I

    sub-int/2addr v7, v8

    move v6, v7

    .line 375
    .local v6, "numBuckets":I
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/openpisces/Renderer;->edgeBuckets:[I

    if-eqz v7, :cond_0

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/openpisces/Renderer;->edgeBuckets:[I

    array-length v7, v7

    move v8, v6

    const/4 v9, 0x2

    mul-int/lit8 v8, v8, 0x2

    const/4 v9, 0x2

    add-int/lit8 v8, v8, 0x2

    if-ge v7, v8, :cond_2

    .line 379
    :cond_0
    move-object v7, v0

    move v8, v6

    const/4 v9, 0x2

    mul-int/lit8 v8, v8, 0x2

    const/4 v9, 0x2

    add-int/lit8 v8, v8, 0x2

    new-array v8, v8, [I

    iput-object v8, v7, Lcom/sun/openpisces/Renderer;->edgeBuckets:[I

    .line 385
    :goto_0
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/openpisces/Renderer;->edges:[F

    if-nez v7, :cond_1

    .line 386
    move-object v7, v0

    const/16 v8, 0xa0

    new-array v8, v8, [F

    iput-object v8, v7, Lcom/sun/openpisces/Renderer;->edges:[F

    .line 388
    :cond_1
    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Lcom/sun/openpisces/Renderer;->numEdges:I

    .line 389
    move-object v7, v0

    move-object v8, v0

    move-object v9, v0

    move-object v10, v0

    const/4 v11, 0x0

    move-object v13, v10

    move v14, v11

    move v10, v14

    move-object v11, v13

    move v12, v14

    iput v12, v11, Lcom/sun/openpisces/Renderer;->y0:F

    move-object v13, v9

    move v14, v10

    move v9, v14

    move-object v10, v13

    move v11, v14

    iput v11, v10, Lcom/sun/openpisces/Renderer;->x0:F

    move-object v13, v8

    move v14, v9

    move v8, v14

    move-object v9, v13

    move v10, v14

    iput v10, v9, Lcom/sun/openpisces/Renderer;->pix_sy0:F

    iput v8, v7, Lcom/sun/openpisces/Renderer;->pix_sx0:F

    .line 390
    return-void

    .line 383
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/openpisces/Renderer;->edgeBuckets:[I

    const/4 v8, 0x0

    move v9, v6

    const/4 v10, 0x2

    mul-int/lit8 v9, v9, 0x2

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_0
.end method
