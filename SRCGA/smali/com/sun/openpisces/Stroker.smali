.class public final Lcom/sun/openpisces/Stroker;
.super Ljava/lang/Object;
.source "Stroker.java"

# interfaces
.implements Lcom/sun/javafx/geom/PathConsumer2D;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/openpisces/Stroker$PolyStack;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final CAP_BUTT:I = 0x0

.field public static final CAP_ROUND:I = 0x1

.field public static final CAP_SQUARE:I = 0x2

.field private static final CLOSE:I = 0x2

.field private static final DRAWING_OP_TO:I = 0x1

.field public static final JOIN_BEVEL:I = 0x2

.field public static final JOIN_MITER:I = 0x0

.field public static final JOIN_ROUND:I = 0x1

.field private static final MAX_N_CURVES:I = 0xb

.field private static final MOVE_TO:I = 0x0

.field private static final ROUND_JOIN_THRESHOLD:F = 0.015258789f

.field private static c:Lcom/sun/openpisces/Curve;


# instance fields
.field private capStyle:I

.field private cdx:F

.field private cdy:F

.field private cmx:F

.field private cmy:F

.field private cx0:F

.field private cy0:F

.field private joinStyle:I

.field private lineWidth2:F

.field private lp:[F

.field private middle:[F

.field private final miter:[F

.field private miterLimitSq:F

.field private final offset:[[F

.field private out:Lcom/sun/javafx/geom/PathConsumer2D;

.field private prev:I

.field private final reverse:Lcom/sun/openpisces/Stroker$PolyStack;

.field private rp:[F

.field private sdx:F

.field private sdy:F

.field private smx:F

.field private smy:F

.field private subdivTs:[F

.field private sx0:F

.field private sy0:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    const-class v0, Lcom/sun/openpisces/Stroker;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/openpisces/Stroker;->$assertionsDisabled:Z

    .line 926
    new-instance v0, Lcom/sun/openpisces/Curve;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/openpisces/Curve;-><init>()V

    sput-object v0, Lcom/sun/openpisces/Stroker;->c:Lcom/sun/openpisces/Curve;

    return-void

    .line 36
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sun/javafx/geom/PathConsumer2D;)V
    .locals 6

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Stroker;
    move-object v1, p1

    .local v1, "pc2d":Lcom/sun/javafx/geom/PathConsumer2D;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 79
    move-object v2, v0

    const/4 v3, 0x3

    const/4 v4, 0x2

    filled-new-array {v3, v4}, [I

    move-result-object v4

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    iput-object v3, v2, Lcom/sun/openpisces/Stroker;->offset:[[F

    .line 80
    move-object v2, v0

    const/4 v3, 0x2

    new-array v3, v3, [F

    iput-object v3, v2, Lcom/sun/openpisces/Stroker;->miter:[F

    .line 97
    move-object v2, v0

    new-instance v3, Lcom/sun/openpisces/Stroker$PolyStack;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/sun/openpisces/Stroker$PolyStack;-><init>()V

    iput-object v3, v2, Lcom/sun/openpisces/Stroker;->reverse:Lcom/sun/openpisces/Stroker$PolyStack;

    .line 808
    move-object v2, v0

    const/16 v3, 0x58

    new-array v3, v3, [F

    iput-object v3, v2, Lcom/sun/openpisces/Stroker;->middle:[F

    .line 809
    move-object v2, v0

    const/16 v3, 0x8

    new-array v3, v3, [F

    iput-object v3, v2, Lcom/sun/openpisces/Stroker;->lp:[F

    .line 810
    move-object v2, v0

    const/16 v3, 0x8

    new-array v3, v3, [F

    iput-object v3, v2, Lcom/sun/openpisces/Stroker;->rp:[F

    .line 812
    move-object v2, v0

    const/16 v3, 0xa

    new-array v3, v3, [F

    iput-object v3, v2, Lcom/sun/openpisces/Stroker;->subdivTs:[F

    .line 124
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/openpisces/Stroker;->setConsumer(Lcom/sun/javafx/geom/PathConsumer2D;)V

    .line 125
    return-void
.end method

.method public constructor <init>(Lcom/sun/javafx/geom/PathConsumer2D;FIIF)V
    .locals 11

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Stroker;
    move-object v1, p1

    .local v1, "pc2d":Lcom/sun/javafx/geom/PathConsumer2D;
    move v2, p2

    .local v2, "lineWidth":F
    move v3, p3

    .local v3, "capStyle":I
    move v4, p4

    .local v4, "joinStyle":I
    move/from16 v5, p5

    .local v5, "miterLimit":F
    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Lcom/sun/openpisces/Stroker;-><init>(Lcom/sun/javafx/geom/PathConsumer2D;)V

    .line 120
    move-object v6, v0

    move v7, v2

    move v8, v3

    move v9, v4

    move v10, v5

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/sun/openpisces/Stroker;->reset(FIIF)V

    .line 121
    return-void
.end method

.method private computeMiter(FFFFFFFF[FI)V
    .locals 22

    .prologue
    .line 308
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/openpisces/Stroker;
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

    .line 309
    .local v11, "x10":F
    move/from16 v17, v4

    move/from16 v18, v2

    sub-float v17, v17, v18

    move/from16 v12, v17

    .line 310
    .local v12, "y10":F
    move/from16 v17, v7

    move/from16 v18, v5

    sub-float v17, v17, v18

    move/from16 v13, v17

    .line 311
    .local v13, "x10p":F
    move/from16 v17, v8

    move/from16 v18, v6

    sub-float v17, v17, v18

    move/from16 v14, v17

    .line 322
    .local v14, "y10p":F
    move/from16 v17, v11

    move/from16 v18, v14

    mul-float v17, v17, v18

    move/from16 v18, v13

    move/from16 v19, v12

    mul-float v18, v18, v19

    sub-float v17, v17, v18

    move/from16 v15, v17

    .line 323
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

    .line 324
    .local v16, "t":F
    move/from16 v17, v16

    move/from16 v18, v15

    div-float v17, v17, v18

    move/from16 v16, v17

    .line 325
    move-object/from16 v17, v9

    move/from16 v18, v10

    add-int/lit8 v10, v10, 0x1

    move/from16 v19, v1

    move/from16 v20, v16

    move/from16 v21, v11

    mul-float v20, v20, v21

    add-float v19, v19, v20

    aput v19, v17, v18

    .line 326
    move-object/from16 v17, v9

    move/from16 v18, v10

    move/from16 v19, v2

    move/from16 v20, v16

    move/from16 v21, v12

    mul-float v20, v20, v21

    add-float v19, v19, v20

    aput v19, v17, v18

    .line 327
    return-void
.end method

.method private static computeOffset(FFF[F)V
    .locals 15

    .prologue
    .line 146
    move v1, p0

    .local v1, "lx":F
    move/from16 v2, p1

    .local v2, "ly":F
    move/from16 v3, p2

    .local v3, "w":F
    move-object/from16 v4, p3

    .local v4, "m":[F
    move v6, v1

    move v7, v1

    mul-float/2addr v6, v7

    move v7, v2

    move v8, v2

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    move v5, v6

    .line 147
    .local v5, "len":F
    move v6, v5

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_0

    .line 148
    move-object v6, v4

    const/4 v7, 0x0

    move-object v8, v4

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v12, v8

    move v13, v9

    move v14, v10

    move v8, v14

    move-object v9, v12

    move v10, v13

    move v11, v14

    aput v11, v9, v10

    aput v8, v6, v7

    .line 153
    :goto_0
    return-void

    .line 150
    :cond_0
    move-object v6, v4

    const/4 v7, 0x0

    move v8, v2

    move v9, v3

    mul-float/2addr v8, v9

    move v9, v5

    div-float/2addr v8, v9

    aput v8, v6, v7

    .line 151
    move-object v6, v4

    const/4 v7, 0x1

    move v8, v1

    move v9, v3

    mul-float/2addr v8, v9

    neg-float v8, v8

    move v9, v5

    div-float/2addr v8, v9

    aput v8, v6, v7

    goto :goto_0
.end method

.method private computeOffsetCubic([FI[F[F)I
    .locals 49

    .prologue
    .line 604
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/openpisces/Stroker;
    move-object/from16 v2, p1

    .local v2, "pts":[F
    move/from16 v3, p2

    .local v3, "off":I
    move-object/from16 v4, p3

    .local v4, "leftOff":[F
    move-object/from16 v5, p4

    .local v5, "rightOff":[F
    move-object/from16 v42, v2

    move/from16 v43, v3

    const/16 v44, 0x0

    add-int/lit8 v43, v43, 0x0

    aget v42, v42, v43

    move/from16 v6, v42

    .local v6, "x1":F
    move-object/from16 v42, v2

    move/from16 v43, v3

    const/16 v44, 0x1

    add-int/lit8 v43, v43, 0x1

    aget v42, v42, v43

    move/from16 v7, v42

    .line 605
    .local v7, "y1":F
    move-object/from16 v42, v2

    move/from16 v43, v3

    const/16 v44, 0x2

    add-int/lit8 v43, v43, 0x2

    aget v42, v42, v43

    move/from16 v8, v42

    .local v8, "x2":F
    move-object/from16 v42, v2

    move/from16 v43, v3

    const/16 v44, 0x3

    add-int/lit8 v43, v43, 0x3

    aget v42, v42, v43

    move/from16 v9, v42

    .line 606
    .local v9, "y2":F
    move-object/from16 v42, v2

    move/from16 v43, v3

    const/16 v44, 0x4

    add-int/lit8 v43, v43, 0x4

    aget v42, v42, v43

    move/from16 v10, v42

    .local v10, "x3":F
    move-object/from16 v42, v2

    move/from16 v43, v3

    const/16 v44, 0x5

    add-int/lit8 v43, v43, 0x5

    aget v42, v42, v43

    move/from16 v11, v42

    .line 607
    .local v11, "y3":F
    move-object/from16 v42, v2

    move/from16 v43, v3

    const/16 v44, 0x6

    add-int/lit8 v43, v43, 0x6

    aget v42, v42, v43

    move/from16 v12, v42

    .local v12, "x4":F
    move-object/from16 v42, v2

    move/from16 v43, v3

    const/16 v44, 0x7

    add-int/lit8 v43, v43, 0x7

    aget v42, v42, v43

    move/from16 v13, v42

    .line 609
    .local v13, "y4":F
    move/from16 v42, v12

    move/from16 v43, v10

    sub-float v42, v42, v43

    move/from16 v14, v42

    .line 610
    .local v14, "dx4":F
    move/from16 v42, v13

    move/from16 v43, v11

    sub-float v42, v42, v43

    move/from16 v15, v42

    .line 611
    .local v15, "dy4":F
    move/from16 v42, v8

    move/from16 v43, v6

    sub-float v42, v42, v43

    move/from16 v16, v42

    .line 612
    .local v16, "dx1":F
    move/from16 v42, v9

    move/from16 v43, v7

    sub-float v42, v42, v43

    move/from16 v17, v42

    .line 616
    .local v17, "dy1":F
    move/from16 v42, v6

    move/from16 v43, v7

    move/from16 v44, v8

    move/from16 v45, v9

    const/high16 v46, 0x40c00000    # 6.0f

    move/from16 v47, v9

    invoke-static/range {v47 .. v47}, Ljava/lang/Math;->ulp(F)F

    move-result v47

    mul-float v46, v46, v47

    invoke-static/range {v42 .. v46}, Lcom/sun/openpisces/Stroker;->within(FFFFF)Z

    move-result v42

    move/from16 v18, v42

    .line 617
    .local v18, "p1eqp2":Z
    move/from16 v42, v10

    move/from16 v43, v11

    move/from16 v44, v12

    move/from16 v45, v13

    const/high16 v46, 0x40c00000    # 6.0f

    move/from16 v47, v13

    invoke-static/range {v47 .. v47}, Ljava/lang/Math;->ulp(F)F

    move-result v47

    mul-float v46, v46, v47

    invoke-static/range {v42 .. v46}, Lcom/sun/openpisces/Stroker;->within(FFFFF)Z

    move-result v42

    move/from16 v19, v42

    .line 618
    .local v19, "p3eqp4":Z
    move/from16 v42, v18

    if-eqz v42, :cond_0

    move/from16 v42, v19

    if-eqz v42, :cond_0

    .line 619
    move-object/from16 v42, v1

    move/from16 v43, v6

    move/from16 v44, v7

    move/from16 v45, v12

    move/from16 v46, v13

    move-object/from16 v47, v4

    move-object/from16 v48, v5

    invoke-direct/range {v42 .. v48}, Lcom/sun/openpisces/Stroker;->getLineOffsets(FFFF[F[F)V

    .line 620
    const/16 v42, 0x4

    move/from16 v1, v42

    .line 740
    .end local v1    # "this":Lcom/sun/openpisces/Stroker;
    :goto_0
    return v1

    .line 621
    .restart local v1    # "this":Lcom/sun/openpisces/Stroker;
    :cond_0
    move/from16 v42, v18

    if-eqz v42, :cond_2

    .line 622
    move/from16 v42, v10

    move/from16 v43, v6

    sub-float v42, v42, v43

    move/from16 v16, v42

    .line 623
    move/from16 v42, v11

    move/from16 v43, v7

    sub-float v42, v42, v43

    move/from16 v17, v42

    .line 630
    :cond_1
    :goto_1
    move/from16 v42, v16

    move/from16 v43, v14

    mul-float v42, v42, v43

    move/from16 v43, v17

    move/from16 v44, v15

    mul-float v43, v43, v44

    add-float v42, v42, v43

    move/from16 v20, v42

    .line 631
    .local v20, "dotsq":F
    move/from16 v42, v20

    move/from16 v43, v20

    mul-float v42, v42, v43

    move/from16 v20, v42

    .line 632
    move/from16 v42, v16

    move/from16 v43, v16

    mul-float v42, v42, v43

    move/from16 v43, v17

    move/from16 v44, v17

    mul-float v43, v43, v44

    add-float v42, v42, v43

    move/from16 v21, v42

    .local v21, "l1sq":F
    move/from16 v42, v14

    move/from16 v43, v14

    mul-float v42, v42, v43

    move/from16 v43, v15

    move/from16 v44, v15

    mul-float v43, v43, v44

    add-float v42, v42, v43

    move/from16 v22, v42

    .line 633
    .local v22, "l4sq":F
    move/from16 v42, v20

    move/from16 v43, v21

    move/from16 v44, v22

    mul-float v43, v43, v44

    const/high16 v44, 0x40800000    # 4.0f

    move/from16 v45, v20

    invoke-static/range {v45 .. v45}, Ljava/lang/Math;->ulp(F)F

    move-result v45

    mul-float v44, v44, v45

    invoke-static/range {v42 .. v44}, Lcom/sun/openpisces/Helpers;->within(FFF)Z

    move-result v42

    if-eqz v42, :cond_3

    .line 634
    move-object/from16 v42, v1

    move/from16 v43, v6

    move/from16 v44, v7

    move/from16 v45, v12

    move/from16 v46, v13

    move-object/from16 v47, v4

    move-object/from16 v48, v5

    invoke-direct/range {v42 .. v48}, Lcom/sun/openpisces/Stroker;->getLineOffsets(FFFF[F[F)V

    .line 635
    const/16 v42, 0x4

    move/from16 v1, v42

    goto :goto_0

    .line 624
    .end local v20    # "dotsq":F
    .end local v21    # "l1sq":F
    .end local v22    # "l4sq":F
    :cond_2
    move/from16 v42, v19

    if-eqz v42, :cond_1

    .line 625
    move/from16 v42, v12

    move/from16 v43, v8

    sub-float v42, v42, v43

    move/from16 v14, v42

    .line 626
    move/from16 v42, v13

    move/from16 v43, v9

    sub-float v42, v42, v43

    move/from16 v15, v42

    goto :goto_1

    .line 685
    .restart local v20    # "dotsq":F
    .restart local v21    # "l1sq":F
    .restart local v22    # "l4sq":F
    :cond_3
    const/high16 v42, 0x3e000000    # 0.125f

    move/from16 v43, v6

    const/high16 v44, 0x40400000    # 3.0f

    move/from16 v45, v8

    move/from16 v46, v10

    add-float v45, v45, v46

    mul-float v44, v44, v45

    add-float v43, v43, v44

    move/from16 v44, v12

    add-float v43, v43, v44

    mul-float v42, v42, v43

    move/from16 v23, v42

    .line 686
    .local v23, "x":F
    const/high16 v42, 0x3e000000    # 0.125f

    move/from16 v43, v7

    const/high16 v44, 0x40400000    # 3.0f

    move/from16 v45, v9

    move/from16 v46, v11

    add-float v45, v45, v46

    mul-float v44, v44, v45

    add-float v43, v43, v44

    move/from16 v44, v13

    add-float v43, v43, v44

    mul-float v42, v42, v43

    move/from16 v24, v42

    .line 689
    .local v24, "y":F
    move/from16 v42, v10

    move/from16 v43, v12

    add-float v42, v42, v43

    move/from16 v43, v6

    sub-float v42, v42, v43

    move/from16 v43, v8

    sub-float v42, v42, v43

    move/from16 v25, v42

    .local v25, "dxm":F
    move/from16 v42, v11

    move/from16 v43, v13

    add-float v42, v42, v43

    move/from16 v43, v7

    sub-float v42, v42, v43

    move/from16 v43, v9

    sub-float v42, v42, v43

    move/from16 v26, v42

    .line 694
    .local v26, "dym":F
    move/from16 v42, v16

    move/from16 v43, v17

    move-object/from16 v44, v1

    move-object/from16 v0, v44

    iget v0, v0, Lcom/sun/openpisces/Stroker;->lineWidth2:F

    move/from16 v44, v0

    move-object/from16 v45, v1

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->offset:[[F

    move-object/from16 v45, v0

    const/16 v46, 0x0

    aget-object v45, v45, v46

    invoke-static/range {v42 .. v45}, Lcom/sun/openpisces/Stroker;->computeOffset(FFF[F)V

    .line 695
    move/from16 v42, v25

    move/from16 v43, v26

    move-object/from16 v44, v1

    move-object/from16 v0, v44

    iget v0, v0, Lcom/sun/openpisces/Stroker;->lineWidth2:F

    move/from16 v44, v0

    move-object/from16 v45, v1

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->offset:[[F

    move-object/from16 v45, v0

    const/16 v46, 0x1

    aget-object v45, v45, v46

    invoke-static/range {v42 .. v45}, Lcom/sun/openpisces/Stroker;->computeOffset(FFF[F)V

    .line 696
    move/from16 v42, v14

    move/from16 v43, v15

    move-object/from16 v44, v1

    move-object/from16 v0, v44

    iget v0, v0, Lcom/sun/openpisces/Stroker;->lineWidth2:F

    move/from16 v44, v0

    move-object/from16 v45, v1

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->offset:[[F

    move-object/from16 v45, v0

    const/16 v46, 0x2

    aget-object v45, v45, v46

    invoke-static/range {v42 .. v45}, Lcom/sun/openpisces/Stroker;->computeOffset(FFF[F)V

    .line 697
    move/from16 v42, v6

    move-object/from16 v43, v1

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->offset:[[F

    move-object/from16 v43, v0

    const/16 v44, 0x0

    aget-object v43, v43, v44

    const/16 v44, 0x0

    aget v43, v43, v44

    add-float v42, v42, v43

    move/from16 v27, v42

    .line 698
    .local v27, "x1p":F
    move/from16 v42, v7

    move-object/from16 v43, v1

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->offset:[[F

    move-object/from16 v43, v0

    const/16 v44, 0x0

    aget-object v43, v43, v44

    const/16 v44, 0x1

    aget v43, v43, v44

    add-float v42, v42, v43

    move/from16 v28, v42

    .line 699
    .local v28, "y1p":F
    move/from16 v42, v23

    move-object/from16 v43, v1

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->offset:[[F

    move-object/from16 v43, v0

    const/16 v44, 0x1

    aget-object v43, v43, v44

    const/16 v44, 0x0

    aget v43, v43, v44

    add-float v42, v42, v43

    move/from16 v29, v42

    .line 700
    .local v29, "xi":F
    move/from16 v42, v24

    move-object/from16 v43, v1

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->offset:[[F

    move-object/from16 v43, v0

    const/16 v44, 0x1

    aget-object v43, v43, v44

    const/16 v44, 0x1

    aget v43, v43, v44

    add-float v42, v42, v43

    move/from16 v30, v42

    .line 701
    .local v30, "yi":F
    move/from16 v42, v12

    move-object/from16 v43, v1

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->offset:[[F

    move-object/from16 v43, v0

    const/16 v44, 0x2

    aget-object v43, v43, v44

    const/16 v44, 0x0

    aget v43, v43, v44

    add-float v42, v42, v43

    move/from16 v31, v42

    .line 702
    .local v31, "x4p":F
    move/from16 v42, v13

    move-object/from16 v43, v1

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->offset:[[F

    move-object/from16 v43, v0

    const/16 v44, 0x2

    aget-object v43, v43, v44

    const/16 v44, 0x1

    aget v43, v43, v44

    add-float v42, v42, v43

    move/from16 v32, v42

    .line 704
    .local v32, "y4p":F
    const/high16 v42, 0x40800000    # 4.0f

    const/high16 v43, 0x40400000    # 3.0f

    move/from16 v44, v16

    move/from16 v45, v15

    mul-float v44, v44, v45

    move/from16 v45, v17

    move/from16 v46, v14

    mul-float v45, v45, v46

    sub-float v44, v44, v45

    mul-float v43, v43, v44

    div-float v42, v42, v43

    move/from16 v33, v42

    .line 706
    .local v33, "invdet43":F
    const/high16 v42, 0x40000000    # 2.0f

    move/from16 v43, v29

    mul-float v42, v42, v43

    move/from16 v43, v27

    sub-float v42, v42, v43

    move/from16 v43, v31

    sub-float v42, v42, v43

    move/from16 v34, v42

    .line 707
    .local v34, "two_pi_m_p1_m_p4x":F
    const/high16 v42, 0x40000000    # 2.0f

    move/from16 v43, v30

    mul-float v42, v42, v43

    move/from16 v43, v28

    sub-float v42, v42, v43

    move/from16 v43, v32

    sub-float v42, v42, v43

    move/from16 v35, v42

    .line 708
    .local v35, "two_pi_m_p1_m_p4y":F
    move/from16 v42, v33

    move/from16 v43, v15

    move/from16 v44, v34

    mul-float v43, v43, v44

    move/from16 v44, v14

    move/from16 v45, v35

    mul-float v44, v44, v45

    sub-float v43, v43, v44

    mul-float v42, v42, v43

    move/from16 v36, v42

    .line 709
    .local v36, "c1":F
    move/from16 v42, v33

    move/from16 v43, v16

    move/from16 v44, v35

    mul-float v43, v43, v44

    move/from16 v44, v17

    move/from16 v45, v34

    mul-float v44, v44, v45

    sub-float v43, v43, v44

    mul-float v42, v42, v43

    move/from16 v37, v42

    .line 712
    .local v37, "c2":F
    move/from16 v42, v27

    move/from16 v43, v36

    move/from16 v44, v16

    mul-float v43, v43, v44

    add-float v42, v42, v43

    move/from16 v38, v42

    .line 713
    .local v38, "x2p":F
    move/from16 v42, v28

    move/from16 v43, v36

    move/from16 v44, v17

    mul-float v43, v43, v44

    add-float v42, v42, v43

    move/from16 v39, v42

    .line 714
    .local v39, "y2p":F
    move/from16 v42, v31

    move/from16 v43, v37

    move/from16 v44, v14

    mul-float v43, v43, v44

    add-float v42, v42, v43

    move/from16 v40, v42

    .line 715
    .local v40, "x3p":F
    move/from16 v42, v32

    move/from16 v43, v37

    move/from16 v44, v15

    mul-float v43, v43, v44

    add-float v42, v42, v43

    move/from16 v41, v42

    .line 717
    .local v41, "y3p":F
    move-object/from16 v42, v4

    const/16 v43, 0x0

    move/from16 v44, v27

    aput v44, v42, v43

    move-object/from16 v42, v4

    const/16 v43, 0x1

    move/from16 v44, v28

    aput v44, v42, v43

    .line 718
    move-object/from16 v42, v4

    const/16 v43, 0x2

    move/from16 v44, v38

    aput v44, v42, v43

    move-object/from16 v42, v4

    const/16 v43, 0x3

    move/from16 v44, v39

    aput v44, v42, v43

    .line 719
    move-object/from16 v42, v4

    const/16 v43, 0x4

    move/from16 v44, v40

    aput v44, v42, v43

    move-object/from16 v42, v4

    const/16 v43, 0x5

    move/from16 v44, v41

    aput v44, v42, v43

    .line 720
    move-object/from16 v42, v4

    const/16 v43, 0x6

    move/from16 v44, v31

    aput v44, v42, v43

    move-object/from16 v42, v4

    const/16 v43, 0x7

    move/from16 v44, v32

    aput v44, v42, v43

    .line 722
    move/from16 v42, v6

    move-object/from16 v43, v1

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->offset:[[F

    move-object/from16 v43, v0

    const/16 v44, 0x0

    aget-object v43, v43, v44

    const/16 v44, 0x0

    aget v43, v43, v44

    sub-float v42, v42, v43

    move/from16 v27, v42

    move/from16 v42, v7

    move-object/from16 v43, v1

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->offset:[[F

    move-object/from16 v43, v0

    const/16 v44, 0x0

    aget-object v43, v43, v44

    const/16 v44, 0x1

    aget v43, v43, v44

    sub-float v42, v42, v43

    move/from16 v28, v42

    .line 723
    move/from16 v42, v29

    const/high16 v43, 0x40000000    # 2.0f

    move-object/from16 v44, v1

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->offset:[[F

    move-object/from16 v44, v0

    const/16 v45, 0x1

    aget-object v44, v44, v45

    const/16 v45, 0x0

    aget v44, v44, v45

    mul-float v43, v43, v44

    sub-float v42, v42, v43

    move/from16 v29, v42

    move/from16 v42, v30

    const/high16 v43, 0x40000000    # 2.0f

    move-object/from16 v44, v1

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->offset:[[F

    move-object/from16 v44, v0

    const/16 v45, 0x1

    aget-object v44, v44, v45

    const/16 v45, 0x1

    aget v44, v44, v45

    mul-float v43, v43, v44

    sub-float v42, v42, v43

    move/from16 v30, v42

    .line 724
    move/from16 v42, v12

    move-object/from16 v43, v1

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->offset:[[F

    move-object/from16 v43, v0

    const/16 v44, 0x2

    aget-object v43, v43, v44

    const/16 v44, 0x0

    aget v43, v43, v44

    sub-float v42, v42, v43

    move/from16 v31, v42

    move/from16 v42, v13

    move-object/from16 v43, v1

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->offset:[[F

    move-object/from16 v43, v0

    const/16 v44, 0x2

    aget-object v43, v43, v44

    const/16 v44, 0x1

    aget v43, v43, v44

    sub-float v42, v42, v43

    move/from16 v32, v42

    .line 726
    const/high16 v42, 0x40000000    # 2.0f

    move/from16 v43, v29

    mul-float v42, v42, v43

    move/from16 v43, v27

    sub-float v42, v42, v43

    move/from16 v43, v31

    sub-float v42, v42, v43

    move/from16 v34, v42

    .line 727
    const/high16 v42, 0x40000000    # 2.0f

    move/from16 v43, v30

    mul-float v42, v42, v43

    move/from16 v43, v28

    sub-float v42, v42, v43

    move/from16 v43, v32

    sub-float v42, v42, v43

    move/from16 v35, v42

    .line 728
    move/from16 v42, v33

    move/from16 v43, v15

    move/from16 v44, v34

    mul-float v43, v43, v44

    move/from16 v44, v14

    move/from16 v45, v35

    mul-float v44, v44, v45

    sub-float v43, v43, v44

    mul-float v42, v42, v43

    move/from16 v36, v42

    .line 729
    move/from16 v42, v33

    move/from16 v43, v16

    move/from16 v44, v35

    mul-float v43, v43, v44

    move/from16 v44, v17

    move/from16 v45, v34

    mul-float v44, v44, v45

    sub-float v43, v43, v44

    mul-float v42, v42, v43

    move/from16 v37, v42

    .line 731
    move/from16 v42, v27

    move/from16 v43, v36

    move/from16 v44, v16

    mul-float v43, v43, v44

    add-float v42, v42, v43

    move/from16 v38, v42

    .line 732
    move/from16 v42, v28

    move/from16 v43, v36

    move/from16 v44, v17

    mul-float v43, v43, v44

    add-float v42, v42, v43

    move/from16 v39, v42

    .line 733
    move/from16 v42, v31

    move/from16 v43, v37

    move/from16 v44, v14

    mul-float v43, v43, v44

    add-float v42, v42, v43

    move/from16 v40, v42

    .line 734
    move/from16 v42, v32

    move/from16 v43, v37

    move/from16 v44, v15

    mul-float v43, v43, v44

    add-float v42, v42, v43

    move/from16 v41, v42

    .line 736
    move-object/from16 v42, v5

    const/16 v43, 0x0

    move/from16 v44, v27

    aput v44, v42, v43

    move-object/from16 v42, v5

    const/16 v43, 0x1

    move/from16 v44, v28

    aput v44, v42, v43

    .line 737
    move-object/from16 v42, v5

    const/16 v43, 0x2

    move/from16 v44, v38

    aput v44, v42, v43

    move-object/from16 v42, v5

    const/16 v43, 0x3

    move/from16 v44, v39

    aput v44, v42, v43

    .line 738
    move-object/from16 v42, v5

    const/16 v43, 0x4

    move/from16 v44, v40

    aput v44, v42, v43

    move-object/from16 v42, v5

    const/16 v43, 0x5

    move/from16 v44, v41

    aput v44, v42, v43

    .line 739
    move-object/from16 v42, v5

    const/16 v43, 0x6

    move/from16 v44, v31

    aput v44, v42, v43

    move-object/from16 v42, v5

    const/16 v43, 0x7

    move/from16 v44, v32

    aput v44, v42, v43

    .line 740
    const/16 v42, 0x8

    move/from16 v1, v42

    goto/16 :goto_0
.end method

.method private computeOffsetQuad([FI[F[F)I
    .locals 36

    .prologue
    .line 749
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/openpisces/Stroker;
    move-object/from16 v2, p1

    .local v2, "pts":[F
    move/from16 v3, p2

    .local v3, "off":I
    move-object/from16 v4, p3

    .local v4, "leftOff":[F
    move-object/from16 v5, p4

    .local v5, "rightOff":[F
    move-object/from16 v25, v2

    move/from16 v26, v3

    const/16 v27, 0x0

    add-int/lit8 v26, v26, 0x0

    aget v25, v25, v26

    move/from16 v6, v25

    .local v6, "x1":F
    move-object/from16 v25, v2

    move/from16 v26, v3

    const/16 v27, 0x1

    add-int/lit8 v26, v26, 0x1

    aget v25, v25, v26

    move/from16 v7, v25

    .line 750
    .local v7, "y1":F
    move-object/from16 v25, v2

    move/from16 v26, v3

    const/16 v27, 0x2

    add-int/lit8 v26, v26, 0x2

    aget v25, v25, v26

    move/from16 v8, v25

    .local v8, "x2":F
    move-object/from16 v25, v2

    move/from16 v26, v3

    const/16 v27, 0x3

    add-int/lit8 v26, v26, 0x3

    aget v25, v25, v26

    move/from16 v9, v25

    .line 751
    .local v9, "y2":F
    move-object/from16 v25, v2

    move/from16 v26, v3

    const/16 v27, 0x4

    add-int/lit8 v26, v26, 0x4

    aget v25, v25, v26

    move/from16 v10, v25

    .local v10, "x3":F
    move-object/from16 v25, v2

    move/from16 v26, v3

    const/16 v27, 0x5

    add-int/lit8 v26, v26, 0x5

    aget v25, v25, v26

    move/from16 v11, v25

    .line 753
    .local v11, "y3":F
    move/from16 v25, v10

    move/from16 v26, v8

    sub-float v25, v25, v26

    move/from16 v12, v25

    .line 754
    .local v12, "dx3":F
    move/from16 v25, v11

    move/from16 v26, v9

    sub-float v25, v25, v26

    move/from16 v13, v25

    .line 755
    .local v13, "dy3":F
    move/from16 v25, v8

    move/from16 v26, v6

    sub-float v25, v25, v26

    move/from16 v14, v25

    .line 756
    .local v14, "dx1":F
    move/from16 v25, v9

    move/from16 v26, v7

    sub-float v25, v25, v26

    move/from16 v15, v25

    .line 768
    .local v15, "dy1":F
    move/from16 v25, v6

    move/from16 v26, v7

    move/from16 v27, v8

    move/from16 v28, v9

    const/high16 v29, 0x40c00000    # 6.0f

    move/from16 v30, v9

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->ulp(F)F

    move-result v30

    mul-float v29, v29, v30

    invoke-static/range {v25 .. v29}, Lcom/sun/openpisces/Stroker;->within(FFFFF)Z

    move-result v25

    move/from16 v16, v25

    .line 769
    .local v16, "p1eqp2":Z
    move/from16 v25, v8

    move/from16 v26, v9

    move/from16 v27, v10

    move/from16 v28, v11

    const/high16 v29, 0x40c00000    # 6.0f

    move/from16 v30, v11

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->ulp(F)F

    move-result v30

    mul-float v29, v29, v30

    invoke-static/range {v25 .. v29}, Lcom/sun/openpisces/Stroker;->within(FFFFF)Z

    move-result v25

    move/from16 v17, v25

    .line 770
    .local v17, "p2eqp3":Z
    move/from16 v25, v16

    if-nez v25, :cond_0

    move/from16 v25, v17

    if-eqz v25, :cond_1

    .line 771
    :cond_0
    move-object/from16 v25, v1

    move/from16 v26, v6

    move/from16 v27, v7

    move/from16 v28, v10

    move/from16 v29, v11

    move-object/from16 v30, v4

    move-object/from16 v31, v5

    invoke-direct/range {v25 .. v31}, Lcom/sun/openpisces/Stroker;->getLineOffsets(FFFF[F[F)V

    .line 772
    const/16 v25, 0x4

    move/from16 v1, v25

    .line 802
    .end local v1    # "this":Lcom/sun/openpisces/Stroker;
    :goto_0
    return v1

    .line 776
    .restart local v1    # "this":Lcom/sun/openpisces/Stroker;
    :cond_1
    move/from16 v25, v14

    move/from16 v26, v12

    mul-float v25, v25, v26

    move/from16 v26, v15

    move/from16 v27, v13

    mul-float v26, v26, v27

    add-float v25, v25, v26

    move/from16 v18, v25

    .line 777
    .local v18, "dotsq":F
    move/from16 v25, v18

    move/from16 v26, v18

    mul-float v25, v25, v26

    move/from16 v18, v25

    .line 778
    move/from16 v25, v14

    move/from16 v26, v14

    mul-float v25, v25, v26

    move/from16 v26, v15

    move/from16 v27, v15

    mul-float v26, v26, v27

    add-float v25, v25, v26

    move/from16 v19, v25

    .local v19, "l1sq":F
    move/from16 v25, v12

    move/from16 v26, v12

    mul-float v25, v25, v26

    move/from16 v26, v13

    move/from16 v27, v13

    mul-float v26, v26, v27

    add-float v25, v25, v26

    move/from16 v20, v25

    .line 779
    .local v20, "l3sq":F
    move/from16 v25, v18

    move/from16 v26, v19

    move/from16 v27, v20

    mul-float v26, v26, v27

    const/high16 v27, 0x40800000    # 4.0f

    move/from16 v28, v18

    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->ulp(F)F

    move-result v28

    mul-float v27, v27, v28

    invoke-static/range {v25 .. v27}, Lcom/sun/openpisces/Helpers;->within(FFF)Z

    move-result v25

    if-eqz v25, :cond_2

    .line 780
    move-object/from16 v25, v1

    move/from16 v26, v6

    move/from16 v27, v7

    move/from16 v28, v10

    move/from16 v29, v11

    move-object/from16 v30, v4

    move-object/from16 v31, v5

    invoke-direct/range {v25 .. v31}, Lcom/sun/openpisces/Stroker;->getLineOffsets(FFFF[F[F)V

    .line 781
    const/16 v25, 0x4

    move/from16 v1, v25

    goto :goto_0

    .line 787
    :cond_2
    move/from16 v25, v14

    move/from16 v26, v15

    move-object/from16 v27, v1

    move-object/from16 v0, v27

    iget v0, v0, Lcom/sun/openpisces/Stroker;->lineWidth2:F

    move/from16 v27, v0

    move-object/from16 v28, v1

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->offset:[[F

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aget-object v28, v28, v29

    invoke-static/range {v25 .. v28}, Lcom/sun/openpisces/Stroker;->computeOffset(FFF[F)V

    .line 788
    move/from16 v25, v12

    move/from16 v26, v13

    move-object/from16 v27, v1

    move-object/from16 v0, v27

    iget v0, v0, Lcom/sun/openpisces/Stroker;->lineWidth2:F

    move/from16 v27, v0

    move-object/from16 v28, v1

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->offset:[[F

    move-object/from16 v28, v0

    const/16 v29, 0x1

    aget-object v28, v28, v29

    invoke-static/range {v25 .. v28}, Lcom/sun/openpisces/Stroker;->computeOffset(FFF[F)V

    .line 789
    move/from16 v25, v6

    move-object/from16 v26, v1

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->offset:[[F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget v26, v26, v27

    add-float v25, v25, v26

    move/from16 v21, v25

    .line 790
    .local v21, "x1p":F
    move/from16 v25, v7

    move-object/from16 v26, v1

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->offset:[[F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget v26, v26, v27

    add-float v25, v25, v26

    move/from16 v22, v25

    .line 791
    .local v22, "y1p":F
    move/from16 v25, v10

    move-object/from16 v26, v1

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->offset:[[F

    move-object/from16 v26, v0

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget v26, v26, v27

    add-float v25, v25, v26

    move/from16 v23, v25

    .line 792
    .local v23, "x3p":F
    move/from16 v25, v11

    move-object/from16 v26, v1

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->offset:[[F

    move-object/from16 v26, v0

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget v26, v26, v27

    add-float v25, v25, v26

    move/from16 v24, v25

    .line 794
    .local v24, "y3p":F
    move-object/from16 v25, v1

    move/from16 v26, v21

    move/from16 v27, v22

    move/from16 v28, v21

    move/from16 v29, v14

    add-float v28, v28, v29

    move/from16 v29, v22

    move/from16 v30, v15

    add-float v29, v29, v30

    move/from16 v30, v23

    move/from16 v31, v24

    move/from16 v32, v23

    move/from16 v33, v12

    sub-float v32, v32, v33

    move/from16 v33, v24

    move/from16 v34, v13

    sub-float v33, v33, v34

    move-object/from16 v34, v4

    const/16 v35, 0x2

    invoke-direct/range {v25 .. v35}, Lcom/sun/openpisces/Stroker;->safecomputeMiter(FFFFFFFF[FI)V

    .line 795
    move-object/from16 v25, v4

    const/16 v26, 0x0

    move/from16 v27, v21

    aput v27, v25, v26

    move-object/from16 v25, v4

    const/16 v26, 0x1

    move/from16 v27, v22

    aput v27, v25, v26

    .line 796
    move-object/from16 v25, v4

    const/16 v26, 0x4

    move/from16 v27, v23

    aput v27, v25, v26

    move-object/from16 v25, v4

    const/16 v26, 0x5

    move/from16 v27, v24

    aput v27, v25, v26

    .line 797
    move/from16 v25, v6

    move-object/from16 v26, v1

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->offset:[[F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget v26, v26, v27

    sub-float v25, v25, v26

    move/from16 v21, v25

    move/from16 v25, v7

    move-object/from16 v26, v1

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->offset:[[F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget v26, v26, v27

    sub-float v25, v25, v26

    move/from16 v22, v25

    .line 798
    move/from16 v25, v10

    move-object/from16 v26, v1

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->offset:[[F

    move-object/from16 v26, v0

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget v26, v26, v27

    sub-float v25, v25, v26

    move/from16 v23, v25

    move/from16 v25, v11

    move-object/from16 v26, v1

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->offset:[[F

    move-object/from16 v26, v0

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget v26, v26, v27

    sub-float v25, v25, v26

    move/from16 v24, v25

    .line 799
    move-object/from16 v25, v1

    move/from16 v26, v21

    move/from16 v27, v22

    move/from16 v28, v21

    move/from16 v29, v14

    add-float v28, v28, v29

    move/from16 v29, v22

    move/from16 v30, v15

    add-float v29, v29, v30

    move/from16 v30, v23

    move/from16 v31, v24

    move/from16 v32, v23

    move/from16 v33, v12

    sub-float v32, v32, v33

    move/from16 v33, v24

    move/from16 v34, v13

    sub-float v33, v33, v34

    move-object/from16 v34, v5

    const/16 v35, 0x2

    invoke-direct/range {v25 .. v35}, Lcom/sun/openpisces/Stroker;->safecomputeMiter(FFFFFFFF[FI)V

    .line 800
    move-object/from16 v25, v5

    const/16 v26, 0x0

    move/from16 v27, v21

    aput v27, v25, v26

    move-object/from16 v25, v5

    const/16 v26, 0x1

    move/from16 v27, v22

    aput v27, v25, v26

    .line 801
    move-object/from16 v25, v5

    const/16 v26, 0x4

    move/from16 v27, v23

    aput v27, v25, v26

    move-object/from16 v25, v5

    const/16 v26, 0x5

    move/from16 v27, v24

    aput v27, v25, v26

    .line 802
    const/16 v25, 0x6

    move/from16 v1, v25

    goto/16 :goto_0
.end method

.method private drawBezApproxForArc(FFFFFFZ)V
    .locals 30

    .prologue
    .line 256
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/openpisces/Stroker;
    move/from16 v3, p1

    .local v3, "cx":F
    move/from16 v4, p2

    .local v4, "cy":F
    move/from16 v5, p3

    .local v5, "omx":F
    move/from16 v6, p4

    .local v6, "omy":F
    move/from16 v7, p5

    .local v7, "mx":F
    move/from16 v8, p6

    .local v8, "my":F
    move/from16 v9, p7

    .local v9, "rev":Z
    move/from16 v20, v5

    move/from16 v21, v7

    mul-float v20, v20, v21

    move/from16 v21, v6

    move/from16 v22, v8

    mul-float v21, v21, v22

    add-float v20, v20, v21

    const/high16 v21, 0x40000000    # 2.0f

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sun/openpisces/Stroker;->lineWidth2:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sun/openpisces/Stroker;->lineWidth2:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    div-float v20, v20, v21

    move/from16 v10, v20

    .line 262
    .local v10, "cosext2":F
    const-wide v20, 0x3ff5555555555555L    # 1.3333333333333333

    const-wide/high16 v22, 0x3fe0000000000000L    # 0.5

    move/from16 v24, v10

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    sub-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    move/from16 v24, v10

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x3fe0000000000000L    # 0.5

    add-double v24, v24, v26

    .line 263
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v24

    add-double v22, v22, v24

    div-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    move/from16 v11, v20

    .line 265
    .local v11, "cv":F
    move/from16 v20, v9

    if-eqz v20, :cond_0

    .line 266
    move/from16 v20, v11

    move/from16 v0, v20

    neg-float v0, v0

    move/from16 v20, v0

    move/from16 v11, v20

    .line 268
    :cond_0
    move/from16 v20, v3

    move/from16 v21, v5

    add-float v20, v20, v21

    move/from16 v12, v20

    .line 269
    .local v12, "x1":F
    move/from16 v20, v4

    move/from16 v21, v6

    add-float v20, v20, v21

    move/from16 v13, v20

    .line 270
    .local v13, "y1":F
    move/from16 v20, v12

    move/from16 v21, v11

    move/from16 v22, v6

    mul-float v21, v21, v22

    sub-float v20, v20, v21

    move/from16 v14, v20

    .line 271
    .local v14, "x2":F
    move/from16 v20, v13

    move/from16 v21, v11

    move/from16 v22, v5

    mul-float v21, v21, v22

    add-float v20, v20, v21

    move/from16 v15, v20

    .line 273
    .local v15, "y2":F
    move/from16 v20, v3

    move/from16 v21, v7

    add-float v20, v20, v21

    move/from16 v16, v20

    .line 274
    .local v16, "x4":F
    move/from16 v20, v4

    move/from16 v21, v8

    add-float v20, v20, v21

    move/from16 v17, v20

    .line 275
    .local v17, "y4":F
    move/from16 v20, v16

    move/from16 v21, v11

    move/from16 v22, v8

    mul-float v21, v21, v22

    add-float v20, v20, v21

    move/from16 v18, v20

    .line 276
    .local v18, "x3":F
    move/from16 v20, v17

    move/from16 v21, v11

    move/from16 v22, v7

    mul-float v21, v21, v22

    sub-float v20, v20, v21

    move/from16 v19, v20

    .line 278
    .local v19, "y3":F
    move-object/from16 v20, v2

    move/from16 v21, v12

    move/from16 v22, v13

    move/from16 v23, v14

    move/from16 v24, v15

    move/from16 v25, v18

    move/from16 v26, v19

    move/from16 v27, v16

    move/from16 v28, v17

    move/from16 v29, v9

    invoke-direct/range {v20 .. v29}, Lcom/sun/openpisces/Stroker;->emitCurveTo(FFFFFFFFZ)V

    .line 279
    return-void
.end method

.method private drawJoin(FFFFFFFFFF)V
    .locals 24

    .prologue
    .line 548
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/openpisces/Stroker;
    move/from16 v1, p1

    .local v1, "pdx":F
    move/from16 v2, p2

    .local v2, "pdy":F
    move/from16 v3, p3

    .local v3, "x0":F
    move/from16 v4, p4

    .local v4, "y0":F
    move/from16 v5, p5

    .local v5, "dx":F
    move/from16 v6, p6

    .local v6, "dy":F
    move/from16 v7, p7

    .local v7, "omx":F
    move/from16 v8, p8

    .local v8, "omy":F
    move/from16 v9, p9

    .local v9, "mx":F
    move/from16 v10, p10

    .local v10, "my":F
    move-object v12, v0

    iget v12, v12, Lcom/sun/openpisces/Stroker;->prev:I

    const/4 v13, 0x1

    if-eq v12, v13, :cond_0

    .line 549
    move-object v12, v0

    move v13, v3

    move v14, v9

    add-float/2addr v13, v14

    move v14, v4

    move v15, v10

    add-float/2addr v14, v15

    invoke-direct {v12, v13, v14}, Lcom/sun/openpisces/Stroker;->emitMoveTo(FF)V

    .line 550
    move-object v12, v0

    move v13, v5

    iput v13, v12, Lcom/sun/openpisces/Stroker;->sdx:F

    .line 551
    move-object v12, v0

    move v13, v6

    iput v13, v12, Lcom/sun/openpisces/Stroker;->sdy:F

    .line 552
    move-object v12, v0

    move v13, v9

    iput v13, v12, Lcom/sun/openpisces/Stroker;->smx:F

    .line 553
    move-object v12, v0

    move v13, v10

    iput v13, v12, Lcom/sun/openpisces/Stroker;->smy:F

    .line 566
    :goto_0
    move-object v12, v0

    const/4 v13, 0x1

    iput v13, v12, Lcom/sun/openpisces/Stroker;->prev:I

    .line 567
    return-void

    .line 555
    :cond_0
    move v12, v1

    move v13, v2

    move v14, v5

    move v15, v6

    invoke-static {v12, v13, v14, v15}, Lcom/sun/openpisces/Stroker;->isCW(FFFF)Z

    move-result v12

    move v11, v12

    .line 556
    .local v11, "cw":Z
    move-object v12, v0

    iget v12, v12, Lcom/sun/openpisces/Stroker;->joinStyle:I

    if-nez v12, :cond_2

    .line 557
    move-object v12, v0

    move v13, v1

    move v14, v2

    move v15, v3

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v8

    move/from16 v21, v9

    move/from16 v22, v10

    move/from16 v23, v11

    invoke-direct/range {v12 .. v23}, Lcom/sun/openpisces/Stroker;->drawMiter(FFFFFFFFFFZ)V

    .line 564
    :cond_1
    :goto_1
    move-object v12, v0

    move v13, v3

    move v14, v4

    move v15, v11

    if-nez v15, :cond_3

    const/4 v15, 0x1

    :goto_2
    invoke-direct {v12, v13, v14, v15}, Lcom/sun/openpisces/Stroker;->emitLineTo(FFZ)V

    goto :goto_0

    .line 558
    :cond_2
    move-object v12, v0

    iget v12, v12, Lcom/sun/openpisces/Stroker;->joinStyle:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1

    .line 559
    move-object v12, v0

    move v13, v3

    move v14, v4

    move v15, v7

    move/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, v10

    move/from16 v19, v11

    const/high16 v20, 0x3c7a0000

    invoke-direct/range {v12 .. v20}, Lcom/sun/openpisces/Stroker;->drawRoundJoin(FFFFFFZF)V

    goto :goto_1

    .line 564
    :cond_3
    const/4 v15, 0x0

    goto :goto_2
.end method

.method private drawMiter(FFFFFFFFFFZ)V
    .locals 25

    .prologue
    .line 369
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/openpisces/Stroker;
    move/from16 v2, p1

    .local v2, "pdx":F
    move/from16 v3, p2

    .local v3, "pdy":F
    move/from16 v4, p3

    .local v4, "x0":F
    move/from16 v5, p4

    .local v5, "y0":F
    move/from16 v6, p5

    .local v6, "dx":F
    move/from16 v7, p6

    .local v7, "dy":F
    move/from16 v8, p7

    .local v8, "omx":F
    move/from16 v9, p8

    .local v9, "omy":F
    move/from16 v10, p9

    .local v10, "mx":F
    move/from16 v11, p10

    .local v11, "my":F
    move/from16 v12, p11

    .local v12, "rev":Z
    move v14, v10

    move v15, v8

    cmpl-float v14, v14, v15

    if-nez v14, :cond_0

    move v14, v11

    move v15, v9

    cmpl-float v14, v14, v15

    if-eqz v14, :cond_2

    :cond_0
    move v14, v2

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-nez v14, :cond_1

    move v14, v3

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-eqz v14, :cond_2

    :cond_1
    move v14, v6

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-nez v14, :cond_3

    move v14, v7

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-nez v14, :cond_3

    .line 372
    .line 391
    :cond_2
    :goto_0
    return-void

    .line 375
    :cond_3
    move v14, v12

    if-eqz v14, :cond_4

    .line 376
    move v14, v8

    neg-float v14, v14

    move v8, v14

    .line 377
    move v14, v9

    neg-float v14, v14

    move v9, v14

    .line 378
    move v14, v10

    neg-float v14, v14

    move v10, v14

    .line 379
    move v14, v11

    neg-float v14, v14

    move v11, v14

    .line 382
    :cond_4
    move-object v14, v1

    move v15, v4

    move/from16 v16, v2

    sub-float v15, v15, v16

    move/from16 v16, v8

    add-float v15, v15, v16

    move/from16 v16, v5

    move/from16 v17, v3

    sub-float v16, v16, v17

    move/from16 v17, v9

    add-float v16, v16, v17

    move/from16 v17, v4

    move/from16 v18, v8

    add-float v17, v17, v18

    move/from16 v18, v5

    move/from16 v19, v9

    add-float v18, v18, v19

    move/from16 v19, v6

    move/from16 v20, v4

    add-float v19, v19, v20

    move/from16 v20, v10

    add-float v19, v19, v20

    move/from16 v20, v7

    move/from16 v21, v5

    add-float v20, v20, v21

    move/from16 v21, v11

    add-float v20, v20, v21

    move/from16 v21, v4

    move/from16 v22, v10

    add-float v21, v21, v22

    move/from16 v22, v5

    move/from16 v23, v11

    add-float v22, v22, v23

    move-object/from16 v23, v1

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->miter:[F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-direct/range {v14 .. v24}, Lcom/sun/openpisces/Stroker;->computeMiter(FFFFFFFF[FI)V

    .line 386
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/openpisces/Stroker;->miter:[F

    const/4 v15, 0x0

    aget v14, v14, v15

    move v15, v4

    sub-float/2addr v14, v15

    move-object v15, v1

    iget-object v15, v15, Lcom/sun/openpisces/Stroker;->miter:[F

    const/16 v16, 0x0

    aget v15, v15, v16

    move/from16 v16, v4

    sub-float v15, v15, v16

    mul-float/2addr v14, v15

    move-object v15, v1

    iget-object v15, v15, Lcom/sun/openpisces/Stroker;->miter:[F

    const/16 v16, 0x1

    aget v15, v15, v16

    move/from16 v16, v5

    sub-float v15, v15, v16

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->miter:[F

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget v16, v16, v17

    move/from16 v17, v5

    sub-float v16, v16, v17

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    move v13, v14

    .line 388
    .local v13, "lenSq":F
    move v14, v13

    move-object v15, v1

    iget v15, v15, Lcom/sun/openpisces/Stroker;->miterLimitSq:F

    cmpg-float v14, v14, v15

    if-gez v14, :cond_5

    .line 389
    move-object v14, v1

    move-object v15, v1

    iget-object v15, v15, Lcom/sun/openpisces/Stroker;->miter:[F

    const/16 v16, 0x0

    aget v15, v15, v16

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->miter:[F

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget v16, v16, v17

    move/from16 v17, v12

    invoke-direct/range {v14 .. v17}, Lcom/sun/openpisces/Stroker;->emitLineTo(FFZ)V

    .line 391
    :cond_5
    goto/16 :goto_0
.end method

.method private drawRoundCap(FFFF)V
    .locals 16

    .prologue
    .line 282
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/openpisces/Stroker;
    move/from16 v1, p1

    .local v1, "cx":F
    move/from16 v2, p2

    .local v2, "cy":F
    move/from16 v3, p3

    .local v3, "mx":F
    move/from16 v4, p4

    .local v4, "my":F
    const v6, 0x3f0d6289

    move v5, v6

    .line 288
    .local v5, "C":F
    move-object v6, v0

    move v7, v1

    move v8, v3

    add-float/2addr v7, v8

    move v8, v2

    move v9, v4

    add-float/2addr v8, v9

    move v9, v1

    move v10, v3

    add-float/2addr v9, v10

    const v10, 0x3f0d6289

    move v11, v4

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    move v10, v2

    move v11, v4

    add-float/2addr v10, v11

    const v11, 0x3f0d6289

    move v12, v3

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    move v11, v1

    move v12, v4

    sub-float/2addr v11, v12

    const v12, 0x3f0d6289

    move v13, v3

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    move v12, v2

    move v13, v3

    add-float/2addr v12, v13

    const v13, 0x3f0d6289

    move v14, v4

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    move v13, v1

    move v14, v4

    sub-float/2addr v13, v14

    move v14, v2

    move v15, v3

    add-float/2addr v14, v15

    const/4 v15, 0x0

    invoke-direct/range {v6 .. v15}, Lcom/sun/openpisces/Stroker;->emitCurveTo(FFFFFFFFZ)V

    .line 293
    move-object v6, v0

    move v7, v1

    move v8, v4

    sub-float/2addr v7, v8

    move v8, v2

    move v9, v3

    add-float/2addr v8, v9

    move v9, v1

    move v10, v4

    sub-float/2addr v9, v10

    const v10, 0x3f0d6289

    move v11, v3

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    move v10, v2

    move v11, v3

    add-float/2addr v10, v11

    const v11, 0x3f0d6289

    move v12, v4

    mul-float/2addr v11, v12

    sub-float/2addr v10, v11

    move v11, v1

    move v12, v3

    sub-float/2addr v11, v12

    const v12, 0x3f0d6289

    move v13, v4

    mul-float/2addr v12, v13

    sub-float/2addr v11, v12

    move v12, v2

    move v13, v4

    sub-float/2addr v12, v13

    const v13, 0x3f0d6289

    move v14, v3

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    move v13, v1

    move v14, v3

    sub-float/2addr v13, v14

    move v14, v2

    move v15, v4

    sub-float/2addr v14, v15

    const/4 v15, 0x0

    invoke-direct/range {v6 .. v15}, Lcom/sun/openpisces/Stroker;->emitCurveTo(FFFFFFFFZ)V

    .line 298
    return-void
.end method

.method private drawRoundJoin(FFFFFFZ)V
    .locals 28

    .prologue
    .line 207
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/openpisces/Stroker;
    move/from16 v4, p1

    .local v4, "cx":F
    move/from16 v5, p2

    .local v5, "cy":F
    move/from16 v6, p3

    .local v6, "omx":F
    move/from16 v7, p4

    .local v7, "omy":F
    move/from16 v8, p5

    .local v8, "mx":F
    move/from16 v9, p6

    .local v9, "my":F
    move/from16 v10, p7

    .local v10, "rev":Z
    move/from16 v20, v6

    move/from16 v21, v8

    mul-float v20, v20, v21

    move/from16 v21, v7

    move/from16 v22, v9

    mul-float v21, v21, v22

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v11, v20

    .line 211
    .local v11, "cosext":D
    move-wide/from16 v20, v11

    const-wide/16 v22, 0x0

    cmpl-double v20, v20, v22

    if-ltz v20, :cond_0

    const/16 v20, 0x1

    :goto_0
    move/from16 v13, v20

    .line 213
    .local v13, "numCurves":I
    move/from16 v20, v13

    packed-switch v20, :pswitch_data_0

    .line 248
    :goto_1
    return-void

    .line 211
    .end local v13    # "numCurves":I
    :cond_0
    const/16 v20, 0x2

    goto :goto_0

    .line 215
    .restart local v13    # "numCurves":I
    :pswitch_0
    move-object/from16 v20, v3

    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v24, v7

    move/from16 v25, v8

    move/from16 v26, v9

    move/from16 v27, v10

    invoke-direct/range {v20 .. v27}, Lcom/sun/openpisces/Stroker;->drawBezApproxForArc(FFFFFFZ)V

    .line 216
    goto :goto_1

    .line 232
    :pswitch_1
    move/from16 v20, v9

    move/from16 v21, v7

    sub-float v20, v20, v21

    move/from16 v14, v20

    .local v14, "nx":F
    move/from16 v20, v6

    move/from16 v21, v8

    sub-float v20, v20, v21

    move/from16 v15, v20

    .line 233
    .local v15, "ny":F
    move/from16 v20, v14

    move/from16 v21, v14

    mul-float v20, v20, v21

    move/from16 v21, v15

    move/from16 v22, v15

    mul-float v21, v21, v22

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    move/from16 v16, v20

    .line 234
    .local v16, "nlen":F
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/openpisces/Stroker;->lineWidth2:F

    move/from16 v20, v0

    move/from16 v21, v16

    div-float v20, v20, v21

    move/from16 v17, v20

    .line 235
    .local v17, "scale":F
    move/from16 v20, v14

    move/from16 v21, v17

    mul-float v20, v20, v21

    move/from16 v18, v20

    .local v18, "mmx":F
    move/from16 v20, v15

    move/from16 v21, v17

    mul-float v20, v20, v21

    move/from16 v19, v20

    .line 240
    .local v19, "mmy":F
    move/from16 v20, v10

    if-eqz v20, :cond_1

    .line 241
    move/from16 v20, v18

    move/from16 v0, v20

    neg-float v0, v0

    move/from16 v20, v0

    move/from16 v18, v20

    .line 242
    move/from16 v20, v19

    move/from16 v0, v20

    neg-float v0, v0

    move/from16 v20, v0

    move/from16 v19, v20

    .line 244
    :cond_1
    move-object/from16 v20, v3

    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v24, v7

    move/from16 v25, v18

    move/from16 v26, v19

    move/from16 v27, v10

    invoke-direct/range {v20 .. v27}, Lcom/sun/openpisces/Stroker;->drawBezApproxForArc(FFFFFFZ)V

    .line 245
    move-object/from16 v20, v3

    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v23, v18

    move/from16 v24, v19

    move/from16 v25, v8

    move/from16 v26, v9

    move/from16 v27, v10

    invoke-direct/range {v20 .. v27}, Lcom/sun/openpisces/Stroker;->drawBezApproxForArc(FFFFFFZ)V

    goto/16 :goto_1

    .line 213
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private drawRoundJoin(FFFFFFZF)V
    .locals 20

    .prologue
    .line 179
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/openpisces/Stroker;
    move/from16 v1, p1

    .local v1, "x":F
    move/from16 v2, p2

    .local v2, "y":F
    move/from16 v3, p3

    .local v3, "omx":F
    move/from16 v4, p4

    .local v4, "omy":F
    move/from16 v5, p5

    .local v5, "mx":F
    move/from16 v6, p6

    .local v6, "my":F
    move/from16 v7, p7

    .local v7, "rev":Z
    move/from16 v8, p8

    .local v8, "threshold":F
    move v12, v3

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-nez v12, :cond_0

    move v12, v4

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-eqz v12, :cond_1

    :cond_0
    move v12, v5

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-nez v12, :cond_2

    move v12, v6

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-nez v12, :cond_2

    .line 180
    .line 197
    :cond_1
    :goto_0
    return-void

    .line 183
    :cond_2
    move v12, v3

    move v13, v5

    sub-float/2addr v12, v13

    move v9, v12

    .line 184
    .local v9, "domx":F
    move v12, v4

    move v13, v6

    sub-float/2addr v12, v13

    move v10, v12

    .line 185
    .local v10, "domy":F
    move v12, v9

    move v13, v9

    mul-float/2addr v12, v13

    move v13, v10

    move v14, v10

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    move v11, v12

    .line 186
    .local v11, "len":F
    move v12, v11

    move v13, v8

    cmpg-float v12, v12, v13

    if-gez v12, :cond_3

    .line 187
    goto :goto_0

    .line 190
    :cond_3
    move v12, v7

    if-eqz v12, :cond_4

    .line 191
    move v12, v3

    neg-float v12, v12

    move v3, v12

    .line 192
    move v12, v4

    neg-float v12, v12

    move v4, v12

    .line 193
    move v12, v5

    neg-float v12, v12

    move v5, v12

    .line 194
    move v12, v6

    neg-float v12, v12

    move v6, v12

    .line 196
    :cond_4
    move-object v12, v0

    move v13, v1

    move v14, v2

    move v15, v3

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v7

    invoke-direct/range {v12 .. v19}, Lcom/sun/openpisces/Stroker;->drawRoundJoin(FFFFFFZ)V

    .line 197
    goto :goto_0
.end method

.method private emitClose()V
    .locals 2

    .prologue
    .line 539
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Stroker;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/openpisces/Stroker;->out:Lcom/sun/javafx/geom/PathConsumer2D;

    invoke-interface {v1}, Lcom/sun/javafx/geom/PathConsumer2D;->closePath()V

    .line 540
    return-void
.end method

.method private emitCurveTo(FFFFFFFFZ)V
    .locals 17

    .prologue
    .line 531
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/openpisces/Stroker;
    move/from16 v1, p1

    .local v1, "x0":F
    move/from16 v2, p2

    .local v2, "y0":F
    move/from16 v3, p3

    .local v3, "x1":F
    move/from16 v4, p4

    .local v4, "y1":F
    move/from16 v5, p5

    .local v5, "x2":F
    move/from16 v6, p6

    .local v6, "y2":F
    move/from16 v7, p7

    .local v7, "x3":F
    move/from16 v8, p8

    .local v8, "y3":F
    move/from16 v9, p9

    .local v9, "rev":Z
    move v10, v9

    if-eqz v10, :cond_0

    .line 532
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/openpisces/Stroker;->reverse:Lcom/sun/openpisces/Stroker$PolyStack;

    move v11, v1

    move v12, v2

    move v13, v3

    move v14, v4

    move v15, v5

    move/from16 v16, v6

    invoke-virtual/range {v10 .. v16}, Lcom/sun/openpisces/Stroker$PolyStack;->pushCubic(FFFFFF)V

    .line 536
    :goto_0
    return-void

    .line 534
    :cond_0
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/openpisces/Stroker;->out:Lcom/sun/javafx/geom/PathConsumer2D;

    move v11, v3

    move v12, v4

    move v13, v5

    move v14, v6

    move v15, v7

    move/from16 v16, v8

    invoke-interface/range {v10 .. v16}, Lcom/sun/javafx/geom/PathConsumer2D;->curveTo(FFFFFF)V

    goto :goto_0
.end method

.method private emitLineTo(FF)V
    .locals 6

    .prologue
    .line 502
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Stroker;
    move v1, p1

    .local v1, "x1":F
    move v2, p2

    .local v2, "y1":F
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/openpisces/Stroker;->out:Lcom/sun/javafx/geom/PathConsumer2D;

    move v4, v1

    move v5, v2

    invoke-interface {v3, v4, v5}, Lcom/sun/javafx/geom/PathConsumer2D;->lineTo(FF)V

    .line 503
    return-void
.end method

.method private emitLineTo(FFZ)V
    .locals 7

    .prologue
    .line 508
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Stroker;
    move v1, p1

    .local v1, "x1":F
    move v2, p2

    .local v2, "y1":F
    move v3, p3

    .local v3, "rev":Z
    move v4, v3

    if-eqz v4, :cond_0

    .line 509
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/openpisces/Stroker;->reverse:Lcom/sun/openpisces/Stroker$PolyStack;

    move v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/sun/openpisces/Stroker$PolyStack;->pushLine(FF)V

    .line 513
    :goto_0
    return-void

    .line 511
    :cond_0
    move-object v4, v0

    move v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Lcom/sun/openpisces/Stroker;->emitLineTo(FF)V

    goto :goto_0
.end method

.method private emitMoveTo(FF)V
    .locals 6

    .prologue
    .line 498
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Stroker;
    move v1, p1

    .local v1, "x0":F
    move v2, p2

    .local v2, "y0":F
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/openpisces/Stroker;->out:Lcom/sun/javafx/geom/PathConsumer2D;

    move v4, v1

    move v5, v2

    invoke-interface {v3, v4, v5}, Lcom/sun/javafx/geom/PathConsumer2D;->moveTo(FF)V

    .line 499
    return-void
.end method

.method private emitQuadTo(FFFFFFZ)V
    .locals 13

    .prologue
    .line 519
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Stroker;
    move v1, p1

    .local v1, "x0":F
    move v2, p2

    .local v2, "y0":F
    move/from16 v3, p3

    .local v3, "x1":F
    move/from16 v4, p4

    .local v4, "y1":F
    move/from16 v5, p5

    .local v5, "x2":F
    move/from16 v6, p6

    .local v6, "y2":F
    move/from16 v7, p7

    .local v7, "rev":Z
    move v8, v7

    if-eqz v8, :cond_0

    .line 520
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/openpisces/Stroker;->reverse:Lcom/sun/openpisces/Stroker$PolyStack;

    move v9, v1

    move v10, v2

    move v11, v3

    move v12, v4

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/sun/openpisces/Stroker$PolyStack;->pushQuad(FFFF)V

    .line 524
    :goto_0
    return-void

    .line 522
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/openpisces/Stroker;->out:Lcom/sun/javafx/geom/PathConsumer2D;

    move v9, v3

    move v10, v4

    move v11, v5

    move v12, v6

    invoke-interface {v8, v9, v10, v11, v12}, Lcom/sun/javafx/geom/PathConsumer2D;->quadTo(FFFF)V

    goto :goto_0
.end method

.method private emitReverse()V
    .locals 3

    .prologue
    .line 461
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Stroker;
    :goto_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/openpisces/Stroker;->reverse:Lcom/sun/openpisces/Stroker$PolyStack;

    invoke-virtual {v1}, Lcom/sun/openpisces/Stroker$PolyStack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 462
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/openpisces/Stroker;->reverse:Lcom/sun/openpisces/Stroker$PolyStack;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/openpisces/Stroker;->out:Lcom/sun/javafx/geom/PathConsumer2D;

    invoke-virtual {v1, v2}, Lcom/sun/openpisces/Stroker$PolyStack;->pop(Lcom/sun/javafx/geom/PathConsumer2D;)V

    goto :goto_0

    .line 464
    :cond_0
    return-void
.end method

.method private static findSubdivPoints([F[FIF)I
    .locals 29

    .prologue
    .line 930
    move-object/from16 v3, p0

    .local v3, "pts":[F
    move-object/from16 v4, p1

    .local v4, "ts":[F
    move/from16 v5, p2

    .local v5, "type":I
    move/from16 v6, p3

    .local v6, "w":F
    move-object/from16 v20, v3

    const/16 v21, 0x2

    aget v20, v20, v21

    move-object/from16 v21, v3

    const/16 v22, 0x0

    aget v21, v21, v22

    sub-float v20, v20, v21

    move/from16 v7, v20

    .line 931
    .local v7, "x12":F
    move-object/from16 v20, v3

    const/16 v21, 0x3

    aget v20, v20, v21

    move-object/from16 v21, v3

    const/16 v22, 0x1

    aget v21, v21, v22

    sub-float v20, v20, v21

    move/from16 v8, v20

    .line 934
    .local v8, "y12":F
    move/from16 v20, v8

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-eqz v20, :cond_1

    move/from16 v20, v7

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-eqz v20, :cond_1

    .line 938
    move/from16 v20, v7

    move/from16 v21, v7

    mul-float v20, v20, v21

    move/from16 v21, v8

    move/from16 v22, v8

    mul-float v21, v21, v22

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    move/from16 v9, v20

    .line 939
    .local v9, "hypot":F
    move/from16 v20, v7

    move/from16 v21, v9

    div-float v20, v20, v21

    move/from16 v10, v20

    .line 940
    .local v10, "cos":F
    move/from16 v20, v8

    move/from16 v21, v9

    div-float v20, v20, v21

    move/from16 v11, v20

    .line 941
    .local v11, "sin":F
    move/from16 v20, v10

    move-object/from16 v21, v3

    const/16 v22, 0x0

    aget v21, v21, v22

    mul-float v20, v20, v21

    move/from16 v21, v11

    move-object/from16 v22, v3

    const/16 v23, 0x1

    aget v22, v22, v23

    mul-float v21, v21, v22

    add-float v20, v20, v21

    move/from16 v12, v20

    .line 942
    .local v12, "x1":F
    move/from16 v20, v10

    move-object/from16 v21, v3

    const/16 v22, 0x1

    aget v21, v21, v22

    mul-float v20, v20, v21

    move/from16 v21, v11

    move-object/from16 v22, v3

    const/16 v23, 0x0

    aget v22, v22, v23

    mul-float v21, v21, v22

    sub-float v20, v20, v21

    move/from16 v13, v20

    .line 943
    .local v13, "y1":F
    move/from16 v20, v10

    move-object/from16 v21, v3

    const/16 v22, 0x2

    aget v21, v21, v22

    mul-float v20, v20, v21

    move/from16 v21, v11

    move-object/from16 v22, v3

    const/16 v23, 0x3

    aget v22, v22, v23

    mul-float v21, v21, v22

    add-float v20, v20, v21

    move/from16 v14, v20

    .line 944
    .local v14, "x2":F
    move/from16 v20, v10

    move-object/from16 v21, v3

    const/16 v22, 0x3

    aget v21, v21, v22

    mul-float v20, v20, v21

    move/from16 v21, v11

    move-object/from16 v22, v3

    const/16 v23, 0x2

    aget v22, v22, v23

    mul-float v21, v21, v22

    sub-float v20, v20, v21

    move/from16 v15, v20

    .line 945
    .local v15, "y2":F
    move/from16 v20, v10

    move-object/from16 v21, v3

    const/16 v22, 0x4

    aget v21, v21, v22

    mul-float v20, v20, v21

    move/from16 v21, v11

    move-object/from16 v22, v3

    const/16 v23, 0x5

    aget v22, v22, v23

    mul-float v21, v21, v22

    add-float v20, v20, v21

    move/from16 v16, v20

    .line 946
    .local v16, "x3":F
    move/from16 v20, v10

    move-object/from16 v21, v3

    const/16 v22, 0x5

    aget v21, v21, v22

    mul-float v20, v20, v21

    move/from16 v21, v11

    move-object/from16 v22, v3

    const/16 v23, 0x4

    aget v22, v22, v23

    mul-float v21, v21, v22

    sub-float v20, v20, v21

    move/from16 v17, v20

    .line 947
    .local v17, "y3":F
    move/from16 v20, v5

    packed-switch v20, :pswitch_data_0

    .line 957
    .line 961
    .end local v9    # "hypot":F
    .end local v10    # "cos":F
    .end local v11    # "sin":F
    .end local v12    # "x1":F
    .end local v13    # "y1":F
    .end local v14    # "x2":F
    .end local v15    # "y2":F
    .end local v16    # "x3":F
    .end local v17    # "y3":F
    :goto_0
    :pswitch_0
    const/16 v20, 0x0

    move/from16 v9, v20

    .line 964
    .local v9, "ret":I
    move/from16 v20, v9

    sget-object v21, Lcom/sun/openpisces/Stroker;->c:Lcom/sun/openpisces/Curve;

    move-object/from16 v22, v4

    move/from16 v23, v9

    invoke-virtual/range {v21 .. v23}, Lcom/sun/openpisces/Curve;->dxRoots([FI)I

    move-result v21

    add-int v20, v20, v21

    move/from16 v9, v20

    .line 965
    move/from16 v20, v9

    sget-object v21, Lcom/sun/openpisces/Stroker;->c:Lcom/sun/openpisces/Curve;

    move-object/from16 v22, v4

    move/from16 v23, v9

    invoke-virtual/range {v21 .. v23}, Lcom/sun/openpisces/Curve;->dyRoots([FI)I

    move-result v21

    add-int v20, v20, v21

    move/from16 v9, v20

    .line 967
    move/from16 v20, v5

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 969
    move/from16 v20, v9

    sget-object v21, Lcom/sun/openpisces/Stroker;->c:Lcom/sun/openpisces/Curve;

    move-object/from16 v22, v4

    move/from16 v23, v9

    invoke-virtual/range {v21 .. v23}, Lcom/sun/openpisces/Curve;->infPoints([FI)I

    move-result v21

    add-int v20, v20, v21

    move/from16 v9, v20

    .line 974
    :cond_0
    move/from16 v20, v9

    sget-object v21, Lcom/sun/openpisces/Stroker;->c:Lcom/sun/openpisces/Curve;

    move-object/from16 v22, v4

    move/from16 v23, v9

    move/from16 v24, v6

    const v25, 0x38d1b717    # 1.0E-4f

    invoke-virtual/range {v21 .. v25}, Lcom/sun/openpisces/Curve;->rootsOfROCMinusW([FIFF)I

    move-result v21

    add-int v20, v20, v21

    move/from16 v9, v20

    .line 976
    move-object/from16 v20, v4

    const/16 v21, 0x0

    move/from16 v22, v9

    const v23, 0x38d1b717    # 1.0E-4f

    const v24, 0x3f7ff972    # 0.9999f

    invoke-static/range {v20 .. v24}, Lcom/sun/openpisces/Helpers;->filterOutNotInAB([FIIFF)I

    move-result v20

    move/from16 v9, v20

    .line 977
    move-object/from16 v20, v4

    const/16 v21, 0x0

    move/from16 v22, v9

    invoke-static/range {v20 .. v22}, Lcom/sun/openpisces/Helpers;->isort([FII)V

    .line 978
    move/from16 v20, v9

    move/from16 v3, v20

    .end local v3    # "pts":[F
    return v3

    .line 949
    .restart local v3    # "pts":[F
    .local v9, "hypot":F
    .restart local v10    # "cos":F
    .restart local v11    # "sin":F
    .restart local v12    # "x1":F
    .restart local v13    # "y1":F
    .restart local v14    # "x2":F
    .restart local v15    # "y2":F
    .restart local v16    # "x3":F
    .restart local v17    # "y3":F
    :pswitch_1
    move/from16 v20, v10

    move-object/from16 v21, v3

    const/16 v22, 0x6

    aget v21, v21, v22

    mul-float v20, v20, v21

    move/from16 v21, v11

    move-object/from16 v22, v3

    const/16 v23, 0x7

    aget v22, v22, v23

    mul-float v21, v21, v22

    add-float v20, v20, v21

    move/from16 v18, v20

    .line 950
    .local v18, "x4":F
    move/from16 v20, v10

    move-object/from16 v21, v3

    const/16 v22, 0x7

    aget v21, v21, v22

    mul-float v20, v20, v21

    move/from16 v21, v11

    move-object/from16 v22, v3

    const/16 v23, 0x6

    aget v22, v22, v23

    mul-float v21, v21, v22

    sub-float v20, v20, v21

    move/from16 v19, v20

    .line 951
    .local v19, "y4":F
    sget-object v20, Lcom/sun/openpisces/Stroker;->c:Lcom/sun/openpisces/Curve;

    move/from16 v21, v12

    move/from16 v22, v13

    move/from16 v23, v14

    move/from16 v24, v15

    move/from16 v25, v16

    move/from16 v26, v17

    move/from16 v27, v18

    move/from16 v28, v19

    invoke-virtual/range {v20 .. v28}, Lcom/sun/openpisces/Curve;->set(FFFFFFFF)V

    .line 952
    goto/16 :goto_0

    .line 954
    .end local v18    # "x4":F
    .end local v19    # "y4":F
    :pswitch_2
    sget-object v20, Lcom/sun/openpisces/Stroker;->c:Lcom/sun/openpisces/Curve;

    move/from16 v21, v12

    move/from16 v22, v13

    move/from16 v23, v14

    move/from16 v24, v15

    move/from16 v25, v16

    move/from16 v26, v17

    invoke-virtual/range {v20 .. v26}, Lcom/sun/openpisces/Curve;->set(FFFFFF)V

    goto/16 :goto_0

    .line 958
    .end local v9    # "hypot":F
    .end local v10    # "cos":F
    .end local v11    # "sin":F
    .end local v12    # "x1":F
    .end local v13    # "y1":F
    .end local v14    # "x2":F
    .end local v15    # "y2":F
    .end local v16    # "x3":F
    .end local v17    # "y3":F
    :cond_1
    sget-object v20, Lcom/sun/openpisces/Stroker;->c:Lcom/sun/openpisces/Curve;

    move-object/from16 v21, v3

    move/from16 v22, v5

    invoke-virtual/range {v20 .. v22}, Lcom/sun/openpisces/Curve;->set([FI)V

    goto/16 :goto_0

    .line 947
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private finish()V
    .locals 6

    .prologue
    .line 478
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Stroker;
    move-object v1, v0

    iget v1, v1, Lcom/sun/openpisces/Stroker;->capStyle:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 479
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/sun/openpisces/Stroker;->cx0:F

    move-object v3, v0

    iget v3, v3, Lcom/sun/openpisces/Stroker;->cy0:F

    move-object v4, v0

    iget v4, v4, Lcom/sun/openpisces/Stroker;->cmx:F

    move-object v5, v0

    iget v5, v5, Lcom/sun/openpisces/Stroker;->cmy:F

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sun/openpisces/Stroker;->drawRoundCap(FFFF)V

    .line 485
    :cond_0
    :goto_0
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/openpisces/Stroker;->emitReverse()V

    .line 487
    move-object v1, v0

    iget v1, v1, Lcom/sun/openpisces/Stroker;->capStyle:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 488
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/sun/openpisces/Stroker;->sx0:F

    move-object v3, v0

    iget v3, v3, Lcom/sun/openpisces/Stroker;->sy0:F

    move-object v4, v0

    iget v4, v4, Lcom/sun/openpisces/Stroker;->smx:F

    neg-float v4, v4

    move-object v5, v0

    iget v5, v5, Lcom/sun/openpisces/Stroker;->smy:F

    neg-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sun/openpisces/Stroker;->drawRoundCap(FFFF)V

    .line 494
    :cond_1
    :goto_1
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/openpisces/Stroker;->emitClose()V

    .line 495
    return-void

    .line 480
    :cond_2
    move-object v1, v0

    iget v1, v1, Lcom/sun/openpisces/Stroker;->capStyle:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 481
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/sun/openpisces/Stroker;->cx0:F

    move-object v3, v0

    iget v3, v3, Lcom/sun/openpisces/Stroker;->cmy:F

    sub-float/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Lcom/sun/openpisces/Stroker;->cmx:F

    add-float/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Lcom/sun/openpisces/Stroker;->cy0:F

    move-object v4, v0

    iget v4, v4, Lcom/sun/openpisces/Stroker;->cmx:F

    add-float/2addr v3, v4

    move-object v4, v0

    iget v4, v4, Lcom/sun/openpisces/Stroker;->cmy:F

    add-float/2addr v3, v4

    invoke-direct {v1, v2, v3}, Lcom/sun/openpisces/Stroker;->emitLineTo(FF)V

    .line 482
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/sun/openpisces/Stroker;->cx0:F

    move-object v3, v0

    iget v3, v3, Lcom/sun/openpisces/Stroker;->cmy:F

    sub-float/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Lcom/sun/openpisces/Stroker;->cmx:F

    sub-float/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Lcom/sun/openpisces/Stroker;->cy0:F

    move-object v4, v0

    iget v4, v4, Lcom/sun/openpisces/Stroker;->cmx:F

    add-float/2addr v3, v4

    move-object v4, v0

    iget v4, v4, Lcom/sun/openpisces/Stroker;->cmy:F

    sub-float/2addr v3, v4

    invoke-direct {v1, v2, v3}, Lcom/sun/openpisces/Stroker;->emitLineTo(FF)V

    goto :goto_0

    .line 489
    :cond_3
    move-object v1, v0

    iget v1, v1, Lcom/sun/openpisces/Stroker;->capStyle:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 490
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/sun/openpisces/Stroker;->sx0:F

    move-object v3, v0

    iget v3, v3, Lcom/sun/openpisces/Stroker;->smy:F

    add-float/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Lcom/sun/openpisces/Stroker;->smx:F

    sub-float/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Lcom/sun/openpisces/Stroker;->sy0:F

    move-object v4, v0

    iget v4, v4, Lcom/sun/openpisces/Stroker;->smx:F

    sub-float/2addr v3, v4

    move-object v4, v0

    iget v4, v4, Lcom/sun/openpisces/Stroker;->smy:F

    sub-float/2addr v3, v4

    invoke-direct {v1, v2, v3}, Lcom/sun/openpisces/Stroker;->emitLineTo(FF)V

    .line 491
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/sun/openpisces/Stroker;->sx0:F

    move-object v3, v0

    iget v3, v3, Lcom/sun/openpisces/Stroker;->smy:F

    add-float/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Lcom/sun/openpisces/Stroker;->smx:F

    add-float/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Lcom/sun/openpisces/Stroker;->sy0:F

    move-object v4, v0

    iget v4, v4, Lcom/sun/openpisces/Stroker;->smx:F

    sub-float/2addr v3, v4

    move-object v4, v0

    iget v4, v4, Lcom/sun/openpisces/Stroker;->smy:F

    add-float/2addr v3, v4

    invoke-direct {v1, v2, v3}, Lcom/sun/openpisces/Stroker;->emitLineTo(FF)V

    goto :goto_1
.end method

.method private getLineOffsets(FFFF[F[F)V
    .locals 12

    .prologue
    .line 583
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Stroker;
    move v1, p1

    .local v1, "x1":F
    move v2, p2

    .local v2, "y1":F
    move v3, p3

    .local v3, "x2":F
    move/from16 v4, p4

    .local v4, "y2":F
    move-object/from16 v5, p5

    .local v5, "left":[F
    move-object/from16 v6, p6

    .local v6, "right":[F
    move v7, v3

    move v8, v1

    sub-float/2addr v7, v8

    move v8, v4

    move v9, v2

    sub-float/2addr v8, v9

    move-object v9, v0

    iget v9, v9, Lcom/sun/openpisces/Stroker;->lineWidth2:F

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/openpisces/Stroker;->offset:[[F

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-static {v7, v8, v9, v10}, Lcom/sun/openpisces/Stroker;->computeOffset(FFF[F)V

    .line 584
    move-object v7, v5

    const/4 v8, 0x0

    move v9, v1

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/openpisces/Stroker;->offset:[[F

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const/4 v11, 0x0

    aget v10, v10, v11

    add-float/2addr v9, v10

    aput v9, v7, v8

    .line 585
    move-object v7, v5

    const/4 v8, 0x1

    move v9, v2

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/openpisces/Stroker;->offset:[[F

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const/4 v11, 0x1

    aget v10, v10, v11

    add-float/2addr v9, v10

    aput v9, v7, v8

    .line 586
    move-object v7, v5

    const/4 v8, 0x2

    move v9, v3

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/openpisces/Stroker;->offset:[[F

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const/4 v11, 0x0

    aget v10, v10, v11

    add-float/2addr v9, v10

    aput v9, v7, v8

    .line 587
    move-object v7, v5

    const/4 v8, 0x3

    move v9, v4

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/openpisces/Stroker;->offset:[[F

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const/4 v11, 0x1

    aget v10, v10, v11

    add-float/2addr v9, v10

    aput v9, v7, v8

    .line 588
    move-object v7, v6

    const/4 v8, 0x0

    move v9, v1

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/openpisces/Stroker;->offset:[[F

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const/4 v11, 0x0

    aget v10, v10, v11

    sub-float/2addr v9, v10

    aput v9, v7, v8

    .line 589
    move-object v7, v6

    const/4 v8, 0x1

    move v9, v2

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/openpisces/Stroker;->offset:[[F

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const/4 v11, 0x1

    aget v10, v10, v11

    sub-float/2addr v9, v10

    aput v9, v7, v8

    .line 590
    move-object v7, v6

    const/4 v8, 0x2

    move v9, v3

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/openpisces/Stroker;->offset:[[F

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const/4 v11, 0x0

    aget v10, v10, v11

    sub-float/2addr v9, v10

    aput v9, v7, v8

    .line 591
    move-object v7, v6

    const/4 v8, 0x3

    move v9, v4

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/openpisces/Stroker;->offset:[[F

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const/4 v11, 0x1

    aget v10, v10, v11

    sub-float/2addr v9, v10

    aput v9, v7, v8

    .line 592
    return-void
.end method

.method private static isCW(FFFF)Z
    .locals 7

    .prologue
    .line 166
    move v0, p0

    .local v0, "dx1":F
    move v1, p1

    .local v1, "dy1":F
    move v2, p2

    .local v2, "dx2":F
    move v3, p3

    .local v3, "dy2":F
    move v4, v0

    move v5, v3

    mul-float/2addr v4, v5

    move v5, v1

    move v6, v2

    mul-float/2addr v5, v6

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v0, v4

    .end local v0    # "dx1":F
    return v0

    .restart local v0    # "dx1":F
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private safecomputeMiter(FFFFFFFF[FI)V
    .locals 22

    .prologue
    .line 337
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/openpisces/Stroker;
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

    .line 338
    .local v11, "x10":F
    move/from16 v17, v4

    move/from16 v18, v2

    sub-float v17, v17, v18

    move/from16 v12, v17

    .line 339
    .local v12, "y10":F
    move/from16 v17, v7

    move/from16 v18, v5

    sub-float v17, v17, v18

    move/from16 v13, v17

    .line 340
    .local v13, "x10p":F
    move/from16 v17, v8

    move/from16 v18, v6

    sub-float v17, v17, v18

    move/from16 v14, v17

    .line 351
    .local v14, "y10p":F
    move/from16 v17, v11

    move/from16 v18, v14

    mul-float v17, v17, v18

    move/from16 v18, v13

    move/from16 v19, v12

    mul-float v18, v18, v19

    sub-float v17, v17, v18

    move/from16 v15, v17

    .line 352
    .local v15, "den":F
    move/from16 v17, v15

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-nez v17, :cond_0

    .line 353
    move-object/from16 v17, v9

    move/from16 v18, v10

    add-int/lit8 v10, v10, 0x1

    move/from16 v19, v1

    move/from16 v20, v5

    add-float v19, v19, v20

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    aput v19, v17, v18

    .line 354
    move-object/from16 v17, v9

    move/from16 v18, v10

    move/from16 v19, v2

    move/from16 v20, v6

    add-float v19, v19, v20

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    aput v19, v17, v18

    .line 355
    .line 361
    :goto_0
    return-void

    .line 357
    :cond_0
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

    .line 358
    .local v16, "t":F
    move/from16 v17, v16

    move/from16 v18, v15

    div-float v17, v17, v18

    move/from16 v16, v17

    .line 359
    move-object/from16 v17, v9

    move/from16 v18, v10

    add-int/lit8 v10, v10, 0x1

    move/from16 v19, v1

    move/from16 v20, v16

    move/from16 v21, v11

    mul-float v20, v20, v21

    add-float v19, v19, v20

    aput v19, v17, v18

    .line 360
    move-object/from16 v17, v9

    move/from16 v18, v10

    move/from16 v19, v2

    move/from16 v20, v16

    move/from16 v21, v12

    mul-float v20, v20, v21

    add-float v19, v19, v20

    aput v19, v17, v18

    .line 361
    goto :goto_0
.end method

.method private static within(FFFFF)Z
    .locals 9

    .prologue
    .line 573
    move v0, p0

    .local v0, "x1":F
    move v1, p1

    .local v1, "y1":F
    move v2, p2

    .local v2, "x2":F
    move v3, p3

    .local v3, "y2":F
    move v4, p4

    .local v4, "ERR":F
    sget-boolean v5, Lcom/sun/openpisces/Stroker;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    move v5, v4

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, ""

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 576
    :cond_0
    move v5, v0

    move v6, v2

    move v7, v4

    invoke-static {v5, v6, v7}, Lcom/sun/openpisces/Helpers;->within(FFF)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v1

    move v6, v3

    move v7, v4

    .line 577
    invoke-static {v5, v6, v7}, Lcom/sun/openpisces/Helpers;->within(FFF)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    move v0, v5

    .end local v0    # "x1":F
    return v0

    .restart local v0    # "x1":F
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method public closePath()V
    .locals 14

    .prologue
    .line 432
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Stroker;
    move-object v1, v0

    iget v1, v1, Lcom/sun/openpisces/Stroker;->prev:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 433
    move-object v1, v0

    iget v1, v1, Lcom/sun/openpisces/Stroker;->prev:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 434
    .line 458
    :goto_0
    return-void

    .line 436
    :cond_0
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/sun/openpisces/Stroker;->cx0:F

    move-object v3, v0

    iget v3, v3, Lcom/sun/openpisces/Stroker;->cy0:F

    move-object v4, v0

    iget v4, v4, Lcom/sun/openpisces/Stroker;->lineWidth2:F

    sub-float/2addr v3, v4

    invoke-direct {v1, v2, v3}, Lcom/sun/openpisces/Stroker;->emitMoveTo(FF)V

    .line 437
    move-object v1, v0

    move-object v2, v0

    const/4 v3, 0x0

    move-object v12, v2

    move v13, v3

    move v2, v13

    move-object v3, v12

    move v4, v13

    iput v4, v3, Lcom/sun/openpisces/Stroker;->smx:F

    iput v2, v1, Lcom/sun/openpisces/Stroker;->cmx:F

    .line 438
    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/sun/openpisces/Stroker;->lineWidth2:F

    neg-float v3, v3

    move-object v12, v2

    move v13, v3

    move v2, v13

    move-object v3, v12

    move v4, v13

    iput v4, v3, Lcom/sun/openpisces/Stroker;->smy:F

    iput v2, v1, Lcom/sun/openpisces/Stroker;->cmy:F

    .line 439
    move-object v1, v0

    move-object v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    move-object v12, v2

    move v13, v3

    move v2, v13

    move-object v3, v12

    move v4, v13

    iput v4, v3, Lcom/sun/openpisces/Stroker;->sdx:F

    iput v2, v1, Lcom/sun/openpisces/Stroker;->cdx:F

    .line 440
    move-object v1, v0

    move-object v2, v0

    const/4 v3, 0x0

    move-object v12, v2

    move v13, v3

    move v2, v13

    move-object v3, v12

    move v4, v13

    iput v4, v3, Lcom/sun/openpisces/Stroker;->sdy:F

    iput v2, v1, Lcom/sun/openpisces/Stroker;->cdy:F

    .line 441
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/openpisces/Stroker;->finish()V

    .line 442
    goto :goto_0

    .line 445
    :cond_1
    move-object v1, v0

    iget v1, v1, Lcom/sun/openpisces/Stroker;->cx0:F

    move-object v2, v0

    iget v2, v2, Lcom/sun/openpisces/Stroker;->sx0:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    move-object v1, v0

    iget v1, v1, Lcom/sun/openpisces/Stroker;->cy0:F

    move-object v2, v0

    iget v2, v2, Lcom/sun/openpisces/Stroker;->sy0:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_3

    .line 446
    :cond_2
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/sun/openpisces/Stroker;->sx0:F

    move-object v3, v0

    iget v3, v3, Lcom/sun/openpisces/Stroker;->sy0:F

    invoke-virtual {v1, v2, v3}, Lcom/sun/openpisces/Stroker;->lineTo(FF)V

    .line 449
    :cond_3
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/sun/openpisces/Stroker;->cdx:F

    move-object v3, v0

    iget v3, v3, Lcom/sun/openpisces/Stroker;->cdy:F

    move-object v4, v0

    iget v4, v4, Lcom/sun/openpisces/Stroker;->cx0:F

    move-object v5, v0

    iget v5, v5, Lcom/sun/openpisces/Stroker;->cy0:F

    move-object v6, v0

    iget v6, v6, Lcom/sun/openpisces/Stroker;->sdx:F

    move-object v7, v0

    iget v7, v7, Lcom/sun/openpisces/Stroker;->sdy:F

    move-object v8, v0

    iget v8, v8, Lcom/sun/openpisces/Stroker;->cmx:F

    move-object v9, v0

    iget v9, v9, Lcom/sun/openpisces/Stroker;->cmy:F

    move-object v10, v0

    iget v10, v10, Lcom/sun/openpisces/Stroker;->smx:F

    move-object v11, v0

    iget v11, v11, Lcom/sun/openpisces/Stroker;->smy:F

    invoke-direct/range {v1 .. v11}, Lcom/sun/openpisces/Stroker;->drawJoin(FFFFFFFFFF)V

    .line 451
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/sun/openpisces/Stroker;->sx0:F

    move-object v3, v0

    iget v3, v3, Lcom/sun/openpisces/Stroker;->smx:F

    add-float/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Lcom/sun/openpisces/Stroker;->sy0:F

    move-object v4, v0

    iget v4, v4, Lcom/sun/openpisces/Stroker;->smy:F

    add-float/2addr v3, v4

    invoke-direct {v1, v2, v3}, Lcom/sun/openpisces/Stroker;->emitLineTo(FF)V

    .line 453
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/sun/openpisces/Stroker;->sx0:F

    move-object v3, v0

    iget v3, v3, Lcom/sun/openpisces/Stroker;->smx:F

    sub-float/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Lcom/sun/openpisces/Stroker;->sy0:F

    move-object v4, v0

    iget v4, v4, Lcom/sun/openpisces/Stroker;->smy:F

    sub-float/2addr v3, v4

    invoke-direct {v1, v2, v3}, Lcom/sun/openpisces/Stroker;->emitMoveTo(FF)V

    .line 454
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/openpisces/Stroker;->emitReverse()V

    .line 456
    move-object v1, v0

    const/4 v2, 0x2

    iput v2, v1, Lcom/sun/openpisces/Stroker;->prev:I

    .line 457
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/openpisces/Stroker;->emitClose()V

    .line 458
    goto/16 :goto_0
.end method

.method public curveTo(FFFFFF)V
    .locals 35

    .prologue
    .line 985
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/openpisces/Stroker;
    move/from16 v4, p1

    .local v4, "x1":F
    move/from16 v5, p2

    .local v5, "y1":F
    move/from16 v6, p3

    .local v6, "x2":F
    move/from16 v7, p4

    .local v7, "y2":F
    move/from16 v8, p5

    .local v8, "x3":F
    move/from16 v9, p6

    .local v9, "y3":F
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->middle:[F

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget v0, v0, Lcom/sun/openpisces/Stroker;->cx0:F

    move/from16 v26, v0

    aput v26, v24, v25

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->middle:[F

    move-object/from16 v24, v0

    const/16 v25, 0x1

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget v0, v0, Lcom/sun/openpisces/Stroker;->cy0:F

    move/from16 v26, v0

    aput v26, v24, v25

    .line 986
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->middle:[F

    move-object/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v26, v4

    aput v26, v24, v25

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->middle:[F

    move-object/from16 v24, v0

    const/16 v25, 0x3

    move/from16 v26, v5

    aput v26, v24, v25

    .line 987
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->middle:[F

    move-object/from16 v24, v0

    const/16 v25, 0x4

    move/from16 v26, v6

    aput v26, v24, v25

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->middle:[F

    move-object/from16 v24, v0

    const/16 v25, 0x5

    move/from16 v26, v7

    aput v26, v24, v25

    .line 988
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->middle:[F

    move-object/from16 v24, v0

    const/16 v25, 0x6

    move/from16 v26, v8

    aput v26, v24, v25

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->middle:[F

    move-object/from16 v24, v0

    const/16 v25, 0x7

    move/from16 v26, v9

    aput v26, v24, v25

    .line 995
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->middle:[F

    move-object/from16 v24, v0

    const/16 v25, 0x6

    aget v24, v24, v25

    move/from16 v10, v24

    .local v10, "xf":F
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->middle:[F

    move-object/from16 v24, v0

    const/16 v25, 0x7

    aget v24, v24, v25

    move/from16 v11, v24

    .line 996
    .local v11, "yf":F
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->middle:[F

    move-object/from16 v24, v0

    const/16 v25, 0x2

    aget v24, v24, v25

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->middle:[F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    sub-float v24, v24, v25

    move/from16 v12, v24

    .line 997
    .local v12, "dxs":F
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->middle:[F

    move-object/from16 v24, v0

    const/16 v25, 0x3

    aget v24, v24, v25

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->middle:[F

    move-object/from16 v25, v0

    const/16 v26, 0x1

    aget v25, v25, v26

    sub-float v24, v24, v25

    move/from16 v13, v24

    .line 998
    .local v13, "dys":F
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->middle:[F

    move-object/from16 v24, v0

    const/16 v25, 0x6

    aget v24, v24, v25

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->middle:[F

    move-object/from16 v25, v0

    const/16 v26, 0x4

    aget v25, v25, v26

    sub-float v24, v24, v25

    move/from16 v14, v24

    .line 999
    .local v14, "dxf":F
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->middle:[F

    move-object/from16 v24, v0

    const/16 v25, 0x7

    aget v24, v24, v25

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->middle:[F

    move-object/from16 v25, v0

    const/16 v26, 0x5

    aget v25, v25, v26

    sub-float v24, v24, v25

    move/from16 v15, v24

    .line 1001
    .local v15, "dyf":F
    move/from16 v24, v12

    const/16 v25, 0x0

    cmpl-float v24, v24, v25

    if-nez v24, :cond_2

    move/from16 v24, v13

    const/16 v25, 0x0

    cmpl-float v24, v24, v25

    if-nez v24, :cond_2

    const/16 v24, 0x1

    :goto_0
    move/from16 v16, v24

    .line 1002
    .local v16, "p1eqp2":Z
    move/from16 v24, v14

    const/16 v25, 0x0

    cmpl-float v24, v24, v25

    if-nez v24, :cond_3

    move/from16 v24, v15

    const/16 v25, 0x0

    cmpl-float v24, v24, v25

    if-nez v24, :cond_3

    const/16 v24, 0x1

    :goto_1
    move/from16 v17, v24

    .line 1003
    .local v17, "p3eqp4":Z
    move/from16 v24, v16

    if-eqz v24, :cond_0

    .line 1004
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->middle:[F

    move-object/from16 v24, v0

    const/16 v25, 0x4

    aget v24, v24, v25

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->middle:[F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    sub-float v24, v24, v25

    move/from16 v12, v24

    .line 1005
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->middle:[F

    move-object/from16 v24, v0

    const/16 v25, 0x5

    aget v24, v24, v25

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->middle:[F

    move-object/from16 v25, v0

    const/16 v26, 0x1

    aget v25, v25, v26

    sub-float v24, v24, v25

    move/from16 v13, v24

    .line 1006
    move/from16 v24, v12

    const/16 v25, 0x0

    cmpl-float v24, v24, v25

    if-nez v24, :cond_0

    move/from16 v24, v13

    const/16 v25, 0x0

    cmpl-float v24, v24, v25

    if-nez v24, :cond_0

    .line 1007
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->middle:[F

    move-object/from16 v24, v0

    const/16 v25, 0x6

    aget v24, v24, v25

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->middle:[F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    sub-float v24, v24, v25

    move/from16 v12, v24

    .line 1008
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->middle:[F

    move-object/from16 v24, v0

    const/16 v25, 0x7

    aget v24, v24, v25

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->middle:[F

    move-object/from16 v25, v0

    const/16 v26, 0x1

    aget v25, v25, v26

    sub-float v24, v24, v25

    move/from16 v13, v24

    .line 1011
    :cond_0
    move/from16 v24, v17

    if-eqz v24, :cond_1

    .line 1012
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->middle:[F

    move-object/from16 v24, v0

    const/16 v25, 0x6

    aget v24, v24, v25

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->middle:[F

    move-object/from16 v25, v0

    const/16 v26, 0x2

    aget v25, v25, v26

    sub-float v24, v24, v25

    move/from16 v14, v24

    .line 1013
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->middle:[F

    move-object/from16 v24, v0

    const/16 v25, 0x7

    aget v24, v24, v25

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->middle:[F

    move-object/from16 v25, v0

    const/16 v26, 0x3

    aget v25, v25, v26

    sub-float v24, v24, v25

    move/from16 v15, v24

    .line 1014
    move/from16 v24, v14

    const/16 v25, 0x0

    cmpl-float v24, v24, v25

    if-nez v24, :cond_1

    move/from16 v24, v15

    const/16 v25, 0x0

    cmpl-float v24, v24, v25

    if-nez v24, :cond_1

    .line 1015
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->middle:[F

    move-object/from16 v24, v0

    const/16 v25, 0x6

    aget v24, v24, v25

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->middle:[F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    sub-float v24, v24, v25

    move/from16 v14, v24

    .line 1016
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->middle:[F

    move-object/from16 v24, v0

    const/16 v25, 0x7

    aget v24, v24, v25

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->middle:[F

    move-object/from16 v25, v0

    const/16 v26, 0x1

    aget v25, v25, v26

    sub-float v24, v24, v25

    move/from16 v15, v24

    .line 1019
    :cond_1
    move/from16 v24, v12

    const/16 v25, 0x0

    cmpl-float v24, v24, v25

    if-nez v24, :cond_4

    move/from16 v24, v13

    const/16 v25, 0x0

    cmpl-float v24, v24, v25

    if-nez v24, :cond_4

    .line 1021
    move-object/from16 v24, v3

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->middle:[F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->middle:[F

    move-object/from16 v26, v0

    const/16 v27, 0x1

    aget v26, v26, v27

    invoke-virtual/range {v24 .. v26}, Lcom/sun/openpisces/Stroker;->lineTo(FF)V

    .line 1022
    .line 1080
    :goto_2
    return-void

    .line 1001
    .end local v16    # "p1eqp2":Z
    .end local v17    # "p3eqp4":Z
    :cond_2
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 1002
    .restart local v16    # "p1eqp2":Z
    :cond_3
    const/16 v24, 0x0

    goto/16 :goto_1

    .line 1027
    .restart local v17    # "p3eqp4":Z
    :cond_4
    move/from16 v24, v12

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v24

    const v25, 0x3dcccccd    # 0.1f

    cmpg-float v24, v24, v25

    if-gez v24, :cond_5

    move/from16 v24, v13

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v24

    const v25, 0x3dcccccd    # 0.1f

    cmpg-float v24, v24, v25

    if-gez v24, :cond_5

    .line 1028
    move/from16 v24, v12

    move/from16 v25, v12

    mul-float v24, v24, v25

    move/from16 v25, v13

    move/from16 v26, v13

    mul-float v25, v25, v26

    add-float v24, v24, v25

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v24, v0

    move/from16 v18, v24

    .line 1029
    .local v18, "len":F
    move/from16 v24, v12

    move/from16 v25, v18

    div-float v24, v24, v25

    move/from16 v12, v24

    .line 1030
    move/from16 v24, v13

    move/from16 v25, v18

    div-float v24, v24, v25

    move/from16 v13, v24

    .line 1032
    .end local v18    # "len":F
    :cond_5
    move/from16 v24, v14

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v24

    const v25, 0x3dcccccd    # 0.1f

    cmpg-float v24, v24, v25

    if-gez v24, :cond_6

    move/from16 v24, v15

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v24

    const v25, 0x3dcccccd    # 0.1f

    cmpg-float v24, v24, v25

    if-gez v24, :cond_6

    .line 1033
    move/from16 v24, v14

    move/from16 v25, v14

    mul-float v24, v24, v25

    move/from16 v25, v15

    move/from16 v26, v15

    mul-float v25, v25, v26

    add-float v24, v24, v25

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v24, v0

    move/from16 v18, v24

    .line 1034
    .restart local v18    # "len":F
    move/from16 v24, v14

    move/from16 v25, v18

    div-float v24, v24, v25

    move/from16 v14, v24

    .line 1035
    move/from16 v24, v15

    move/from16 v25, v18

    div-float v24, v24, v25

    move/from16 v15, v24

    .line 1038
    .end local v18    # "len":F
    :cond_6
    move/from16 v24, v12

    move/from16 v25, v13

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget v0, v0, Lcom/sun/openpisces/Stroker;->lineWidth2:F

    move/from16 v26, v0

    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->offset:[[F

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget-object v27, v27, v28

    invoke-static/range {v24 .. v27}, Lcom/sun/openpisces/Stroker;->computeOffset(FFF[F)V

    .line 1039
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->offset:[[F

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    const/16 v25, 0x0

    aget v24, v24, v25

    move/from16 v18, v24

    .line 1040
    .local v18, "mx":F
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->offset:[[F

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    const/16 v25, 0x1

    aget v24, v24, v25

    move/from16 v19, v24

    .line 1041
    .local v19, "my":F
    move-object/from16 v24, v3

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget v0, v0, Lcom/sun/openpisces/Stroker;->cdx:F

    move/from16 v25, v0

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget v0, v0, Lcom/sun/openpisces/Stroker;->cdy:F

    move/from16 v26, v0

    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget v0, v0, Lcom/sun/openpisces/Stroker;->cx0:F

    move/from16 v27, v0

    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget v0, v0, Lcom/sun/openpisces/Stroker;->cy0:F

    move/from16 v28, v0

    move/from16 v29, v12

    move/from16 v30, v13

    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget v0, v0, Lcom/sun/openpisces/Stroker;->cmx:F

    move/from16 v31, v0

    move-object/from16 v32, v3

    move-object/from16 v0, v32

    iget v0, v0, Lcom/sun/openpisces/Stroker;->cmy:F

    move/from16 v32, v0

    move/from16 v33, v18

    move/from16 v34, v19

    invoke-direct/range {v24 .. v34}, Lcom/sun/openpisces/Stroker;->drawJoin(FFFFFFFFFF)V

    .line 1043
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->middle:[F

    move-object/from16 v24, v0

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->subdivTs:[F

    move-object/from16 v25, v0

    const/16 v26, 0x8

    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget v0, v0, Lcom/sun/openpisces/Stroker;->lineWidth2:F

    move/from16 v27, v0

    invoke-static/range {v24 .. v27}, Lcom/sun/openpisces/Stroker;->findSubdivPoints([F[FIF)I

    move-result v24

    move/from16 v20, v24

    .line 1044
    .local v20, "nSplits":I
    const/16 v24, 0x0

    move/from16 v21, v24

    .line 1045
    .local v21, "prevT":F
    const/16 v24, 0x0

    move/from16 v22, v24

    .local v22, "i":I
    :goto_3
    move/from16 v24, v22

    move/from16 v25, v20

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_7

    .line 1046
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->subdivTs:[F

    move-object/from16 v24, v0

    move/from16 v25, v22

    aget v24, v24, v25

    move/from16 v23, v24

    .line 1047
    .local v23, "t":F
    move/from16 v24, v23

    move/from16 v25, v21

    sub-float v24, v24, v25

    const/high16 v25, 0x3f800000    # 1.0f

    move/from16 v26, v21

    sub-float v25, v25, v26

    div-float v24, v24, v25

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->middle:[F

    move-object/from16 v25, v0

    move/from16 v26, v22

    const/16 v27, 0x6

    mul-int/lit8 v26, v26, 0x6

    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->middle:[F

    move-object/from16 v27, v0

    move/from16 v28, v22

    const/16 v29, 0x6

    mul-int/lit8 v28, v28, 0x6

    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->middle:[F

    move-object/from16 v29, v0

    move/from16 v30, v22

    const/16 v31, 0x6

    mul-int/lit8 v30, v30, 0x6

    const/16 v31, 0x6

    add-int/lit8 v30, v30, 0x6

    invoke-static/range {v24 .. v30}, Lcom/sun/openpisces/Helpers;->subdivideCubicAt(F[FI[FI[FI)V

    .line 1051
    move/from16 v24, v23

    move/from16 v21, v24

    .line 1045
    add-int/lit8 v22, v22, 0x1

    goto :goto_3

    .line 1054
    .end local v23    # "t":F
    :cond_7
    const/16 v24, 0x0

    move/from16 v22, v24

    .line 1055
    .local v22, "kind":I
    const/16 v24, 0x0

    move/from16 v23, v24

    .local v23, "i":I
    :goto_4
    move/from16 v24, v23

    move/from16 v25, v20

    move/from16 v0, v24

    move/from16 v1, v25

    if-gt v0, v1, :cond_9

    .line 1056
    move-object/from16 v24, v3

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->middle:[F

    move-object/from16 v25, v0

    move/from16 v26, v23

    const/16 v27, 0x6

    mul-int/lit8 v26, v26, 0x6

    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->lp:[F

    move-object/from16 v27, v0

    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->rp:[F

    move-object/from16 v28, v0

    invoke-direct/range {v24 .. v28}, Lcom/sun/openpisces/Stroker;->computeOffsetCubic([FI[F[F)I

    move-result v24

    move/from16 v22, v24

    .line 1057
    move/from16 v24, v22

    if-eqz v24, :cond_8

    .line 1058
    move-object/from16 v24, v3

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->lp:[F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->lp:[F

    move-object/from16 v26, v0

    const/16 v27, 0x1

    aget v26, v26, v27

    invoke-direct/range {v24 .. v26}, Lcom/sun/openpisces/Stroker;->emitLineTo(FF)V

    .line 1059
    move/from16 v24, v22

    sparse-switch v24, :sswitch_data_0

    .line 1069
    :goto_5
    move-object/from16 v24, v3

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->rp:[F

    move-object/from16 v25, v0

    move/from16 v26, v22

    const/16 v27, 0x2

    add-int/lit8 v26, v26, -0x2

    aget v25, v25, v26

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->rp:[F

    move-object/from16 v26, v0

    move/from16 v27, v22

    const/16 v28, 0x1

    add-int/lit8 v27, v27, -0x1

    aget v26, v26, v27

    const/16 v27, 0x1

    invoke-direct/range {v24 .. v27}, Lcom/sun/openpisces/Stroker;->emitLineTo(FFZ)V

    .line 1055
    :cond_8
    add-int/lit8 v23, v23, 0x1

    goto :goto_4

    .line 1061
    :sswitch_0
    move-object/from16 v24, v3

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->lp:[F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->lp:[F

    move-object/from16 v26, v0

    const/16 v27, 0x1

    aget v26, v26, v27

    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->lp:[F

    move-object/from16 v27, v0

    const/16 v28, 0x2

    aget v27, v27, v28

    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->lp:[F

    move-object/from16 v28, v0

    const/16 v29, 0x3

    aget v28, v28, v29

    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->lp:[F

    move-object/from16 v29, v0

    const/16 v30, 0x4

    aget v29, v29, v30

    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->lp:[F

    move-object/from16 v30, v0

    const/16 v31, 0x5

    aget v30, v30, v31

    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->lp:[F

    move-object/from16 v31, v0

    const/16 v32, 0x6

    aget v31, v31, v32

    move-object/from16 v32, v3

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->lp:[F

    move-object/from16 v32, v0

    const/16 v33, 0x7

    aget v32, v32, v33

    const/16 v33, 0x0

    invoke-direct/range {v24 .. v33}, Lcom/sun/openpisces/Stroker;->emitCurveTo(FFFFFFFFZ)V

    .line 1062
    move-object/from16 v24, v3

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->rp:[F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->rp:[F

    move-object/from16 v26, v0

    const/16 v27, 0x1

    aget v26, v26, v27

    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->rp:[F

    move-object/from16 v27, v0

    const/16 v28, 0x2

    aget v27, v27, v28

    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->rp:[F

    move-object/from16 v28, v0

    const/16 v29, 0x3

    aget v28, v28, v29

    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->rp:[F

    move-object/from16 v29, v0

    const/16 v30, 0x4

    aget v29, v29, v30

    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->rp:[F

    move-object/from16 v30, v0

    const/16 v31, 0x5

    aget v30, v30, v31

    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->rp:[F

    move-object/from16 v31, v0

    const/16 v32, 0x6

    aget v31, v31, v32

    move-object/from16 v32, v3

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->rp:[F

    move-object/from16 v32, v0

    const/16 v33, 0x7

    aget v32, v32, v33

    const/16 v33, 0x1

    invoke-direct/range {v24 .. v33}, Lcom/sun/openpisces/Stroker;->emitCurveTo(FFFFFFFFZ)V

    .line 1063
    goto/16 :goto_5

    .line 1065
    :sswitch_1
    move-object/from16 v24, v3

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->lp:[F

    move-object/from16 v25, v0

    const/16 v26, 0x2

    aget v25, v25, v26

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->lp:[F

    move-object/from16 v26, v0

    const/16 v27, 0x3

    aget v26, v26, v27

    invoke-direct/range {v24 .. v26}, Lcom/sun/openpisces/Stroker;->emitLineTo(FF)V

    .line 1066
    move-object/from16 v24, v3

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->rp:[F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->rp:[F

    move-object/from16 v26, v0

    const/16 v27, 0x1

    aget v26, v26, v27

    const/16 v27, 0x1

    invoke-direct/range {v24 .. v27}, Lcom/sun/openpisces/Stroker;->emitLineTo(FFZ)V

    goto/16 :goto_5

    .line 1073
    :cond_9
    move-object/from16 v24, v3

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->lp:[F

    move-object/from16 v25, v0

    move/from16 v26, v22

    const/16 v27, 0x2

    add-int/lit8 v26, v26, -0x2

    aget v25, v25, v26

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->rp:[F

    move-object/from16 v26, v0

    move/from16 v27, v22

    const/16 v28, 0x2

    add-int/lit8 v27, v27, -0x2

    aget v26, v26, v27

    sub-float v25, v25, v26

    const/high16 v26, 0x40000000    # 2.0f

    div-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/sun/openpisces/Stroker;->cmx:F

    .line 1074
    move-object/from16 v24, v3

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->lp:[F

    move-object/from16 v25, v0

    move/from16 v26, v22

    const/16 v27, 0x1

    add-int/lit8 v26, v26, -0x1

    aget v25, v25, v26

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->rp:[F

    move-object/from16 v26, v0

    move/from16 v27, v22

    const/16 v28, 0x1

    add-int/lit8 v27, v27, -0x1

    aget v26, v26, v27

    sub-float v25, v25, v26

    const/high16 v26, 0x40000000    # 2.0f

    div-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/sun/openpisces/Stroker;->cmy:F

    .line 1075
    move-object/from16 v24, v3

    move/from16 v25, v14

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/sun/openpisces/Stroker;->cdx:F

    .line 1076
    move-object/from16 v24, v3

    move/from16 v25, v15

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/sun/openpisces/Stroker;->cdy:F

    .line 1077
    move-object/from16 v24, v3

    move/from16 v25, v10

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/sun/openpisces/Stroker;->cx0:F

    .line 1078
    move-object/from16 v24, v3

    move/from16 v25, v11

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/sun/openpisces/Stroker;->cy0:F

    .line 1079
    move-object/from16 v24, v3

    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/sun/openpisces/Stroker;->prev:I

    .line 1080
    goto/16 :goto_2

    .line 1059
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public lineTo(FF)V
    .locals 18

    .prologue
    .line 405
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/openpisces/Stroker;
    move/from16 v1, p1

    .local v1, "x1":F
    move/from16 v2, p2

    .local v2, "y1":F
    move v7, v1

    move-object v8, v0

    iget v8, v8, Lcom/sun/openpisces/Stroker;->cx0:F

    sub-float/2addr v7, v8

    move v3, v7

    .line 406
    .local v3, "dx":F
    move v7, v2

    move-object v8, v0

    iget v8, v8, Lcom/sun/openpisces/Stroker;->cy0:F

    sub-float/2addr v7, v8

    move v4, v7

    .line 407
    .local v4, "dy":F
    move v7, v3

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_0

    move v7, v4

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_0

    .line 408
    const/high16 v7, 0x3f800000    # 1.0f

    move v3, v7

    .line 410
    :cond_0
    move v7, v3

    move v8, v4

    move-object v9, v0

    iget v9, v9, Lcom/sun/openpisces/Stroker;->lineWidth2:F

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/openpisces/Stroker;->offset:[[F

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-static {v7, v8, v9, v10}, Lcom/sun/openpisces/Stroker;->computeOffset(FFF[F)V

    .line 411
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/openpisces/Stroker;->offset:[[F

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x0

    aget v7, v7, v8

    move v5, v7

    .line 412
    .local v5, "mx":F
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/openpisces/Stroker;->offset:[[F

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x1

    aget v7, v7, v8

    move v6, v7

    .line 414
    .local v6, "my":F
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Lcom/sun/openpisces/Stroker;->cdx:F

    move-object v9, v0

    iget v9, v9, Lcom/sun/openpisces/Stroker;->cdy:F

    move-object v10, v0

    iget v10, v10, Lcom/sun/openpisces/Stroker;->cx0:F

    move-object v11, v0

    iget v11, v11, Lcom/sun/openpisces/Stroker;->cy0:F

    move v12, v3

    move v13, v4

    move-object v14, v0

    iget v14, v14, Lcom/sun/openpisces/Stroker;->cmx:F

    move-object v15, v0

    iget v15, v15, Lcom/sun/openpisces/Stroker;->cmy:F

    move/from16 v16, v5

    move/from16 v17, v6

    invoke-direct/range {v7 .. v17}, Lcom/sun/openpisces/Stroker;->drawJoin(FFFFFFFFFF)V

    .line 416
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Lcom/sun/openpisces/Stroker;->cx0:F

    move v9, v5

    add-float/2addr v8, v9

    move-object v9, v0

    iget v9, v9, Lcom/sun/openpisces/Stroker;->cy0:F

    move v10, v6

    add-float/2addr v9, v10

    invoke-direct {v7, v8, v9}, Lcom/sun/openpisces/Stroker;->emitLineTo(FF)V

    .line 417
    move-object v7, v0

    move v8, v1

    move v9, v5

    add-float/2addr v8, v9

    move v9, v2

    move v10, v6

    add-float/2addr v9, v10

    invoke-direct {v7, v8, v9}, Lcom/sun/openpisces/Stroker;->emitLineTo(FF)V

    .line 419
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Lcom/sun/openpisces/Stroker;->cx0:F

    move v9, v5

    sub-float/2addr v8, v9

    move-object v9, v0

    iget v9, v9, Lcom/sun/openpisces/Stroker;->cy0:F

    move v10, v6

    sub-float/2addr v9, v10

    const/4 v10, 0x1

    invoke-direct {v7, v8, v9, v10}, Lcom/sun/openpisces/Stroker;->emitLineTo(FFZ)V

    .line 420
    move-object v7, v0

    move v8, v1

    move v9, v5

    sub-float/2addr v8, v9

    move v9, v2

    move v10, v6

    sub-float/2addr v9, v10

    const/4 v10, 0x1

    invoke-direct {v7, v8, v9, v10}, Lcom/sun/openpisces/Stroker;->emitLineTo(FFZ)V

    .line 422
    move-object v7, v0

    move v8, v5

    iput v8, v7, Lcom/sun/openpisces/Stroker;->cmx:F

    .line 423
    move-object v7, v0

    move v8, v6

    iput v8, v7, Lcom/sun/openpisces/Stroker;->cmy:F

    .line 424
    move-object v7, v0

    move v8, v3

    iput v8, v7, Lcom/sun/openpisces/Stroker;->cdx:F

    .line 425
    move-object v7, v0

    move v8, v4

    iput v8, v7, Lcom/sun/openpisces/Stroker;->cdy:F

    .line 426
    move-object v7, v0

    move v8, v1

    iput v8, v7, Lcom/sun/openpisces/Stroker;->cx0:F

    .line 427
    move-object v7, v0

    move v8, v2

    iput v8, v7, Lcom/sun/openpisces/Stroker;->cy0:F

    .line 428
    move-object v7, v0

    const/4 v8, 0x1

    iput v8, v7, Lcom/sun/openpisces/Stroker;->prev:I

    .line 429
    return-void
.end method

.method public moveTo(FF)V
    .locals 9

    .prologue
    .line 394
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Stroker;
    move v1, p1

    .local v1, "x0":F
    move v2, p2

    .local v2, "y0":F
    move-object v3, v0

    iget v3, v3, Lcom/sun/openpisces/Stroker;->prev:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 395
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/openpisces/Stroker;->finish()V

    .line 397
    :cond_0
    move-object v3, v0

    move-object v4, v0

    move v5, v1

    move-object v7, v4

    move v8, v5

    move v4, v8

    move-object v5, v7

    move v6, v8

    iput v6, v5, Lcom/sun/openpisces/Stroker;->cx0:F

    iput v4, v3, Lcom/sun/openpisces/Stroker;->sx0:F

    .line 398
    move-object v3, v0

    move-object v4, v0

    move v5, v2

    move-object v7, v4

    move v8, v5

    move v4, v8

    move-object v5, v7

    move v6, v8

    iput v6, v5, Lcom/sun/openpisces/Stroker;->cy0:F

    iput v4, v3, Lcom/sun/openpisces/Stroker;->sy0:F

    .line 399
    move-object v3, v0

    move-object v4, v0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v7, v4

    move v8, v5

    move v4, v8

    move-object v5, v7

    move v6, v8

    iput v6, v5, Lcom/sun/openpisces/Stroker;->sdx:F

    iput v4, v3, Lcom/sun/openpisces/Stroker;->cdx:F

    .line 400
    move-object v3, v0

    move-object v4, v0

    const/4 v5, 0x0

    move-object v7, v4

    move v8, v5

    move v4, v8

    move-object v5, v7

    move v6, v8

    iput v6, v5, Lcom/sun/openpisces/Stroker;->sdy:F

    iput v4, v3, Lcom/sun/openpisces/Stroker;->cdy:F

    .line 401
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/openpisces/Stroker;->prev:I

    .line 402
    return-void
.end method

.method public pathDone()V
    .locals 3

    .prologue
    .line 467
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Stroker;
    move-object v1, v0

    iget v1, v1, Lcom/sun/openpisces/Stroker;->prev:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 468
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/openpisces/Stroker;->finish()V

    .line 471
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/openpisces/Stroker;->out:Lcom/sun/javafx/geom/PathConsumer2D;

    invoke-interface {v1}, Lcom/sun/javafx/geom/PathConsumer2D;->pathDone()V

    .line 474
    move-object v1, v0

    const/4 v2, 0x2

    iput v2, v1, Lcom/sun/openpisces/Stroker;->prev:I

    .line 475
    return-void
.end method

.method public quadTo(FFFF)V
    .locals 32

    .prologue
    .line 1083
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/openpisces/Stroker;
    move/from16 v4, p1

    .local v4, "x1":F
    move/from16 v5, p2

    .local v5, "y1":F
    move/from16 v6, p3

    .local v6, "x2":F
    move/from16 v7, p4

    .local v7, "y2":F
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->middle:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sun/openpisces/Stroker;->cx0:F

    move/from16 v22, v0

    aput v22, v20, v21

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->middle:[F

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sun/openpisces/Stroker;->cy0:F

    move/from16 v22, v0

    aput v22, v20, v21

    .line 1084
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->middle:[F

    move-object/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v22, v4

    aput v22, v20, v21

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->middle:[F

    move-object/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v22, v5

    aput v22, v20, v21

    .line 1085
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->middle:[F

    move-object/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v22, v6

    aput v22, v20, v21

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->middle:[F

    move-object/from16 v20, v0

    const/16 v21, 0x5

    move/from16 v22, v7

    aput v22, v20, v21

    .line 1092
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->middle:[F

    move-object/from16 v20, v0

    const/16 v21, 0x4

    aget v20, v20, v21

    move/from16 v8, v20

    .local v8, "xf":F
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->middle:[F

    move-object/from16 v20, v0

    const/16 v21, 0x5

    aget v20, v20, v21

    move/from16 v9, v20

    .line 1093
    .local v9, "yf":F
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->middle:[F

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget v20, v20, v21

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->middle:[F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget v21, v21, v22

    sub-float v20, v20, v21

    move/from16 v10, v20

    .line 1094
    .local v10, "dxs":F
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->middle:[F

    move-object/from16 v20, v0

    const/16 v21, 0x3

    aget v20, v20, v21

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->middle:[F

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget v21, v21, v22

    sub-float v20, v20, v21

    move/from16 v11, v20

    .line 1095
    .local v11, "dys":F
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->middle:[F

    move-object/from16 v20, v0

    const/16 v21, 0x4

    aget v20, v20, v21

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->middle:[F

    move-object/from16 v21, v0

    const/16 v22, 0x2

    aget v21, v21, v22

    sub-float v20, v20, v21

    move/from16 v12, v20

    .line 1096
    .local v12, "dxf":F
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->middle:[F

    move-object/from16 v20, v0

    const/16 v21, 0x5

    aget v20, v20, v21

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->middle:[F

    move-object/from16 v21, v0

    const/16 v22, 0x3

    aget v21, v21, v22

    sub-float v20, v20, v21

    move/from16 v13, v20

    .line 1097
    .local v13, "dyf":F
    move/from16 v20, v10

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-nez v20, :cond_0

    move/from16 v20, v11

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-eqz v20, :cond_1

    :cond_0
    move/from16 v20, v12

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-nez v20, :cond_2

    move/from16 v20, v13

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-nez v20, :cond_2

    .line 1098
    :cond_1
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->middle:[F

    move-object/from16 v20, v0

    const/16 v21, 0x4

    aget v20, v20, v21

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->middle:[F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget v21, v21, v22

    sub-float v20, v20, v21

    move/from16 v31, v20

    move/from16 v20, v31

    move/from16 v21, v31

    move/from16 v12, v21

    move/from16 v10, v20

    .line 1099
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->middle:[F

    move-object/from16 v20, v0

    const/16 v21, 0x5

    aget v20, v20, v21

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->middle:[F

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget v21, v21, v22

    sub-float v20, v20, v21

    move/from16 v31, v20

    move/from16 v20, v31

    move/from16 v21, v31

    move/from16 v13, v21

    move/from16 v11, v20

    .line 1101
    :cond_2
    move/from16 v20, v10

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-nez v20, :cond_3

    move/from16 v20, v11

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-nez v20, :cond_3

    .line 1103
    move-object/from16 v20, v3

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->middle:[F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget v21, v21, v22

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->middle:[F

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget v22, v22, v23

    invoke-virtual/range {v20 .. v22}, Lcom/sun/openpisces/Stroker;->lineTo(FF)V

    .line 1104
    .line 1161
    :goto_0
    return-void

    .line 1108
    :cond_3
    move/from16 v20, v10

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v20

    const v21, 0x3dcccccd    # 0.1f

    cmpg-float v20, v20, v21

    if-gez v20, :cond_4

    move/from16 v20, v11

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v20

    const v21, 0x3dcccccd    # 0.1f

    cmpg-float v20, v20, v21

    if-gez v20, :cond_4

    .line 1109
    move/from16 v20, v10

    move/from16 v21, v10

    mul-float v20, v20, v21

    move/from16 v21, v11

    move/from16 v22, v11

    mul-float v21, v21, v22

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    move/from16 v14, v20

    .line 1110
    .local v14, "len":F
    move/from16 v20, v10

    move/from16 v21, v14

    div-float v20, v20, v21

    move/from16 v10, v20

    .line 1111
    move/from16 v20, v11

    move/from16 v21, v14

    div-float v20, v20, v21

    move/from16 v11, v20

    .line 1113
    .end local v14    # "len":F
    :cond_4
    move/from16 v20, v12

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v20

    const v21, 0x3dcccccd    # 0.1f

    cmpg-float v20, v20, v21

    if-gez v20, :cond_5

    move/from16 v20, v13

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v20

    const v21, 0x3dcccccd    # 0.1f

    cmpg-float v20, v20, v21

    if-gez v20, :cond_5

    .line 1114
    move/from16 v20, v12

    move/from16 v21, v12

    mul-float v20, v20, v21

    move/from16 v21, v13

    move/from16 v22, v13

    mul-float v21, v21, v22

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    move/from16 v14, v20

    .line 1115
    .restart local v14    # "len":F
    move/from16 v20, v12

    move/from16 v21, v14

    div-float v20, v20, v21

    move/from16 v12, v20

    .line 1116
    move/from16 v20, v13

    move/from16 v21, v14

    div-float v20, v20, v21

    move/from16 v13, v20

    .line 1119
    .end local v14    # "len":F
    :cond_5
    move/from16 v20, v10

    move/from16 v21, v11

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sun/openpisces/Stroker;->lineWidth2:F

    move/from16 v22, v0

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->offset:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    invoke-static/range {v20 .. v23}, Lcom/sun/openpisces/Stroker;->computeOffset(FFF[F)V

    .line 1120
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->offset:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x0

    aget v20, v20, v21

    move/from16 v14, v20

    .line 1121
    .local v14, "mx":F
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->offset:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x1

    aget v20, v20, v21

    move/from16 v15, v20

    .line 1122
    .local v15, "my":F
    move-object/from16 v20, v3

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sun/openpisces/Stroker;->cdx:F

    move/from16 v21, v0

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sun/openpisces/Stroker;->cdy:F

    move/from16 v22, v0

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sun/openpisces/Stroker;->cx0:F

    move/from16 v23, v0

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sun/openpisces/Stroker;->cy0:F

    move/from16 v24, v0

    move/from16 v25, v10

    move/from16 v26, v11

    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget v0, v0, Lcom/sun/openpisces/Stroker;->cmx:F

    move/from16 v27, v0

    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget v0, v0, Lcom/sun/openpisces/Stroker;->cmy:F

    move/from16 v28, v0

    move/from16 v29, v14

    move/from16 v30, v15

    invoke-direct/range {v20 .. v30}, Lcom/sun/openpisces/Stroker;->drawJoin(FFFFFFFFFF)V

    .line 1124
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->middle:[F

    move-object/from16 v20, v0

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->subdivTs:[F

    move-object/from16 v21, v0

    const/16 v22, 0x6

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sun/openpisces/Stroker;->lineWidth2:F

    move/from16 v23, v0

    invoke-static/range {v20 .. v23}, Lcom/sun/openpisces/Stroker;->findSubdivPoints([F[FIF)I

    move-result v20

    move/from16 v16, v20

    .line 1125
    .local v16, "nSplits":I
    const/16 v20, 0x0

    move/from16 v17, v20

    .line 1126
    .local v17, "prevt":F
    const/16 v20, 0x0

    move/from16 v18, v20

    .local v18, "i":I
    :goto_1
    move/from16 v20, v18

    move/from16 v21, v16

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_6

    .line 1127
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->subdivTs:[F

    move-object/from16 v20, v0

    move/from16 v21, v18

    aget v20, v20, v21

    move/from16 v19, v20

    .line 1128
    .local v19, "t":F
    move/from16 v20, v19

    move/from16 v21, v17

    sub-float v20, v20, v21

    const/high16 v21, 0x3f800000    # 1.0f

    move/from16 v22, v17

    sub-float v21, v21, v22

    div-float v20, v20, v21

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->middle:[F

    move-object/from16 v21, v0

    move/from16 v22, v18

    const/16 v23, 0x4

    mul-int/lit8 v22, v22, 0x4

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->middle:[F

    move-object/from16 v23, v0

    move/from16 v24, v18

    const/16 v25, 0x4

    mul-int/lit8 v24, v24, 0x4

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->middle:[F

    move-object/from16 v25, v0

    move/from16 v26, v18

    const/16 v27, 0x4

    mul-int/lit8 v26, v26, 0x4

    const/16 v27, 0x4

    add-int/lit8 v26, v26, 0x4

    invoke-static/range {v20 .. v26}, Lcom/sun/openpisces/Helpers;->subdivideQuadAt(F[FI[FI[FI)V

    .line 1132
    move/from16 v20, v19

    move/from16 v17, v20

    .line 1126
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 1135
    .end local v19    # "t":F
    :cond_6
    const/16 v20, 0x0

    move/from16 v18, v20

    .line 1136
    .local v18, "kind":I
    const/16 v20, 0x0

    move/from16 v19, v20

    .local v19, "i":I
    :goto_2
    move/from16 v20, v19

    move/from16 v21, v16

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_8

    .line 1137
    move-object/from16 v20, v3

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->middle:[F

    move-object/from16 v21, v0

    move/from16 v22, v19

    const/16 v23, 0x4

    mul-int/lit8 v22, v22, 0x4

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->lp:[F

    move-object/from16 v23, v0

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->rp:[F

    move-object/from16 v24, v0

    invoke-direct/range {v20 .. v24}, Lcom/sun/openpisces/Stroker;->computeOffsetQuad([FI[F[F)I

    move-result v20

    move/from16 v18, v20

    .line 1138
    move/from16 v20, v18

    if-eqz v20, :cond_7

    .line 1139
    move-object/from16 v20, v3

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->lp:[F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget v21, v21, v22

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->lp:[F

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget v22, v22, v23

    invoke-direct/range {v20 .. v22}, Lcom/sun/openpisces/Stroker;->emitLineTo(FF)V

    .line 1140
    move/from16 v20, v18

    packed-switch v20, :pswitch_data_0

    .line 1150
    :goto_3
    :pswitch_0
    move-object/from16 v20, v3

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->rp:[F

    move-object/from16 v21, v0

    move/from16 v22, v18

    const/16 v23, 0x2

    add-int/lit8 v22, v22, -0x2

    aget v21, v21, v22

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->rp:[F

    move-object/from16 v22, v0

    move/from16 v23, v18

    const/16 v24, 0x1

    add-int/lit8 v23, v23, -0x1

    aget v22, v22, v23

    const/16 v23, 0x1

    invoke-direct/range {v20 .. v23}, Lcom/sun/openpisces/Stroker;->emitLineTo(FFZ)V

    .line 1136
    :cond_7
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 1142
    :pswitch_1
    move-object/from16 v20, v3

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->lp:[F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget v21, v21, v22

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->lp:[F

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget v22, v22, v23

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->lp:[F

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget v23, v23, v24

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->lp:[F

    move-object/from16 v24, v0

    const/16 v25, 0x3

    aget v24, v24, v25

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->lp:[F

    move-object/from16 v25, v0

    const/16 v26, 0x4

    aget v25, v25, v26

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->lp:[F

    move-object/from16 v26, v0

    const/16 v27, 0x5

    aget v26, v26, v27

    const/16 v27, 0x0

    invoke-direct/range {v20 .. v27}, Lcom/sun/openpisces/Stroker;->emitQuadTo(FFFFFFZ)V

    .line 1143
    move-object/from16 v20, v3

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->rp:[F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget v21, v21, v22

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->rp:[F

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget v22, v22, v23

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->rp:[F

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget v23, v23, v24

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->rp:[F

    move-object/from16 v24, v0

    const/16 v25, 0x3

    aget v24, v24, v25

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->rp:[F

    move-object/from16 v25, v0

    const/16 v26, 0x4

    aget v25, v25, v26

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->rp:[F

    move-object/from16 v26, v0

    const/16 v27, 0x5

    aget v26, v26, v27

    const/16 v27, 0x1

    invoke-direct/range {v20 .. v27}, Lcom/sun/openpisces/Stroker;->emitQuadTo(FFFFFFZ)V

    .line 1144
    goto/16 :goto_3

    .line 1146
    :pswitch_2
    move-object/from16 v20, v3

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->lp:[F

    move-object/from16 v21, v0

    const/16 v22, 0x2

    aget v21, v21, v22

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->lp:[F

    move-object/from16 v22, v0

    const/16 v23, 0x3

    aget v22, v22, v23

    invoke-direct/range {v20 .. v22}, Lcom/sun/openpisces/Stroker;->emitLineTo(FF)V

    .line 1147
    move-object/from16 v20, v3

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->rp:[F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget v21, v21, v22

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->rp:[F

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget v22, v22, v23

    const/16 v23, 0x1

    invoke-direct/range {v20 .. v23}, Lcom/sun/openpisces/Stroker;->emitLineTo(FFZ)V

    goto/16 :goto_3

    .line 1154
    :cond_8
    move-object/from16 v20, v3

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->lp:[F

    move-object/from16 v21, v0

    move/from16 v22, v18

    const/16 v23, 0x2

    add-int/lit8 v22, v22, -0x2

    aget v21, v21, v22

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->rp:[F

    move-object/from16 v22, v0

    move/from16 v23, v18

    const/16 v24, 0x2

    add-int/lit8 v23, v23, -0x2

    aget v22, v22, v23

    sub-float v21, v21, v22

    const/high16 v22, 0x40000000    # 2.0f

    div-float v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/sun/openpisces/Stroker;->cmx:F

    .line 1155
    move-object/from16 v20, v3

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->lp:[F

    move-object/from16 v21, v0

    move/from16 v22, v18

    const/16 v23, 0x1

    add-int/lit8 v22, v22, -0x1

    aget v21, v21, v22

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/openpisces/Stroker;->rp:[F

    move-object/from16 v22, v0

    move/from16 v23, v18

    const/16 v24, 0x1

    add-int/lit8 v23, v23, -0x1

    aget v22, v22, v23

    sub-float v21, v21, v22

    const/high16 v22, 0x40000000    # 2.0f

    div-float v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/sun/openpisces/Stroker;->cmy:F

    .line 1156
    move-object/from16 v20, v3

    move/from16 v21, v12

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/sun/openpisces/Stroker;->cdx:F

    .line 1157
    move-object/from16 v20, v3

    move/from16 v21, v13

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/sun/openpisces/Stroker;->cdy:F

    .line 1158
    move-object/from16 v20, v3

    move/from16 v21, v8

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/sun/openpisces/Stroker;->cx0:F

    .line 1159
    move-object/from16 v20, v3

    move/from16 v21, v9

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/sun/openpisces/Stroker;->cy0:F

    .line 1160
    move-object/from16 v20, v3

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/sun/openpisces/Stroker;->prev:I

    .line 1161
    goto/16 :goto_0

    .line 1140
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public reset(FIIF)V
    .locals 9

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Stroker;
    move v1, p1

    .local v1, "lineWidth":F
    move v2, p2

    .local v2, "capStyle":I
    move v3, p3

    .local v3, "joinStyle":I
    move v4, p4

    .local v4, "miterLimit":F
    move-object v6, v0

    move v7, v1

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    iput v7, v6, Lcom/sun/openpisces/Stroker;->lineWidth2:F

    .line 134
    move-object v6, v0

    move v7, v2

    iput v7, v6, Lcom/sun/openpisces/Stroker;->capStyle:I

    .line 135
    move-object v6, v0

    move v7, v3

    iput v7, v6, Lcom/sun/openpisces/Stroker;->joinStyle:I

    .line 137
    move v6, v4

    move-object v7, v0

    iget v7, v7, Lcom/sun/openpisces/Stroker;->lineWidth2:F

    mul-float/2addr v6, v7

    move v5, v6

    .line 138
    .local v5, "limit":F
    move-object v6, v0

    move v7, v5

    move v8, v5

    mul-float/2addr v7, v8

    iput v7, v6, Lcom/sun/openpisces/Stroker;->miterLimitSq:F

    .line 140
    move-object v6, v0

    const/4 v7, 0x2

    iput v7, v6, Lcom/sun/openpisces/Stroker;->prev:I

    .line 141
    return-void
.end method

.method public setConsumer(Lcom/sun/javafx/geom/PathConsumer2D;)V
    .locals 4

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Stroker;
    move-object v1, p1

    .local v1, "pc2d":Lcom/sun/javafx/geom/PathConsumer2D;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/openpisces/Stroker;->out:Lcom/sun/javafx/geom/PathConsumer2D;

    .line 129
    return-void
.end method
