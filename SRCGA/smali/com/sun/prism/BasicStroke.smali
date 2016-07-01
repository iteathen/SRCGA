.class public final Lcom/sun/prism/BasicStroke;
.super Ljava/lang/Object;
.source "BasicStroke.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/prism/BasicStroke$CAGShapePair;
    }
.end annotation


# static fields
.field public static final CAP_BUTT:I = 0x0

.field public static final CAP_ROUND:I = 0x1

.field public static final CAP_SQUARE:I = 0x2

.field public static final JOIN_BEVEL:I = 0x2

.field public static final JOIN_MITER:I = 0x0

.field public static final JOIN_ROUND:I = 0x1

.field private static final SAFE_ACCUMULATE_MASK:I = 0x5b

.field static final SQRT_2:F

.field public static final TYPE_CENTERED:I = 0x0

.field public static final TYPE_INNER:I = 0x1

.field public static final TYPE_OUTER:I = 0x2


# instance fields
.field cap:I

.field dash:[F

.field dashPhase:F

.field join:I

.field miterLimit:F

.field private tmpMiter:[F

.field type:I

.field width:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 694
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/sun/prism/BasicStroke;->SQRT_2:F

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/BasicStroke;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 648
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [F

    iput-object v2, v1, Lcom/sun/prism/BasicStroke;->tmpMiter:[F

    .line 63
    move-object v1, v0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/high16 v6, 0x41200000    # 10.0f

    invoke-virtual/range {v1 .. v6}, Lcom/sun/prism/BasicStroke;->set(IFIIF)V

    .line 64
    return-void
.end method

.method public constructor <init>(FIIF)V
    .locals 11

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/BasicStroke;
    move v1, p1

    .local v1, "width":F
    move v2, p2

    .local v2, "cap":I
    move v3, p3

    .local v3, "join":I
    move v4, p4

    .local v4, "miterLimit":F
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 648
    move-object v5, v0

    const/4 v6, 0x2

    new-array v6, v6, [F

    iput-object v6, v5, Lcom/sun/prism/BasicStroke;->tmpMiter:[F

    .line 67
    move-object v5, v0

    const/4 v6, 0x0

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-virtual/range {v5 .. v10}, Lcom/sun/prism/BasicStroke;->set(IFIIF)V

    .line 68
    return-void
.end method

.method public constructor <init>(FIIF[DF)V
    .locals 13

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/BasicStroke;
    move v1, p1

    .local v1, "width":F
    move v2, p2

    .local v2, "cap":I
    move/from16 v3, p3

    .local v3, "join":I
    move/from16 v4, p4

    .local v4, "miterLimit":F
    move-object/from16 v5, p5

    .local v5, "dash":[D
    move/from16 v6, p6

    .local v6, "dashPhase":F
    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 648
    move-object v7, v0

    const/4 v8, 0x2

    new-array v8, v8, [F

    iput-object v8, v7, Lcom/sun/prism/BasicStroke;->tmpMiter:[F

    .line 86
    move-object v7, v0

    const/4 v8, 0x0

    move v9, v1

    move v10, v2

    move v11, v3

    move v12, v4

    invoke-virtual/range {v7 .. v12}, Lcom/sun/prism/BasicStroke;->set(IFIIF)V

    .line 87
    move-object v7, v0

    move-object v8, v5

    move v9, v6

    invoke-virtual {v7, v8, v9}, Lcom/sun/prism/BasicStroke;->set([DF)V

    .line 88
    return-void
.end method

.method public constructor <init>(FIIF[FF)V
    .locals 13

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/BasicStroke;
    move v1, p1

    .local v1, "width":F
    move v2, p2

    .local v2, "cap":I
    move/from16 v3, p3

    .local v3, "join":I
    move/from16 v4, p4

    .local v4, "miterLimit":F
    move-object/from16 v5, p5

    .local v5, "dash":[F
    move/from16 v6, p6

    .local v6, "dashPhase":F
    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 648
    move-object v7, v0

    const/4 v8, 0x2

    new-array v8, v8, [F

    iput-object v8, v7, Lcom/sun/prism/BasicStroke;->tmpMiter:[F

    .line 79
    move-object v7, v0

    const/4 v8, 0x0

    move v9, v1

    move v10, v2

    move v11, v3

    move v12, v4

    invoke-virtual/range {v7 .. v12}, Lcom/sun/prism/BasicStroke;->set(IFIIF)V

    .line 80
    move-object v7, v0

    move-object v8, v5

    move v9, v6

    invoke-virtual {v7, v8, v9}, Lcom/sun/prism/BasicStroke;->set([FF)V

    .line 81
    return-void
.end method

.method public constructor <init>(IFIIF)V
    .locals 12

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/BasicStroke;
    move v1, p1

    .local v1, "type":I
    move v2, p2

    .local v2, "width":F
    move v3, p3

    .local v3, "cap":I
    move/from16 v4, p4

    .local v4, "join":I
    move/from16 v5, p5

    .local v5, "miterLimit":F
    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 648
    move-object v6, v0

    const/4 v7, 0x2

    new-array v7, v7, [F

    iput-object v7, v6, Lcom/sun/prism/BasicStroke;->tmpMiter:[F

    .line 73
    move-object v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/sun/prism/BasicStroke;->set(IFIIF)V

    .line 74
    return-void
.end method

.method public constructor <init>(IFIIF[DF)V
    .locals 14

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/BasicStroke;
    move v1, p1

    .local v1, "type":I
    move/from16 v2, p2

    .local v2, "width":F
    move/from16 v3, p3

    .local v3, "cap":I
    move/from16 v4, p4

    .local v4, "join":I
    move/from16 v5, p5

    .local v5, "miterLimit":F
    move-object/from16 v6, p6

    .local v6, "dash":[D
    move/from16 v7, p7

    .local v7, "dashPhase":F
    move-object v8, v0

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 648
    move-object v8, v0

    const/4 v9, 0x2

    new-array v9, v9, [F

    iput-object v9, v8, Lcom/sun/prism/BasicStroke;->tmpMiter:[F

    .line 100
    move-object v8, v0

    move v9, v1

    move v10, v2

    move v11, v3

    move v12, v4

    move v13, v5

    invoke-virtual/range {v8 .. v13}, Lcom/sun/prism/BasicStroke;->set(IFIIF)V

    .line 101
    move-object v8, v0

    move-object v9, v6

    move v10, v7

    invoke-virtual {v8, v9, v10}, Lcom/sun/prism/BasicStroke;->set([DF)V

    .line 102
    return-void
.end method

.method public constructor <init>(IFIIF[FF)V
    .locals 14

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/BasicStroke;
    move v1, p1

    .local v1, "type":I
    move/from16 v2, p2

    .local v2, "width":F
    move/from16 v3, p3

    .local v3, "cap":I
    move/from16 v4, p4

    .local v4, "join":I
    move/from16 v5, p5

    .local v5, "miterLimit":F
    move-object/from16 v6, p6

    .local v6, "dash":[F
    move/from16 v7, p7

    .local v7, "dashPhase":F
    move-object v8, v0

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 648
    move-object v8, v0

    const/4 v9, 0x2

    new-array v9, v9, [F

    iput-object v9, v8, Lcom/sun/prism/BasicStroke;->tmpMiter:[F

    .line 93
    move-object v8, v0

    move v9, v1

    move v10, v2

    move v11, v3

    move v12, v4

    move v13, v5

    invoke-virtual/range {v8 .. v13}, Lcom/sun/prism/BasicStroke;->set(IFIIF)V

    .line 94
    move-object v8, v0

    move-object v9, v6

    move v10, v7

    invoke-virtual {v8, v9, v10}, Lcom/sun/prism/BasicStroke;->set([FF)V

    .line 95
    return-void
.end method

.method private accumulate(FFFF[F)V
    .locals 9

    .prologue
    .line 598
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/BasicStroke;
    move v1, p1

    .local v1, "o0":F
    move v2, p2

    .local v2, "o1":F
    move v3, p3

    .local v3, "o2":F
    move v4, p4

    .local v4, "o3":F
    move-object v5, p5

    .local v5, "bbox":[F
    move v6, v1

    move v7, v3

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_4

    .line 599
    move v6, v1

    move-object v7, v5

    const/4 v8, 0x0

    aget v7, v7, v8

    cmpg-float v6, v6, v7

    if-gez v6, :cond_0

    move-object v6, v5

    const/4 v7, 0x0

    move v8, v1

    aput v8, v6, v7

    .line 600
    :cond_0
    move v6, v3

    move-object v7, v5

    const/4 v8, 0x2

    aget v7, v7, v8

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    move-object v6, v5

    const/4 v7, 0x2

    move v8, v3

    aput v8, v6, v7

    .line 605
    :cond_1
    :goto_0
    move v6, v2

    move v7, v4

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_6

    .line 606
    move v6, v2

    move-object v7, v5

    const/4 v8, 0x1

    aget v7, v7, v8

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    move-object v6, v5

    const/4 v7, 0x1

    move v8, v2

    aput v8, v6, v7

    .line 607
    :cond_2
    move v6, v4

    move-object v7, v5

    const/4 v8, 0x3

    aget v7, v7, v8

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    move-object v6, v5

    const/4 v7, 0x3

    move v8, v4

    aput v8, v6, v7

    .line 612
    :cond_3
    :goto_1
    return-void

    .line 602
    :cond_4
    move v6, v3

    move-object v7, v5

    const/4 v8, 0x0

    aget v7, v7, v8

    cmpg-float v6, v6, v7

    if-gez v6, :cond_5

    move-object v6, v5

    const/4 v7, 0x0

    move v8, v3

    aput v8, v6, v7

    .line 603
    :cond_5
    move v6, v1

    move-object v7, v5

    const/4 v8, 0x2

    aget v7, v7, v8

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    move-object v6, v5

    const/4 v7, 0x2

    move v8, v1

    aput v8, v6, v7

    goto :goto_0

    .line 609
    :cond_6
    move v6, v4

    move-object v7, v5

    const/4 v8, 0x1

    aget v7, v7, v8

    cmpg-float v6, v6, v7

    if-gez v6, :cond_7

    move-object v6, v5

    const/4 v7, 0x1

    move v8, v4

    aput v8, v6, v7

    .line 610
    :cond_7
    move v6, v2

    move-object v7, v5

    const/4 v8, 0x3

    aget v7, v7, v8

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    move-object v6, v5

    const/4 v7, 0x3

    move v8, v2

    aput v8, v6, v7

    goto :goto_1
.end method

.method private accumulateBevel(FFFFFF[F)V
    .locals 14

    .prologue
    .line 678
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/BasicStroke;
    move v1, p1

    .local v1, "x0":F
    move/from16 v2, p2

    .local v2, "y0":F
    move/from16 v3, p3

    .local v3, "pox":F
    move/from16 v4, p4

    .local v4, "poy":F
    move/from16 v5, p5

    .local v5, "ox":F
    move/from16 v6, p6

    .local v6, "oy":F
    move-object/from16 v7, p7

    .local v7, "bbox":[F
    move-object v8, v0

    move v9, v1

    move v10, v3

    add-float/2addr v9, v10

    move v10, v2

    move v11, v4

    add-float/2addr v10, v11

    move v11, v1

    move v12, v3

    sub-float/2addr v11, v12

    move v12, v2

    move v13, v4

    sub-float/2addr v12, v13

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/sun/prism/BasicStroke;->accumulate(FFFF[F)V

    .line 679
    move-object v8, v0

    move v9, v1

    move v10, v5

    add-float/2addr v9, v10

    move v10, v2

    move v11, v6

    add-float/2addr v10, v11

    move v11, v1

    move v12, v5

    sub-float/2addr v11, v12

    move v12, v2

    move v13, v6

    sub-float/2addr v12, v13

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/sun/prism/BasicStroke;->accumulate(FFFF[F)V

    .line 680
    return-void
.end method

.method private accumulateCap(FFFFFF[FF)V
    .locals 15

    .prologue
    .line 638
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/BasicStroke;
    move/from16 v1, p1

    .local v1, "dx":F
    move/from16 v2, p2

    .local v2, "dy":F
    move/from16 v3, p3

    .local v3, "x0":F
    move/from16 v4, p4

    .local v4, "y0":F
    move/from16 v5, p5

    .local v5, "ox":F
    move/from16 v6, p6

    .local v6, "oy":F
    move-object/from16 v7, p7

    .local v7, "bbox":[F
    move/from16 v8, p8

    .local v8, "w":F
    move-object v9, v0

    iget v9, v9, Lcom/sun/prism/BasicStroke;->cap:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    .line 639
    move-object v9, v0

    move v10, v3

    move v11, v5

    add-float/2addr v10, v11

    move v11, v6

    sub-float/2addr v10, v11

    move v11, v4

    move v12, v6

    add-float/2addr v11, v12

    move v12, v5

    add-float/2addr v11, v12

    move v12, v3

    move v13, v5

    sub-float/2addr v12, v13

    move v13, v6

    sub-float/2addr v12, v13

    move v13, v4

    move v14, v6

    sub-float/2addr v13, v14

    move v14, v5

    add-float/2addr v13, v14

    move-object v14, v7

    invoke-direct/range {v9 .. v14}, Lcom/sun/prism/BasicStroke;->accumulate(FFFF[F)V

    .line 646
    :goto_0
    return-void

    .line 640
    :cond_0
    move-object v9, v0

    iget v9, v9, Lcom/sun/prism/BasicStroke;->cap:I

    if-nez v9, :cond_1

    .line 641
    move-object v9, v0

    move v10, v3

    move v11, v5

    add-float/2addr v10, v11

    move v11, v4

    move v12, v6

    add-float/2addr v11, v12

    move v12, v3

    move v13, v5

    sub-float/2addr v12, v13

    move v13, v4

    move v14, v6

    sub-float/2addr v13, v14

    move-object v14, v7

    invoke-direct/range {v9 .. v14}, Lcom/sun/prism/BasicStroke;->accumulate(FFFF[F)V

    goto :goto_0

    .line 643
    :cond_1
    move-object v9, v0

    move v10, v3

    move v11, v8

    sub-float/2addr v10, v11

    move v11, v4

    move v12, v8

    sub-float/2addr v11, v12

    move v12, v3

    move v13, v8

    add-float/2addr v12, v13

    move v13, v4

    move v14, v8

    add-float/2addr v13, v14

    move-object v14, v7

    invoke-direct/range {v9 .. v14}, Lcom/sun/prism/BasicStroke;->accumulateOrdered(FFFF[F)V

    goto :goto_0
.end method

.method private accumulateCubic([FIFFFFF)V
    .locals 23

    .prologue
    .line 383
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/prism/BasicStroke;
    move-object/from16 v2, p1

    .local v2, "bbox":[F
    move/from16 v3, p2

    .local v3, "off":I
    move/from16 v4, p3

    .local v4, "v0":F
    move/from16 v5, p4

    .local v5, "vc0":F
    move/from16 v6, p5

    .local v6, "vc1":F
    move/from16 v7, p6

    .local v7, "v1":F
    move/from16 v8, p7

    .local v8, "w":F
    move v14, v5

    move v15, v4

    sub-float/2addr v14, v15

    move v9, v14

    .line 384
    .local v9, "c":F
    const/high16 v14, 0x40000000    # 2.0f

    move v15, v6

    move/from16 v16, v5

    sub-float v15, v15, v16

    move/from16 v16, v9

    sub-float v15, v15, v16

    mul-float/2addr v14, v15

    move v10, v14

    .line 385
    .local v10, "b":F
    move v14, v7

    move v15, v6

    sub-float/2addr v14, v15

    move v15, v10

    sub-float/2addr v14, v15

    move v15, v9

    sub-float/2addr v14, v15

    move v11, v14

    .line 386
    .local v11, "a":F
    move v14, v11

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-nez v14, :cond_2

    .line 388
    move v14, v10

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-nez v14, :cond_0

    .line 390
    .line 416
    :goto_0
    return-void

    .line 392
    :cond_0
    move-object v14, v1

    move-object v15, v2

    move/from16 v16, v3

    move/from16 v17, v9

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v17, v0

    move/from16 v18, v10

    div-float v17, v17, v18

    move/from16 v18, v4

    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v21, v7

    move/from16 v22, v8

    invoke-direct/range {v14 .. v22}, Lcom/sun/prism/BasicStroke;->accumulateCubic([FIFFFFFF)V

    .line 416
    :cond_1
    :goto_1
    goto :goto_0

    .line 395
    :cond_2
    move v14, v10

    move v15, v10

    mul-float/2addr v14, v15

    const/high16 v15, 0x40800000    # 4.0f

    move/from16 v16, v11

    mul-float v15, v15, v16

    move/from16 v16, v9

    mul-float v15, v15, v16

    sub-float/2addr v14, v15

    move v12, v14

    .line 396
    .local v12, "d":F
    move v14, v12

    const/4 v15, 0x0

    cmpg-float v14, v14, v15

    if-gez v14, :cond_3

    .line 398
    goto :goto_0

    .line 400
    :cond_3
    move v14, v12

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-float v14, v14

    move v12, v14

    .line 406
    move v14, v10

    const/4 v15, 0x0

    cmpg-float v14, v14, v15

    if-gez v14, :cond_4

    .line 407
    move v14, v12

    neg-float v14, v14

    move v12, v14

    .line 409
    :cond_4
    move v14, v10

    move v15, v12

    add-float/2addr v14, v15

    const/high16 v15, -0x40000000    # -2.0f

    div-float/2addr v14, v15

    move v13, v14

    .line 411
    .local v13, "q":F
    move-object v14, v1

    move-object v15, v2

    move/from16 v16, v3

    move/from16 v17, v13

    move/from16 v18, v11

    div-float v17, v17, v18

    move/from16 v18, v4

    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v21, v7

    move/from16 v22, v8

    invoke-direct/range {v14 .. v22}, Lcom/sun/prism/BasicStroke;->accumulateCubic([FIFFFFFF)V

    .line 412
    move v14, v13

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-eqz v14, :cond_1

    .line 413
    move-object v14, v1

    move-object v15, v2

    move/from16 v16, v3

    move/from16 v17, v9

    move/from16 v18, v13

    div-float v17, v17, v18

    move/from16 v18, v4

    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v21, v7

    move/from16 v22, v8

    invoke-direct/range {v14 .. v22}, Lcom/sun/prism/BasicStroke;->accumulateCubic([FIFFFFFF)V

    goto :goto_1
.end method

.method private accumulateCubic([FIFFFFFF)V
    .locals 15

    .prologue
    .line 355
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/BasicStroke;
    move-object/from16 v1, p1

    .local v1, "bbox":[F
    move/from16 v2, p2

    .local v2, "off":I
    move/from16 v3, p3

    .local v3, "t":F
    move/from16 v4, p4

    .local v4, "v0":F
    move/from16 v5, p5

    .local v5, "vc0":F
    move/from16 v6, p6

    .local v6, "vc1":F
    move/from16 v7, p7

    .local v7, "v1":F
    move/from16 v8, p8

    .local v8, "w":F
    move v11, v3

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_1

    move v11, v3

    const/high16 v12, 0x3f800000    # 1.0f

    cmpg-float v11, v11, v12

    if-gez v11, :cond_1

    .line 356
    const/high16 v11, 0x3f800000    # 1.0f

    move v12, v3

    sub-float/2addr v11, v12

    move v9, v11

    .line 357
    .local v9, "u":F
    move v11, v4

    move v12, v9

    mul-float/2addr v11, v12

    move v12, v9

    mul-float/2addr v11, v12

    move v12, v9

    mul-float/2addr v11, v12

    const/high16 v12, 0x40400000    # 3.0f

    move v13, v5

    mul-float/2addr v12, v13

    move v13, v3

    mul-float/2addr v12, v13

    move v13, v9

    mul-float/2addr v12, v13

    move v13, v9

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    const/high16 v12, 0x40400000    # 3.0f

    move v13, v6

    mul-float/2addr v12, v13

    move v13, v3

    mul-float/2addr v12, v13

    move v13, v3

    mul-float/2addr v12, v13

    move v13, v9

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    move v12, v7

    move v13, v3

    mul-float/2addr v12, v13

    move v13, v3

    mul-float/2addr v12, v13

    move v13, v3

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    move v10, v11

    .line 361
    .local v10, "v":F
    move-object v11, v1

    move v12, v2

    aget v11, v11, v12

    move v12, v10

    move v13, v8

    sub-float/2addr v12, v13

    cmpl-float v11, v11, v12

    if-lez v11, :cond_0

    move-object v11, v1

    move v12, v2

    move v13, v10

    move v14, v8

    sub-float/2addr v13, v14

    aput v13, v11, v12

    .line 362
    :cond_0
    move-object v11, v1

    move v12, v2

    const/4 v13, 0x2

    add-int/lit8 v12, v12, 0x2

    aget v11, v11, v12

    move v12, v10

    move v13, v8

    add-float/2addr v12, v13

    cmpg-float v11, v11, v12

    if-gez v11, :cond_1

    move-object v11, v1

    move v12, v2

    const/4 v13, 0x2

    add-int/lit8 v12, v12, 0x2

    move v13, v10

    move v14, v8

    add-float/2addr v13, v14

    aput v13, v11, v12

    .line 364
    .end local v9    # "u":F
    .end local v10    # "v":F
    :cond_1
    return-void
.end method

.method private accumulateJoin(FFFFFFFFFF[FF)V
    .locals 26

    .prologue
    .line 625
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/BasicStroke;
    move/from16 v1, p1

    .local v1, "pdx":F
    move/from16 v2, p2

    .local v2, "pdy":F
    move/from16 v3, p3

    .local v3, "dx":F
    move/from16 v4, p4

    .local v4, "dy":F
    move/from16 v5, p5

    .local v5, "x0":F
    move/from16 v6, p6

    .local v6, "y0":F
    move/from16 v7, p7

    .local v7, "pox":F
    move/from16 v8, p8

    .local v8, "poy":F
    move/from16 v9, p9

    .local v9, "ox":F
    move/from16 v10, p10

    .local v10, "oy":F
    move-object/from16 v11, p11

    .local v11, "bbox":[F
    move/from16 v12, p12

    .local v12, "w":F
    move-object v13, v0

    iget v13, v13, Lcom/sun/prism/BasicStroke;->join:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_0

    .line 626
    move-object v13, v0

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v10

    move-object/from16 v20, v11

    invoke-direct/range {v13 .. v20}, Lcom/sun/prism/BasicStroke;->accumulateBevel(FFFFFF[F)V

    .line 634
    :goto_0
    return-void

    .line 627
    :cond_0
    move-object v13, v0

    iget v13, v13, Lcom/sun/prism/BasicStroke;->join:I

    if-nez v13, :cond_1

    .line 628
    move-object v13, v0

    move v14, v1

    move v15, v2

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v7

    move/from16 v19, v8

    move/from16 v20, v9

    move/from16 v21, v10

    move/from16 v22, v5

    move/from16 v23, v6

    move-object/from16 v24, v11

    move/from16 v25, v12

    invoke-direct/range {v13 .. v25}, Lcom/sun/prism/BasicStroke;->accumulateMiter(FFFFFFFFFF[FF)V

    goto :goto_0

    .line 630
    :cond_1
    move-object v13, v0

    move v14, v5

    move v15, v12

    sub-float/2addr v14, v15

    move v15, v6

    move/from16 v16, v12

    sub-float v15, v15, v16

    move/from16 v16, v5

    move/from16 v17, v12

    add-float v16, v16, v17

    move/from16 v17, v6

    move/from16 v18, v12

    add-float v17, v17, v18

    move-object/from16 v18, v11

    invoke-direct/range {v13 .. v18}, Lcom/sun/prism/BasicStroke;->accumulateOrdered(FFFF[F)V

    goto :goto_0
.end method

.method private accumulateMiter(FFFFFFFFFF[FF)V
    .locals 28

    .prologue
    .line 654
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/prism/BasicStroke;
    move/from16 v2, p1

    .local v2, "pdx":F
    move/from16 v3, p2

    .local v3, "pdy":F
    move/from16 v4, p3

    .local v4, "dx":F
    move/from16 v5, p4

    .local v5, "dy":F
    move/from16 v6, p5

    .local v6, "pox":F
    move/from16 v7, p6

    .local v7, "poy":F
    move/from16 v8, p7

    .local v8, "ox":F
    move/from16 v9, p8

    .local v9, "oy":F
    move/from16 v10, p9

    .local v10, "x0":F
    move/from16 v11, p10

    .local v11, "y0":F
    move-object/from16 v12, p11

    .local v12, "bbox":[F
    move/from16 v13, p12

    .local v13, "w":F
    move-object/from16 v17, v1

    move/from16 v18, v10

    move/from16 v19, v11

    move/from16 v20, v6

    move/from16 v21, v7

    move/from16 v22, v8

    move/from16 v23, v9

    move-object/from16 v24, v12

    invoke-direct/range {v17 .. v24}, Lcom/sun/prism/BasicStroke;->accumulateBevel(FFFFFF[F)V

    .line 656
    move-object/from16 v17, v1

    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v5

    invoke-direct/range {v17 .. v21}, Lcom/sun/prism/BasicStroke;->isCW(FFFF)Z

    move-result v17

    move/from16 v14, v17

    .line 658
    .local v14, "cw":Z
    move/from16 v17, v14

    if-eqz v17, :cond_0

    .line 659
    move/from16 v17, v6

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v17, v0

    move/from16 v6, v17

    .line 660
    move/from16 v17, v7

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v17, v0

    move/from16 v7, v17

    .line 661
    move/from16 v17, v8

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v17, v0

    move/from16 v8, v17

    .line 662
    move/from16 v17, v9

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v17, v0

    move/from16 v9, v17

    .line 665
    :cond_0
    move-object/from16 v17, v1

    move/from16 v18, v10

    move/from16 v19, v2

    sub-float v18, v18, v19

    move/from16 v19, v6

    add-float v18, v18, v19

    move/from16 v19, v11

    move/from16 v20, v3

    sub-float v19, v19, v20

    move/from16 v20, v7

    add-float v19, v19, v20

    move/from16 v20, v10

    move/from16 v21, v6

    add-float v20, v20, v21

    move/from16 v21, v11

    move/from16 v22, v7

    add-float v21, v21, v22

    move/from16 v22, v10

    move/from16 v23, v4

    add-float v22, v22, v23

    move/from16 v23, v8

    add-float v22, v22, v23

    move/from16 v23, v11

    move/from16 v24, v5

    add-float v23, v23, v24

    move/from16 v24, v9

    add-float v23, v23, v24

    move/from16 v24, v10

    move/from16 v25, v8

    add-float v24, v24, v25

    move/from16 v25, v11

    move/from16 v26, v9

    add-float v25, v25, v26

    move-object/from16 v26, v1

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/prism/BasicStroke;->tmpMiter:[F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-direct/range {v17 .. v27}, Lcom/sun/prism/BasicStroke;->computeMiter(FFFFFFFF[FI)V

    .line 668
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/prism/BasicStroke;->tmpMiter:[F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    move/from16 v18, v10

    sub-float v17, v17, v18

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/prism/BasicStroke;->tmpMiter:[F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    move/from16 v19, v10

    sub-float v18, v18, v19

    mul-float v17, v17, v18

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/prism/BasicStroke;->tmpMiter:[F

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    move/from16 v19, v11

    sub-float v18, v18, v19

    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/prism/BasicStroke;->tmpMiter:[F

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v19, v19, v20

    move/from16 v20, v11

    sub-float v19, v19, v20

    mul-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v15, v17

    .line 670
    .local v15, "lenSq":F
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/prism/BasicStroke;->miterLimit:F

    move/from16 v17, v0

    move/from16 v18, v13

    mul-float v17, v17, v18

    move/from16 v16, v17

    .line 671
    .local v16, "miterLimitWidth":F
    move/from16 v17, v15

    move/from16 v18, v16

    move/from16 v19, v16

    mul-float v18, v18, v19

    cmpg-float v17, v17, v18

    if-gez v17, :cond_1

    .line 672
    move-object/from16 v17, v1

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/prism/BasicStroke;->tmpMiter:[F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/prism/BasicStroke;->tmpMiter:[F

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v19, v19, v20

    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/prism/BasicStroke;->tmpMiter:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    move-object/from16 v21, v1

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/prism/BasicStroke;->tmpMiter:[F

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget v21, v21, v22

    move-object/from16 v22, v12

    invoke-direct/range {v17 .. v22}, Lcom/sun/prism/BasicStroke;->accumulateOrdered(FFFF[F)V

    .line 674
    :cond_1
    return-void
.end method

.method private accumulateOrdered(FFFF[F)V
    .locals 9

    .prologue
    .line 615
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/BasicStroke;
    move v1, p1

    .local v1, "o0":F
    move v2, p2

    .local v2, "o1":F
    move v3, p3

    .local v3, "o2":F
    move v4, p4

    .local v4, "o3":F
    move-object v5, p5

    .local v5, "bbox":[F
    move v6, v1

    move-object v7, v5

    const/4 v8, 0x0

    aget v7, v7, v8

    cmpg-float v6, v6, v7

    if-gez v6, :cond_0

    move-object v6, v5

    const/4 v7, 0x0

    move v8, v1

    aput v8, v6, v7

    .line 616
    :cond_0
    move v6, v3

    move-object v7, v5

    const/4 v8, 0x2

    aget v7, v7, v8

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    move-object v6, v5

    const/4 v7, 0x2

    move v8, v3

    aput v8, v6, v7

    .line 617
    :cond_1
    move v6, v2

    move-object v7, v5

    const/4 v8, 0x1

    aget v7, v7, v8

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    move-object v6, v5

    const/4 v7, 0x1

    move v8, v2

    aput v8, v6, v7

    .line 618
    :cond_2
    move v6, v4

    move-object v7, v5

    const/4 v8, 0x3

    aget v7, v7, v8

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    move-object v6, v5

    const/4 v7, 0x3

    move v8, v4

    aput v8, v6, v7

    .line 619
    :cond_3
    return-void
.end method

.method private accumulateQuad([FIFFFF)V
    .locals 16

    .prologue
    .line 338
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/BasicStroke;
    move-object/from16 v1, p1

    .local v1, "bbox":[F
    move/from16 v2, p2

    .local v2, "off":I
    move/from16 v3, p3

    .local v3, "v0":F
    move/from16 v4, p4

    .local v4, "vc":F
    move/from16 v5, p5

    .local v5, "v1":F
    move/from16 v6, p6

    .local v6, "w":F
    move v12, v3

    move v13, v4

    sub-float/2addr v12, v13

    move v7, v12

    .line 339
    .local v7, "num":F
    move v12, v5

    move v13, v4

    sub-float/2addr v12, v13

    move v13, v7

    add-float/2addr v12, v13

    move v8, v12

    .line 340
    .local v8, "den":F
    move v12, v8

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-eqz v12, :cond_1

    .line 341
    move v12, v7

    move v13, v8

    div-float/2addr v12, v13

    move v9, v12

    .line 342
    .local v9, "t":F
    move v12, v9

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_1

    move v12, v9

    const/high16 v13, 0x3f800000    # 1.0f

    cmpg-float v12, v12, v13

    if-gez v12, :cond_1

    .line 343
    const/high16 v12, 0x3f800000    # 1.0f

    move v13, v9

    sub-float/2addr v12, v13

    move v10, v12

    .line 344
    .local v10, "u":F
    move v12, v3

    move v13, v10

    mul-float/2addr v12, v13

    move v13, v10

    mul-float/2addr v12, v13

    const/high16 v13, 0x40000000    # 2.0f

    move v14, v4

    mul-float/2addr v13, v14

    move v14, v9

    mul-float/2addr v13, v14

    move v14, v10

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    move v13, v5

    move v14, v9

    mul-float/2addr v13, v14

    move v14, v9

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    move v11, v12

    .line 345
    .local v11, "v":F
    move-object v12, v1

    move v13, v2

    aget v12, v12, v13

    move v13, v11

    move v14, v6

    sub-float/2addr v13, v14

    cmpl-float v12, v12, v13

    if-lez v12, :cond_0

    move-object v12, v1

    move v13, v2

    move v14, v11

    move v15, v6

    sub-float/2addr v14, v15

    aput v14, v12, v13

    .line 346
    :cond_0
    move-object v12, v1

    move v13, v2

    const/4 v14, 0x2

    add-int/lit8 v13, v13, 0x2

    aget v12, v12, v13

    move v13, v11

    move v14, v6

    add-float/2addr v13, v14

    cmpg-float v12, v12, v13

    if-gez v12, :cond_1

    move-object v12, v1

    move v13, v2

    const/4 v14, 0x2

    add-int/lit8 v13, v13, 0x2

    move v14, v11

    move v15, v6

    add-float/2addr v14, v15

    aput v14, v12, v13

    .line 349
    .end local v9    # "t":F
    .end local v10    # "u":F
    .end local v11    # "v":F
    :cond_1
    return-void
.end method

.method private computeMiter(FFFFFFFF[FI)V
    .locals 22

    .prologue
    .line 300
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/BasicStroke;
    move/from16 v1, p1

    .local v1, "x0":F
    move/from16 v2, p2

    .local v2, "y0":F
    move/from16 v3, p3

    .local v3, "x1":F
    move/from16 v4, p4

    .local v4, "y1":F
    move/from16 v5, p5

    .local v5, "x0p":F
    move/from16 v6, p6

    .local v6, "y0p":F
    move/from16 v7, p7

    .local v7, "x1p":F
    move/from16 v8, p8

    .local v8, "y1p":F
    move-object/from16 v9, p9

    .local v9, "m":[F
    move/from16 v10, p10

    .local v10, "off":I
    move/from16 v17, v3

    move/from16 v18, v1

    sub-float v17, v17, v18

    move/from16 v11, v17

    .line 301
    .local v11, "x10":F
    move/from16 v17, v4

    move/from16 v18, v2

    sub-float v17, v17, v18

    move/from16 v12, v17

    .line 302
    .local v12, "y10":F
    move/from16 v17, v7

    move/from16 v18, v5

    sub-float v17, v17, v18

    move/from16 v13, v17

    .line 303
    .local v13, "x10p":F
    move/from16 v17, v8

    move/from16 v18, v6

    sub-float v17, v17, v18

    move/from16 v14, v17

    .line 314
    .local v14, "y10p":F
    move/from16 v17, v11

    move/from16 v18, v14

    mul-float v17, v17, v18

    move/from16 v18, v13

    move/from16 v19, v12

    mul-float v18, v18, v19

    sub-float v17, v17, v18

    move/from16 v15, v17

    .line 315
    .local v15, "den":F
    move/from16 v17, v13

    move/from16 v18, v2

    move/from16 v19, v6

    sub-float v18, v18, v19

    mul-float v17, v17, v18

    move/from16 v18, v14

    move/from16 v19, v1

    move/from16 v20, v5

    sub-float v19, v19, v20

    mul-float v18, v18, v19

    sub-float v17, v17, v18

    move/from16 v16, v17

    .line 316
    .local v16, "t":F
    move/from16 v17, v16

    move/from16 v18, v15

    div-float v17, v17, v18

    move/from16 v16, v17

    .line 317
    move-object/from16 v17, v9

    move/from16 v18, v10

    add-int/lit8 v10, v10, 0x1

    move/from16 v19, v1

    move/from16 v20, v16

    move/from16 v21, v11

    mul-float v20, v20, v21

    add-float v19, v19, v20

    aput v19, v17, v18

    .line 318
    move-object/from16 v17, v9

    move/from16 v18, v10

    move/from16 v19, v2

    move/from16 v20, v16

    move/from16 v21, v12

    mul-float v20, v20, v21

    add-float v19, v19, v20

    aput v19, v17, v18

    .line 319
    return-void
.end method

.method private computeOffset(FFF[FI)V
    .locals 17

    .prologue
    .line 285
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/prism/BasicStroke;
    move/from16 v2, p1

    .local v2, "lx":F
    move/from16 v3, p2

    .local v3, "ly":F
    move/from16 v4, p3

    .local v4, "w":F
    move-object/from16 v5, p4

    .local v5, "m":[F
    move/from16 v6, p5

    .local v6, "off":I
    move v8, v2

    move v9, v2

    mul-float/2addr v8, v9

    move v9, v3

    move v10, v3

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v8, v8

    move v7, v8

    .line 286
    .local v7, "len":F
    move v8, v7

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-nez v8, :cond_0

    .line 287
    move-object v8, v5

    move v9, v6

    const/4 v10, 0x0

    add-int/lit8 v9, v9, 0x0

    move-object v10, v5

    move v11, v6

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    const/4 v12, 0x0

    move-object v14, v10

    move v15, v11

    move/from16 v16, v12

    move/from16 v10, v16

    move-object v11, v14

    move v12, v15

    move/from16 v13, v16

    aput v13, v11, v12

    aput v10, v8, v9

    .line 292
    :goto_0
    return-void

    .line 289
    :cond_0
    move-object v8, v5

    move v9, v6

    const/4 v10, 0x0

    add-int/lit8 v9, v9, 0x0

    move v10, v3

    move v11, v4

    mul-float/2addr v10, v11

    move v11, v7

    div-float/2addr v10, v11

    aput v10, v8, v9

    .line 290
    move-object v8, v5

    move v9, v6

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move v10, v2

    move v11, v4

    mul-float/2addr v10, v11

    neg-float v10, v10

    move v11, v7

    div-float/2addr v10, v11

    aput v10, v8, v9

    goto :goto_0
.end method

.method private isCW(FFFF)Z
    .locals 8

    .prologue
    .line 280
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/BasicStroke;
    move v1, p1

    .local v1, "dx1":F
    move v2, p2

    .local v2, "dy1":F
    move v3, p3

    .local v3, "dx2":F
    move v4, p4

    .local v4, "dy2":F
    move v5, v1

    move v6, v4

    mul-float/2addr v5, v6

    move v6, v2

    move v7, v3

    mul-float/2addr v6, v7

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    move v0, v5

    .end local v0    # "this":Lcom/sun/prism/BasicStroke;
    return v0

    .restart local v0    # "this":Lcom/sun/prism/BasicStroke;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method static makeBeveledRect(FFFFF)Lcom/sun/javafx/geom/Shape;
    .locals 15

    .prologue
    .line 775
    move v0, p0

    .local v0, "rx":F
    move/from16 v1, p1

    .local v1, "ry":F
    move/from16 v2, p2

    .local v2, "rw":F
    move/from16 v3, p3

    .local v3, "rh":F
    move/from16 v4, p4

    .local v4, "d":F
    move v10, v0

    move v5, v10

    .line 776
    .local v5, "rx0":F
    move v10, v1

    move v6, v10

    .line 777
    .local v6, "ry0":F
    move v10, v0

    move v11, v2

    add-float/2addr v10, v11

    move v7, v10

    .line 778
    .local v7, "rx1":F
    move v10, v1

    move v11, v3

    add-float/2addr v10, v11

    move v8, v10

    .line 779
    .local v8, "ry1":F
    new-instance v10, Lcom/sun/javafx/geom/Path2D;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Lcom/sun/javafx/geom/Path2D;-><init>()V

    move-object v9, v10

    .line 780
    .local v9, "p":Lcom/sun/javafx/geom/Path2D;
    move-object v10, v9

    move v11, v5

    move v12, v6

    move v13, v4

    sub-float/2addr v12, v13

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/geom/Path2D;->moveTo(FF)V

    .line 781
    move-object v10, v9

    move v11, v7

    move v12, v6

    move v13, v4

    sub-float/2addr v12, v13

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/geom/Path2D;->lineTo(FF)V

    .line 782
    move-object v10, v9

    move v11, v7

    move v12, v4

    add-float/2addr v11, v12

    move v12, v6

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/geom/Path2D;->lineTo(FF)V

    .line 783
    move-object v10, v9

    move v11, v7

    move v12, v4

    add-float/2addr v11, v12

    move v12, v8

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/geom/Path2D;->lineTo(FF)V

    .line 784
    move-object v10, v9

    move v11, v7

    move v12, v8

    move v13, v4

    add-float/2addr v12, v13

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/geom/Path2D;->lineTo(FF)V

    .line 785
    move-object v10, v9

    move v11, v5

    move v12, v8

    move v13, v4

    add-float/2addr v12, v13

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/geom/Path2D;->lineTo(FF)V

    .line 786
    move-object v10, v9

    move v11, v5

    move v12, v4

    sub-float/2addr v11, v12

    move v12, v8

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/geom/Path2D;->lineTo(FF)V

    .line 787
    move-object v10, v9

    move v11, v5

    move v12, v4

    sub-float/2addr v11, v12

    move v12, v6

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/geom/Path2D;->lineTo(FF)V

    .line 788
    move-object v10, v9

    invoke-virtual {v10}, Lcom/sun/javafx/geom/Path2D;->closePath()V

    .line 789
    move-object v10, v9

    move-object v0, v10

    .end local v0    # "rx":F
    return-object v0
.end method


# virtual methods
.method public accumulateShapeBounds([FLcom/sun/javafx/geom/Shape;Lcom/sun/javafx/geom/transform/BaseTransform;)V
    .locals 42

    .prologue
    .line 429
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/prism/BasicStroke;
    move-object/from16 v3, p1

    .local v3, "bbox":[F
    move-object/from16 v4, p2

    .local v4, "shape":Lcom/sun/javafx/geom/Shape;
    move-object/from16 v5, p3

    .local v5, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget v0, v0, Lcom/sun/prism/BasicStroke;->type:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_0

    .line 430
    move-object/from16 v28, v3

    move-object/from16 v29, v4

    move-object/from16 v30, v5

    invoke-static/range {v28 .. v30}, Lcom/sun/javafx/geom/Shape;->accumulate([FLcom/sun/javafx/geom/Shape;Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 431
    .line 595
    :goto_0
    return-void

    .line 433
    :cond_0
    move-object/from16 v28, v5

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/geom/transform/BaseTransform;->getType()I

    move-result v28

    const/16 v29, -0x5c

    and-int/lit8 v28, v28, -0x5c

    if-eqz v28, :cond_1

    .line 438
    move-object/from16 v28, v3

    move-object/from16 v29, v2

    move-object/from16 v30, v4

    invoke-virtual/range {v29 .. v30}, Lcom/sun/prism/BasicStroke;->createStrokedShape(Lcom/sun/javafx/geom/Shape;)Lcom/sun/javafx/geom/Shape;

    move-result-object v29

    move-object/from16 v30, v5

    invoke-static/range {v28 .. v30}, Lcom/sun/javafx/geom/Shape;->accumulate([FLcom/sun/javafx/geom/Shape;Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 439
    goto :goto_0

    .line 441
    :cond_1
    move-object/from16 v28, v4

    move-object/from16 v29, v5

    invoke-virtual/range {v28 .. v29}, Lcom/sun/javafx/geom/Shape;->getPathIterator(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/PathIterator;

    move-result-object v28

    move-object/from16 v6, v28

    .line 442
    .local v6, "pi":Lcom/sun/javafx/geom/PathIterator;
    const/16 v28, 0x1

    move/from16 v7, v28

    .line 443
    .local v7, "lastSegmentMove":Z
    const/16 v28, 0x6

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    move-object/from16 v8, v28

    .line 444
    .local v8, "coords":[F
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget v0, v0, Lcom/sun/prism/BasicStroke;->type:I

    move/from16 v28, v0

    if-nez v28, :cond_4

    move-object/from16 v28, v2

    invoke-virtual/range {v28 .. v28}, Lcom/sun/prism/BasicStroke;->getLineWidth()F

    move-result v28

    const/high16 v29, 0x40000000    # 2.0f

    div-float v28, v28, v29

    :goto_1
    move/from16 v9, v28

    .line 446
    .local v9, "w":F
    move/from16 v28, v9

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    move-object/from16 v30, v5

    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxx()D

    move-result-wide v30

    move-object/from16 v32, v5

    invoke-virtual/range {v32 .. v32}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyx()D

    move-result-wide v32

    invoke-static/range {v30 .. v33}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v30

    mul-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v28, v0

    move/from16 v9, v28

    .line 448
    const/16 v28, 0x0

    move/from16 v10, v28

    .local v10, "sx":F
    const/16 v28, 0x0

    move/from16 v11, v28

    .local v11, "sy":F
    const/16 v28, 0x0

    move/from16 v12, v28

    .local v12, "x0":F
    const/16 v28, 0x0

    move/from16 v13, v28

    .line 450
    .local v13, "y0":F
    const/16 v28, 0x0

    move/from16 v16, v28

    .local v16, "sdx":F
    const/16 v28, 0x0

    move/from16 v17, v28

    .local v17, "sdy":F
    const/16 v28, 0x0

    move/from16 v20, v28

    .local v20, "pdx":F
    const/16 v28, 0x0

    move/from16 v21, v28

    .line 452
    .local v21, "pdy":F
    const/16 v28, 0x4

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    move-object/from16 v22, v28

    .line 454
    .local v22, "o":[F
    const/16 v28, 0x0

    move/from16 v23, v28

    .local v23, "pox":F
    const/16 v28, 0x0

    move/from16 v24, v28

    .local v24, "poy":F
    const/16 v28, 0x0

    move/from16 v25, v28

    .local v25, "sox":F
    const/16 v28, 0x0

    move/from16 v26, v28

    .line 456
    .local v26, "soy":F
    :goto_2
    move-object/from16 v28, v6

    invoke-interface/range {v28 .. v28}, Lcom/sun/javafx/geom/PathIterator;->isDone()Z

    move-result v28

    if-nez v28, :cond_17

    .line 457
    move-object/from16 v28, v6

    move-object/from16 v29, v8

    invoke-interface/range {v28 .. v29}, Lcom/sun/javafx/geom/PathIterator;->currentSegment([F)I

    move-result v28

    move/from16 v27, v28

    .line 458
    .local v27, "cur":I
    move/from16 v28, v27

    packed-switch v28, :pswitch_data_0

    .line 587
    :cond_2
    :goto_3
    move/from16 v28, v27

    if-eqz v28, :cond_3

    move/from16 v28, v27

    const/16 v29, 0x4

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_16

    :cond_3
    const/16 v28, 0x1

    :goto_4
    move/from16 v7, v28

    .line 588
    move-object/from16 v28, v6

    invoke-interface/range {v28 .. v28}, Lcom/sun/javafx/geom/PathIterator;->next()V

    .line 589
    goto :goto_2

    .line 444
    .end local v9    # "w":F
    .end local v10    # "sx":F
    .end local v11    # "sy":F
    .end local v12    # "x0":F
    .end local v13    # "y0":F
    .end local v16    # "sdx":F
    .end local v17    # "sdy":F
    .end local v20    # "pdx":F
    .end local v21    # "pdy":F
    .end local v22    # "o":[F
    .end local v23    # "pox":F
    .end local v24    # "poy":F
    .end local v25    # "sox":F
    .end local v26    # "soy":F
    .end local v27    # "cur":I
    :cond_4
    move-object/from16 v28, v2

    invoke-virtual/range {v28 .. v28}, Lcom/sun/prism/BasicStroke;->getLineWidth()F

    move-result v28

    goto/16 :goto_1

    .line 460
    .restart local v9    # "w":F
    .restart local v10    # "sx":F
    .restart local v11    # "sy":F
    .restart local v12    # "x0":F
    .restart local v13    # "y0":F
    .restart local v16    # "sdx":F
    .restart local v17    # "sdy":F
    .restart local v20    # "pdx":F
    .restart local v21    # "pdy":F
    .restart local v22    # "o":[F
    .restart local v23    # "pox":F
    .restart local v24    # "poy":F
    .restart local v25    # "sox":F
    .restart local v26    # "soy":F
    .restart local v27    # "cur":I
    :pswitch_0
    move/from16 v28, v7

    if-nez v28, :cond_5

    .line 461
    move-object/from16 v28, v2

    move/from16 v29, v20

    move/from16 v30, v21

    move/from16 v31, v12

    move/from16 v32, v13

    move/from16 v33, v23

    move/from16 v34, v24

    move-object/from16 v35, v3

    move/from16 v36, v9

    invoke-direct/range {v28 .. v36}, Lcom/sun/prism/BasicStroke;->accumulateCap(FFFFFF[FF)V

    .line 462
    move-object/from16 v28, v2

    move/from16 v29, v16

    move/from16 v0, v29

    neg-float v0, v0

    move/from16 v29, v0

    move/from16 v30, v17

    move/from16 v0, v30

    neg-float v0, v0

    move/from16 v30, v0

    move/from16 v31, v10

    move/from16 v32, v11

    move/from16 v33, v25

    move/from16 v0, v33

    neg-float v0, v0

    move/from16 v33, v0

    move/from16 v34, v26

    move/from16 v0, v34

    neg-float v0, v0

    move/from16 v34, v0

    move-object/from16 v35, v3

    move/from16 v36, v9

    invoke-direct/range {v28 .. v36}, Lcom/sun/prism/BasicStroke;->accumulateCap(FFFFFF[FF)V

    .line 465
    :cond_5
    move-object/from16 v28, v8

    const/16 v29, 0x0

    aget v28, v28, v29

    move/from16 v41, v28

    move/from16 v28, v41

    move/from16 v29, v41

    move/from16 v10, v29

    move/from16 v12, v28

    .line 466
    move-object/from16 v28, v8

    const/16 v29, 0x1

    aget v28, v28, v29

    move/from16 v41, v28

    move/from16 v28, v41

    move/from16 v29, v41

    move/from16 v11, v29

    move/from16 v13, v28

    .line 467
    goto/16 :goto_3

    .line 469
    :pswitch_1
    move-object/from16 v28, v8

    const/16 v29, 0x0

    aget v28, v28, v29

    move/from16 v14, v28

    .line 470
    .local v14, "x1":F
    move-object/from16 v28, v8

    const/16 v29, 0x1

    aget v28, v28, v29

    move/from16 v15, v28

    .line 471
    .local v15, "y1":F
    move/from16 v28, v14

    move/from16 v29, v12

    sub-float v28, v28, v29

    move/from16 v18, v28

    .line 472
    .local v18, "dx":F
    move/from16 v28, v15

    move/from16 v29, v13

    sub-float v28, v28, v29

    move/from16 v19, v28

    .line 473
    .local v19, "dy":F
    move/from16 v28, v18

    const/16 v29, 0x0

    cmpl-float v28, v28, v29

    if-nez v28, :cond_6

    move/from16 v28, v19

    const/16 v29, 0x0

    cmpl-float v28, v28, v29

    if-nez v28, :cond_6

    .line 477
    const/high16 v28, 0x3f800000    # 1.0f

    move/from16 v18, v28

    .line 480
    :cond_6
    move-object/from16 v28, v2

    move/from16 v29, v18

    move/from16 v30, v19

    move/from16 v31, v9

    move-object/from16 v32, v22

    const/16 v33, 0x0

    invoke-direct/range {v28 .. v33}, Lcom/sun/prism/BasicStroke;->computeOffset(FFF[FI)V

    .line 482
    move/from16 v28, v7

    if-nez v28, :cond_7

    .line 483
    move-object/from16 v28, v2

    move/from16 v29, v20

    move/from16 v30, v21

    move/from16 v31, v18

    move/from16 v32, v19

    move/from16 v33, v12

    move/from16 v34, v13

    move/from16 v35, v23

    move/from16 v36, v24

    move-object/from16 v37, v22

    const/16 v38, 0x0

    aget v37, v37, v38

    move-object/from16 v38, v22

    const/16 v39, 0x1

    aget v38, v38, v39

    move-object/from16 v39, v3

    move/from16 v40, v9

    invoke-direct/range {v28 .. v40}, Lcom/sun/prism/BasicStroke;->accumulateJoin(FFFFFFFFFF[FF)V

    .line 486
    :cond_7
    move/from16 v28, v14

    move/from16 v12, v28

    .line 487
    move/from16 v28, v15

    move/from16 v13, v28

    .line 488
    move/from16 v28, v18

    move/from16 v20, v28

    .line 489
    move/from16 v28, v19

    move/from16 v21, v28

    .line 490
    move-object/from16 v28, v22

    const/16 v29, 0x0

    aget v28, v28, v29

    move/from16 v23, v28

    .line 491
    move-object/from16 v28, v22

    const/16 v29, 0x1

    aget v28, v28, v29

    move/from16 v24, v28

    .line 492
    move/from16 v28, v7

    if-eqz v28, :cond_2

    .line 493
    move/from16 v28, v20

    move/from16 v16, v28

    .line 494
    move/from16 v28, v21

    move/from16 v17, v28

    .line 495
    move/from16 v28, v23

    move/from16 v25, v28

    .line 496
    move/from16 v28, v24

    move/from16 v26, v28

    goto/16 :goto_3

    .line 500
    .end local v14    # "x1":F
    .end local v15    # "y1":F
    .end local v18    # "dx":F
    .end local v19    # "dy":F
    :pswitch_2
    move-object/from16 v28, v8

    const/16 v29, 0x2

    aget v28, v28, v29

    move/from16 v14, v28

    .line 501
    .restart local v14    # "x1":F
    move-object/from16 v28, v8

    const/16 v29, 0x3

    aget v28, v28, v29

    move/from16 v15, v28

    .line 502
    .restart local v15    # "y1":F
    move-object/from16 v28, v8

    const/16 v29, 0x0

    aget v28, v28, v29

    move/from16 v29, v12

    sub-float v28, v28, v29

    move/from16 v18, v28

    .line 503
    .restart local v18    # "dx":F
    move-object/from16 v28, v8

    const/16 v29, 0x1

    aget v28, v28, v29

    move/from16 v29, v13

    sub-float v28, v28, v29

    move/from16 v19, v28

    .line 505
    .restart local v19    # "dy":F
    move-object/from16 v28, v2

    move/from16 v29, v18

    move/from16 v30, v19

    move/from16 v31, v9

    move-object/from16 v32, v22

    const/16 v33, 0x0

    invoke-direct/range {v28 .. v33}, Lcom/sun/prism/BasicStroke;->computeOffset(FFF[FI)V

    .line 506
    move/from16 v28, v7

    if-nez v28, :cond_8

    .line 507
    move-object/from16 v28, v2

    move/from16 v29, v20

    move/from16 v30, v21

    move/from16 v31, v18

    move/from16 v32, v19

    move/from16 v33, v12

    move/from16 v34, v13

    move/from16 v35, v23

    move/from16 v36, v24

    move-object/from16 v37, v22

    const/16 v38, 0x0

    aget v37, v37, v38

    move-object/from16 v38, v22

    const/16 v39, 0x1

    aget v38, v38, v39

    move-object/from16 v39, v3

    move/from16 v40, v9

    invoke-direct/range {v28 .. v40}, Lcom/sun/prism/BasicStroke;->accumulateJoin(FFFFFFFFFF[FF)V

    .line 510
    :cond_8
    move-object/from16 v28, v3

    const/16 v29, 0x0

    aget v28, v28, v29

    move-object/from16 v29, v8

    const/16 v30, 0x0

    aget v29, v29, v30

    move/from16 v30, v9

    sub-float v29, v29, v30

    cmpl-float v28, v28, v29

    if-gtz v28, :cond_9

    move-object/from16 v28, v3

    const/16 v29, 0x2

    aget v28, v28, v29

    move-object/from16 v29, v8

    const/16 v30, 0x0

    aget v29, v29, v30

    move/from16 v30, v9

    add-float v29, v29, v30

    cmpg-float v28, v28, v29

    if-gez v28, :cond_a

    .line 511
    :cond_9
    move-object/from16 v28, v2

    move-object/from16 v29, v3

    const/16 v30, 0x0

    move/from16 v31, v12

    move-object/from16 v32, v8

    const/16 v33, 0x0

    aget v32, v32, v33

    move/from16 v33, v14

    move/from16 v34, v9

    invoke-direct/range {v28 .. v34}, Lcom/sun/prism/BasicStroke;->accumulateQuad([FIFFFF)V

    .line 513
    :cond_a
    move-object/from16 v28, v3

    const/16 v29, 0x1

    aget v28, v28, v29

    move-object/from16 v29, v8

    const/16 v30, 0x1

    aget v29, v29, v30

    move/from16 v30, v9

    sub-float v29, v29, v30

    cmpl-float v28, v28, v29

    if-gtz v28, :cond_b

    move-object/from16 v28, v3

    const/16 v29, 0x3

    aget v28, v28, v29

    move-object/from16 v29, v8

    const/16 v30, 0x1

    aget v29, v29, v30

    move/from16 v30, v9

    add-float v29, v29, v30

    cmpg-float v28, v28, v29

    if-gez v28, :cond_c

    .line 514
    :cond_b
    move-object/from16 v28, v2

    move-object/from16 v29, v3

    const/16 v30, 0x1

    move/from16 v31, v13

    move-object/from16 v32, v8

    const/16 v33, 0x1

    aget v32, v32, v33

    move/from16 v33, v15

    move/from16 v34, v9

    invoke-direct/range {v28 .. v34}, Lcom/sun/prism/BasicStroke;->accumulateQuad([FIFFFF)V

    .line 516
    :cond_c
    move/from16 v28, v14

    move/from16 v12, v28

    .line 517
    move/from16 v28, v15

    move/from16 v13, v28

    .line 518
    move/from16 v28, v7

    if-eqz v28, :cond_d

    .line 519
    move/from16 v28, v18

    move/from16 v16, v28

    .line 520
    move/from16 v28, v19

    move/from16 v17, v28

    .line 521
    move-object/from16 v28, v22

    const/16 v29, 0x0

    aget v28, v28, v29

    move/from16 v25, v28

    .line 522
    move-object/from16 v28, v22

    const/16 v29, 0x1

    aget v28, v28, v29

    move/from16 v26, v28

    .line 524
    :cond_d
    move/from16 v28, v14

    move-object/from16 v29, v8

    const/16 v30, 0x0

    aget v29, v29, v30

    sub-float v28, v28, v29

    move/from16 v20, v28

    .line 525
    move/from16 v28, v15

    move-object/from16 v29, v8

    const/16 v30, 0x1

    aget v29, v29, v30

    sub-float v28, v28, v29

    move/from16 v21, v28

    .line 526
    move-object/from16 v28, v2

    move/from16 v29, v20

    move/from16 v30, v21

    move/from16 v31, v9

    move-object/from16 v32, v22

    const/16 v33, 0x0

    invoke-direct/range {v28 .. v33}, Lcom/sun/prism/BasicStroke;->computeOffset(FFF[FI)V

    .line 527
    move-object/from16 v28, v22

    const/16 v29, 0x0

    aget v28, v28, v29

    move/from16 v23, v28

    .line 528
    move-object/from16 v28, v22

    const/16 v29, 0x1

    aget v28, v28, v29

    move/from16 v24, v28

    .line 529
    goto/16 :goto_3

    .line 531
    .end local v14    # "x1":F
    .end local v15    # "y1":F
    .end local v18    # "dx":F
    .end local v19    # "dy":F
    :pswitch_3
    move-object/from16 v28, v8

    const/16 v29, 0x4

    aget v28, v28, v29

    move/from16 v14, v28

    .line 532
    .restart local v14    # "x1":F
    move-object/from16 v28, v8

    const/16 v29, 0x5

    aget v28, v28, v29

    move/from16 v15, v28

    .line 533
    .restart local v15    # "y1":F
    move-object/from16 v28, v8

    const/16 v29, 0x0

    aget v28, v28, v29

    move/from16 v29, v12

    sub-float v28, v28, v29

    move/from16 v18, v28

    .line 534
    .restart local v18    # "dx":F
    move-object/from16 v28, v8

    const/16 v29, 0x1

    aget v28, v28, v29

    move/from16 v29, v13

    sub-float v28, v28, v29

    move/from16 v19, v28

    .line 536
    .restart local v19    # "dy":F
    move-object/from16 v28, v2

    move/from16 v29, v18

    move/from16 v30, v19

    move/from16 v31, v9

    move-object/from16 v32, v22

    const/16 v33, 0x0

    invoke-direct/range {v28 .. v33}, Lcom/sun/prism/BasicStroke;->computeOffset(FFF[FI)V

    .line 537
    move/from16 v28, v7

    if-nez v28, :cond_e

    .line 538
    move-object/from16 v28, v2

    move/from16 v29, v20

    move/from16 v30, v21

    move/from16 v31, v18

    move/from16 v32, v19

    move/from16 v33, v12

    move/from16 v34, v13

    move/from16 v35, v23

    move/from16 v36, v24

    move-object/from16 v37, v22

    const/16 v38, 0x0

    aget v37, v37, v38

    move-object/from16 v38, v22

    const/16 v39, 0x1

    aget v38, v38, v39

    move-object/from16 v39, v3

    move/from16 v40, v9

    invoke-direct/range {v28 .. v40}, Lcom/sun/prism/BasicStroke;->accumulateJoin(FFFFFFFFFF[FF)V

    .line 541
    :cond_e
    move-object/from16 v28, v3

    const/16 v29, 0x0

    aget v28, v28, v29

    move-object/from16 v29, v8

    const/16 v30, 0x0

    aget v29, v29, v30

    move/from16 v30, v9

    sub-float v29, v29, v30

    cmpl-float v28, v28, v29

    if-gtz v28, :cond_f

    move-object/from16 v28, v3

    const/16 v29, 0x2

    aget v28, v28, v29

    move-object/from16 v29, v8

    const/16 v30, 0x0

    aget v29, v29, v30

    move/from16 v30, v9

    add-float v29, v29, v30

    cmpg-float v28, v28, v29

    if-ltz v28, :cond_f

    move-object/from16 v28, v3

    const/16 v29, 0x0

    aget v28, v28, v29

    move-object/from16 v29, v8

    const/16 v30, 0x2

    aget v29, v29, v30

    move/from16 v30, v9

    sub-float v29, v29, v30

    cmpl-float v28, v28, v29

    if-gtz v28, :cond_f

    move-object/from16 v28, v3

    const/16 v29, 0x2

    aget v28, v28, v29

    move-object/from16 v29, v8

    const/16 v30, 0x2

    aget v29, v29, v30

    move/from16 v30, v9

    add-float v29, v29, v30

    cmpg-float v28, v28, v29

    if-gez v28, :cond_10

    .line 544
    :cond_f
    move-object/from16 v28, v2

    move-object/from16 v29, v3

    const/16 v30, 0x0

    move/from16 v31, v12

    move-object/from16 v32, v8

    const/16 v33, 0x0

    aget v32, v32, v33

    move-object/from16 v33, v8

    const/16 v34, 0x2

    aget v33, v33, v34

    move/from16 v34, v14

    move/from16 v35, v9

    invoke-direct/range {v28 .. v35}, Lcom/sun/prism/BasicStroke;->accumulateCubic([FIFFFFF)V

    .line 546
    :cond_10
    move-object/from16 v28, v3

    const/16 v29, 0x1

    aget v28, v28, v29

    move-object/from16 v29, v8

    const/16 v30, 0x1

    aget v29, v29, v30

    move/from16 v30, v9

    sub-float v29, v29, v30

    cmpl-float v28, v28, v29

    if-gtz v28, :cond_11

    move-object/from16 v28, v3

    const/16 v29, 0x3

    aget v28, v28, v29

    move-object/from16 v29, v8

    const/16 v30, 0x1

    aget v29, v29, v30

    move/from16 v30, v9

    add-float v29, v29, v30

    cmpg-float v28, v28, v29

    if-ltz v28, :cond_11

    move-object/from16 v28, v3

    const/16 v29, 0x1

    aget v28, v28, v29

    move-object/from16 v29, v8

    const/16 v30, 0x3

    aget v29, v29, v30

    move/from16 v30, v9

    sub-float v29, v29, v30

    cmpl-float v28, v28, v29

    if-gtz v28, :cond_11

    move-object/from16 v28, v3

    const/16 v29, 0x3

    aget v28, v28, v29

    move-object/from16 v29, v8

    const/16 v30, 0x3

    aget v29, v29, v30

    move/from16 v30, v9

    add-float v29, v29, v30

    cmpg-float v28, v28, v29

    if-gez v28, :cond_12

    .line 549
    :cond_11
    move-object/from16 v28, v2

    move-object/from16 v29, v3

    const/16 v30, 0x1

    move/from16 v31, v13

    move-object/from16 v32, v8

    const/16 v33, 0x1

    aget v32, v32, v33

    move-object/from16 v33, v8

    const/16 v34, 0x3

    aget v33, v33, v34

    move/from16 v34, v15

    move/from16 v35, v9

    invoke-direct/range {v28 .. v35}, Lcom/sun/prism/BasicStroke;->accumulateCubic([FIFFFFF)V

    .line 551
    :cond_12
    move/from16 v28, v14

    move/from16 v12, v28

    .line 552
    move/from16 v28, v15

    move/from16 v13, v28

    .line 553
    move/from16 v28, v7

    if-eqz v28, :cond_13

    .line 554
    move/from16 v28, v18

    move/from16 v16, v28

    .line 555
    move/from16 v28, v19

    move/from16 v17, v28

    .line 556
    move-object/from16 v28, v22

    const/16 v29, 0x0

    aget v28, v28, v29

    move/from16 v25, v28

    .line 557
    move-object/from16 v28, v22

    const/16 v29, 0x1

    aget v28, v28, v29

    move/from16 v26, v28

    .line 559
    :cond_13
    move/from16 v28, v14

    move-object/from16 v29, v8

    const/16 v30, 0x2

    aget v29, v29, v30

    sub-float v28, v28, v29

    move/from16 v20, v28

    .line 560
    move/from16 v28, v15

    move-object/from16 v29, v8

    const/16 v30, 0x3

    aget v29, v29, v30

    sub-float v28, v28, v29

    move/from16 v21, v28

    .line 561
    move-object/from16 v28, v2

    move/from16 v29, v20

    move/from16 v30, v21

    move/from16 v31, v9

    move-object/from16 v32, v22

    const/16 v33, 0x0

    invoke-direct/range {v28 .. v33}, Lcom/sun/prism/BasicStroke;->computeOffset(FFF[FI)V

    .line 562
    move-object/from16 v28, v22

    const/16 v29, 0x0

    aget v28, v28, v29

    move/from16 v23, v28

    .line 563
    move-object/from16 v28, v22

    const/16 v29, 0x1

    aget v28, v28, v29

    move/from16 v24, v28

    .line 564
    goto/16 :goto_3

    .line 566
    .end local v14    # "x1":F
    .end local v15    # "y1":F
    .end local v18    # "dx":F
    .end local v19    # "dy":F
    :pswitch_4
    move/from16 v28, v10

    move/from16 v29, v12

    sub-float v28, v28, v29

    move/from16 v18, v28

    .line 567
    .restart local v18    # "dx":F
    move/from16 v28, v11

    move/from16 v29, v13

    sub-float v28, v28, v29

    move/from16 v19, v28

    .line 568
    .restart local v19    # "dy":F
    move/from16 v28, v10

    move/from16 v14, v28

    .line 569
    .restart local v14    # "x1":F
    move/from16 v28, v11

    move/from16 v15, v28

    .line 571
    .restart local v15    # "y1":F
    move/from16 v28, v7

    if-nez v28, :cond_14

    .line 572
    move-object/from16 v28, v2

    move/from16 v29, v16

    move/from16 v30, v17

    move/from16 v31, v9

    move-object/from16 v32, v22

    const/16 v33, 0x2

    invoke-direct/range {v28 .. v33}, Lcom/sun/prism/BasicStroke;->computeOffset(FFF[FI)V

    .line 573
    move/from16 v28, v18

    const/16 v29, 0x0

    cmpl-float v28, v28, v29

    if-nez v28, :cond_15

    move/from16 v28, v19

    const/16 v29, 0x0

    cmpl-float v28, v28, v29

    if-nez v28, :cond_15

    .line 574
    move-object/from16 v28, v2

    move/from16 v29, v20

    move/from16 v30, v21

    move/from16 v31, v16

    move/from16 v32, v17

    move/from16 v33, v10

    move/from16 v34, v11

    move/from16 v35, v23

    move/from16 v36, v24

    move-object/from16 v37, v22

    const/16 v38, 0x2

    aget v37, v37, v38

    move-object/from16 v38, v22

    const/16 v39, 0x3

    aget v38, v38, v39

    move-object/from16 v39, v3

    move/from16 v40, v9

    invoke-direct/range {v28 .. v40}, Lcom/sun/prism/BasicStroke;->accumulateJoin(FFFFFFFFFF[FF)V

    .line 581
    :cond_14
    :goto_5
    move/from16 v28, v14

    move/from16 v12, v28

    .line 582
    move/from16 v28, v15

    move/from16 v13, v28

    goto/16 :goto_3

    .line 576
    :cond_15
    move-object/from16 v28, v2

    move/from16 v29, v18

    move/from16 v30, v19

    move/from16 v31, v9

    move-object/from16 v32, v22

    const/16 v33, 0x0

    invoke-direct/range {v28 .. v33}, Lcom/sun/prism/BasicStroke;->computeOffset(FFF[FI)V

    .line 577
    move-object/from16 v28, v2

    move/from16 v29, v20

    move/from16 v30, v21

    move/from16 v31, v18

    move/from16 v32, v19

    move/from16 v33, v12

    move/from16 v34, v13

    move/from16 v35, v23

    move/from16 v36, v24

    move-object/from16 v37, v22

    const/16 v38, 0x0

    aget v37, v37, v38

    move-object/from16 v38, v22

    const/16 v39, 0x1

    aget v38, v38, v39

    move-object/from16 v39, v3

    move/from16 v40, v9

    invoke-direct/range {v28 .. v40}, Lcom/sun/prism/BasicStroke;->accumulateJoin(FFFFFFFFFF[FF)V

    .line 578
    move-object/from16 v28, v2

    move/from16 v29, v18

    move/from16 v30, v19

    move/from16 v31, v16

    move/from16 v32, v17

    move/from16 v33, v14

    move/from16 v34, v15

    move-object/from16 v35, v22

    const/16 v36, 0x0

    aget v35, v35, v36

    move-object/from16 v36, v22

    const/16 v37, 0x1

    aget v36, v36, v37

    move-object/from16 v37, v22

    const/16 v38, 0x2

    aget v37, v37, v38

    move-object/from16 v38, v22

    const/16 v39, 0x3

    aget v38, v38, v39

    move-object/from16 v39, v3

    move/from16 v40, v9

    invoke-direct/range {v28 .. v40}, Lcom/sun/prism/BasicStroke;->accumulateJoin(FFFFFFFFFF[FF)V

    goto :goto_5

    .line 587
    .end local v14    # "x1":F
    .end local v15    # "y1":F
    .end local v18    # "dx":F
    .end local v19    # "dy":F
    :cond_16
    const/16 v28, 0x0

    goto/16 :goto_4

    .line 591
    .end local v27    # "cur":I
    :cond_17
    move/from16 v28, v7

    if-nez v28, :cond_18

    .line 592
    move-object/from16 v28, v2

    move/from16 v29, v20

    move/from16 v30, v21

    move/from16 v31, v12

    move/from16 v32, v13

    move/from16 v33, v23

    move/from16 v34, v24

    move-object/from16 v35, v3

    move/from16 v36, v9

    invoke-direct/range {v28 .. v36}, Lcom/sun/prism/BasicStroke;->accumulateCap(FFFFFF[FF)V

    .line 593
    move-object/from16 v28, v2

    move/from16 v29, v16

    move/from16 v0, v29

    neg-float v0, v0

    move/from16 v29, v0

    move/from16 v30, v17

    move/from16 v0, v30

    neg-float v0, v0

    move/from16 v30, v0

    move/from16 v31, v10

    move/from16 v32, v11

    move/from16 v33, v25

    move/from16 v0, v33

    neg-float v0, v0

    move/from16 v33, v0

    move/from16 v34, v26

    move/from16 v0, v34

    neg-float v0, v0

    move/from16 v34, v0

    move-object/from16 v35, v3

    move/from16 v36, v9

    invoke-direct/range {v28 .. v36}, Lcom/sun/prism/BasicStroke;->accumulateCap(FFFFFF[FF)V

    .line 595
    :cond_18
    goto/16 :goto_0

    .line 458
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

.method public copy()Lcom/sun/prism/BasicStroke;
    .locals 11

    .prologue
    .line 887
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/BasicStroke;
    new-instance v1, Lcom/sun/prism/BasicStroke;

    move-object v10, v1

    move-object v1, v10

    move-object v2, v10

    move-object v3, v0

    iget v3, v3, Lcom/sun/prism/BasicStroke;->type:I

    move-object v4, v0

    iget v4, v4, Lcom/sun/prism/BasicStroke;->width:F

    move-object v5, v0

    iget v5, v5, Lcom/sun/prism/BasicStroke;->cap:I

    move-object v6, v0

    iget v6, v6, Lcom/sun/prism/BasicStroke;->join:I

    move-object v7, v0

    iget v7, v7, Lcom/sun/prism/BasicStroke;->miterLimit:F

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/prism/BasicStroke;->dash:[F

    move-object v9, v0

    iget v9, v9, Lcom/sun/prism/BasicStroke;->dashPhase:F

    invoke-direct/range {v2 .. v9}, Lcom/sun/prism/BasicStroke;-><init>(IFIIF[FF)V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/BasicStroke;
    return-object v0
.end method

.method public createCenteredStrokedShape(Lcom/sun/javafx/geom/Shape;)Lcom/sun/javafx/geom/Shape;
    .locals 13

    .prologue
    .line 683
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/BasicStroke;
    move-object v1, p1

    .local v1, "s":Lcom/sun/javafx/geom/Shape;
    new-instance v5, Lcom/sun/javafx/geom/Path2D;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Lcom/sun/javafx/geom/Path2D;-><init>(I)V

    move-object v2, v5

    .line 684
    .local v2, "p2d":Lcom/sun/javafx/geom/Path2D;
    move-object v5, v0

    iget v5, v5, Lcom/sun/prism/BasicStroke;->type:I

    if-nez v5, :cond_1

    move-object v5, v0

    iget v5, v5, Lcom/sun/prism/BasicStroke;->width:F

    :goto_0
    move v3, v5

    .line 685
    .local v3, "lw":F
    new-instance v5, Lcom/sun/openpisces/Stroker;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v2

    move v8, v3

    move-object v9, v0

    iget v9, v9, Lcom/sun/prism/BasicStroke;->cap:I

    move-object v10, v0

    iget v10, v10, Lcom/sun/prism/BasicStroke;->join:I

    move-object v11, v0

    iget v11, v11, Lcom/sun/prism/BasicStroke;->miterLimit:F

    invoke-direct/range {v6 .. v11}, Lcom/sun/openpisces/Stroker;-><init>(Lcom/sun/javafx/geom/PathConsumer2D;FIIF)V

    move-object v4, v5

    .line 687
    .local v4, "pc2d":Lcom/sun/javafx/geom/PathConsumer2D;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/prism/BasicStroke;->dash:[F

    if-eqz v5, :cond_0

    .line 688
    new-instance v5, Lcom/sun/openpisces/Dasher;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v4

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/prism/BasicStroke;->dash:[F

    move-object v9, v0

    iget v9, v9, Lcom/sun/prism/BasicStroke;->dashPhase:F

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/openpisces/Dasher;-><init>(Lcom/sun/javafx/geom/PathConsumer2D;[FF)V

    move-object v4, v5

    .line 690
    :cond_0
    move-object v5, v1

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sun/javafx/geom/Shape;->getPathIterator(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/PathIterator;

    move-result-object v5

    move-object v6, v4

    invoke-static {v5, v6}, Lcom/sun/prism/impl/shape/OpenPiscesPrismUtils;->feedConsumer(Lcom/sun/javafx/geom/PathIterator;Lcom/sun/javafx/geom/PathConsumer2D;)V

    .line 691
    move-object v5, v2

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/prism/BasicStroke;
    return-object v0

    .line 684
    .end local v3    # "lw":F
    .end local v4    # "pc2d":Lcom/sun/javafx/geom/PathConsumer2D;
    .restart local v0    # "this":Lcom/sun/prism/BasicStroke;
    :cond_1
    move-object v5, v0

    iget v5, v5, Lcom/sun/prism/BasicStroke;->width:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    goto :goto_0
.end method

.method public createStrokedShape(Lcom/sun/javafx/geom/Shape;)Lcom/sun/javafx/geom/Shape;
    .locals 6

    .prologue
    .line 258
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/BasicStroke;
    move-object v1, p1

    .local v1, "s":Lcom/sun/javafx/geom/Shape;
    move-object v3, v1

    instance-of v3, v3, Lcom/sun/javafx/geom/RoundRectangle2D;

    if-eqz v3, :cond_0

    .line 259
    move-object v3, v0

    move-object v4, v1

    check-cast v4, Lcom/sun/javafx/geom/RoundRectangle2D;

    invoke-virtual {v3, v4}, Lcom/sun/prism/BasicStroke;->strokeRoundRectangle(Lcom/sun/javafx/geom/RoundRectangle2D;)Lcom/sun/javafx/geom/Shape;

    move-result-object v3

    move-object v2, v3

    .line 263
    .local v2, "ret":Lcom/sun/javafx/geom/Shape;
    :goto_0
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 264
    move-object v3, v2

    move-object v0, v3

    .line 274
    .end local v0    # "this":Lcom/sun/prism/BasicStroke;
    :goto_1
    return-object v0

    .line 261
    .end local v2    # "ret":Lcom/sun/javafx/geom/Shape;
    .restart local v0    # "this":Lcom/sun/prism/BasicStroke;
    :cond_0
    const/4 v3, 0x0

    move-object v2, v3

    .restart local v2    # "ret":Lcom/sun/javafx/geom/Shape;
    goto :goto_0

    .line 267
    :cond_1
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/prism/BasicStroke;->createCenteredStrokedShape(Lcom/sun/javafx/geom/Shape;)Lcom/sun/javafx/geom/Shape;

    move-result-object v3

    move-object v2, v3

    .line 269
    move-object v3, v0

    iget v3, v3, Lcom/sun/prism/BasicStroke;->type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 270
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Lcom/sun/prism/BasicStroke;->makeIntersectedShape(Lcom/sun/javafx/geom/Shape;Lcom/sun/javafx/geom/Shape;)Lcom/sun/javafx/geom/Shape;

    move-result-object v3

    move-object v2, v3

    .line 274
    :cond_2
    :goto_2
    move-object v3, v2

    move-object v0, v3

    goto :goto_1

    .line 271
    :cond_3
    move-object v3, v0

    iget v3, v3, Lcom/sun/prism/BasicStroke;->type:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 272
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Lcom/sun/prism/BasicStroke;->makeSubtractedShape(Lcom/sun/javafx/geom/Shape;Lcom/sun/javafx/geom/Shape;)Lcom/sun/javafx/geom/Shape;

    move-result-object v3

    move-object v2, v3

    goto :goto_2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 855
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/BasicStroke;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v1

    instance-of v3, v3, Lcom/sun/prism/BasicStroke;

    if-nez v3, :cond_0

    .line 856
    const/4 v3, 0x0

    move v0, v3

    .line 883
    .end local v0    # "this":Lcom/sun/prism/BasicStroke;
    :goto_0
    return v0

    .line 858
    .restart local v0    # "this":Lcom/sun/prism/BasicStroke;
    :cond_0
    move-object v3, v1

    check-cast v3, Lcom/sun/prism/BasicStroke;

    move-object v2, v3

    .line 859
    .local v2, "bs":Lcom/sun/prism/BasicStroke;
    move-object v3, v0

    iget v3, v3, Lcom/sun/prism/BasicStroke;->width:F

    move-object v4, v2

    iget v4, v4, Lcom/sun/prism/BasicStroke;->width:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1

    .line 860
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 862
    :cond_1
    move-object v3, v0

    iget v3, v3, Lcom/sun/prism/BasicStroke;->join:I

    move-object v4, v2

    iget v4, v4, Lcom/sun/prism/BasicStroke;->join:I

    if-eq v3, v4, :cond_2

    .line 863
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 865
    :cond_2
    move-object v3, v0

    iget v3, v3, Lcom/sun/prism/BasicStroke;->cap:I

    move-object v4, v2

    iget v4, v4, Lcom/sun/prism/BasicStroke;->cap:I

    if-eq v3, v4, :cond_3

    .line 866
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 868
    :cond_3
    move-object v3, v0

    iget v3, v3, Lcom/sun/prism/BasicStroke;->miterLimit:F

    move-object v4, v2

    iget v4, v4, Lcom/sun/prism/BasicStroke;->miterLimit:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_4

    .line 869
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 871
    :cond_4
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/BasicStroke;->dash:[F

    if-eqz v3, :cond_6

    .line 872
    move-object v3, v0

    iget v3, v3, Lcom/sun/prism/BasicStroke;->dashPhase:F

    move-object v4, v2

    iget v4, v4, Lcom/sun/prism/BasicStroke;->dashPhase:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_5

    .line 873
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 875
    :cond_5
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/BasicStroke;->dash:[F

    move-object v4, v2

    iget-object v4, v4, Lcom/sun/prism/BasicStroke;->dash:[F

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-nez v3, :cond_7

    .line 876
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 879
    :cond_6
    move-object v3, v2

    iget-object v3, v3, Lcom/sun/prism/BasicStroke;->dash:[F

    if-eqz v3, :cond_7

    .line 880
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 883
    :cond_7
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method public getDashArray()[F
    .locals 2

    .prologue
    .line 241
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/BasicStroke;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/BasicStroke;->dash:[F

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/BasicStroke;
    return-object v0
.end method

.method public getDashPhase()F
    .locals 2

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/BasicStroke;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/BasicStroke;->dashPhase:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/BasicStroke;
    return v0
.end method

.method public getEndCap()I
    .locals 2

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/BasicStroke;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/BasicStroke;->cap:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/BasicStroke;
    return v0
.end method

.method public getLineJoin()I
    .locals 2

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/BasicStroke;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/BasicStroke;->join:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/BasicStroke;
    return v0
.end method

.method public getLineWidth()F
    .locals 2

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/BasicStroke;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/BasicStroke;->width:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/BasicStroke;
    return v0
.end method

.method public getMiterLimit()F
    .locals 2

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/BasicStroke;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/BasicStroke;->miterLimit:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/BasicStroke;
    return v0
.end method

.method public getType()I
    .locals 2

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/BasicStroke;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/BasicStroke;->type:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/BasicStroke;
    return v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 829
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/BasicStroke;
    move-object v3, v0

    iget v3, v3, Lcom/sun/prism/BasicStroke;->width:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    move v1, v3

    .line 830
    .local v1, "hash":I
    move v3, v1

    const/16 v4, 0x1f

    mul-int/lit8 v3, v3, 0x1f

    move-object v4, v0

    iget v4, v4, Lcom/sun/prism/BasicStroke;->join:I

    add-int/2addr v3, v4

    move v1, v3

    .line 831
    move v3, v1

    const/16 v4, 0x1f

    mul-int/lit8 v3, v3, 0x1f

    move-object v4, v0

    iget v4, v4, Lcom/sun/prism/BasicStroke;->cap:I

    add-int/2addr v3, v4

    move v1, v3

    .line 832
    move v3, v1

    const/16 v4, 0x1f

    mul-int/lit8 v3, v3, 0x1f

    move-object v4, v0

    iget v4, v4, Lcom/sun/prism/BasicStroke;->miterLimit:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    add-int/2addr v3, v4

    move v1, v3

    .line 833
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/BasicStroke;->dash:[F

    if-eqz v3, :cond_0

    .line 834
    move v3, v1

    const/16 v4, 0x1f

    mul-int/lit8 v3, v3, 0x1f

    move-object v4, v0

    iget v4, v4, Lcom/sun/prism/BasicStroke;->dashPhase:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    add-int/2addr v3, v4

    move v1, v3

    .line 835
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/prism/BasicStroke;->dash:[F

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 836
    move v3, v1

    const/16 v4, 0x1f

    mul-int/lit8 v3, v3, 0x1f

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/prism/BasicStroke;->dash:[F

    move v5, v2

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    add-int/2addr v3, v4

    move v1, v3

    .line 835
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 839
    .end local v2    # "i":I
    :cond_0
    move v3, v1

    move v0, v3

    .end local v0    # "this":Lcom/sun/prism/BasicStroke;
    return v0
.end method

.method public isDashed()Z
    .locals 2

    .prologue
    .line 226
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/BasicStroke;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/BasicStroke;->dash:[F

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/BasicStroke;
    return v0

    .restart local v0    # "this":Lcom/sun/prism/BasicStroke;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected makeIntersectedShape(Lcom/sun/javafx/geom/Shape;Lcom/sun/javafx/geom/Shape;)Lcom/sun/javafx/geom/Shape;
    .locals 9

    .prologue
    .line 793
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/BasicStroke;
    move-object v1, p1

    .local v1, "outer":Lcom/sun/javafx/geom/Shape;
    move-object v2, p2

    .local v2, "inner":Lcom/sun/javafx/geom/Shape;
    new-instance v3, Lcom/sun/prism/BasicStroke$CAGShapePair;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x4

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/prism/BasicStroke$CAGShapePair;-><init>(Lcom/sun/javafx/geom/Shape;Lcom/sun/javafx/geom/Shape;I)V

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/prism/BasicStroke;
    return-object v0
.end method

.method protected makeSubtractedShape(Lcom/sun/javafx/geom/Shape;Lcom/sun/javafx/geom/Shape;)Lcom/sun/javafx/geom/Shape;
    .locals 9

    .prologue
    .line 797
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/BasicStroke;
    move-object v1, p1

    .local v1, "outer":Lcom/sun/javafx/geom/Shape;
    move-object v2, p2

    .local v2, "inner":Lcom/sun/javafx/geom/Shape;
    new-instance v3, Lcom/sun/prism/BasicStroke$CAGShapePair;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x1

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/prism/BasicStroke$CAGShapePair;-><init>(Lcom/sun/javafx/geom/Shape;Lcom/sun/javafx/geom/Shape;I)V

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/prism/BasicStroke;
    return-object v0
.end method

.method public set(IFIIF)V
    .locals 10

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/BasicStroke;
    move v1, p1

    .local v1, "type":I
    move v2, p2

    .local v2, "width":F
    move v3, p3

    .local v3, "cap":I
    move v4, p4

    .local v4, "join":I
    move v5, p5

    .local v5, "miterLimit":F
    move v6, v1

    if-eqz v6, :cond_0

    move v6, v1

    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    move v6, v1

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    .line 108
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "illegal type"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 110
    :cond_0
    move v6, v2

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1

    .line 111
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "negative width"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 113
    :cond_1
    move v6, v3

    if-eqz v6, :cond_2

    move v6, v3

    const/4 v7, 0x1

    if-eq v6, v7, :cond_2

    move v6, v3

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    .line 114
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "illegal end cap value"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 116
    :cond_2
    move v6, v4

    if-nez v6, :cond_3

    .line 117
    move v6, v5

    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_4

    .line 118
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "miter limit < 1"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 120
    :cond_3
    move v6, v4

    const/4 v7, 0x1

    if-eq v6, v7, :cond_4

    move v6, v4

    const/4 v7, 0x2

    if-eq v6, v7, :cond_4

    .line 121
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "illegal line join value"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 123
    :cond_4
    move-object v6, v0

    move v7, v1

    iput v7, v6, Lcom/sun/prism/BasicStroke;->type:I

    .line 124
    move-object v6, v0

    move v7, v2

    iput v7, v6, Lcom/sun/prism/BasicStroke;->width:F

    .line 125
    move-object v6, v0

    move v7, v3

    iput v7, v6, Lcom/sun/prism/BasicStroke;->cap:I

    .line 126
    move-object v6, v0

    move v7, v4

    iput v7, v6, Lcom/sun/prism/BasicStroke;->join:I

    .line 127
    move-object v6, v0

    move v7, v5

    iput v7, v6, Lcom/sun/prism/BasicStroke;->miterLimit:F

    .line 128
    return-void
.end method

.method public set([DF)V
    .locals 13

    .prologue
    .line 150
    move-object v1, p0

    .local v1, "this":Lcom/sun/prism/BasicStroke;
    move-object v2, p1

    .local v2, "dash":[D
    move v3, p2

    .local v3, "dashPhase":F
    move-object v8, v2

    if-eqz v8, :cond_4

    .line 151
    move-object v8, v2

    array-length v8, v8

    new-array v8, v8, [F

    move-object v4, v8

    .line 152
    .local v4, "newdashes":[F
    const/4 v8, 0x1

    move v5, v8

    .line 153
    .local v5, "allzero":Z
    const/4 v8, 0x0

    move v6, v8

    .local v6, "i":I
    :goto_0
    move v8, v6

    move-object v9, v2

    array-length v9, v9

    if-ge v8, v9, :cond_2

    .line 154
    move-object v8, v2

    move v9, v6

    aget-wide v8, v8, v9

    double-to-float v8, v8

    move v7, v8

    .line 155
    .local v7, "d":F
    move v8, v7

    float-to-double v8, v8

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-lez v8, :cond_1

    .line 156
    const/4 v8, 0x0

    move v5, v8

    .line 160
    :cond_0
    move-object v8, v4

    move v9, v6

    move v10, v7

    aput v10, v8, v9

    .line 153
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 157
    :cond_1
    move v8, v7

    float-to-double v8, v8

    const-wide/16 v10, 0x0

    cmpg-double v8, v8, v10

    if-gez v8, :cond_0

    .line 158
    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const-string v10, "negative dash length"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 162
    .end local v7    # "d":F
    :cond_2
    move v8, v5

    if-eqz v8, :cond_3

    .line 163
    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const-string v10, "dash lengths all zero"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 165
    :cond_3
    move-object v8, v1

    move-object v9, v4

    iput-object v9, v8, Lcom/sun/prism/BasicStroke;->dash:[F

    .line 166
    .line 169
    .end local v4    # "newdashes":[F
    .end local v5    # "allzero":Z
    .end local v6    # "i":I
    :goto_1
    move-object v8, v1

    move v9, v3

    iput v9, v8, Lcom/sun/prism/BasicStroke;->dashPhase:F

    .line 170
    return-void

    .line 167
    :cond_4
    move-object v8, v1

    const/4 v9, 0x0

    iput-object v9, v8, Lcom/sun/prism/BasicStroke;->dash:[F

    goto :goto_1
.end method

.method public set([FF)V
    .locals 11

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/BasicStroke;
    move-object v1, p1

    .local v1, "dash":[F
    move v2, p2

    .local v2, "dashPhase":F
    move-object v6, v1

    if-eqz v6, :cond_3

    .line 132
    const/4 v6, 0x1

    move v3, v6

    .line 133
    .local v3, "allzero":Z
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    move-object v7, v1

    array-length v7, v7

    if-ge v6, v7, :cond_2

    .line 134
    move-object v6, v1

    move v7, v4

    aget v6, v6, v7

    move v5, v6

    .line 135
    .local v5, "d":F
    move v6, v5

    float-to-double v6, v6

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_1

    .line 136
    const/4 v6, 0x0

    move v3, v6

    .line 133
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 137
    :cond_1
    move v6, v5

    float-to-double v6, v6

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_0

    .line 138
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string v8, "negative dash length"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 141
    .end local v5    # "d":F
    :cond_2
    move v6, v3

    if-eqz v6, :cond_3

    .line 142
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string v8, "dash lengths all zero"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 145
    .end local v3    # "allzero":Z
    .end local v4    # "i":I
    :cond_3
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/sun/prism/BasicStroke;->dash:[F

    .line 146
    move-object v6, v0

    move v7, v2

    iput v7, v6, Lcom/sun/prism/BasicStroke;->dashPhase:F

    .line 147
    return-void
.end method

.method strokeRoundRectangle(Lcom/sun/javafx/geom/RoundRectangle2D;)Lcom/sun/javafx/geom/Shape;
    .locals 21

    .prologue
    .line 697
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/BasicStroke;
    move-object/from16 v1, p1

    .local v1, "rr":Lcom/sun/javafx/geom/RoundRectangle2D;
    move-object v10, v1

    iget v10, v10, Lcom/sun/javafx/geom/RoundRectangle2D;->width:F

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-ltz v10, :cond_0

    move-object v10, v1

    iget v10, v10, Lcom/sun/javafx/geom/RoundRectangle2D;->height:F

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_1

    .line 698
    :cond_0
    new-instance v10, Lcom/sun/javafx/geom/Path2D;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    invoke-direct {v11}, Lcom/sun/javafx/geom/Path2D;-><init>()V

    move-object v0, v10

    .line 768
    .end local v0    # "this":Lcom/sun/prism/BasicStroke;
    :goto_0
    return-object v0

    .line 700
    .restart local v0    # "this":Lcom/sun/prism/BasicStroke;
    :cond_1
    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/prism/BasicStroke;->isDashed()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 701
    const/4 v10, 0x0

    move-object v0, v10

    goto :goto_0

    .line 704
    :cond_2
    move-object v10, v1

    iget v10, v10, Lcom/sun/javafx/geom/RoundRectangle2D;->arcWidth:F

    move v3, v10

    .line 705
    .local v3, "aw":F
    move-object v10, v1

    iget v10, v10, Lcom/sun/javafx/geom/RoundRectangle2D;->arcHeight:F

    move v4, v10

    .line 706
    .local v4, "ah":F
    move v10, v3

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-lez v10, :cond_3

    move v10, v4

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_6

    .line 707
    :cond_3
    const/4 v10, 0x0

    move/from16 v20, v10

    move/from16 v10, v20

    move/from16 v11, v20

    move v4, v11

    move v3, v10

    .line 708
    move-object v10, v0

    iget v10, v10, Lcom/sun/prism/BasicStroke;->type:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_5

    .line 709
    const/4 v10, 0x0

    move v2, v10

    .line 726
    .local v2, "j":I
    :cond_4
    :goto_1
    move-object v10, v0

    iget v10, v10, Lcom/sun/prism/BasicStroke;->type:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_9

    .line 727
    const/4 v10, 0x0

    move v6, v10

    .line 728
    .local v6, "od":F
    move-object v10, v0

    iget v10, v10, Lcom/sun/prism/BasicStroke;->width:F

    move v5, v10

    .line 736
    .local v5, "id":F
    :goto_2
    move v10, v2

    packed-switch v10, :pswitch_data_0

    .line 751
    new-instance v10, Ljava/lang/InternalError;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const-string v12, "Unrecognized line join style"

    invoke-direct {v11, v12}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v10

    .line 711
    .end local v2    # "j":I
    .end local v5    # "id":F
    .end local v6    # "od":F
    :cond_5
    move-object v10, v0

    iget v10, v10, Lcom/sun/prism/BasicStroke;->join:I

    move v2, v10

    .line 712
    .restart local v2    # "j":I
    move v10, v2

    if-nez v10, :cond_4

    move-object v10, v0

    iget v10, v10, Lcom/sun/prism/BasicStroke;->miterLimit:F

    sget v11, Lcom/sun/prism/BasicStroke;->SQRT_2:F

    cmpg-float v10, v10, v11

    if-gez v10, :cond_4

    .line 713
    const/4 v10, 0x2

    move v2, v10

    goto :goto_1

    .line 717
    .end local v2    # "j":I
    :cond_6
    move v10, v3

    move v11, v4

    const v12, 0x3f666666    # 0.9f

    mul-float/2addr v11, v12

    cmpg-float v10, v10, v11

    if-ltz v10, :cond_7

    move v10, v4

    move v11, v3

    const v12, 0x3f666666    # 0.9f

    mul-float/2addr v11, v12

    cmpg-float v10, v10, v11

    if-gez v10, :cond_8

    .line 721
    :cond_7
    const/4 v10, 0x0

    move-object v0, v10

    goto :goto_0

    .line 723
    :cond_8
    const/4 v10, 0x1

    move v2, v10

    .restart local v2    # "j":I
    goto :goto_1

    .line 729
    :cond_9
    move-object v10, v0

    iget v10, v10, Lcom/sun/prism/BasicStroke;->type:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_a

    .line 730
    move-object v10, v0

    iget v10, v10, Lcom/sun/prism/BasicStroke;->width:F

    move v6, v10

    .line 731
    .restart local v6    # "od":F
    const/4 v10, 0x0

    move v5, v10

    .restart local v5    # "id":F
    goto :goto_2

    .line 733
    .end local v5    # "id":F
    .end local v6    # "od":F
    :cond_a
    move-object v10, v0

    iget v10, v10, Lcom/sun/prism/BasicStroke;->width:F

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    move/from16 v20, v10

    move/from16 v10, v20

    move/from16 v11, v20

    move v5, v11

    .restart local v5    # "id":F
    move v6, v10

    .restart local v6    # "od":F
    goto :goto_2

    .line 738
    :pswitch_0
    new-instance v10, Lcom/sun/javafx/geom/RoundRectangle2D;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    move-object v12, v1

    iget v12, v12, Lcom/sun/javafx/geom/RoundRectangle2D;->x:F

    move v13, v6

    sub-float/2addr v12, v13

    move-object v13, v1

    iget v13, v13, Lcom/sun/javafx/geom/RoundRectangle2D;->y:F

    move v14, v6

    sub-float/2addr v13, v14

    move-object v14, v1

    iget v14, v14, Lcom/sun/javafx/geom/RoundRectangle2D;->width:F

    move v15, v6

    const/high16 v16, 0x40000000    # 2.0f

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    move-object v15, v1

    iget v15, v15, Lcom/sun/javafx/geom/RoundRectangle2D;->height:F

    move/from16 v16, v6

    const/high16 v17, 0x40000000    # 2.0f

    mul-float v16, v16, v17

    add-float v15, v15, v16

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v11 .. v17}, Lcom/sun/javafx/geom/RoundRectangle2D;-><init>(FFFFFF)V

    move-object v7, v10

    .line 753
    .local v7, "outer":Lcom/sun/javafx/geom/Shape;
    :goto_3
    move-object v10, v1

    iget v10, v10, Lcom/sun/javafx/geom/RoundRectangle2D;->width:F

    move v11, v5

    const/high16 v12, 0x40000000    # 2.0f

    mul-float/2addr v11, v12

    cmpg-float v10, v10, v11

    if-lez v10, :cond_b

    move-object v10, v1

    iget v10, v10, Lcom/sun/javafx/geom/RoundRectangle2D;->height:F

    move v11, v5

    const/high16 v12, 0x40000000    # 2.0f

    mul-float/2addr v11, v12

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_c

    .line 754
    :cond_b
    move-object v10, v7

    move-object v0, v10

    goto/16 :goto_0

    .line 743
    .end local v7    # "outer":Lcom/sun/javafx/geom/Shape;
    :pswitch_1
    move-object v10, v1

    iget v10, v10, Lcom/sun/javafx/geom/RoundRectangle2D;->x:F

    move-object v11, v1

    iget v11, v11, Lcom/sun/javafx/geom/RoundRectangle2D;->y:F

    move-object v12, v1

    iget v12, v12, Lcom/sun/javafx/geom/RoundRectangle2D;->width:F

    move-object v13, v1

    iget v13, v13, Lcom/sun/javafx/geom/RoundRectangle2D;->height:F

    move v14, v6

    invoke-static {v10, v11, v12, v13, v14}, Lcom/sun/prism/BasicStroke;->makeBeveledRect(FFFFF)Lcom/sun/javafx/geom/Shape;

    move-result-object v10

    move-object v7, v10

    .line 744
    .restart local v7    # "outer":Lcom/sun/javafx/geom/Shape;
    goto :goto_3

    .line 746
    .end local v7    # "outer":Lcom/sun/javafx/geom/Shape;
    :pswitch_2
    new-instance v10, Lcom/sun/javafx/geom/RoundRectangle2D;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    move-object v12, v1

    iget v12, v12, Lcom/sun/javafx/geom/RoundRectangle2D;->x:F

    move v13, v6

    sub-float/2addr v12, v13

    move-object v13, v1

    iget v13, v13, Lcom/sun/javafx/geom/RoundRectangle2D;->y:F

    move v14, v6

    sub-float/2addr v13, v14

    move-object v14, v1

    iget v14, v14, Lcom/sun/javafx/geom/RoundRectangle2D;->width:F

    move v15, v6

    const/high16 v16, 0x40000000    # 2.0f

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    move-object v15, v1

    iget v15, v15, Lcom/sun/javafx/geom/RoundRectangle2D;->height:F

    move/from16 v16, v6

    const/high16 v17, 0x40000000    # 2.0f

    mul-float v16, v16, v17

    add-float v15, v15, v16

    move/from16 v16, v3

    move/from16 v17, v6

    const/high16 v18, 0x40000000    # 2.0f

    mul-float v17, v17, v18

    add-float v16, v16, v17

    move/from16 v17, v4

    move/from16 v18, v6

    const/high16 v19, 0x40000000    # 2.0f

    mul-float v18, v18, v19

    add-float v17, v17, v18

    invoke-direct/range {v11 .. v17}, Lcom/sun/javafx/geom/RoundRectangle2D;-><init>(FFFFFF)V

    move-object v7, v10

    .line 749
    .restart local v7    # "outer":Lcom/sun/javafx/geom/Shape;
    goto :goto_3

    .line 756
    :cond_c
    move v10, v3

    move v11, v5

    const/high16 v12, 0x40000000    # 2.0f

    mul-float/2addr v11, v12

    sub-float/2addr v10, v11

    move v3, v10

    .line 757
    move v10, v4

    move v11, v5

    const/high16 v12, 0x40000000    # 2.0f

    mul-float/2addr v11, v12

    sub-float/2addr v10, v11

    move v4, v10

    .line 758
    move v10, v3

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-lez v10, :cond_d

    move v10, v4

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_e

    .line 759
    :cond_d
    const/4 v10, 0x0

    move/from16 v20, v10

    move/from16 v10, v20

    move/from16 v11, v20

    move v4, v11

    move v3, v10

    .line 761
    :cond_e
    new-instance v10, Lcom/sun/javafx/geom/RoundRectangle2D;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    move-object v12, v1

    iget v12, v12, Lcom/sun/javafx/geom/RoundRectangle2D;->x:F

    move v13, v5

    add-float/2addr v12, v13

    move-object v13, v1

    iget v13, v13, Lcom/sun/javafx/geom/RoundRectangle2D;->y:F

    move v14, v5

    add-float/2addr v13, v14

    move-object v14, v1

    iget v14, v14, Lcom/sun/javafx/geom/RoundRectangle2D;->width:F

    move v15, v5

    const/high16 v16, 0x40000000    # 2.0f

    mul-float v15, v15, v16

    sub-float/2addr v14, v15

    move-object v15, v1

    iget v15, v15, Lcom/sun/javafx/geom/RoundRectangle2D;->height:F

    move/from16 v16, v5

    const/high16 v17, 0x40000000    # 2.0f

    mul-float v16, v16, v17

    sub-float v15, v15, v16

    move/from16 v16, v3

    move/from16 v17, v4

    invoke-direct/range {v11 .. v17}, Lcom/sun/javafx/geom/RoundRectangle2D;-><init>(FFFFFF)V

    move-object v8, v10

    .line 764
    .local v8, "inner":Lcom/sun/javafx/geom/Shape;
    move-object v10, v7

    instance-of v10, v10, Lcom/sun/javafx/geom/Path2D;

    if-eqz v10, :cond_f

    move-object v10, v7

    check-cast v10, Lcom/sun/javafx/geom/Path2D;

    :goto_4
    move-object v9, v10

    .line 766
    .local v9, "p2d":Lcom/sun/javafx/geom/Path2D;
    move-object v10, v9

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/sun/javafx/geom/Path2D;->setWindingRule(I)V

    .line 767
    move-object v10, v9

    move-object v11, v8

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/geom/Path2D;->append(Lcom/sun/javafx/geom/Shape;Z)V

    .line 768
    move-object v10, v9

    move-object v0, v10

    goto/16 :goto_0

    .line 764
    .end local v9    # "p2d":Lcom/sun/javafx/geom/Path2D;
    :cond_f
    new-instance v10, Lcom/sun/javafx/geom/Path2D;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    move-object v12, v7

    invoke-direct {v11, v12}, Lcom/sun/javafx/geom/Path2D;-><init>(Lcom/sun/javafx/geom/Shape;)V

    goto :goto_4

    .line 736
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
