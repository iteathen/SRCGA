.class final Lcom/sun/openpisces/Curve;
.super Ljava/lang/Object;
.source "Curve.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field ax:F

.field ay:F

.field bx:F

.field by:F

.field cx:F

.field cy:F

.field dax:F

.field day:F

.field dbx:F

.field dby:F

.field dx:F

.field dy:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/sun/openpisces/Curve;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/openpisces/Curve;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Curve;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method private ROCsq(F)F
    .locals 14

    .prologue
    .line 231
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Curve;
    move v1, p1

    .local v1, "t":F
    move v9, v1

    move v10, v1

    move-object v11, v0

    iget v11, v11, Lcom/sun/openpisces/Curve;->dax:F

    mul-float/2addr v10, v11

    move-object v11, v0

    iget v11, v11, Lcom/sun/openpisces/Curve;->dbx:F

    add-float/2addr v10, v11

    mul-float/2addr v9, v10

    move-object v10, v0

    iget v10, v10, Lcom/sun/openpisces/Curve;->cx:F

    add-float/2addr v9, v10

    move v2, v9

    .line 232
    .local v2, "dx":F
    move v9, v1

    move v10, v1

    move-object v11, v0

    iget v11, v11, Lcom/sun/openpisces/Curve;->day:F

    mul-float/2addr v10, v11

    move-object v11, v0

    iget v11, v11, Lcom/sun/openpisces/Curve;->dby:F

    add-float/2addr v10, v11

    mul-float/2addr v9, v10

    move-object v10, v0

    iget v10, v10, Lcom/sun/openpisces/Curve;->cy:F

    add-float/2addr v9, v10

    move v3, v9

    .line 233
    .local v3, "dy":F
    const/high16 v9, 0x40000000    # 2.0f

    move-object v10, v0

    iget v10, v10, Lcom/sun/openpisces/Curve;->dax:F

    mul-float/2addr v9, v10

    move v10, v1

    mul-float/2addr v9, v10

    move-object v10, v0

    iget v10, v10, Lcom/sun/openpisces/Curve;->dbx:F

    add-float/2addr v9, v10

    move v4, v9

    .line 234
    .local v4, "ddx":F
    const/high16 v9, 0x40000000    # 2.0f

    move-object v10, v0

    iget v10, v10, Lcom/sun/openpisces/Curve;->day:F

    mul-float/2addr v9, v10

    move v10, v1

    mul-float/2addr v9, v10

    move-object v10, v0

    iget v10, v10, Lcom/sun/openpisces/Curve;->dby:F

    add-float/2addr v9, v10

    move v5, v9

    .line 235
    .local v5, "ddy":F
    move v9, v2

    move v10, v2

    mul-float/2addr v9, v10

    move v10, v3

    move v11, v3

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    move v6, v9

    .line 236
    .local v6, "dx2dy2":F
    move v9, v4

    move v10, v4

    mul-float/2addr v9, v10

    move v10, v5

    move v11, v5

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    move v7, v9

    .line 237
    .local v7, "ddx2ddy2":F
    move v9, v4

    move v10, v2

    mul-float/2addr v9, v10

    move v10, v5

    move v11, v3

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    move v8, v9

    .line 238
    .local v8, "ddxdxddydy":F
    move v9, v6

    move v10, v6

    move v11, v6

    mul-float/2addr v10, v11

    move v11, v6

    move v12, v7

    mul-float/2addr v11, v12

    move v12, v8

    move v13, v8

    mul-float/2addr v12, v13

    sub-float/2addr v11, v12

    div-float/2addr v10, v11

    mul-float/2addr v9, v10

    move v0, v9

    .end local v0    # "this":Lcom/sun/openpisces/Curve;
    return v0
.end method

.method static breakPtsAtTs([FI[FI)Ljava/util/Iterator;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([FI[FI)",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "pts":[F
    move v1, p1

    .local v1, "type":I
    move-object v2, p2

    .local v2, "Ts":[F
    move v3, p3

    .local v3, "numTs":I
    sget-boolean v4, Lcom/sun/openpisces/Curve;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    move-object v4, v0

    array-length v4, v4

    const/4 v5, 0x2

    move v6, v1

    mul-int/2addr v5, v6

    if-lt v4, v5, :cond_0

    move v4, v3

    move-object v5, v2

    array-length v5, v5

    if-le v4, v5, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/AssertionError;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 253
    :cond_1
    new-instance v4, Lcom/sun/openpisces/Curve$1;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move v6, v1

    move v7, v3

    move-object v8, v2

    move-object v9, v0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sun/openpisces/Curve$1;-><init>(II[F[F)V

    move-object v0, v4

    .end local v0    # "pts":[F
    return-object v0
.end method

.method private static eliminateInf(F)F
    .locals 3

    .prologue
    .line 177
    move v0, p0

    .local v0, "x":F
    move v1, v0

    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    :goto_0
    move v0, v1

    .end local v0    # "x":F
    return v0

    .restart local v0    # "x":F
    :cond_0
    move v1, v0

    const/high16 v2, -0x800000    # Float.NEGATIVE_INFINITY

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method private falsePositionROCsqMinusX(FFFF)F
    .locals 20

    .prologue
    .line 191
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/openpisces/Curve;
    move/from16 v3, p1

    .local v3, "x0":F
    move/from16 v4, p2

    .local v4, "x1":F
    move/from16 v5, p3

    .local v5, "x":F
    move/from16 v6, p4

    .local v6, "err":F
    const/16 v16, 0x64

    move/from16 v7, v16

    .line 192
    .local v7, "iterLimit":I
    const/16 v16, 0x0

    move/from16 v8, v16

    .line 193
    .local v8, "side":I
    move/from16 v16, v4

    move/from16 v9, v16

    .local v9, "t":F
    move-object/from16 v16, v2

    move/from16 v17, v9

    invoke-direct/range {v16 .. v17}, Lcom/sun/openpisces/Curve;->ROCsq(F)F

    move-result v16

    move/from16 v17, v5

    sub-float v16, v16, v17

    invoke-static/range {v16 .. v16}, Lcom/sun/openpisces/Curve;->eliminateInf(F)F

    move-result v16

    move/from16 v10, v16

    .line 194
    .local v10, "ft":F
    move/from16 v16, v3

    move/from16 v11, v16

    .local v11, "s":F
    move-object/from16 v16, v2

    move/from16 v17, v11

    invoke-direct/range {v16 .. v17}, Lcom/sun/openpisces/Curve;->ROCsq(F)F

    move-result v16

    move/from16 v17, v5

    sub-float v16, v16, v17

    invoke-static/range {v16 .. v16}, Lcom/sun/openpisces/Curve;->eliminateInf(F)F

    move-result v16

    move/from16 v12, v16

    .line 195
    .local v12, "fs":F
    move/from16 v16, v11

    move/from16 v13, v16

    .line 196
    .local v13, "r":F
    const/16 v16, 0x0

    move/from16 v15, v16

    .local v15, "i":I
    :goto_0
    move/from16 v16, v15

    const/16 v17, 0x64

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_3

    move/from16 v16, v9

    move/from16 v17, v11

    sub-float v16, v16, v17

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    move/from16 v17, v6

    move/from16 v18, v9

    move/from16 v19, v11

    add-float v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    mul-float v17, v17, v18

    cmpl-float v16, v16, v17

    if-lez v16, :cond_3

    .line 197
    move/from16 v16, v12

    move/from16 v17, v9

    mul-float v16, v16, v17

    move/from16 v17, v10

    move/from16 v18, v11

    mul-float v17, v17, v18

    sub-float v16, v16, v17

    move/from16 v17, v12

    move/from16 v18, v10

    sub-float v17, v17, v18

    div-float v16, v16, v17

    move/from16 v13, v16

    .line 198
    move-object/from16 v16, v2

    move/from16 v17, v13

    invoke-direct/range {v16 .. v17}, Lcom/sun/openpisces/Curve;->ROCsq(F)F

    move-result v16

    move/from16 v17, v5

    sub-float v16, v16, v17

    move/from16 v14, v16

    .line 199
    .local v14, "fr":F
    move/from16 v16, v14

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move/from16 v18, v10

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Lcom/sun/openpisces/Curve;->sameSign(DD)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 200
    move/from16 v16, v14

    move/from16 v10, v16

    move/from16 v16, v13

    move/from16 v9, v16

    .line 201
    move/from16 v16, v8

    if-gez v16, :cond_0

    .line 202
    move/from16 v16, v12

    const/16 v17, 0x1

    move/from16 v18, v8

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    shl-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v16, v16, v17

    move/from16 v12, v16

    .line 203
    add-int/lit8 v8, v8, -0x1

    .line 196
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 205
    :cond_0
    const/16 v16, -0x1

    move/from16 v8, v16

    goto :goto_1

    .line 207
    :cond_1
    move/from16 v16, v14

    move/from16 v17, v12

    mul-float v16, v16, v17

    const/16 v17, 0x0

    cmpl-float v16, v16, v17

    if-lez v16, :cond_3

    .line 208
    move/from16 v16, v14

    move/from16 v12, v16

    move/from16 v16, v13

    move/from16 v11, v16

    .line 209
    move/from16 v16, v8

    if-lez v16, :cond_2

    .line 210
    move/from16 v16, v10

    const/16 v17, 0x1

    move/from16 v18, v8

    shl-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v16, v16, v17

    move/from16 v10, v16

    .line 211
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 213
    :cond_2
    const/16 v16, 0x1

    move/from16 v8, v16

    goto :goto_1

    .line 219
    .end local v14    # "fr":F
    :cond_3
    move/from16 v16, v13

    move/from16 v2, v16

    .end local v2    # "this":Lcom/sun/openpisces/Curve;
    return v2
.end method

.method private perpendiculardfddf([FI)I
    .locals 16

    .prologue
    .line 127
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/openpisces/Curve;
    move-object/from16 v1, p1

    .local v1, "pts":[F
    move/from16 v2, p2

    .local v2, "off":I
    sget-boolean v7, Lcom/sun/openpisces/Curve;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    move-object v7, v1

    array-length v7, v7

    move v8, v2

    const/4 v9, 0x4

    add-int/lit8 v8, v8, 0x4

    if-ge v7, v8, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 132
    :cond_0
    const/high16 v7, 0x40000000    # 2.0f

    move-object v8, v0

    iget v8, v8, Lcom/sun/openpisces/Curve;->dax:F

    move-object v9, v0

    iget v9, v9, Lcom/sun/openpisces/Curve;->dax:F

    mul-float/2addr v8, v9

    move-object v9, v0

    iget v9, v9, Lcom/sun/openpisces/Curve;->day:F

    move-object v10, v0

    iget v10, v10, Lcom/sun/openpisces/Curve;->day:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    mul-float/2addr v7, v8

    move v3, v7

    .line 133
    .local v3, "a":F
    const/high16 v7, 0x40400000    # 3.0f

    move-object v8, v0

    iget v8, v8, Lcom/sun/openpisces/Curve;->dax:F

    move-object v9, v0

    iget v9, v9, Lcom/sun/openpisces/Curve;->dbx:F

    mul-float/2addr v8, v9

    move-object v9, v0

    iget v9, v9, Lcom/sun/openpisces/Curve;->day:F

    move-object v10, v0

    iget v10, v10, Lcom/sun/openpisces/Curve;->dby:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    mul-float/2addr v7, v8

    move v4, v7

    .line 134
    .local v4, "b":F
    const/high16 v7, 0x40000000    # 2.0f

    move-object v8, v0

    iget v8, v8, Lcom/sun/openpisces/Curve;->dax:F

    move-object v9, v0

    iget v9, v9, Lcom/sun/openpisces/Curve;->cx:F

    mul-float/2addr v8, v9

    move-object v9, v0

    iget v9, v9, Lcom/sun/openpisces/Curve;->day:F

    move-object v10, v0

    iget v10, v10, Lcom/sun/openpisces/Curve;->cy:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    mul-float/2addr v7, v8

    move-object v8, v0

    iget v8, v8, Lcom/sun/openpisces/Curve;->dbx:F

    move-object v9, v0

    iget v9, v9, Lcom/sun/openpisces/Curve;->dbx:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    move-object v8, v0

    iget v8, v8, Lcom/sun/openpisces/Curve;->dby:F

    move-object v9, v0

    iget v9, v9, Lcom/sun/openpisces/Curve;->dby:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    move v5, v7

    .line 135
    .local v5, "c":F
    move-object v7, v0

    iget v7, v7, Lcom/sun/openpisces/Curve;->dbx:F

    move-object v8, v0

    iget v8, v8, Lcom/sun/openpisces/Curve;->cx:F

    mul-float/2addr v7, v8

    move-object v8, v0

    iget v8, v8, Lcom/sun/openpisces/Curve;->dby:F

    move-object v9, v0

    iget v9, v9, Lcom/sun/openpisces/Curve;->cy:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    move v6, v7

    .line 136
    .local v6, "d":F
    move v7, v3

    move v8, v4

    move v9, v5

    move v10, v6

    move-object v11, v1

    move v12, v2

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static/range {v7 .. v14}, Lcom/sun/openpisces/Helpers;->cubicRootsInAB(FFFF[FIFF)I

    move-result v7

    move v0, v7

    .end local v0    # "this":Lcom/sun/openpisces/Curve;
    return v0
.end method

.method private static sameSign(DD)Z
    .locals 8

    .prologue
    .line 224
    move-wide v0, p0

    .local v0, "x":D
    move-wide v2, p2

    .local v2, "y":D
    move-wide v4, v0

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-ltz v4, :cond_1

    :cond_0
    move-wide v4, v0

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_2

    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_2

    :cond_1
    const/4 v4, 0x1

    :goto_0
    move v0, v4

    .end local v0    # "x":D
    return v0

    .restart local v0    # "x":D
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method dxRoots([FI)I
    .locals 8

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Curve;
    move-object v1, p1

    .local v1, "roots":[F
    move v2, p2

    .local v2, "off":I
    move-object v3, v0

    iget v3, v3, Lcom/sun/openpisces/Curve;->dax:F

    move-object v4, v0

    iget v4, v4, Lcom/sun/openpisces/Curve;->dbx:F

    move-object v5, v0

    iget v5, v5, Lcom/sun/openpisces/Curve;->cx:F

    move-object v6, v1

    move v7, v2

    invoke-static {v3, v4, v5, v6, v7}, Lcom/sun/openpisces/Helpers;->quadraticRoots(FFF[FI)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/sun/openpisces/Curve;
    return v0
.end method

.method dxat(F)F
    .locals 5

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Curve;
    move v1, p1

    .local v1, "t":F
    move v2, v1

    move v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/sun/openpisces/Curve;->dax:F

    mul-float/2addr v3, v4

    move-object v4, v0

    iget v4, v4, Lcom/sun/openpisces/Curve;->dbx:F

    add-float/2addr v3, v4

    mul-float/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Lcom/sun/openpisces/Curve;->cx:F

    add-float/2addr v2, v3

    move v0, v2

    .end local v0    # "this":Lcom/sun/openpisces/Curve;
    return v0
.end method

.method dyRoots([FI)I
    .locals 8

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Curve;
    move-object v1, p1

    .local v1, "roots":[F
    move v2, p2

    .local v2, "off":I
    move-object v3, v0

    iget v3, v3, Lcom/sun/openpisces/Curve;->day:F

    move-object v4, v0

    iget v4, v4, Lcom/sun/openpisces/Curve;->dby:F

    move-object v5, v0

    iget v5, v5, Lcom/sun/openpisces/Curve;->cy:F

    move-object v6, v1

    move v7, v2

    invoke-static {v3, v4, v5, v6, v7}, Lcom/sun/openpisces/Helpers;->quadraticRoots(FFF[FI)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/sun/openpisces/Curve;
    return v0
.end method

.method dyat(F)F
    .locals 5

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Curve;
    move v1, p1

    .local v1, "t":F
    move v2, v1

    move v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/sun/openpisces/Curve;->day:F

    mul-float/2addr v3, v4

    move-object v4, v0

    iget v4, v4, Lcom/sun/openpisces/Curve;->dby:F

    add-float/2addr v3, v4

    mul-float/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Lcom/sun/openpisces/Curve;->cy:F

    add-float/2addr v2, v3

    move v0, v2

    .end local v0    # "this":Lcom/sun/openpisces/Curve;
    return v0
.end method

.method infPoints([FI)I
    .locals 11

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Curve;
    move-object v1, p1

    .local v1, "pts":[F
    move v2, p2

    .local v2, "off":I
    move-object v6, v0

    iget v6, v6, Lcom/sun/openpisces/Curve;->dax:F

    move-object v7, v0

    iget v7, v7, Lcom/sun/openpisces/Curve;->dby:F

    mul-float/2addr v6, v7

    move-object v7, v0

    iget v7, v7, Lcom/sun/openpisces/Curve;->dbx:F

    move-object v8, v0

    iget v8, v8, Lcom/sun/openpisces/Curve;->day:F

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    move v3, v6

    .line 117
    .local v3, "a":F
    const/high16 v6, 0x40000000    # 2.0f

    move-object v7, v0

    iget v7, v7, Lcom/sun/openpisces/Curve;->cy:F

    move-object v8, v0

    iget v8, v8, Lcom/sun/openpisces/Curve;->dax:F

    mul-float/2addr v7, v8

    move-object v8, v0

    iget v8, v8, Lcom/sun/openpisces/Curve;->day:F

    move-object v9, v0

    iget v9, v9, Lcom/sun/openpisces/Curve;->cx:F

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    move v4, v6

    .line 118
    .local v4, "b":F
    move-object v6, v0

    iget v6, v6, Lcom/sun/openpisces/Curve;->cy:F

    move-object v7, v0

    iget v7, v7, Lcom/sun/openpisces/Curve;->dbx:F

    mul-float/2addr v6, v7

    move-object v7, v0

    iget v7, v7, Lcom/sun/openpisces/Curve;->cx:F

    move-object v8, v0

    iget v8, v8, Lcom/sun/openpisces/Curve;->dby:F

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    move v5, v6

    .line 120
    .local v5, "c":F
    move v6, v3

    move v7, v4

    move v8, v5

    move-object v9, v1

    move v10, v2

    invoke-static {v6, v7, v8, v9, v10}, Lcom/sun/openpisces/Helpers;->quadraticRoots(FFF[FI)I

    move-result v6

    move v0, v6

    .end local v0    # "this":Lcom/sun/openpisces/Curve;
    return v0
.end method

.method rootsOfROCMinusW([FIFF)I
    .locals 20

    .prologue
    .line 154
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/openpisces/Curve;
    move-object/from16 v1, p1

    .local v1, "roots":[F
    move/from16 v2, p2

    .local v2, "off":I
    move/from16 v3, p3

    .local v3, "w":F
    move/from16 v4, p4

    .local v4, "err":F
    sget-boolean v12, Lcom/sun/openpisces/Curve;->$assertionsDisabled:Z

    if-nez v12, :cond_1

    move v12, v2

    const/4 v13, 0x6

    if-gt v12, v13, :cond_0

    move-object v12, v1

    array-length v12, v12

    const/16 v13, 0xa

    if-ge v12, v13, :cond_1

    :cond_0
    new-instance v12, Ljava/lang/AssertionError;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    invoke-direct {v13}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    .line 155
    :cond_1
    move v12, v2

    move v5, v12

    .line 156
    .local v5, "ret":I
    move-object v12, v0

    move-object v13, v1

    move v14, v2

    invoke-direct {v12, v13, v14}, Lcom/sun/openpisces/Curve;->perpendiculardfddf([FI)I

    move-result v12

    move v6, v12

    .line 157
    .local v6, "numPerpdfddf":I
    const/4 v12, 0x0

    move v7, v12

    .local v7, "t0":F
    move-object v12, v0

    move v13, v7

    invoke-direct {v12, v13}, Lcom/sun/openpisces/Curve;->ROCsq(F)F

    move-result v12

    move v13, v3

    move v14, v3

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    move v8, v12

    .line 158
    .local v8, "ft0":F
    move-object v12, v1

    move v13, v2

    move v14, v6

    add-int/2addr v13, v14

    const/high16 v14, 0x3f800000    # 1.0f

    aput v14, v12, v13

    .line 159
    add-int/lit8 v6, v6, 0x1

    .line 160
    move v12, v2

    move v9, v12

    .local v9, "i":I
    :goto_0
    move v12, v9

    move v13, v2

    move v14, v6

    add-int/2addr v13, v14

    if-ge v12, v13, :cond_4

    .line 161
    move-object v12, v1

    move v13, v9

    aget v12, v12, v13

    move v10, v12

    .local v10, "t1":F
    move-object v12, v0

    move v13, v10

    invoke-direct {v12, v13}, Lcom/sun/openpisces/Curve;->ROCsq(F)F

    move-result v12

    move v13, v3

    move v14, v3

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    move v11, v12

    .line 162
    .local v11, "ft1":F
    move v12, v8

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-nez v12, :cond_3

    .line 163
    move-object v12, v1

    move v13, v5

    add-int/lit8 v5, v5, 0x1

    move v14, v7

    aput v14, v12, v13

    .line 169
    :cond_2
    :goto_1
    move v12, v10

    move v7, v12

    .line 170
    move v12, v11

    move v8, v12

    .line 160
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 164
    :cond_3
    move v12, v11

    move v13, v8

    mul-float/2addr v12, v13

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gez v12, :cond_2

    .line 167
    move-object v12, v1

    move v13, v5

    add-int/lit8 v5, v5, 0x1

    move-object v14, v0

    move v15, v7

    move/from16 v16, v10

    move/from16 v17, v3

    move/from16 v18, v3

    mul-float v17, v17, v18

    move/from16 v18, v4

    invoke-direct/range {v14 .. v18}, Lcom/sun/openpisces/Curve;->falsePositionROCsqMinusX(FFFF)F

    move-result v14

    aput v14, v12, v13

    goto :goto_1

    .line 173
    .end local v10    # "t1":F
    .end local v11    # "ft1":F
    :cond_4
    move v12, v5

    move v13, v2

    sub-int/2addr v12, v13

    move v0, v12

    .end local v0    # "this":Lcom/sun/openpisces/Curve;
    return v0
.end method

.method set(FFFFFF)V
    .locals 13

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Curve;
    move v1, p1

    .local v1, "x1":F
    move v2, p2

    .local v2, "y1":F
    move/from16 v3, p3

    .local v3, "x2":F
    move/from16 v4, p4

    .local v4, "y2":F
    move/from16 v5, p5

    .local v5, "x3":F
    move/from16 v6, p6

    .local v6, "y3":F
    move-object v7, v0

    move-object v8, v0

    const/4 v9, 0x0

    move-object v11, v8

    move v12, v9

    move v8, v12

    move-object v9, v11

    move v10, v12

    iput v10, v9, Lcom/sun/openpisces/Curve;->ay:F

    iput v8, v7, Lcom/sun/openpisces/Curve;->ax:F

    .line 79
    move-object v7, v0

    move v8, v1

    const/high16 v9, 0x40000000    # 2.0f

    move v10, v3

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    move v9, v5

    add-float/2addr v8, v9

    iput v8, v7, Lcom/sun/openpisces/Curve;->bx:F

    .line 80
    move-object v7, v0

    move v8, v2

    const/high16 v9, 0x40000000    # 2.0f

    move v10, v4

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    move v9, v6

    add-float/2addr v8, v9

    iput v8, v7, Lcom/sun/openpisces/Curve;->by:F

    .line 81
    move-object v7, v0

    const/high16 v8, 0x40000000    # 2.0f

    move v9, v3

    move v10, v1

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    iput v8, v7, Lcom/sun/openpisces/Curve;->cx:F

    .line 82
    move-object v7, v0

    const/high16 v8, 0x40000000    # 2.0f

    move v9, v4

    move v10, v2

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    iput v8, v7, Lcom/sun/openpisces/Curve;->cy:F

    .line 83
    move-object v7, v0

    move v8, v1

    iput v8, v7, Lcom/sun/openpisces/Curve;->dx:F

    .line 84
    move-object v7, v0

    move v8, v2

    iput v8, v7, Lcom/sun/openpisces/Curve;->dy:F

    .line 85
    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Lcom/sun/openpisces/Curve;->dax:F

    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Lcom/sun/openpisces/Curve;->day:F

    .line 86
    move-object v7, v0

    const/high16 v8, 0x40000000    # 2.0f

    move-object v9, v0

    iget v9, v9, Lcom/sun/openpisces/Curve;->bx:F

    mul-float/2addr v8, v9

    iput v8, v7, Lcom/sun/openpisces/Curve;->dbx:F

    move-object v7, v0

    const/high16 v8, 0x40000000    # 2.0f

    move-object v9, v0

    iget v9, v9, Lcom/sun/openpisces/Curve;->by:F

    mul-float/2addr v8, v9

    iput v8, v7, Lcom/sun/openpisces/Curve;->dby:F

    .line 87
    return-void
.end method

.method set(FFFFFFFF)V
    .locals 14

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Curve;
    move v1, p1

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
    move/from16 v7, p7

    .local v7, "x4":F
    move/from16 v8, p8

    .local v8, "y4":F
    move-object v9, v0

    const/high16 v10, 0x40400000    # 3.0f

    move v11, v3

    move v12, v5

    sub-float/2addr v11, v12

    mul-float/2addr v10, v11

    move v11, v7

    add-float/2addr v10, v11

    move v11, v1

    sub-float/2addr v10, v11

    iput v10, v9, Lcom/sun/openpisces/Curve;->ax:F

    .line 62
    move-object v9, v0

    const/high16 v10, 0x40400000    # 3.0f

    move v11, v4

    move v12, v6

    sub-float/2addr v11, v12

    mul-float/2addr v10, v11

    move v11, v8

    add-float/2addr v10, v11

    move v11, v2

    sub-float/2addr v10, v11

    iput v10, v9, Lcom/sun/openpisces/Curve;->ay:F

    .line 63
    move-object v9, v0

    const/high16 v10, 0x40400000    # 3.0f

    move v11, v1

    const/high16 v12, 0x40000000    # 2.0f

    move v13, v3

    mul-float/2addr v12, v13

    sub-float/2addr v11, v12

    move v12, v5

    add-float/2addr v11, v12

    mul-float/2addr v10, v11

    iput v10, v9, Lcom/sun/openpisces/Curve;->bx:F

    .line 64
    move-object v9, v0

    const/high16 v10, 0x40400000    # 3.0f

    move v11, v2

    const/high16 v12, 0x40000000    # 2.0f

    move v13, v4

    mul-float/2addr v12, v13

    sub-float/2addr v11, v12

    move v12, v6

    add-float/2addr v11, v12

    mul-float/2addr v10, v11

    iput v10, v9, Lcom/sun/openpisces/Curve;->by:F

    .line 65
    move-object v9, v0

    const/high16 v10, 0x40400000    # 3.0f

    move v11, v3

    move v12, v1

    sub-float/2addr v11, v12

    mul-float/2addr v10, v11

    iput v10, v9, Lcom/sun/openpisces/Curve;->cx:F

    .line 66
    move-object v9, v0

    const/high16 v10, 0x40400000    # 3.0f

    move v11, v4

    move v12, v2

    sub-float/2addr v11, v12

    mul-float/2addr v10, v11

    iput v10, v9, Lcom/sun/openpisces/Curve;->cy:F

    .line 67
    move-object v9, v0

    move v10, v1

    iput v10, v9, Lcom/sun/openpisces/Curve;->dx:F

    .line 68
    move-object v9, v0

    move v10, v2

    iput v10, v9, Lcom/sun/openpisces/Curve;->dy:F

    .line 69
    move-object v9, v0

    const/high16 v10, 0x40400000    # 3.0f

    move-object v11, v0

    iget v11, v11, Lcom/sun/openpisces/Curve;->ax:F

    mul-float/2addr v10, v11

    iput v10, v9, Lcom/sun/openpisces/Curve;->dax:F

    move-object v9, v0

    const/high16 v10, 0x40400000    # 3.0f

    move-object v11, v0

    iget v11, v11, Lcom/sun/openpisces/Curve;->ay:F

    mul-float/2addr v10, v11

    iput v10, v9, Lcom/sun/openpisces/Curve;->day:F

    .line 70
    move-object v9, v0

    const/high16 v10, 0x40000000    # 2.0f

    move-object v11, v0

    iget v11, v11, Lcom/sun/openpisces/Curve;->bx:F

    mul-float/2addr v10, v11

    iput v10, v9, Lcom/sun/openpisces/Curve;->dbx:F

    move-object v9, v0

    const/high16 v10, 0x40000000    # 2.0f

    move-object v11, v0

    iget v11, v11, Lcom/sun/openpisces/Curve;->by:F

    mul-float/2addr v10, v11

    iput v10, v9, Lcom/sun/openpisces/Curve;->dby:F

    .line 71
    return-void
.end method

.method set([FI)V
    .locals 14

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Curve;
    move-object v1, p1

    .local v1, "points":[F
    move/from16 v2, p2

    .local v2, "type":I
    move v3, v2

    packed-switch v3, :pswitch_data_0

    .line 52
    :pswitch_0
    new-instance v3, Ljava/lang/InternalError;

    move-object v13, v3

    move-object v3, v13

    move-object v4, v13

    const-string v5, "Curves can only be cubic or quadratic"

    invoke-direct {v4, v5}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 41
    :pswitch_1
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object v5, v1

    const/4 v6, 0x1

    aget v5, v5, v6

    move-object v6, v1

    const/4 v7, 0x2

    aget v6, v6, v7

    move-object v7, v1

    const/4 v8, 0x3

    aget v7, v7, v8

    move-object v8, v1

    const/4 v9, 0x4

    aget v8, v8, v9

    move-object v9, v1

    const/4 v10, 0x5

    aget v9, v9, v10

    move-object v10, v1

    const/4 v11, 0x6

    aget v10, v10, v11

    move-object v11, v1

    const/4 v12, 0x7

    aget v11, v11, v12

    invoke-virtual/range {v3 .. v11}, Lcom/sun/openpisces/Curve;->set(FFFFFFFF)V

    .line 45
    .line 54
    :goto_0
    return-void

    .line 47
    :pswitch_2
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object v5, v1

    const/4 v6, 0x1

    aget v5, v5, v6

    move-object v6, v1

    const/4 v7, 0x2

    aget v6, v6, v7

    move-object v7, v1

    const/4 v8, 0x3

    aget v7, v7, v8

    move-object v8, v1

    const/4 v9, 0x4

    aget v8, v8, v9

    move-object v9, v1

    const/4 v10, 0x5

    aget v9, v9, v10

    invoke-virtual/range {v3 .. v9}, Lcom/sun/openpisces/Curve;->set(FFFFFF)V

    .line 50
    goto :goto_0

    .line 39
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method xat(F)F
    .locals 6

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Curve;
    move v1, p1

    .local v1, "t":F
    move v2, v1

    move v3, v1

    move v4, v1

    move-object v5, v0

    iget v5, v5, Lcom/sun/openpisces/Curve;->ax:F

    mul-float/2addr v4, v5

    move-object v5, v0

    iget v5, v5, Lcom/sun/openpisces/Curve;->bx:F

    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    move-object v4, v0

    iget v4, v4, Lcom/sun/openpisces/Curve;->cx:F

    add-float/2addr v3, v4

    mul-float/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Lcom/sun/openpisces/Curve;->dx:F

    add-float/2addr v2, v3

    move v0, v2

    .end local v0    # "this":Lcom/sun/openpisces/Curve;
    return v0
.end method

.method yat(F)F
    .locals 6

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Curve;
    move v1, p1

    .local v1, "t":F
    move v2, v1

    move v3, v1

    move v4, v1

    move-object v5, v0

    iget v5, v5, Lcom/sun/openpisces/Curve;->ay:F

    mul-float/2addr v4, v5

    move-object v5, v0

    iget v5, v5, Lcom/sun/openpisces/Curve;->by:F

    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    move-object v4, v0

    iget v4, v4, Lcom/sun/openpisces/Curve;->cy:F

    add-float/2addr v3, v4

    mul-float/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Lcom/sun/openpisces/Curve;->dy:F

    add-float/2addr v2, v3

    move v0, v2

    .end local v0    # "this":Lcom/sun/openpisces/Curve;
    return v0
.end method
