.class public Lcom/sun/javafx/geom/transform/Translate2D;
.super Lcom/sun/javafx/geom/transform/BaseTransform;
.source "Translate2D.java"


# static fields
.field private static final BASE_HASH:J


# instance fields
.field private mxt:D

.field private myt:D


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 634
    const-wide/16 v2, 0x0

    move-wide v0, v2

    .line 635
    .local v0, "bits":J
    move-wide v2, v0

    const-wide/16 v4, 0x1f

    mul-long/2addr v2, v4

    sget-object v4, Lcom/sun/javafx/geom/transform/Translate2D;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzz()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    add-long/2addr v2, v4

    move-wide v0, v2

    .line 636
    move-wide v2, v0

    const-wide/16 v4, 0x1f

    mul-long/2addr v2, v4

    sget-object v4, Lcom/sun/javafx/geom/transform/Translate2D;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzy()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    add-long/2addr v2, v4

    move-wide v0, v2

    .line 637
    move-wide v2, v0

    const-wide/16 v4, 0x1f

    mul-long/2addr v2, v4

    sget-object v4, Lcom/sun/javafx/geom/transform/Translate2D;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzx()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    add-long/2addr v2, v4

    move-wide v0, v2

    .line 638
    move-wide v2, v0

    const-wide/16 v4, 0x1f

    mul-long/2addr v2, v4

    sget-object v4, Lcom/sun/javafx/geom/transform/Translate2D;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyz()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    add-long/2addr v2, v4

    move-wide v0, v2

    .line 639
    move-wide v2, v0

    const-wide/16 v4, 0x1f

    mul-long/2addr v2, v4

    sget-object v4, Lcom/sun/javafx/geom/transform/Translate2D;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxz()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    add-long/2addr v2, v4

    move-wide v0, v2

    .line 640
    move-wide v2, v0

    const-wide/16 v4, 0x1f

    mul-long/2addr v2, v4

    sget-object v4, Lcom/sun/javafx/geom/transform/Translate2D;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyy()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    add-long/2addr v2, v4

    move-wide v0, v2

    .line 641
    move-wide v2, v0

    const-wide/16 v4, 0x1f

    mul-long/2addr v2, v4

    sget-object v4, Lcom/sun/javafx/geom/transform/Translate2D;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyx()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    add-long/2addr v2, v4

    move-wide v0, v2

    .line 642
    move-wide v2, v0

    const-wide/16 v4, 0x1f

    mul-long/2addr v2, v4

    sget-object v4, Lcom/sun/javafx/geom/transform/Translate2D;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxy()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    add-long/2addr v2, v4

    move-wide v0, v2

    .line 643
    move-wide v2, v0

    const-wide/16 v4, 0x1f

    mul-long/2addr v2, v4

    sget-object v4, Lcom/sun/javafx/geom/transform/Translate2D;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxx()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    add-long/2addr v2, v4

    move-wide v0, v2

    .line 644
    move-wide v2, v0

    const-wide/16 v4, 0x1f

    mul-long/2addr v2, v4

    sget-object v4, Lcom/sun/javafx/geom/transform/Translate2D;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzt()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    add-long/2addr v2, v4

    move-wide v0, v2

    .line 645
    move-wide v2, v0

    sput-wide v2, Lcom/sun/javafx/geom/transform/Translate2D;->BASE_HASH:J

    .line 646
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 9

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Translate2D;
    move-wide v1, p1

    .local v1, "tx":D
    move-wide v3, p3

    .local v3, "ty":D
    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/javafx/geom/transform/BaseTransform;-><init>()V

    .line 51
    move-object v5, v0

    move-wide v6, v1

    iput-wide v6, v5, Lcom/sun/javafx/geom/transform/Translate2D;->mxt:D

    .line 52
    move-object v5, v0

    move-wide v6, v3

    iput-wide v6, v5, Lcom/sun/javafx/geom/transform/Translate2D;->myt:D

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/sun/javafx/geom/transform/BaseTransform;)V
    .locals 6

    .prologue
    .line 55
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/Translate2D;
    move-object v2, p1

    .local v2, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/javafx/geom/transform/BaseTransform;-><init>()V

    .line 56
    move-object v3, v2

    invoke-virtual {v3}, Lcom/sun/javafx/geom/transform/BaseTransform;->isTranslateOrIdentity()Z

    move-result v3

    if-nez v3, :cond_0

    .line 57
    sget-object v3, Lcom/sun/javafx/geom/transform/BaseTransform$Degree;->TRANSLATE_2D:Lcom/sun/javafx/geom/transform/BaseTransform$Degree;

    invoke-static {v3}, Lcom/sun/javafx/geom/transform/Translate2D;->degreeError(Lcom/sun/javafx/geom/transform/BaseTransform$Degree;)V

    .line 59
    :cond_0
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxt()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/sun/javafx/geom/transform/Translate2D;->mxt:D

    .line 60
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyt()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/sun/javafx/geom/transform/Translate2D;->myt:D

    .line 61
    return-void
.end method

.method private static _matround(D)D
    .locals 6

    .prologue
    .line 606
    move-wide v0, p0

    .local v0, "matval":D
    move-wide v2, v0

    const-wide v4, 0x430c6bf526340000L    # 1.0E15

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->rint(D)D

    move-result-wide v2

    const-wide v4, 0x430c6bf526340000L    # 1.0E15

    div-double/2addr v2, v4

    move-wide v0, v2

    .end local v0    # "matval":D
    return-wide v0
.end method

.method public static getInstance(DD)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 12

    .prologue
    .line 43
    move-wide v0, p0

    .local v0, "mxt":D
    move-wide v2, p2

    .local v2, "myt":D
    move-wide v4, v0

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_0

    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_0

    .line 44
    sget-object v4, Lcom/sun/javafx/geom/transform/Translate2D;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v0, v4

    .line 46
    .end local v0    # "mxt":D
    :goto_0
    return-object v0

    .restart local v0    # "mxt":D
    :cond_0
    new-instance v4, Lcom/sun/javafx/geom/transform/Translate2D;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-wide v6, v0

    move-wide v8, v2

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sun/javafx/geom/transform/Translate2D;-><init>(DD)V

    move-object v0, v4

    goto :goto_0
.end method

.method static transform(Lcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/Rectangle;DD)V
    .locals 26

    .prologue
    .line 376
    move-object/from16 v2, p0

    .local v2, "rect":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v3, p1

    .local v3, "result":Lcom/sun/javafx/geom/Rectangle;
    move-wide/from16 v4, p2

    .local v4, "mxt":D
    move-wide/from16 v6, p4

    .local v6, "myt":D
    move-wide/from16 v18, v4

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    move/from16 v8, v18

    .line 377
    .local v8, "imxt":I
    move-wide/from16 v18, v6

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    move/from16 v9, v18

    .line 378
    .local v9, "imyt":I
    move/from16 v18, v8

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v20, v4

    cmpl-double v18, v18, v20

    if-nez v18, :cond_0

    move/from16 v18, v9

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v20, v6

    cmpl-double v18, v18, v20

    if-nez v18, :cond_0

    .line 379
    move-object/from16 v18, v3

    move-object/from16 v19, v2

    invoke-virtual/range {v18 .. v19}, Lcom/sun/javafx/geom/Rectangle;->setBounds(Lcom/sun/javafx/geom/Rectangle;)V

    .line 380
    move-object/from16 v18, v3

    move/from16 v19, v8

    move/from16 v20, v9

    invoke-virtual/range {v18 .. v20}, Lcom/sun/javafx/geom/Rectangle;->translate(II)V

    .line 390
    :goto_0
    return-void

    .line 382
    :cond_0
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->x:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v20, v4

    add-double v18, v18, v20

    move-wide/from16 v10, v18

    .line 383
    .local v10, "x1":D
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->y:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v20, v6

    add-double v18, v18, v20

    move-wide/from16 v12, v18

    .line 384
    .local v12, "y1":D
    move-wide/from16 v18, v10

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->width:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    add-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v18

    move-wide/from16 v14, v18

    .line 385
    .local v14, "x2":D
    move-wide/from16 v18, v12

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->height:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    add-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v18

    move-wide/from16 v16, v18

    .line 386
    .local v16, "y2":D
    move-wide/from16 v18, v10

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->floor(D)D

    move-result-wide v18

    move-wide/from16 v10, v18

    .line 387
    move-wide/from16 v18, v12

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->floor(D)D

    move-result-wide v18

    move-wide/from16 v12, v18

    .line 388
    move-object/from16 v18, v3

    move-wide/from16 v19, v10

    move-wide/from16 v0, v19

    double-to-int v0, v0

    move/from16 v19, v0

    move-wide/from16 v20, v12

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    move-wide/from16 v21, v14

    move-wide/from16 v23, v10

    sub-double v21, v21, v23

    move-wide/from16 v0, v21

    double-to-int v0, v0

    move/from16 v21, v0

    move-wide/from16 v22, v16

    move-wide/from16 v24, v12

    sub-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v18 .. v22}, Lcom/sun/javafx/geom/Rectangle;->setBounds(IIII)V

    goto/16 :goto_0
.end method


# virtual methods
.method public copy()Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 9

    .prologue
    .line 618
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/Translate2D;
    new-instance v2, Lcom/sun/javafx/geom/transform/Translate2D;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/geom/transform/Translate2D;->mxt:D

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/transform/Translate2D;->myt:D

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sun/javafx/geom/transform/Translate2D;-><init>(DD)V

    move-object v1, v2

    .end local v1    # "this":Lcom/sun/javafx/geom/transform/Translate2D;
    return-object v1
.end method

.method public createInverse()Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 9

    .prologue
    .line 596
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/Translate2D;
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/geom/transform/Translate2D;->isIdentity()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 597
    sget-object v2, Lcom/sun/javafx/geom/transform/Translate2D;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v1, v2

    .line 599
    .end local v1    # "this":Lcom/sun/javafx/geom/transform/Translate2D;
    :goto_0
    return-object v1

    .restart local v1    # "this":Lcom/sun/javafx/geom/transform/Translate2D;
    :cond_0
    new-instance v2, Lcom/sun/javafx/geom/transform/Translate2D;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/geom/transform/Translate2D;->mxt:D

    neg-double v4, v4

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/transform/Translate2D;->myt:D

    neg-double v6, v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sun/javafx/geom/transform/Translate2D;-><init>(DD)V

    move-object v1, v2

    goto :goto_0
.end method

.method public createTransformedShape(Lcom/sun/javafx/geom/Shape;)Lcom/sun/javafx/geom/Shape;
    .locals 7

    .prologue
    .line 394
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Translate2D;
    move-object v1, p1

    .local v1, "s":Lcom/sun/javafx/geom/Shape;
    new-instance v2, Lcom/sun/javafx/geom/Path2D;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    move-object v5, v0

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/geom/Path2D;-><init>(Lcom/sun/javafx/geom/Shape;Lcom/sun/javafx/geom/transform/BaseTransform;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Translate2D;
    return-object v0
.end method

.method public deltaTransform(Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Vec3d;)Lcom/sun/javafx/geom/Vec3d;
    .locals 6

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Translate2D;
    move-object v1, p1

    .local v1, "src":Lcom/sun/javafx/geom/Vec3d;
    move-object v2, p2

    .local v2, "dst":Lcom/sun/javafx/geom/Vec3d;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 135
    new-instance v3, Lcom/sun/javafx/geom/Vec3d;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/sun/javafx/geom/Vec3d;-><init>()V

    move-object v2, v3

    .line 137
    :cond_0
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/geom/Vec3d;->set(Lcom/sun/javafx/geom/Vec3d;)V

    .line 138
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Translate2D;
    return-object v0
.end method

.method public deltaTransform([DI[DII)V
    .locals 12

    .prologue
    .line 264
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Translate2D;
    move-object v1, p1

    .local v1, "srcPts":[D
    move v2, p2

    .local v2, "srcOff":I
    move-object v3, p3

    .local v3, "dstPts":[D
    move/from16 v4, p4

    .local v4, "dstOff":I
    move/from16 v5, p5

    .local v5, "numPts":I
    move-object v6, v1

    move-object v7, v3

    if-ne v6, v7, :cond_0

    move v6, v2

    move v7, v4

    if-eq v6, v7, :cond_1

    .line 265
    :cond_0
    move-object v6, v1

    move v7, v2

    move-object v8, v3

    move v9, v4

    move v10, v5

    const/4 v11, 0x2

    mul-int/lit8 v10, v10, 0x2

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 267
    :cond_1
    return-void
.end method

.method public deltaTransform([FI[FII)V
    .locals 12

    .prologue
    .line 254
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Translate2D;
    move-object v1, p1

    .local v1, "srcPts":[F
    move v2, p2

    .local v2, "srcOff":I
    move-object v3, p3

    .local v3, "dstPts":[F
    move/from16 v4, p4

    .local v4, "dstOff":I
    move/from16 v5, p5

    .local v5, "numPts":I
    move-object v6, v1

    move-object v7, v3

    if-ne v6, v7, :cond_0

    move v6, v2

    move v7, v4

    if-eq v6, v7, :cond_1

    .line 255
    :cond_0
    move-object v6, v1

    move v7, v2

    move-object v8, v3

    move v9, v4

    move v10, v5

    const/4 v11, 0x2

    mul-int/lit8 v10, v10, 0x2

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 257
    :cond_1
    return-void
.end method

.method public deriveWithConcatenation(DDDDDD)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 33

    .prologue
    .line 520
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/geom/transform/Translate2D;
    move-wide/from16 v4, p1

    .local v4, "mxx":D
    move-wide/from16 v6, p3

    .local v6, "myx":D
    move-wide/from16 v8, p5

    .local v8, "mxy":D
    move-wide/from16 v10, p7

    .local v10, "myy":D
    move-wide/from16 v12, p9

    .local v12, "mxt":D
    move-wide/from16 v14, p11

    .local v14, "myt":D
    move-wide/from16 v16, v4

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    cmpl-double v16, v16, v18

    if-nez v16, :cond_0

    move-wide/from16 v16, v6

    const-wide/16 v18, 0x0

    cmpl-double v16, v16, v18

    if-nez v16, :cond_0

    move-wide/from16 v16, v8

    const-wide/16 v18, 0x0

    cmpl-double v16, v16, v18

    if-nez v16, :cond_0

    move-wide/from16 v16, v10

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    cmpl-double v16, v16, v18

    if-nez v16, :cond_0

    .line 521
    move-object/from16 v16, v3

    move-object/from16 v32, v16

    move-object/from16 v16, v32

    move-object/from16 v17, v32

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Translate2D;->mxt:D

    move-wide/from16 v17, v0

    move-wide/from16 v19, v12

    add-double v17, v17, v19

    move-wide/from16 v0, v17

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Translate2D;->mxt:D

    .line 522
    move-object/from16 v16, v3

    move-object/from16 v32, v16

    move-object/from16 v16, v32

    move-object/from16 v17, v32

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Translate2D;->myt:D

    move-wide/from16 v17, v0

    move-wide/from16 v19, v14

    add-double v17, v17, v19

    move-wide/from16 v0, v17

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Translate2D;->myt:D

    .line 523
    move-object/from16 v16, v3

    move-object/from16 v3, v16

    .line 525
    .end local v3    # "this":Lcom/sun/javafx/geom/transform/Translate2D;
    :goto_0
    return-object v3

    .restart local v3    # "this":Lcom/sun/javafx/geom/transform/Translate2D;
    :cond_0
    new-instance v16, Lcom/sun/javafx/geom/transform/Affine2D;

    move-object/from16 v32, v16

    move-object/from16 v16, v32

    move-object/from16 v17, v32

    move-wide/from16 v18, v4

    move-wide/from16 v20, v6

    move-wide/from16 v22, v8

    move-wide/from16 v24, v10

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Translate2D;->mxt:D

    move-wide/from16 v26, v0

    move-wide/from16 v28, v12

    add-double v26, v26, v28

    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Translate2D;->myt:D

    move-wide/from16 v28, v0

    move-wide/from16 v30, v14

    add-double v28, v28, v30

    invoke-direct/range {v17 .. v29}, Lcom/sun/javafx/geom/transform/Affine2D;-><init>(DDDDDD)V

    move-object/from16 v3, v16

    goto :goto_0
.end method

.method public deriveWithConcatenation(DDDDDDDDDDDD)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 55

    .prologue
    .line 536
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/geom/transform/Translate2D;
    move-wide/from16 v4, p1

    .local v4, "mxx":D
    move-wide/from16 v6, p3

    .local v6, "mxy":D
    move-wide/from16 v8, p5

    .local v8, "mxz":D
    move-wide/from16 v10, p7

    .local v10, "mxt":D
    move-wide/from16 v12, p9

    .local v12, "myx":D
    move-wide/from16 v14, p11

    .local v14, "myy":D
    move-wide/from16 v16, p13

    .local v16, "myz":D
    move-wide/from16 v18, p15

    .local v18, "myt":D
    move-wide/from16 v20, p17

    .local v20, "mzx":D
    move-wide/from16 v22, p19

    .local v22, "mzy":D
    move-wide/from16 v24, p21

    .local v24, "mzz":D
    move-wide/from16 v26, p23

    .local v26, "mzt":D
    move-wide/from16 v28, v8

    const-wide/16 v30, 0x0

    cmpl-double v28, v28, v30

    if-nez v28, :cond_0

    move-wide/from16 v28, v16

    const-wide/16 v30, 0x0

    cmpl-double v28, v28, v30

    if-nez v28, :cond_0

    move-wide/from16 v28, v20

    const-wide/16 v30, 0x0

    cmpl-double v28, v28, v30

    if-nez v28, :cond_0

    move-wide/from16 v28, v22

    const-wide/16 v30, 0x0

    cmpl-double v28, v28, v30

    if-nez v28, :cond_0

    move-wide/from16 v28, v24

    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    cmpl-double v28, v28, v30

    if-nez v28, :cond_0

    move-wide/from16 v28, v26

    const-wide/16 v30, 0x0

    cmpl-double v28, v28, v30

    if-nez v28, :cond_0

    .line 539
    move-object/from16 v28, v3

    move-wide/from16 v29, v4

    move-wide/from16 v31, v12

    move-wide/from16 v33, v6

    move-wide/from16 v35, v14

    move-wide/from16 v37, v10

    move-wide/from16 v39, v18

    invoke-virtual/range {v28 .. v40}, Lcom/sun/javafx/geom/transform/Translate2D;->deriveWithConcatenation(DDDDDD)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v28

    move-object/from16 v3, v28

    .line 544
    .end local v3    # "this":Lcom/sun/javafx/geom/transform/Translate2D;
    :goto_0
    return-object v3

    .restart local v3    # "this":Lcom/sun/javafx/geom/transform/Translate2D;
    :cond_0
    new-instance v28, Lcom/sun/javafx/geom/transform/Affine3D;

    move-object/from16 v54, v28

    move-object/from16 v28, v54

    move-object/from16 v29, v54

    move-wide/from16 v30, v4

    move-wide/from16 v32, v6

    move-wide/from16 v34, v8

    move-wide/from16 v36, v10

    move-object/from16 v38, v3

    move-object/from16 v0, v38

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Translate2D;->mxt:D

    move-wide/from16 v38, v0

    add-double v36, v36, v38

    move-wide/from16 v38, v12

    move-wide/from16 v40, v14

    move-wide/from16 v42, v16

    move-wide/from16 v44, v18

    move-object/from16 v46, v3

    move-object/from16 v0, v46

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Translate2D;->myt:D

    move-wide/from16 v46, v0

    add-double v44, v44, v46

    move-wide/from16 v46, v20

    move-wide/from16 v48, v22

    move-wide/from16 v50, v24

    move-wide/from16 v52, v26

    invoke-direct/range {v29 .. v53}, Lcom/sun/javafx/geom/transform/Affine3D;-><init>(DDDDDDDDDDDD)V

    move-object/from16 v3, v28

    goto :goto_0
.end method

.method public deriveWithConcatenation(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 19

    .prologue
    .line 551
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/Translate2D;
    move-object/from16 v2, p1

    .local v2, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->isTranslateOrIdentity()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 552
    move-object v4, v1

    move-object/from16 v18, v4

    move-object/from16 v4, v18

    move-object/from16 v5, v18

    iget-wide v5, v5, Lcom/sun/javafx/geom/transform/Translate2D;->mxt:D

    move-object v7, v2

    invoke-virtual {v7}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxt()D

    move-result-wide v7

    add-double/2addr v5, v7

    iput-wide v5, v4, Lcom/sun/javafx/geom/transform/Translate2D;->mxt:D

    .line 553
    move-object v4, v1

    move-object/from16 v18, v4

    move-object/from16 v4, v18

    move-object/from16 v5, v18

    iget-wide v5, v5, Lcom/sun/javafx/geom/transform/Translate2D;->myt:D

    move-object v7, v2

    invoke-virtual {v7}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyt()D

    move-result-wide v7

    add-double/2addr v5, v7

    iput-wide v5, v4, Lcom/sun/javafx/geom/transform/Translate2D;->myt:D

    .line 554
    move-object v4, v1

    move-object v1, v4

    .line 562
    .end local v1    # "this":Lcom/sun/javafx/geom/transform/Translate2D;
    :goto_0
    return-object v1

    .line 555
    .restart local v1    # "this":Lcom/sun/javafx/geom/transform/Translate2D;
    :cond_0
    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->is2D()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 556
    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxx()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyx()D

    move-result-wide v6

    move-object v8, v2

    .line 557
    invoke-virtual {v8}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxy()D

    move-result-wide v8

    move-object v10, v2

    invoke-virtual {v10}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyy()D

    move-result-wide v10

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/Translate2D;->mxt:D

    move-object v14, v2

    .line 558
    invoke-virtual {v14}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxt()D

    move-result-wide v14

    add-double/2addr v12, v14

    move-object v14, v1

    iget-wide v14, v14, Lcom/sun/javafx/geom/transform/Translate2D;->myt:D

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyt()D

    move-result-wide v16

    add-double v14, v14, v16

    .line 556
    invoke-static/range {v4 .. v15}, Lcom/sun/javafx/geom/transform/Translate2D;->getInstance(DDDDDD)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 560
    :cond_1
    new-instance v4, Lcom/sun/javafx/geom/transform/Affine3D;

    move-object/from16 v18, v4

    move-object/from16 v4, v18

    move-object/from16 v5, v18

    move-object v6, v2

    invoke-direct {v5, v6}, Lcom/sun/javafx/geom/transform/Affine3D;-><init>(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    move-object v3, v4

    .line 561
    .local v3, "t3d":Lcom/sun/javafx/geom/transform/Affine3D;
    move-object v4, v3

    move-object v5, v1

    iget-wide v5, v5, Lcom/sun/javafx/geom/transform/Translate2D;->mxt:D

    move-object v7, v1

    iget-wide v7, v7, Lcom/sun/javafx/geom/transform/Translate2D;->myt:D

    const-wide/16 v9, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/sun/javafx/geom/transform/Affine3D;->preTranslate(DDD)V

    .line 562
    move-object v4, v3

    move-object v1, v4

    goto :goto_0
.end method

.method public deriveWithNewTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 6

    .prologue
    .line 585
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/Translate2D;
    move-object v2, p1

    .local v2, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v3, v2

    invoke-virtual {v3}, Lcom/sun/javafx/geom/transform/BaseTransform;->isTranslateOrIdentity()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 586
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxt()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/sun/javafx/geom/transform/Translate2D;->mxt:D

    .line 587
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyt()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/sun/javafx/geom/transform/Translate2D;->myt:D

    .line 588
    move-object v3, v1

    move-object v1, v3

    .line 590
    .end local v1    # "this":Lcom/sun/javafx/geom/transform/Translate2D;
    :goto_0
    return-object v1

    .restart local v1    # "this":Lcom/sun/javafx/geom/transform/Translate2D;
    :cond_0
    move-object v3, v2

    invoke-static {v3}, Lcom/sun/javafx/geom/transform/Translate2D;->getInstance(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v3

    move-object v1, v3

    goto :goto_0
.end method

.method public deriveWithPreConcatenation(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 11

    .prologue
    .line 568
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Translate2D;
    move-object v1, p1

    .local v1, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/geom/transform/BaseTransform;->isTranslateOrIdentity()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 569
    move-object v3, v0

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    iget-wide v4, v4, Lcom/sun/javafx/geom/transform/Translate2D;->mxt:D

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxt()D

    move-result-wide v6

    add-double/2addr v4, v6

    iput-wide v4, v3, Lcom/sun/javafx/geom/transform/Translate2D;->mxt:D

    .line 570
    move-object v3, v0

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    iget-wide v4, v4, Lcom/sun/javafx/geom/transform/Translate2D;->myt:D

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyt()D

    move-result-wide v6

    add-double/2addr v4, v6

    iput-wide v4, v3, Lcom/sun/javafx/geom/transform/Translate2D;->myt:D

    .line 571
    move-object v3, v0

    move-object v0, v3

    .line 579
    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Translate2D;
    :goto_0
    return-object v0

    .line 572
    .restart local v0    # "this":Lcom/sun/javafx/geom/transform/Translate2D;
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/geom/transform/BaseTransform;->is2D()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 573
    new-instance v3, Lcom/sun/javafx/geom/transform/Affine2D;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/geom/transform/Affine2D;-><init>(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    move-object v2, v3

    .line 574
    .local v2, "t2d":Lcom/sun/javafx/geom/transform/Affine2D;
    move-object v3, v2

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/geom/transform/Translate2D;->mxt:D

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/geom/transform/Translate2D;->myt:D

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sun/javafx/geom/transform/Affine2D;->translate(DD)V

    .line 575
    move-object v3, v2

    move-object v0, v3

    goto :goto_0

    .line 577
    .end local v2    # "t2d":Lcom/sun/javafx/geom/transform/Affine2D;
    :cond_1
    new-instance v3, Lcom/sun/javafx/geom/transform/Affine3D;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/geom/transform/Affine3D;-><init>(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    move-object v2, v3

    .line 578
    .local v2, "t3d":Lcom/sun/javafx/geom/transform/Affine3D;
    move-object v3, v2

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/geom/transform/Translate2D;->mxt:D

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/geom/transform/Translate2D;->myt:D

    const-wide/16 v8, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/sun/javafx/geom/transform/Affine3D;->translate(DDD)V

    .line 579
    move-object v3, v2

    move-object v0, v3

    goto :goto_0
.end method

.method public deriveWithPreTranslation(DD)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 11

    .prologue
    .line 510
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Translate2D;
    move-wide v1, p1

    .local v1, "mxt":D
    move-wide v3, p3

    .local v3, "myt":D
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget-wide v6, v6, Lcom/sun/javafx/geom/transform/Translate2D;->mxt:D

    move-wide v8, v1

    add-double/2addr v6, v8

    iput-wide v6, v5, Lcom/sun/javafx/geom/transform/Translate2D;->mxt:D

    .line 511
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget-wide v6, v6, Lcom/sun/javafx/geom/transform/Translate2D;->myt:D

    move-wide v8, v3

    add-double/2addr v6, v8

    iput-wide v6, v5, Lcom/sun/javafx/geom/transform/Translate2D;->myt:D

    .line 512
    move-object v5, v0

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Translate2D;
    return-object v0
.end method

.method public deriveWithRotation(DDDD)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 21

    .prologue
    .line 486
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/Translate2D;
    move-wide/from16 v2, p1

    .local v2, "theta":D
    move-wide/from16 v4, p3

    .local v4, "axisX":D
    move-wide/from16 v6, p5

    .local v6, "axisY":D
    move-wide/from16 v8, p7

    .local v8, "axisZ":D
    move-wide v11, v2

    const-wide/16 v13, 0x0

    cmpl-double v11, v11, v13

    if-nez v11, :cond_0

    .line 487
    move-object v11, v1

    move-object v1, v11

    .line 505
    .end local v1    # "this":Lcom/sun/javafx/geom/transform/Translate2D;
    :goto_0
    return-object v1

    .line 489
    .restart local v1    # "this":Lcom/sun/javafx/geom/transform/Translate2D;
    :cond_0
    move-wide v11, v4

    invoke-static {v11, v12}, Lcom/sun/javafx/geom/transform/Translate2D;->almostZero(D)Z

    move-result v11

    if-eqz v11, :cond_4

    move-wide v11, v6

    invoke-static {v11, v12}, Lcom/sun/javafx/geom/transform/Translate2D;->almostZero(D)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 490
    move-wide v11, v8

    const-wide/16 v13, 0x0

    cmpl-double v11, v11, v13

    if-nez v11, :cond_1

    .line 491
    move-object v11, v1

    move-object v1, v11

    goto :goto_0

    .line 493
    :cond_1
    new-instance v11, Lcom/sun/javafx/geom/transform/Affine2D;

    move-object/from16 v20, v11

    move-object/from16 v11, v20

    move-object/from16 v12, v20

    invoke-direct {v12}, Lcom/sun/javafx/geom/transform/Affine2D;-><init>()V

    move-object v10, v11

    .line 494
    .local v10, "a":Lcom/sun/javafx/geom/transform/Affine2D;
    move-object v11, v10

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/Translate2D;->mxt:D

    move-object v14, v1

    iget-wide v14, v14, Lcom/sun/javafx/geom/transform/Translate2D;->myt:D

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/sun/javafx/geom/transform/Affine2D;->translate(DD)V

    .line 495
    move-wide v11, v8

    const-wide/16 v13, 0x0

    cmpl-double v11, v11, v13

    if-lez v11, :cond_3

    .line 496
    move-object v11, v10

    move-wide v12, v2

    invoke-virtual {v11, v12, v13}, Lcom/sun/javafx/geom/transform/Affine2D;->rotate(D)V

    .line 500
    :cond_2
    :goto_1
    move-object v11, v10

    move-object v1, v11

    goto :goto_0

    .line 497
    :cond_3
    move-wide v11, v8

    const-wide/16 v13, 0x0

    cmpg-double v11, v11, v13

    if-gez v11, :cond_2

    .line 498
    move-object v11, v10

    move-wide v12, v2

    neg-double v12, v12

    invoke-virtual {v11, v12, v13}, Lcom/sun/javafx/geom/transform/Affine2D;->rotate(D)V

    goto :goto_1

    .line 502
    .end local v10    # "a":Lcom/sun/javafx/geom/transform/Affine2D;
    :cond_4
    new-instance v11, Lcom/sun/javafx/geom/transform/Affine3D;

    move-object/from16 v20, v11

    move-object/from16 v11, v20

    move-object/from16 v12, v20

    invoke-direct {v12}, Lcom/sun/javafx/geom/transform/Affine3D;-><init>()V

    move-object v10, v11

    .line 503
    .local v10, "a":Lcom/sun/javafx/geom/transform/Affine3D;
    move-object v11, v10

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/Translate2D;->mxt:D

    move-object v14, v1

    iget-wide v14, v14, Lcom/sun/javafx/geom/transform/Translate2D;->myt:D

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/sun/javafx/geom/transform/Affine3D;->translate(DD)V

    .line 504
    move-object v11, v10

    move-wide v12, v2

    move-wide v14, v4

    move-wide/from16 v16, v6

    move-wide/from16 v18, v8

    invoke-virtual/range {v11 .. v19}, Lcom/sun/javafx/geom/transform/Affine3D;->rotate(DDDD)V

    .line 505
    move-object v11, v10

    move-object v1, v11

    goto :goto_0
.end method

.method public deriveWithScale(DDD)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 17

    .prologue
    .line 467
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/Translate2D;
    move-wide/from16 v2, p1

    .local v2, "mxx":D
    move-wide/from16 v4, p3

    .local v4, "myy":D
    move-wide/from16 v6, p5

    .local v6, "mzz":D
    move-wide v9, v6

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    cmpl-double v9, v9, v11

    if-nez v9, :cond_1

    .line 468
    move-wide v9, v2

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    cmpl-double v9, v9, v11

    if-nez v9, :cond_0

    move-wide v9, v4

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    cmpl-double v9, v9, v11

    if-nez v9, :cond_0

    .line 469
    move-object v9, v1

    move-object v1, v9

    .line 479
    .end local v1    # "this":Lcom/sun/javafx/geom/transform/Translate2D;
    :goto_0
    return-object v1

    .line 471
    .restart local v1    # "this":Lcom/sun/javafx/geom/transform/Translate2D;
    :cond_0
    new-instance v9, Lcom/sun/javafx/geom/transform/Affine2D;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    invoke-direct {v10}, Lcom/sun/javafx/geom/transform/Affine2D;-><init>()V

    move-object v8, v9

    .line 472
    .local v8, "a":Lcom/sun/javafx/geom/transform/Affine2D;
    move-object v9, v8

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/geom/transform/Translate2D;->mxt:D

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/Translate2D;->myt:D

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/sun/javafx/geom/transform/Affine2D;->translate(DD)V

    .line 473
    move-object v9, v8

    move-wide v10, v2

    move-wide v12, v4

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/sun/javafx/geom/transform/Affine2D;->scale(DD)V

    .line 474
    move-object v9, v8

    move-object v1, v9

    goto :goto_0

    .line 476
    .end local v8    # "a":Lcom/sun/javafx/geom/transform/Affine2D;
    :cond_1
    new-instance v9, Lcom/sun/javafx/geom/transform/Affine3D;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    invoke-direct {v10}, Lcom/sun/javafx/geom/transform/Affine3D;-><init>()V

    move-object v8, v9

    .line 477
    .local v8, "a":Lcom/sun/javafx/geom/transform/Affine3D;
    move-object v9, v8

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/geom/transform/Translate2D;->mxt:D

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/Translate2D;->myt:D

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/sun/javafx/geom/transform/Affine3D;->translate(DD)V

    .line 478
    move-object v9, v8

    move-wide v10, v2

    move-wide v12, v4

    move-wide v14, v6

    invoke-virtual/range {v9 .. v15}, Lcom/sun/javafx/geom/transform/Affine3D;->scale(DDD)V

    .line 479
    move-object v9, v8

    move-object v1, v9

    goto :goto_0
.end method

.method public deriveWithTranslation(DD)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 11

    .prologue
    .line 448
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Translate2D;
    move-wide v1, p1

    .local v1, "mxt":D
    move-wide v3, p3

    .local v3, "myt":D
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget-wide v6, v6, Lcom/sun/javafx/geom/transform/Translate2D;->mxt:D

    move-wide v8, v1

    add-double/2addr v6, v8

    iput-wide v6, v5, Lcom/sun/javafx/geom/transform/Translate2D;->mxt:D

    .line 449
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget-wide v6, v6, Lcom/sun/javafx/geom/transform/Translate2D;->myt:D

    move-wide v8, v3

    add-double/2addr v6, v8

    iput-wide v6, v5, Lcom/sun/javafx/geom/transform/Translate2D;->myt:D

    .line 450
    move-object v5, v0

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Translate2D;
    return-object v0
.end method

.method public deriveWithTranslation(DDD)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 17

    .prologue
    .line 455
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/Translate2D;
    move-wide/from16 v2, p1

    .local v2, "mxt":D
    move-wide/from16 v4, p3

    .local v4, "myt":D
    move-wide/from16 v6, p5

    .local v6, "mzt":D
    move-wide v9, v6

    const-wide/16 v11, 0x0

    cmpl-double v9, v9, v11

    if-nez v9, :cond_0

    .line 456
    move-object v9, v1

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    iget-wide v10, v10, Lcom/sun/javafx/geom/transform/Translate2D;->mxt:D

    move-wide v12, v2

    add-double/2addr v10, v12

    iput-wide v10, v9, Lcom/sun/javafx/geom/transform/Translate2D;->mxt:D

    .line 457
    move-object v9, v1

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    iget-wide v10, v10, Lcom/sun/javafx/geom/transform/Translate2D;->myt:D

    move-wide v12, v4

    add-double/2addr v10, v12

    iput-wide v10, v9, Lcom/sun/javafx/geom/transform/Translate2D;->myt:D

    .line 458
    move-object v9, v1

    move-object v1, v9

    .line 462
    .end local v1    # "this":Lcom/sun/javafx/geom/transform/Translate2D;
    :goto_0
    return-object v1

    .line 460
    .restart local v1    # "this":Lcom/sun/javafx/geom/transform/Translate2D;
    :cond_0
    new-instance v9, Lcom/sun/javafx/geom/transform/Affine3D;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    invoke-direct {v10}, Lcom/sun/javafx/geom/transform/Affine3D;-><init>()V

    move-object v8, v9

    .line 461
    .local v8, "a":Lcom/sun/javafx/geom/transform/Affine3D;
    move-object v9, v8

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/geom/transform/Translate2D;->mxt:D

    move-wide v12, v2

    add-double/2addr v10, v12

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/Translate2D;->myt:D

    move-wide v14, v4

    add-double/2addr v12, v14

    move-wide v14, v6

    invoke-virtual/range {v9 .. v15}, Lcom/sun/javafx/geom/transform/Affine3D;->translate(DDD)V

    .line 462
    move-object v9, v8

    move-object v1, v9

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    .line 623
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/Translate2D;
    move-object v2, p1

    .local v2, "obj":Ljava/lang/Object;
    move-object v4, v2

    instance-of v4, v4, Lcom/sun/javafx/geom/transform/BaseTransform;

    if-eqz v4, :cond_1

    .line 624
    move-object v4, v2

    check-cast v4, Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v3, v4

    .line 625
    .local v3, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v4, v3

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->isTranslateOrIdentity()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v3

    .line 626
    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxt()D

    move-result-wide v4

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/transform/Translate2D;->mxt:D

    cmpl-double v4, v4, v6

    if-nez v4, :cond_0

    move-object v4, v3

    .line 627
    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyt()D

    move-result-wide v4

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/transform/Translate2D;->myt:D

    cmpl-double v4, v4, v6

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v1, v4

    .line 629
    .end local v1    # "this":Lcom/sun/javafx/geom/transform/Translate2D;
    .end local v3    # "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    :goto_1
    return v1

    .line 627
    .restart local v1    # "this":Lcom/sun/javafx/geom/transform/Translate2D;
    .restart local v3    # "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 629
    .end local v3    # "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    :cond_1
    const/4 v4, 0x0

    move v1, v4

    goto :goto_1
.end method

.method public getDegree()Lcom/sun/javafx/geom/transform/BaseTransform$Degree;
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Translate2D;
    sget-object v1, Lcom/sun/javafx/geom/transform/BaseTransform$Degree;->TRANSLATE_2D:Lcom/sun/javafx/geom/transform/BaseTransform$Degree;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Translate2D;
    return-object v0
.end method

.method public getDeterminant()D
    .locals 3

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Translate2D;
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Translate2D;
    return-wide v0
.end method

.method public getMxt()D
    .locals 3

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Translate2D;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/geom/transform/Translate2D;->mxt:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Translate2D;
    return-wide v0
.end method

.method public getMyt()D
    .locals 3

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Translate2D;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/geom/transform/Translate2D;->myt:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Translate2D;
    return-wide v0
.end method

.method public getType()I
    .locals 6

    .prologue
    .line 85
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/Translate2D;
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/geom/transform/Translate2D;->mxt:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/geom/transform/Translate2D;->myt:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move v1, v2

    .end local v1    # "this":Lcom/sun/javafx/geom/transform/Translate2D;
    return v1

    .restart local v1    # "this":Lcom/sun/javafx/geom/transform/Translate2D;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    .line 650
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/Translate2D;
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/Translate2D;->isIdentity()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    move v1, v4

    .line 654
    .end local v1    # "this":Lcom/sun/javafx/geom/transform/Translate2D;
    .local v2, "bits":J
    :goto_0
    return v1

    .line 651
    .end local v2    # "bits":J
    .restart local v1    # "this":Lcom/sun/javafx/geom/transform/Translate2D;
    :cond_0
    sget-wide v4, Lcom/sun/javafx/geom/transform/Translate2D;->BASE_HASH:J

    move-wide v2, v4

    .line 652
    .restart local v2    # "bits":J
    move-wide v4, v2

    const-wide/16 v6, 0x1f

    mul-long/2addr v4, v6

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/Translate2D;->getMyt()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    add-long/2addr v4, v6

    move-wide v2, v4

    .line 653
    move-wide v4, v2

    const-wide/16 v6, 0x1f

    mul-long/2addr v4, v6

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/Translate2D;->getMxt()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    add-long/2addr v4, v6

    move-wide v2, v4

    .line 654
    move-wide v4, v2

    long-to-int v4, v4

    move-wide v5, v2

    const/16 v7, 0x20

    shr-long/2addr v5, v7

    long-to-int v5, v5

    xor-int/2addr v4, v5

    move v1, v4

    goto :goto_0
.end method

.method public inverseDeltaTransform(Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Vec3d;)Lcom/sun/javafx/geom/Vec3d;
    .locals 6

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Translate2D;
    move-object v1, p1

    .local v1, "src":Lcom/sun/javafx/geom/Vec3d;
    move-object v2, p2

    .local v2, "dst":Lcom/sun/javafx/geom/Vec3d;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 155
    new-instance v3, Lcom/sun/javafx/geom/Vec3d;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/sun/javafx/geom/Vec3d;-><init>()V

    move-object v2, v3

    .line 157
    :cond_0
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/geom/Vec3d;->set(Lcom/sun/javafx/geom/Vec3d;)V

    .line 158
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Translate2D;
    return-object v0
.end method

.method public inverseDeltaTransform([FI[FII)V
    .locals 12

    .prologue
    .line 305
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Translate2D;
    move-object v1, p1

    .local v1, "srcPts":[F
    move v2, p2

    .local v2, "srcOff":I
    move-object v3, p3

    .local v3, "dstPts":[F
    move/from16 v4, p4

    .local v4, "dstOff":I
    move/from16 v5, p5

    .local v5, "numPts":I
    move-object v6, v1

    move-object v7, v3

    if-ne v6, v7, :cond_0

    move v6, v2

    move v7, v4

    if-eq v6, v7, :cond_1

    .line 306
    :cond_0
    move-object v6, v1

    move v7, v2

    move-object v8, v3

    move v9, v4

    move v10, v5

    const/4 v11, 0x2

    mul-int/lit8 v10, v10, 0x2

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 308
    :cond_1
    return-void
.end method

.method public inverseTransform(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 17

    .prologue
    .line 359
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/Translate2D;
    move-object/from16 v2, p1

    .local v2, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object/from16 v3, p2

    .local v3, "result":Lcom/sun/javafx/geom/BaseBounds;
    move-object v10, v2

    invoke-virtual {v10}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v10

    float-to-double v10, v10

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/Translate2D;->mxt:D

    sub-double/2addr v10, v12

    double-to-float v10, v10

    move v4, v10

    .line 360
    .local v4, "minX":F
    move-object v10, v2

    invoke-virtual {v10}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v10

    float-to-double v10, v10

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/Translate2D;->myt:D

    sub-double/2addr v10, v12

    double-to-float v10, v10

    move v5, v10

    .line 361
    .local v5, "minY":F
    move-object v10, v2

    invoke-virtual {v10}, Lcom/sun/javafx/geom/BaseBounds;->getMinZ()F

    move-result v10

    move v6, v10

    .line 362
    .local v6, "minZ":F
    move-object v10, v2

    invoke-virtual {v10}, Lcom/sun/javafx/geom/BaseBounds;->getMaxX()F

    move-result v10

    float-to-double v10, v10

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/Translate2D;->mxt:D

    sub-double/2addr v10, v12

    double-to-float v10, v10

    move v7, v10

    .line 363
    .local v7, "maxX":F
    move-object v10, v2

    invoke-virtual {v10}, Lcom/sun/javafx/geom/BaseBounds;->getMaxY()F

    move-result v10

    float-to-double v10, v10

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/Translate2D;->myt:D

    sub-double/2addr v10, v12

    double-to-float v10, v10

    move v8, v10

    .line 364
    .local v8, "maxY":F
    move-object v10, v2

    invoke-virtual {v10}, Lcom/sun/javafx/geom/BaseBounds;->getMaxZ()F

    move-result v10

    move v9, v10

    .line 365
    .local v9, "maxZ":F
    move-object v10, v3

    move v11, v4

    move v12, v5

    move v13, v6

    move v14, v7

    move v15, v8

    move/from16 v16, v9

    invoke-virtual/range {v10 .. v16}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithNewBounds(FFFFFF)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v10

    move-object v1, v10

    .end local v1    # "this":Lcom/sun/javafx/geom/transform/Translate2D;
    return-object v1
.end method

.method public inverseTransform(Lcom/sun/javafx/geom/Point2D;Lcom/sun/javafx/geom/Point2D;)Lcom/sun/javafx/geom/Point2D;
    .locals 9

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Translate2D;
    move-object v1, p1

    .local v1, "src":Lcom/sun/javafx/geom/Point2D;
    move-object v2, p2

    .local v2, "dst":Lcom/sun/javafx/geom/Point2D;
    move-object v3, v2

    if-nez v3, :cond_0

    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Lcom/sun/javafx/geom/transform/Translate2D;->makePoint(Lcom/sun/javafx/geom/Point2D;Lcom/sun/javafx/geom/Point2D;)Lcom/sun/javafx/geom/Point2D;

    move-result-object v3

    move-object v2, v3

    .line 115
    :cond_0
    move-object v3, v2

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Point2D;->x:F

    float-to-double v4, v4

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/geom/transform/Translate2D;->mxt:D

    sub-double/2addr v4, v6

    double-to-float v4, v4

    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/geom/Point2D;->y:F

    float-to-double v5, v5

    move-object v7, v0

    iget-wide v7, v7, Lcom/sun/javafx/geom/transform/Translate2D;->myt:D

    sub-double/2addr v5, v7

    double-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/geom/Point2D;->setLocation(FF)V

    .line 118
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Translate2D;
    return-object v0
.end method

.method public inverseTransform(Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Vec3d;)Lcom/sun/javafx/geom/Vec3d;
    .locals 9

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Translate2D;
    move-object v1, p1

    .local v1, "src":Lcom/sun/javafx/geom/Vec3d;
    move-object v2, p2

    .local v2, "dst":Lcom/sun/javafx/geom/Vec3d;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 144
    new-instance v3, Lcom/sun/javafx/geom/Vec3d;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Lcom/sun/javafx/geom/Vec3d;-><init>()V

    move-object v2, v3

    .line 146
    :cond_0
    move-object v3, v2

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/geom/transform/Translate2D;->mxt:D

    sub-double/2addr v4, v6

    iput-wide v4, v3, Lcom/sun/javafx/geom/Vec3d;->x:D

    .line 147
    move-object v3, v2

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/geom/transform/Translate2D;->myt:D

    sub-double/2addr v4, v6

    iput-wide v4, v3, Lcom/sun/javafx/geom/Vec3d;->y:D

    .line 148
    move-object v3, v2

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/geom/Vec3d;->z:D

    iput-wide v4, v3, Lcom/sun/javafx/geom/Vec3d;->z:D

    .line 149
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Translate2D;
    return-object v0
.end method

.method public inverseTransform(Lcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/Rectangle;)V
    .locals 10

    .prologue
    .line 370
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/Translate2D;
    move-object v2, p1

    .local v2, "rect":Lcom/sun/javafx/geom/Rectangle;
    move-object v3, p2

    .local v3, "result":Lcom/sun/javafx/geom/Rectangle;
    move-object v4, v2

    move-object v5, v3

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/transform/Translate2D;->mxt:D

    neg-double v6, v6

    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/javafx/geom/transform/Translate2D;->myt:D

    neg-double v8, v8

    invoke-static/range {v4 .. v9}, Lcom/sun/javafx/geom/transform/Translate2D;->transform(Lcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/Rectangle;DD)V

    .line 371
    return-void
.end method

.method public inverseTransform([DI[DII)V
    .locals 18

    .prologue
    .line 315
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/Translate2D;
    move-object/from16 v2, p1

    .local v2, "srcPts":[D
    move/from16 v3, p2

    .local v3, "srcOff":I
    move-object/from16 v4, p3

    .local v4, "dstPts":[D
    move/from16 v5, p4

    .local v5, "dstOff":I
    move/from16 v6, p5

    .local v6, "numPts":I
    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/Translate2D;->mxt:D

    move-wide v7, v12

    .line 316
    .local v7, "tx":D
    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/Translate2D;->myt:D

    move-wide v9, v12

    .line 317
    .local v9, "ty":D
    move-object v12, v4

    move-object v13, v2

    if-ne v12, v13, :cond_1

    .line 318
    move v12, v5

    move v13, v3

    if-le v12, v13, :cond_0

    move v12, v5

    move v13, v3

    move v14, v6

    const/4 v15, 0x2

    mul-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    if-ge v12, v13, :cond_0

    .line 327
    move-object v12, v2

    move v13, v3

    move-object v14, v4

    move v15, v5

    move/from16 v16, v6

    const/16 v17, 0x2

    mul-int/lit8 v16, v16, 0x2

    invoke-static/range {v12 .. v16}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 329
    move v12, v5

    move v3, v12

    .line 331
    :cond_0
    move v12, v5

    move v13, v3

    if-ne v12, v13, :cond_1

    move-wide v12, v7

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-nez v12, :cond_1

    move-wide v12, v9

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-nez v12, :cond_1

    .line 332
    .line 339
    :goto_0
    return-void

    .line 335
    :cond_1
    const/4 v12, 0x0

    move v11, v12

    .local v11, "i":I
    :goto_1
    move v12, v11

    move v13, v6

    if-ge v12, v13, :cond_2

    .line 336
    move-object v12, v4

    move v13, v5

    add-int/lit8 v5, v5, 0x1

    move-object v14, v2

    move v15, v3

    add-int/lit8 v3, v3, 0x1

    aget-wide v14, v14, v15

    move-wide/from16 v16, v7

    sub-double v14, v14, v16

    aput-wide v14, v12, v13

    .line 337
    move-object v12, v4

    move v13, v5

    add-int/lit8 v5, v5, 0x1

    move-object v14, v2

    move v15, v3

    add-int/lit8 v3, v3, 0x1

    aget-wide v14, v14, v15

    move-wide/from16 v16, v9

    sub-double v14, v14, v16

    aput-wide v14, v12, v13

    .line 335
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 339
    :cond_2
    goto :goto_0
.end method

.method public inverseTransform([FI[FII)V
    .locals 16

    .prologue
    .line 274
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/Translate2D;
    move-object/from16 v2, p1

    .local v2, "srcPts":[F
    move/from16 v3, p2

    .local v3, "srcOff":I
    move-object/from16 v4, p3

    .local v4, "dstPts":[F
    move/from16 v5, p4

    .local v5, "dstOff":I
    move/from16 v6, p5

    .local v6, "numPts":I
    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/geom/transform/Translate2D;->mxt:D

    double-to-float v10, v10

    move v7, v10

    .line 275
    .local v7, "tx":F
    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/geom/transform/Translate2D;->myt:D

    double-to-float v10, v10

    move v8, v10

    .line 276
    .local v8, "ty":F
    move-object v10, v4

    move-object v11, v2

    if-ne v10, v11, :cond_1

    .line 277
    move v10, v5

    move v11, v3

    if-le v10, v11, :cond_0

    move v10, v5

    move v11, v3

    move v12, v6

    const/4 v13, 0x2

    mul-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    if-ge v10, v11, :cond_0

    .line 286
    move-object v10, v2

    move v11, v3

    move-object v12, v4

    move v13, v5

    move v14, v6

    const/4 v15, 0x2

    mul-int/lit8 v14, v14, 0x2

    invoke-static {v10, v11, v12, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 288
    move v10, v5

    move v3, v10

    .line 290
    :cond_0
    move v10, v5

    move v11, v3

    if-ne v10, v11, :cond_1

    move v10, v7

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-nez v10, :cond_1

    move v10, v8

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-nez v10, :cond_1

    .line 291
    .line 298
    :goto_0
    return-void

    .line 294
    :cond_1
    const/4 v10, 0x0

    move v9, v10

    .local v9, "i":I
    :goto_1
    move v10, v9

    move v11, v6

    if-ge v10, v11, :cond_2

    .line 295
    move-object v10, v4

    move v11, v5

    add-int/lit8 v5, v5, 0x1

    move-object v12, v2

    move v13, v3

    add-int/lit8 v3, v3, 0x1

    aget v12, v12, v13

    move v13, v7

    sub-float/2addr v12, v13

    aput v12, v10, v11

    .line 296
    move-object v10, v4

    move v11, v5

    add-int/lit8 v5, v5, 0x1

    move-object v12, v2

    move v13, v3

    add-int/lit8 v3, v3, 0x1

    aget v12, v12, v13

    move v13, v8

    sub-float/2addr v12, v13

    aput v12, v10, v11

    .line 294
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 298
    :cond_2
    goto :goto_0
.end method

.method public invert()V
    .locals 4

    .prologue
    .line 413
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Translate2D;
    move-object v1, v0

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/javafx/geom/transform/Translate2D;->mxt:D

    neg-double v2, v2

    iput-wide v2, v1, Lcom/sun/javafx/geom/transform/Translate2D;->mxt:D

    .line 414
    move-object v1, v0

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/javafx/geom/transform/Translate2D;->myt:D

    neg-double v2, v2

    iput-wide v2, v1, Lcom/sun/javafx/geom/transform/Translate2D;->myt:D

    .line 415
    return-void
.end method

.method public is2D()Z
    .locals 2

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Translate2D;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Translate2D;
    return v0
.end method

.method public isIdentity()Z
    .locals 6

    .prologue
    .line 90
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/Translate2D;
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/geom/transform/Translate2D;->mxt:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/geom/transform/Translate2D;->myt:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v1, v2

    .end local v1    # "this":Lcom/sun/javafx/geom/transform/Translate2D;
    return v1

    .restart local v1    # "this":Lcom/sun/javafx/geom/transform/Translate2D;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isTranslateOrIdentity()Z
    .locals 2

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Translate2D;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Translate2D;
    return v0
.end method

.method public restoreTransform(DDDDDD)V
    .locals 19

    .prologue
    .line 422
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/Translate2D;
    move-wide/from16 v2, p1

    .local v2, "mxx":D
    move-wide/from16 v4, p3

    .local v4, "myx":D
    move-wide/from16 v6, p5

    .local v6, "mxy":D
    move-wide/from16 v8, p7

    .local v8, "myy":D
    move-wide/from16 v10, p9

    .local v10, "mxt":D
    move-wide/from16 v12, p11

    .local v12, "myt":D
    move-wide v14, v2

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    cmpl-double v14, v14, v16

    if-nez v14, :cond_0

    move-wide v14, v4

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-nez v14, :cond_0

    move-wide v14, v6

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-nez v14, :cond_0

    move-wide v14, v8

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    cmpl-double v14, v14, v16

    if-eqz v14, :cond_1

    .line 425
    :cond_0
    sget-object v14, Lcom/sun/javafx/geom/transform/BaseTransform$Degree;->TRANSLATE_2D:Lcom/sun/javafx/geom/transform/BaseTransform$Degree;

    invoke-static {v14}, Lcom/sun/javafx/geom/transform/Translate2D;->degreeError(Lcom/sun/javafx/geom/transform/BaseTransform$Degree;)V

    .line 427
    :cond_1
    move-object v14, v1

    move-wide v15, v10

    iput-wide v15, v14, Lcom/sun/javafx/geom/transform/Translate2D;->mxt:D

    .line 428
    move-object v14, v1

    move-wide v15, v12

    iput-wide v15, v14, Lcom/sun/javafx/geom/transform/Translate2D;->myt:D

    .line 429
    return-void
.end method

.method public restoreTransform(DDDDDDDDDDDD)V
    .locals 33

    .prologue
    .line 436
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/geom/transform/Translate2D;
    move-wide/from16 v4, p1

    .local v4, "mxx":D
    move-wide/from16 v6, p3

    .local v6, "mxy":D
    move-wide/from16 v8, p5

    .local v8, "mxz":D
    move-wide/from16 v10, p7

    .local v10, "mxt":D
    move-wide/from16 v12, p9

    .local v12, "myx":D
    move-wide/from16 v14, p11

    .local v14, "myy":D
    move-wide/from16 v16, p13

    .local v16, "myz":D
    move-wide/from16 v18, p15

    .local v18, "myt":D
    move-wide/from16 v20, p17

    .local v20, "mzx":D
    move-wide/from16 v22, p19

    .local v22, "mzy":D
    move-wide/from16 v24, p21

    .local v24, "mzz":D
    move-wide/from16 v26, p23

    .local v26, "mzt":D
    move-wide/from16 v28, v4

    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    cmpl-double v28, v28, v30

    if-nez v28, :cond_0

    move-wide/from16 v28, v6

    const-wide/16 v30, 0x0

    cmpl-double v28, v28, v30

    if-nez v28, :cond_0

    move-wide/from16 v28, v8

    const-wide/16 v30, 0x0

    cmpl-double v28, v28, v30

    if-nez v28, :cond_0

    move-wide/from16 v28, v12

    const-wide/16 v30, 0x0

    cmpl-double v28, v28, v30

    if-nez v28, :cond_0

    move-wide/from16 v28, v14

    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    cmpl-double v28, v28, v30

    if-nez v28, :cond_0

    move-wide/from16 v28, v16

    const-wide/16 v30, 0x0

    cmpl-double v28, v28, v30

    if-nez v28, :cond_0

    move-wide/from16 v28, v20

    const-wide/16 v30, 0x0

    cmpl-double v28, v28, v30

    if-nez v28, :cond_0

    move-wide/from16 v28, v22

    const-wide/16 v30, 0x0

    cmpl-double v28, v28, v30

    if-nez v28, :cond_0

    move-wide/from16 v28, v24

    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    cmpl-double v28, v28, v30

    if-nez v28, :cond_0

    move-wide/from16 v28, v26

    const-wide/16 v30, 0x0

    cmpl-double v28, v28, v30

    if-eqz v28, :cond_1

    .line 440
    :cond_0
    sget-object v28, Lcom/sun/javafx/geom/transform/BaseTransform$Degree;->TRANSLATE_2D:Lcom/sun/javafx/geom/transform/BaseTransform$Degree;

    invoke-static/range {v28 .. v28}, Lcom/sun/javafx/geom/transform/Translate2D;->degreeError(Lcom/sun/javafx/geom/transform/BaseTransform$Degree;)V

    .line 442
    :cond_1
    move-object/from16 v28, v3

    move-wide/from16 v29, v10

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Translate2D;->mxt:D

    .line 443
    move-object/from16 v28, v3

    move-wide/from16 v29, v18

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Translate2D;->myt:D

    .line 444
    return-void
.end method

.method public setToIdentity()V
    .locals 10

    .prologue
    .line 399
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Translate2D;
    move-object v1, v0

    move-object v2, v0

    const-wide/16 v3, 0x0

    move-object v7, v2

    move-wide v8, v3

    move-wide v2, v8

    move-object v4, v7

    move-wide v5, v8

    iput-wide v5, v4, Lcom/sun/javafx/geom/transform/Translate2D;->myt:D

    iput-wide v2, v1, Lcom/sun/javafx/geom/transform/Translate2D;->mxt:D

    .line 400
    return-void
.end method

.method public setTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)V
    .locals 6

    .prologue
    .line 404
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/Translate2D;
    move-object v2, p1

    .local v2, "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v3, v2

    invoke-virtual {v3}, Lcom/sun/javafx/geom/transform/BaseTransform;->isTranslateOrIdentity()Z

    move-result v3

    if-nez v3, :cond_0

    .line 405
    sget-object v3, Lcom/sun/javafx/geom/transform/BaseTransform$Degree;->TRANSLATE_2D:Lcom/sun/javafx/geom/transform/BaseTransform$Degree;

    invoke-static {v3}, Lcom/sun/javafx/geom/transform/Translate2D;->degreeError(Lcom/sun/javafx/geom/transform/BaseTransform$Degree;)V

    .line 407
    :cond_0
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxt()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/sun/javafx/geom/transform/Translate2D;->mxt:D

    .line 408
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyt()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/sun/javafx/geom/transform/Translate2D;->myt:D

    .line 409
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 611
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Translate2D;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Translate2D["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/javafx/geom/transform/Translate2D;->mxt:D

    .line 612
    invoke-static {v2, v3}, Lcom/sun/javafx/geom/transform/Translate2D;->_matround(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/javafx/geom/transform/Translate2D;->myt:D

    .line 613
    invoke-static {v2, v3}, Lcom/sun/javafx/geom/transform/Translate2D;->_matround(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Translate2D;
    return-object v0
.end method

.method public transform(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 17

    .prologue
    .line 343
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/Translate2D;
    move-object/from16 v2, p1

    .local v2, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object/from16 v3, p2

    .local v3, "result":Lcom/sun/javafx/geom/BaseBounds;
    move-object v10, v2

    invoke-virtual {v10}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v10

    float-to-double v10, v10

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/Translate2D;->mxt:D

    add-double/2addr v10, v12

    double-to-float v10, v10

    move v4, v10

    .line 344
    .local v4, "minX":F
    move-object v10, v2

    invoke-virtual {v10}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v10

    float-to-double v10, v10

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/Translate2D;->myt:D

    add-double/2addr v10, v12

    double-to-float v10, v10

    move v5, v10

    .line 345
    .local v5, "minY":F
    move-object v10, v2

    invoke-virtual {v10}, Lcom/sun/javafx/geom/BaseBounds;->getMinZ()F

    move-result v10

    move v6, v10

    .line 346
    .local v6, "minZ":F
    move-object v10, v2

    invoke-virtual {v10}, Lcom/sun/javafx/geom/BaseBounds;->getMaxX()F

    move-result v10

    float-to-double v10, v10

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/Translate2D;->mxt:D

    add-double/2addr v10, v12

    double-to-float v10, v10

    move v7, v10

    .line 347
    .local v7, "maxX":F
    move-object v10, v2

    invoke-virtual {v10}, Lcom/sun/javafx/geom/BaseBounds;->getMaxY()F

    move-result v10

    float-to-double v10, v10

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/Translate2D;->myt:D

    add-double/2addr v10, v12

    double-to-float v10, v10

    move v8, v10

    .line 348
    .local v8, "maxY":F
    move-object v10, v2

    invoke-virtual {v10}, Lcom/sun/javafx/geom/BaseBounds;->getMaxZ()F

    move-result v10

    move v9, v10

    .line 349
    .local v9, "maxZ":F
    move-object v10, v3

    move v11, v4

    move v12, v5

    move v13, v6

    move v14, v7

    move v15, v8

    move/from16 v16, v9

    invoke-virtual/range {v10 .. v16}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithNewBounds(FFFFFF)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v10

    move-object v1, v10

    .end local v1    # "this":Lcom/sun/javafx/geom/transform/Translate2D;
    return-object v1
.end method

.method public transform(Lcom/sun/javafx/geom/Point2D;Lcom/sun/javafx/geom/Point2D;)Lcom/sun/javafx/geom/Point2D;
    .locals 9

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Translate2D;
    move-object v1, p1

    .local v1, "src":Lcom/sun/javafx/geom/Point2D;
    move-object v2, p2

    .local v2, "dst":Lcom/sun/javafx/geom/Point2D;
    move-object v3, v2

    if-nez v3, :cond_0

    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Lcom/sun/javafx/geom/transform/Translate2D;->makePoint(Lcom/sun/javafx/geom/Point2D;Lcom/sun/javafx/geom/Point2D;)Lcom/sun/javafx/geom/Point2D;

    move-result-object v3

    move-object v2, v3

    .line 106
    :cond_0
    move-object v3, v2

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Point2D;->x:F

    float-to-double v4, v4

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/geom/transform/Translate2D;->mxt:D

    add-double/2addr v4, v6

    double-to-float v4, v4

    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/geom/Point2D;->y:F

    float-to-double v5, v5

    move-object v7, v0

    iget-wide v7, v7, Lcom/sun/javafx/geom/transform/Translate2D;->myt:D

    add-double/2addr v5, v7

    double-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/geom/Point2D;->setLocation(FF)V

    .line 109
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Translate2D;
    return-object v0
.end method

.method public transform(Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Vec3d;)Lcom/sun/javafx/geom/Vec3d;
    .locals 9

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Translate2D;
    move-object v1, p1

    .local v1, "src":Lcom/sun/javafx/geom/Vec3d;
    move-object v2, p2

    .local v2, "dst":Lcom/sun/javafx/geom/Vec3d;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 124
    new-instance v3, Lcom/sun/javafx/geom/Vec3d;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Lcom/sun/javafx/geom/Vec3d;-><init>()V

    move-object v2, v3

    .line 126
    :cond_0
    move-object v3, v2

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/geom/transform/Translate2D;->mxt:D

    add-double/2addr v4, v6

    iput-wide v4, v3, Lcom/sun/javafx/geom/Vec3d;->x:D

    .line 127
    move-object v3, v2

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/geom/transform/Translate2D;->myt:D

    add-double/2addr v4, v6

    iput-wide v4, v3, Lcom/sun/javafx/geom/Vec3d;->y:D

    .line 128
    move-object v3, v2

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/geom/Vec3d;->z:D

    iput-wide v4, v3, Lcom/sun/javafx/geom/Vec3d;->z:D

    .line 129
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Translate2D;
    return-object v0
.end method

.method public transform(Lcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/Rectangle;)V
    .locals 10

    .prologue
    .line 354
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/Translate2D;
    move-object v2, p1

    .local v2, "rect":Lcom/sun/javafx/geom/Rectangle;
    move-object v3, p2

    .local v3, "result":Lcom/sun/javafx/geom/Rectangle;
    move-object v4, v2

    move-object v5, v3

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/transform/Translate2D;->mxt:D

    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/javafx/geom/transform/Translate2D;->myt:D

    invoke-static/range {v4 .. v9}, Lcom/sun/javafx/geom/transform/Translate2D;->transform(Lcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/Rectangle;DD)V

    .line 355
    return-void
.end method

.method public transform([DI[DII)V
    .locals 18

    .prologue
    .line 197
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/Translate2D;
    move-object/from16 v2, p1

    .local v2, "srcPts":[D
    move/from16 v3, p2

    .local v3, "srcOff":I
    move-object/from16 v4, p3

    .local v4, "dstPts":[D
    move/from16 v5, p4

    .local v5, "dstOff":I
    move/from16 v6, p5

    .local v6, "numPts":I
    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/Translate2D;->mxt:D

    move-wide v7, v12

    .line 198
    .local v7, "tx":D
    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/Translate2D;->myt:D

    move-wide v9, v12

    .line 199
    .local v9, "ty":D
    move-object v12, v4

    move-object v13, v2

    if-ne v12, v13, :cond_1

    .line 200
    move v12, v5

    move v13, v3

    if-le v12, v13, :cond_0

    move v12, v5

    move v13, v3

    move v14, v6

    const/4 v15, 0x2

    mul-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    if-ge v12, v13, :cond_0

    .line 209
    move-object v12, v2

    move v13, v3

    move-object v14, v4

    move v15, v5

    move/from16 v16, v6

    const/16 v17, 0x2

    mul-int/lit8 v16, v16, 0x2

    invoke-static/range {v12 .. v16}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    move v12, v5

    move v3, v12

    .line 213
    :cond_0
    move v12, v5

    move v13, v3

    if-ne v12, v13, :cond_1

    move-wide v12, v7

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-nez v12, :cond_1

    move-wide v12, v9

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-nez v12, :cond_1

    .line 214
    .line 221
    :goto_0
    return-void

    .line 217
    :cond_1
    const/4 v12, 0x0

    move v11, v12

    .local v11, "i":I
    :goto_1
    move v12, v11

    move v13, v6

    if-ge v12, v13, :cond_2

    .line 218
    move-object v12, v4

    move v13, v5

    add-int/lit8 v5, v5, 0x1

    move-object v14, v2

    move v15, v3

    add-int/lit8 v3, v3, 0x1

    aget-wide v14, v14, v15

    move-wide/from16 v16, v7

    add-double v14, v14, v16

    aput-wide v14, v12, v13

    .line 219
    move-object v12, v4

    move v13, v5

    add-int/lit8 v5, v5, 0x1

    move-object v14, v2

    move v15, v3

    add-int/lit8 v3, v3, 0x1

    aget-wide v14, v14, v15

    move-wide/from16 v16, v9

    add-double v14, v14, v16

    aput-wide v14, v12, v13

    .line 217
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 221
    :cond_2
    goto :goto_0
.end method

.method public transform([DI[FII)V
    .locals 18

    .prologue
    .line 241
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/Translate2D;
    move-object/from16 v2, p1

    .local v2, "srcPts":[D
    move/from16 v3, p2

    .local v3, "srcOff":I
    move-object/from16 v4, p3

    .local v4, "dstPts":[F
    move/from16 v5, p4

    .local v5, "dstOff":I
    move/from16 v6, p5

    .local v6, "numPts":I
    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/Translate2D;->mxt:D

    move-wide v7, v12

    .line 242
    .local v7, "tx":D
    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/Translate2D;->myt:D

    move-wide v9, v12

    .line 243
    .local v9, "ty":D
    const/4 v12, 0x0

    move v11, v12

    .local v11, "i":I
    :goto_0
    move v12, v11

    move v13, v6

    if-ge v12, v13, :cond_0

    .line 244
    move-object v12, v4

    move v13, v5

    add-int/lit8 v5, v5, 0x1

    move-object v14, v2

    move v15, v3

    add-int/lit8 v3, v3, 0x1

    aget-wide v14, v14, v15

    move-wide/from16 v16, v7

    add-double v14, v14, v16

    double-to-float v14, v14

    aput v14, v12, v13

    .line 245
    move-object v12, v4

    move v13, v5

    add-int/lit8 v5, v5, 0x1

    move-object v14, v2

    move v15, v3

    add-int/lit8 v3, v3, 0x1

    aget-wide v14, v14, v15

    move-wide/from16 v16, v9

    add-double v14, v14, v16

    double-to-float v14, v14

    aput v14, v12, v13

    .line 243
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 247
    :cond_0
    return-void
.end method

.method public transform([FI[DII)V
    .locals 18

    .prologue
    .line 228
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/Translate2D;
    move-object/from16 v2, p1

    .local v2, "srcPts":[F
    move/from16 v3, p2

    .local v3, "srcOff":I
    move-object/from16 v4, p3

    .local v4, "dstPts":[D
    move/from16 v5, p4

    .local v5, "dstOff":I
    move/from16 v6, p5

    .local v6, "numPts":I
    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/Translate2D;->mxt:D

    move-wide v7, v12

    .line 229
    .local v7, "tx":D
    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/Translate2D;->myt:D

    move-wide v9, v12

    .line 230
    .local v9, "ty":D
    const/4 v12, 0x0

    move v11, v12

    .local v11, "i":I
    :goto_0
    move v12, v11

    move v13, v6

    if-ge v12, v13, :cond_0

    .line 231
    move-object v12, v4

    move v13, v5

    add-int/lit8 v5, v5, 0x1

    move-object v14, v2

    move v15, v3

    add-int/lit8 v3, v3, 0x1

    aget v14, v14, v15

    float-to-double v14, v14

    move-wide/from16 v16, v7

    add-double v14, v14, v16

    aput-wide v14, v12, v13

    .line 232
    move-object v12, v4

    move v13, v5

    add-int/lit8 v5, v5, 0x1

    move-object v14, v2

    move v15, v3

    add-int/lit8 v3, v3, 0x1

    aget v14, v14, v15

    float-to-double v14, v14

    move-wide/from16 v16, v9

    add-double v14, v14, v16

    aput-wide v14, v12, v13

    .line 230
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 234
    :cond_0
    return-void
.end method

.method public transform([FI[FII)V
    .locals 16

    .prologue
    .line 166
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/Translate2D;
    move-object/from16 v2, p1

    .local v2, "srcPts":[F
    move/from16 v3, p2

    .local v3, "srcOff":I
    move-object/from16 v4, p3

    .local v4, "dstPts":[F
    move/from16 v5, p4

    .local v5, "dstOff":I
    move/from16 v6, p5

    .local v6, "numPts":I
    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/geom/transform/Translate2D;->mxt:D

    double-to-float v10, v10

    move v7, v10

    .line 167
    .local v7, "tx":F
    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/geom/transform/Translate2D;->myt:D

    double-to-float v10, v10

    move v8, v10

    .line 168
    .local v8, "ty":F
    move-object v10, v4

    move-object v11, v2

    if-ne v10, v11, :cond_1

    .line 169
    move v10, v5

    move v11, v3

    if-le v10, v11, :cond_0

    move v10, v5

    move v11, v3

    move v12, v6

    const/4 v13, 0x2

    mul-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    if-ge v10, v11, :cond_0

    .line 178
    move-object v10, v2

    move v11, v3

    move-object v12, v4

    move v13, v5

    move v14, v6

    const/4 v15, 0x2

    mul-int/lit8 v14, v14, 0x2

    invoke-static {v10, v11, v12, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    move v10, v5

    move v3, v10

    .line 182
    :cond_0
    move v10, v5

    move v11, v3

    if-ne v10, v11, :cond_1

    move v10, v7

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-nez v10, :cond_1

    move v10, v8

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-nez v10, :cond_1

    .line 183
    .line 190
    :goto_0
    return-void

    .line 186
    :cond_1
    const/4 v10, 0x0

    move v9, v10

    .local v9, "i":I
    :goto_1
    move v10, v9

    move v11, v6

    if-ge v10, v11, :cond_2

    .line 187
    move-object v10, v4

    move v11, v5

    add-int/lit8 v5, v5, 0x1

    move-object v12, v2

    move v13, v3

    add-int/lit8 v3, v3, 0x1

    aget v12, v12, v13

    move v13, v7

    add-float/2addr v12, v13

    aput v12, v10, v11

    .line 188
    move-object v10, v4

    move v11, v5

    add-int/lit8 v5, v5, 0x1

    move-object v12, v2

    move v13, v3

    add-int/lit8 v3, v3, 0x1

    aget v12, v12, v13

    move v13, v8

    add-float/2addr v12, v13

    aput v12, v10, v11

    .line 186
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 190
    :cond_2
    goto :goto_0
.end method
