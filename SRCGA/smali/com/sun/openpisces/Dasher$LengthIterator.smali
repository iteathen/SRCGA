.class Lcom/sun/openpisces/Dasher$LengthIterator;
.super Ljava/lang/Object;
.source "Dasher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/openpisces/Dasher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LengthIterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/openpisces/Dasher$LengthIterator$Side;
    }
.end annotation


# instance fields
.field private final ERR:F

.field private cachedHaveLowAcceleration:I

.field private curLeafCtrlPolyLengths:[F

.field private curveType:I

.field private done:Z

.field private flatLeafCoefCache:[F

.field private lastSegLen:F

.field private lastT:F

.field private lenAtLastSplit:F

.field private lenAtLastT:F

.field private lenAtNextT:F

.field private final limit:I

.field private final minTincrement:F

.field private nextRoots:[F

.field private nextT:F

.field private recCurveStack:[[F

.field private recLevel:I

.field private sides:[Lcom/sun/openpisces/Dasher$LengthIterator$Side;


# direct methods
.method public constructor <init>(IF)V
    .locals 7

    .prologue
    .line 354
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Dasher$LengthIterator;
    move v1, p1

    .local v1, "reclimit":I
    move v2, p2

    .local v2, "err":F
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 352
    move-object v3, v0

    const/4 v4, 0x3

    new-array v4, v4, [F

    iput-object v4, v3, Lcom/sun/openpisces/Dasher$LengthIterator;->curLeafCtrlPolyLengths:[F

    .line 392
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lcom/sun/openpisces/Dasher$LengthIterator;->cachedHaveLowAcceleration:I

    .line 425
    move-object v3, v0

    const/4 v4, 0x4

    new-array v4, v4, [F

    iput-object v4, v3, Lcom/sun/openpisces/Dasher$LengthIterator;->nextRoots:[F

    .line 431
    move-object v3, v0

    const/4 v4, 0x4

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    iput-object v4, v3, Lcom/sun/openpisces/Dasher$LengthIterator;->flatLeafCoefCache:[F

    .line 355
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/sun/openpisces/Dasher$LengthIterator;->limit:I

    .line 356
    move-object v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    move-object v6, v0

    iget v6, v6, Lcom/sun/openpisces/Dasher$LengthIterator;->limit:I

    shl-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    iput v4, v3, Lcom/sun/openpisces/Dasher$LengthIterator;->minTincrement:F

    .line 357
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/sun/openpisces/Dasher$LengthIterator;->ERR:F

    .line 358
    move-object v3, v0

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0x8

    filled-new-array {v4, v5}, [I

    move-result-object v5

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[F

    iput-object v4, v3, Lcom/sun/openpisces/Dasher$LengthIterator;->recCurveStack:[[F

    .line 359
    move-object v3, v0

    move v4, v1

    new-array v4, v4, [Lcom/sun/openpisces/Dasher$LengthIterator$Side;

    iput-object v4, v3, Lcom/sun/openpisces/Dasher$LengthIterator;->sides:[Lcom/sun/openpisces/Dasher$LengthIterator$Side;

    .line 362
    move-object v3, v0

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    iput v4, v3, Lcom/sun/openpisces/Dasher$LengthIterator;->nextT:F

    .line 363
    move-object v3, v0

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    iput v4, v3, Lcom/sun/openpisces/Dasher$LengthIterator;->lenAtNextT:F

    .line 364
    move-object v3, v0

    const/4 v4, 0x1

    iput v4, v3, Lcom/sun/openpisces/Dasher$LengthIterator;->lenAtLastSplit:F

    .line 365
    move-object v3, v0

    const/high16 v4, -0x80000000

    iput v4, v3, Lcom/sun/openpisces/Dasher$LengthIterator;->recLevel:I

    .line 366
    move-object v3, v0

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    iput v4, v3, Lcom/sun/openpisces/Dasher$LengthIterator;->lastSegLen:F

    .line 367
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/openpisces/Dasher$LengthIterator;->done:Z

    .line 368
    return-void

    .line 431
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
    .end array-data
.end method

.method private goLeft()V
    .locals 10

    .prologue
    .line 528
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Dasher$LengthIterator;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/openpisces/Dasher$LengthIterator;->onLeaf()F

    move-result v2

    move v1, v2

    .line 529
    .local v1, "len":F
    move v2, v1

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 530
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/sun/openpisces/Dasher$LengthIterator;->nextT:F

    iput v3, v2, Lcom/sun/openpisces/Dasher$LengthIterator;->lastT:F

    .line 531
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/sun/openpisces/Dasher$LengthIterator;->lenAtNextT:F

    iput v3, v2, Lcom/sun/openpisces/Dasher$LengthIterator;->lenAtLastT:F

    .line 532
    move-object v2, v0

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    iget v3, v3, Lcom/sun/openpisces/Dasher$LengthIterator;->nextT:F

    const/4 v4, 0x1

    move-object v5, v0

    iget v5, v5, Lcom/sun/openpisces/Dasher$LengthIterator;->limit:I

    move-object v6, v0

    iget v6, v6, Lcom/sun/openpisces/Dasher$LengthIterator;->recLevel:I

    sub-int/2addr v5, v6

    shl-int/2addr v4, v5

    int-to-float v4, v4

    move-object v5, v0

    iget v5, v5, Lcom/sun/openpisces/Dasher$LengthIterator;->minTincrement:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Lcom/sun/openpisces/Dasher$LengthIterator;->nextT:F

    .line 533
    move-object v2, v0

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    iget v3, v3, Lcom/sun/openpisces/Dasher$LengthIterator;->lenAtNextT:F

    move v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Lcom/sun/openpisces/Dasher$LengthIterator;->lenAtNextT:F

    .line 535
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/openpisces/Dasher$LengthIterator;->flatLeafCoefCache:[F

    const/4 v3, 0x2

    const/high16 v4, -0x40800000    # -1.0f

    aput v4, v2, v3

    .line 536
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/sun/openpisces/Dasher$LengthIterator;->cachedHaveLowAcceleration:I

    .line 545
    :goto_0
    return-void

    .line 538
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/openpisces/Dasher$LengthIterator;->recCurveStack:[[F

    move-object v3, v0

    iget v3, v3, Lcom/sun/openpisces/Dasher$LengthIterator;->recLevel:I

    aget-object v2, v2, v3

    const/4 v3, 0x0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/openpisces/Dasher$LengthIterator;->recCurveStack:[[F

    move-object v5, v0

    iget v5, v5, Lcom/sun/openpisces/Dasher$LengthIterator;->recLevel:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/openpisces/Dasher$LengthIterator;->recCurveStack:[[F

    move-object v7, v0

    iget v7, v7, Lcom/sun/openpisces/Dasher$LengthIterator;->recLevel:I

    aget-object v6, v6, v7

    const/4 v7, 0x0

    move-object v8, v0

    iget v8, v8, Lcom/sun/openpisces/Dasher$LengthIterator;->curveType:I

    invoke-static/range {v2 .. v8}, Lcom/sun/openpisces/Helpers;->subdivide([FI[FI[FII)V

    .line 541
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/openpisces/Dasher$LengthIterator;->sides:[Lcom/sun/openpisces/Dasher$LengthIterator$Side;

    move-object v3, v0

    iget v3, v3, Lcom/sun/openpisces/Dasher$LengthIterator;->recLevel:I

    sget-object v4, Lcom/sun/openpisces/Dasher$LengthIterator$Side;->LEFT:Lcom/sun/openpisces/Dasher$LengthIterator$Side;

    aput-object v4, v2, v3

    .line 542
    move-object v2, v0

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    iget v3, v3, Lcom/sun/openpisces/Dasher$LengthIterator;->recLevel:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/sun/openpisces/Dasher$LengthIterator;->recLevel:I

    .line 543
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/openpisces/Dasher$LengthIterator;->goLeft()V

    goto :goto_0
.end method

.method private goToNextLeaf()V
    .locals 7

    .prologue
    .line 510
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Dasher$LengthIterator;
    move-object v1, v0

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    iget v2, v2, Lcom/sun/openpisces/Dasher$LengthIterator;->recLevel:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/sun/openpisces/Dasher$LengthIterator;->recLevel:I

    .line 511
    :goto_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/openpisces/Dasher$LengthIterator;->sides:[Lcom/sun/openpisces/Dasher$LengthIterator$Side;

    move-object v2, v0

    iget v2, v2, Lcom/sun/openpisces/Dasher$LengthIterator;->recLevel:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/sun/openpisces/Dasher$LengthIterator$Side;->RIGHT:Lcom/sun/openpisces/Dasher$LengthIterator$Side;

    if-ne v1, v2, :cond_1

    .line 512
    move-object v1, v0

    iget v1, v1, Lcom/sun/openpisces/Dasher$LengthIterator;->recLevel:I

    if-nez v1, :cond_0

    .line 513
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/openpisces/Dasher$LengthIterator;->done:Z

    .line 514
    .line 524
    :goto_1
    return-void

    .line 516
    :cond_0
    move-object v1, v0

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    iget v2, v2, Lcom/sun/openpisces/Dasher$LengthIterator;->recLevel:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/sun/openpisces/Dasher$LengthIterator;->recLevel:I

    goto :goto_0

    .line 519
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/openpisces/Dasher$LengthIterator;->sides:[Lcom/sun/openpisces/Dasher$LengthIterator$Side;

    move-object v2, v0

    iget v2, v2, Lcom/sun/openpisces/Dasher$LengthIterator;->recLevel:I

    sget-object v3, Lcom/sun/openpisces/Dasher$LengthIterator$Side;->RIGHT:Lcom/sun/openpisces/Dasher$LengthIterator$Side;

    aput-object v3, v1, v2

    .line 520
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/openpisces/Dasher$LengthIterator;->recCurveStack:[[F

    move-object v2, v0

    iget v2, v2, Lcom/sun/openpisces/Dasher$LengthIterator;->recLevel:I

    aget-object v1, v1, v2

    const/4 v2, 0x0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/openpisces/Dasher$LengthIterator;->recCurveStack:[[F

    move-object v4, v0

    iget v4, v4, Lcom/sun/openpisces/Dasher$LengthIterator;->recLevel:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x0

    move-object v5, v0

    iget v5, v5, Lcom/sun/openpisces/Dasher$LengthIterator;->curveType:I

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 522
    move-object v1, v0

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    iget v2, v2, Lcom/sun/openpisces/Dasher$LengthIterator;->recLevel:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/sun/openpisces/Dasher$LengthIterator;->recLevel:I

    .line 523
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/openpisces/Dasher$LengthIterator;->goLeft()V

    .line 524
    goto :goto_1
.end method

.method private haveLowAcceleration(F)Z
    .locals 9

    .prologue
    .line 395
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Dasher$LengthIterator;
    move v1, p1

    .local v1, "err":F
    move-object v5, v0

    iget v5, v5, Lcom/sun/openpisces/Dasher$LengthIterator;->cachedHaveLowAcceleration:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    .line 396
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/openpisces/Dasher$LengthIterator;->curLeafCtrlPolyLengths:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    move v2, v5

    .line 397
    .local v2, "len1":F
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/openpisces/Dasher$LengthIterator;->curLeafCtrlPolyLengths:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    move v3, v5

    .line 401
    .local v3, "len2":F
    move v5, v2

    move v6, v3

    move v7, v1

    move v8, v3

    mul-float/2addr v7, v8

    invoke-static {v5, v6, v7}, Lcom/sun/openpisces/Helpers;->within(FFF)Z

    move-result v5

    if-nez v5, :cond_0

    .line 402
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/sun/openpisces/Dasher$LengthIterator;->cachedHaveLowAcceleration:I

    .line 403
    const/4 v5, 0x0

    move v0, v5

    .line 420
    .end local v0    # "this":Lcom/sun/openpisces/Dasher$LengthIterator;
    .end local v2    # "len1":F
    .end local v3    # "len2":F
    :goto_0
    return v0

    .line 405
    .restart local v0    # "this":Lcom/sun/openpisces/Dasher$LengthIterator;
    .restart local v2    # "len1":F
    .restart local v3    # "len2":F
    :cond_0
    move-object v5, v0

    iget v5, v5, Lcom/sun/openpisces/Dasher$LengthIterator;->curveType:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_2

    .line 406
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/openpisces/Dasher$LengthIterator;->curLeafCtrlPolyLengths:[F

    const/4 v6, 0x2

    aget v5, v5, v6

    move v4, v5

    .line 410
    .local v4, "len3":F
    move v5, v3

    move v6, v4

    move v7, v1

    move v8, v4

    mul-float/2addr v7, v8

    invoke-static {v5, v6, v7}, Lcom/sun/openpisces/Helpers;->within(FFF)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v2

    move v6, v4

    move v7, v1

    move v8, v4

    mul-float/2addr v7, v8

    .line 411
    invoke-static {v5, v6, v7}, Lcom/sun/openpisces/Helpers;->within(FFF)Z

    move-result v5

    if-nez v5, :cond_2

    .line 412
    :cond_1
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/sun/openpisces/Dasher$LengthIterator;->cachedHaveLowAcceleration:I

    .line 413
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 416
    .end local v4    # "len3":F
    :cond_2
    move-object v5, v0

    const/4 v6, 0x1

    iput v6, v5, Lcom/sun/openpisces/Dasher$LengthIterator;->cachedHaveLowAcceleration:I

    .line 417
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 420
    .end local v2    # "len1":F
    .end local v3    # "len2":F
    :cond_3
    move-object v5, v0

    iget v5, v5, Lcom/sun/openpisces/Dasher$LengthIterator;->cachedHaveLowAcceleration:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    const/4 v5, 0x1

    :goto_1
    move v0, v5

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private onLeaf()F
    .locals 15

    .prologue
    .line 550
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Dasher$LengthIterator;
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/openpisces/Dasher$LengthIterator;->recCurveStack:[[F

    move-object v10, v0

    iget v10, v10, Lcom/sun/openpisces/Dasher$LengthIterator;->recLevel:I

    aget-object v9, v9, v10

    move-object v1, v9

    .line 551
    .local v1, "curve":[F
    const/4 v9, 0x0

    move v2, v9

    .line 553
    .local v2, "polyLen":F
    move-object v9, v1

    const/4 v10, 0x0

    aget v9, v9, v10

    move v3, v9

    .local v3, "x0":F
    move-object v9, v1

    const/4 v10, 0x1

    aget v9, v9, v10

    move v4, v9

    .line 554
    .local v4, "y0":F
    const/4 v9, 0x2

    move v5, v9

    .local v5, "i":I
    :goto_0
    move v9, v5

    move-object v10, v0

    iget v10, v10, Lcom/sun/openpisces/Dasher$LengthIterator;->curveType:I

    if-ge v9, v10, :cond_0

    .line 555
    move-object v9, v1

    move v10, v5

    aget v9, v9, v10

    move v6, v9

    .local v6, "x1":F
    move-object v9, v1

    move v10, v5

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    aget v9, v9, v10

    move v7, v9

    .line 556
    .local v7, "y1":F
    move v9, v3

    move v10, v4

    move v11, v6

    move v12, v7

    invoke-static {v9, v10, v11, v12}, Lcom/sun/openpisces/Helpers;->linelen(FFFF)F

    move-result v9

    move v8, v9

    .line 557
    .local v8, "len":F
    move v9, v2

    move v10, v8

    add-float/2addr v9, v10

    move v2, v9

    .line 558
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/openpisces/Dasher$LengthIterator;->curLeafCtrlPolyLengths:[F

    move v10, v5

    const/4 v11, 0x2

    div-int/lit8 v10, v10, 0x2

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    move v11, v8

    aput v11, v9, v10

    .line 559
    move v9, v6

    move v3, v9

    .line 560
    move v9, v7

    move v4, v9

    .line 554
    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    .line 563
    .end local v6    # "x1":F
    .end local v7    # "y1":F
    .end local v8    # "len":F
    :cond_0
    move-object v9, v1

    const/4 v10, 0x0

    aget v9, v9, v10

    move-object v10, v1

    const/4 v11, 0x1

    aget v10, v10, v11

    move-object v11, v1

    move-object v12, v0

    iget v12, v12, Lcom/sun/openpisces/Dasher$LengthIterator;->curveType:I

    const/4 v13, 0x2

    add-int/lit8 v12, v12, -0x2

    aget v11, v11, v12

    move-object v12, v1

    move-object v13, v0

    iget v13, v13, Lcom/sun/openpisces/Dasher$LengthIterator;->curveType:I

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    aget v12, v12, v13

    .line 564
    invoke-static {v9, v10, v11, v12}, Lcom/sun/openpisces/Helpers;->linelen(FFFF)F

    move-result v9

    move v5, v9

    .line 565
    .local v5, "lineLen":F
    move v9, v2

    move v10, v5

    sub-float/2addr v9, v10

    move-object v10, v0

    iget v10, v10, Lcom/sun/openpisces/Dasher$LengthIterator;->ERR:F

    cmpg-float v9, v9, v10

    if-ltz v9, :cond_1

    move-object v9, v0

    iget v9, v9, Lcom/sun/openpisces/Dasher$LengthIterator;->recLevel:I

    move-object v10, v0

    iget v10, v10, Lcom/sun/openpisces/Dasher$LengthIterator;->limit:I

    if-ne v9, v10, :cond_2

    .line 566
    :cond_1
    move v9, v2

    move v10, v5

    add-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    move v0, v9

    .line 568
    .end local v0    # "this":Lcom/sun/openpisces/Dasher$LengthIterator;
    :goto_1
    return v0

    .restart local v0    # "this":Lcom/sun/openpisces/Dasher$LengthIterator;
    :cond_2
    const/high16 v9, -0x40800000    # -1.0f

    move v0, v9

    goto :goto_1
.end method


# virtual methods
.method public initializeIterationOnCurve([FI)V
    .locals 8

    .prologue
    .line 371
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Dasher$LengthIterator;
    move-object v1, p1

    .local v1, "pts":[F
    move v2, p2

    .local v2, "type":I
    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/openpisces/Dasher$LengthIterator;->recCurveStack:[[F

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    move v7, v2

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 372
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/sun/openpisces/Dasher$LengthIterator;->curveType:I

    .line 373
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/openpisces/Dasher$LengthIterator;->recLevel:I

    .line 374
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/openpisces/Dasher$LengthIterator;->lastT:F

    .line 375
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/openpisces/Dasher$LengthIterator;->lenAtLastT:F

    .line 376
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/openpisces/Dasher$LengthIterator;->nextT:F

    .line 377
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/openpisces/Dasher$LengthIterator;->lenAtNextT:F

    .line 378
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/openpisces/Dasher$LengthIterator;->goLeft()V

    .line 379
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/openpisces/Dasher$LengthIterator;->lenAtLastSplit:F

    .line 380
    move-object v3, v0

    iget v3, v3, Lcom/sun/openpisces/Dasher$LengthIterator;->recLevel:I

    if-lez v3, :cond_0

    .line 381
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/openpisces/Dasher$LengthIterator;->sides:[Lcom/sun/openpisces/Dasher$LengthIterator$Side;

    const/4 v4, 0x0

    sget-object v5, Lcom/sun/openpisces/Dasher$LengthIterator$Side;->LEFT:Lcom/sun/openpisces/Dasher$LengthIterator$Side;

    aput-object v5, v3, v4

    .line 382
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/openpisces/Dasher$LengthIterator;->done:Z

    .line 388
    :goto_0
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/openpisces/Dasher$LengthIterator;->lastSegLen:F

    .line 389
    return-void

    .line 385
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/openpisces/Dasher$LengthIterator;->sides:[Lcom/sun/openpisces/Dasher$LengthIterator$Side;

    const/4 v4, 0x0

    sget-object v5, Lcom/sun/openpisces/Dasher$LengthIterator$Side;->RIGHT:Lcom/sun/openpisces/Dasher$LengthIterator$Side;

    aput-object v5, v3, v4

    .line 386
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/openpisces/Dasher$LengthIterator;->done:Z

    goto :goto_0
.end method

.method public lastSegLen()F
    .locals 2

    .prologue
    .line 502
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Dasher$LengthIterator;
    move-object v1, v0

    iget v1, v1, Lcom/sun/openpisces/Dasher$LengthIterator;->lastSegLen:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/openpisces/Dasher$LengthIterator;
    return v0
.end method

.method public next(F)F
    .locals 18

    .prologue
    .line 436
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/openpisces/Dasher$LengthIterator;
    move/from16 v1, p1

    .local v1, "len":F
    move-object v10, v0

    iget v10, v10, Lcom/sun/openpisces/Dasher$LengthIterator;->lenAtLastSplit:F

    move v11, v1

    add-float/2addr v10, v11

    move v2, v10

    .line 437
    .local v2, "targetLength":F
    :goto_0
    move-object v10, v0

    iget v10, v10, Lcom/sun/openpisces/Dasher$LengthIterator;->lenAtNextT:F

    move v11, v2

    cmpg-float v10, v10, v11

    if-gez v10, :cond_1

    .line 438
    move-object v10, v0

    iget-boolean v10, v10, Lcom/sun/openpisces/Dasher$LengthIterator;->done:Z

    if-eqz v10, :cond_0

    .line 439
    move-object v10, v0

    move-object v11, v0

    iget v11, v11, Lcom/sun/openpisces/Dasher$LengthIterator;->lenAtNextT:F

    move-object v12, v0

    iget v12, v12, Lcom/sun/openpisces/Dasher$LengthIterator;->lenAtLastSplit:F

    sub-float/2addr v11, v12

    iput v11, v10, Lcom/sun/openpisces/Dasher$LengthIterator;->lastSegLen:F

    .line 440
    const/high16 v10, 0x3f800000    # 1.0f

    move v0, v10

    .line 498
    .end local v0    # "this":Lcom/sun/openpisces/Dasher$LengthIterator;
    :goto_1
    return v0

    .line 442
    .restart local v0    # "this":Lcom/sun/openpisces/Dasher$LengthIterator;
    :cond_0
    move-object v10, v0

    invoke-direct {v10}, Lcom/sun/openpisces/Dasher$LengthIterator;->goToNextLeaf()V

    goto :goto_0

    .line 444
    :cond_1
    move-object v10, v0

    move v11, v2

    iput v11, v10, Lcom/sun/openpisces/Dasher$LengthIterator;->lenAtLastSplit:F

    .line 445
    move-object v10, v0

    iget v10, v10, Lcom/sun/openpisces/Dasher$LengthIterator;->lenAtNextT:F

    move-object v11, v0

    iget v11, v11, Lcom/sun/openpisces/Dasher$LengthIterator;->lenAtLastT:F

    sub-float/2addr v10, v11

    move v3, v10

    .line 446
    .local v3, "leaflen":F
    move v10, v2

    move-object v11, v0

    iget v11, v11, Lcom/sun/openpisces/Dasher$LengthIterator;->lenAtLastT:F

    sub-float/2addr v10, v11

    move v11, v3

    div-float/2addr v10, v11

    move v4, v10

    .line 450
    .local v4, "t":F
    move-object v10, v0

    const v11, 0x3d4ccccd    # 0.05f

    invoke-direct {v10, v11}, Lcom/sun/openpisces/Dasher$LengthIterator;->haveLowAcceleration(F)Z

    move-result v10

    if-nez v10, :cond_3

    .line 456
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/openpisces/Dasher$LengthIterator;->flatLeafCoefCache:[F

    const/4 v11, 0x2

    aget v10, v10, v11

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_2

    .line 457
    const/4 v10, 0x0

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/openpisces/Dasher$LengthIterator;->curLeafCtrlPolyLengths:[F

    const/4 v12, 0x0

    aget v11, v11, v12

    add-float/2addr v10, v11

    move v5, v10

    .line 458
    .local v5, "x":F
    move v10, v5

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/openpisces/Dasher$LengthIterator;->curLeafCtrlPolyLengths:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    add-float/2addr v10, v11

    move v6, v10

    .line 459
    .local v6, "y":F
    move-object v10, v0

    iget v10, v10, Lcom/sun/openpisces/Dasher$LengthIterator;->curveType:I

    const/16 v11, 0x8

    if-ne v10, v11, :cond_5

    .line 460
    move v10, v6

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/openpisces/Dasher$LengthIterator;->curLeafCtrlPolyLengths:[F

    const/4 v12, 0x2

    aget v11, v11, v12

    add-float/2addr v10, v11

    move v7, v10

    .line 461
    .local v7, "z":F
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/openpisces/Dasher$LengthIterator;->flatLeafCoefCache:[F

    const/4 v11, 0x0

    const/high16 v12, 0x40400000    # 3.0f

    move v13, v5

    move v14, v6

    sub-float/2addr v13, v14

    mul-float/2addr v12, v13

    move v13, v7

    add-float/2addr v12, v13

    aput v12, v10, v11

    .line 462
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/openpisces/Dasher$LengthIterator;->flatLeafCoefCache:[F

    const/4 v11, 0x1

    const/high16 v12, 0x40400000    # 3.0f

    move v13, v6

    const/high16 v14, 0x40000000    # 2.0f

    move v15, v5

    mul-float/2addr v14, v15

    sub-float/2addr v13, v14

    mul-float/2addr v12, v13

    aput v12, v10, v11

    .line 463
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/openpisces/Dasher$LengthIterator;->flatLeafCoefCache:[F

    const/4 v11, 0x2

    const/high16 v12, 0x40400000    # 3.0f

    move v13, v5

    mul-float/2addr v12, v13

    aput v12, v10, v11

    .line 464
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/openpisces/Dasher$LengthIterator;->flatLeafCoefCache:[F

    const/4 v11, 0x3

    move v12, v7

    neg-float v12, v12

    aput v12, v10, v11

    .line 465
    .line 472
    .end local v5    # "x":F
    .end local v6    # "y":F
    .end local v7    # "z":F
    :cond_2
    :goto_2
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/openpisces/Dasher$LengthIterator;->flatLeafCoefCache:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    move v5, v10

    .line 473
    .local v5, "a":F
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/openpisces/Dasher$LengthIterator;->flatLeafCoefCache:[F

    const/4 v11, 0x1

    aget v10, v10, v11

    move v6, v10

    .line 474
    .local v6, "b":F
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/openpisces/Dasher$LengthIterator;->flatLeafCoefCache:[F

    const/4 v11, 0x2

    aget v10, v10, v11

    move v7, v10

    .line 475
    .local v7, "c":F
    move v10, v4

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/openpisces/Dasher$LengthIterator;->flatLeafCoefCache:[F

    const/4 v12, 0x3

    aget v11, v11, v12

    mul-float/2addr v10, v11

    move v8, v10

    .line 480
    .local v8, "d":F
    move v10, v5

    move v11, v6

    move v12, v7

    move v13, v8

    move-object v14, v0

    iget-object v14, v14, Lcom/sun/openpisces/Dasher$LengthIterator;->nextRoots:[F

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    invoke-static/range {v10 .. v17}, Lcom/sun/openpisces/Helpers;->cubicRootsInAB(FFFF[FIFF)I

    move-result v10

    move v9, v10

    .line 481
    .local v9, "n":I
    move v10, v9

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/openpisces/Dasher$LengthIterator;->nextRoots:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-nez v10, :cond_3

    .line 482
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/openpisces/Dasher$LengthIterator;->nextRoots:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    move v4, v10

    .line 487
    .end local v5    # "a":F
    .end local v6    # "b":F
    .end local v7    # "c":F
    .end local v8    # "d":F
    .end local v9    # "n":I
    :cond_3
    move v10, v4

    move-object v11, v0

    iget v11, v11, Lcom/sun/openpisces/Dasher$LengthIterator;->nextT:F

    move-object v12, v0

    iget v12, v12, Lcom/sun/openpisces/Dasher$LengthIterator;->lastT:F

    sub-float/2addr v11, v12

    mul-float/2addr v10, v11

    move-object v11, v0

    iget v11, v11, Lcom/sun/openpisces/Dasher$LengthIterator;->lastT:F

    add-float/2addr v10, v11

    move v4, v10

    .line 488
    move v10, v4

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_4

    .line 489
    const/high16 v10, 0x3f800000    # 1.0f

    move v4, v10

    .line 490
    move-object v10, v0

    const/4 v11, 0x1

    iput-boolean v11, v10, Lcom/sun/openpisces/Dasher$LengthIterator;->done:Z

    .line 497
    :cond_4
    move-object v10, v0

    move v11, v1

    iput v11, v10, Lcom/sun/openpisces/Dasher$LengthIterator;->lastSegLen:F

    .line 498
    move v10, v4

    move v0, v10

    goto/16 :goto_1

    .line 465
    .local v5, "x":F
    .local v6, "y":F
    :cond_5
    move-object v10, v0

    iget v10, v10, Lcom/sun/openpisces/Dasher$LengthIterator;->curveType:I

    const/4 v11, 0x6

    if-ne v10, v11, :cond_2

    .line 466
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/openpisces/Dasher$LengthIterator;->flatLeafCoefCache:[F

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    .line 467
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/openpisces/Dasher$LengthIterator;->flatLeafCoefCache:[F

    const/4 v11, 0x1

    move v12, v6

    const/high16 v13, 0x40000000    # 2.0f

    move v14, v5

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    aput v12, v10, v11

    .line 468
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/openpisces/Dasher$LengthIterator;->flatLeafCoefCache:[F

    const/4 v11, 0x2

    const/high16 v12, 0x40000000    # 2.0f

    move v13, v5

    mul-float/2addr v12, v13

    aput v12, v10, v11

    .line 469
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/openpisces/Dasher$LengthIterator;->flatLeafCoefCache:[F

    const/4 v11, 0x3

    move v12, v6

    neg-float v12, v12

    aput v12, v10, v11

    goto/16 :goto_2
.end method
