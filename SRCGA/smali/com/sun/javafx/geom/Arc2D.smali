.class public Lcom/sun/javafx/geom/Arc2D;
.super Lcom/sun/javafx/geom/RectangularShape;
.source "Arc2D.java"


# static fields
.field public static final CHORD:I = 0x1

.field public static final OPEN:I = 0x0

.field public static final PIE:I = 0x2


# instance fields
.field public extent:F

.field public height:F

.field public start:F

.field private type:I

.field public width:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Arc2D;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sun/javafx/geom/Arc2D;-><init>(I)V

    .line 119
    return-void
.end method

.method public constructor <init>(FFFFFFI)V
    .locals 10

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Arc2D;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move v3, p3

    .local v3, "w":F
    move v4, p4

    .local v4, "h":F
    move v5, p5

    .local v5, "start":F
    move/from16 v6, p6

    .local v6, "extent":F
    move/from16 v7, p7

    .local v7, "type":I
    move-object v8, v0

    move v9, v7

    invoke-direct {v8, v9}, Lcom/sun/javafx/geom/Arc2D;-><init>(I)V

    .line 153
    move-object v8, v0

    move v9, v1

    iput v9, v8, Lcom/sun/javafx/geom/Arc2D;->x:F

    .line 154
    move-object v8, v0

    move v9, v2

    iput v9, v8, Lcom/sun/javafx/geom/Arc2D;->y:F

    .line 155
    move-object v8, v0

    move v9, v3

    iput v9, v8, Lcom/sun/javafx/geom/Arc2D;->width:F

    .line 156
    move-object v8, v0

    move v9, v4

    iput v9, v8, Lcom/sun/javafx/geom/Arc2D;->height:F

    .line 157
    move-object v8, v0

    move v9, v5

    iput v9, v8, Lcom/sun/javafx/geom/Arc2D;->start:F

    .line 158
    move-object v8, v0

    move v9, v6

    iput v9, v8, Lcom/sun/javafx/geom/Arc2D;->extent:F

    .line 159
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Arc2D;
    move v1, p1

    .local v1, "type":I
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/geom/RectangularShape;-><init>()V

    .line 130
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/geom/Arc2D;->setArcType(I)V

    .line 131
    return-void
.end method

.method static normalizeDegrees(D)F
    .locals 6

    .prologue
    .line 511
    move-wide v0, p0

    .local v0, "angle":D
    move-wide v2, v0

    const-wide v4, 0x4066800000000000L    # 180.0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_2

    .line 512
    move-wide v2, v0

    const-wide v4, 0x4080e00000000000L    # 540.0

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_1

    .line 513
    move-wide v2, v0

    const-wide v4, 0x4076800000000000L    # 360.0

    sub-double/2addr v2, v4

    move-wide v0, v2

    .line 532
    :cond_0
    :goto_0
    move-wide v2, v0

    double-to-float v2, v2

    move v0, v2

    .end local v0    # "angle":D
    return v0

    .line 515
    .restart local v0    # "angle":D
    :cond_1
    move-wide v2, v0

    const-wide v4, 0x4076800000000000L    # 360.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->IEEEremainder(DD)D

    move-result-wide v2

    move-wide v0, v2

    .line 517
    move-wide v2, v0

    const-wide v4, -0x3f99800000000000L    # -180.0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    .line 518
    const-wide v2, 0x4066800000000000L    # 180.0

    move-wide v0, v2

    goto :goto_0

    .line 521
    :cond_2
    move-wide v2, v0

    const-wide v4, -0x3f99800000000000L    # -180.0

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_0

    .line 522
    move-wide v2, v0

    const-wide v4, -0x3f7f200000000000L    # -540.0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_3

    .line 523
    move-wide v2, v0

    const-wide v4, 0x4076800000000000L    # 360.0

    add-double/2addr v2, v4

    move-wide v0, v2

    goto :goto_0

    .line 525
    :cond_3
    move-wide v2, v0

    const-wide v4, 0x4076800000000000L    # 360.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->IEEEremainder(DD)D

    move-result-wide v2

    move-wide v0, v2

    .line 527
    move-wide v2, v0

    const-wide v4, -0x3f99800000000000L    # -180.0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    .line 528
    const-wide v2, 0x4066800000000000L    # 180.0

    move-wide v0, v2

    goto :goto_0
.end method


# virtual methods
.method public contains(FF)Z
    .locals 39

    .prologue
    .line 578
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/geom/Arc2D;
    move/from16 v4, p1

    .local v4, "x":F
    move/from16 v5, p2

    .local v5, "y":F
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget v0, v0, Lcom/sun/javafx/geom/Arc2D;->width:F

    move/from16 v30, v0

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    move-wide/from16 v6, v30

    .line 579
    .local v6, "ellw":D
    move-wide/from16 v30, v6

    const-wide/16 v32, 0x0

    cmpg-double v30, v30, v32

    if-gtz v30, :cond_0

    .line 580
    const/16 v30, 0x0

    move/from16 v3, v30

    .line 623
    .end local v3    # "this":Lcom/sun/javafx/geom/Arc2D;
    :goto_0
    return v3

    .line 582
    .restart local v3    # "this":Lcom/sun/javafx/geom/Arc2D;
    :cond_0
    move/from16 v30, v4

    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget v0, v0, Lcom/sun/javafx/geom/Arc2D;->x:F

    move/from16 v31, v0

    sub-float v30, v30, v31

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    move-wide/from16 v32, v6

    div-double v30, v30, v32

    const-wide/high16 v32, 0x3fe0000000000000L    # 0.5

    sub-double v30, v30, v32

    move-wide/from16 v8, v30

    .line 583
    .local v8, "normx":D
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget v0, v0, Lcom/sun/javafx/geom/Arc2D;->height:F

    move/from16 v30, v0

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    move-wide/from16 v10, v30

    .line 584
    .local v10, "ellh":D
    move-wide/from16 v30, v10

    const-wide/16 v32, 0x0

    cmpg-double v30, v30, v32

    if-gtz v30, :cond_1

    .line 585
    const/16 v30, 0x0

    move/from16 v3, v30

    goto :goto_0

    .line 587
    :cond_1
    move/from16 v30, v5

    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget v0, v0, Lcom/sun/javafx/geom/Arc2D;->y:F

    move/from16 v31, v0

    sub-float v30, v30, v31

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    move-wide/from16 v32, v10

    div-double v30, v30, v32

    const-wide/high16 v32, 0x3fe0000000000000L    # 0.5

    sub-double v30, v30, v32

    move-wide/from16 v12, v30

    .line 588
    .local v12, "normy":D
    move-wide/from16 v30, v8

    move-wide/from16 v32, v8

    mul-double v30, v30, v32

    move-wide/from16 v32, v12

    move-wide/from16 v34, v12

    mul-double v32, v32, v34

    add-double v30, v30, v32

    move-wide/from16 v14, v30

    .line 589
    .local v14, "distSq":D
    move-wide/from16 v30, v14

    const-wide/high16 v32, 0x3fd0000000000000L    # 0.25

    cmpl-double v30, v30, v32

    if-ltz v30, :cond_2

    .line 590
    const/16 v30, 0x0

    move/from16 v3, v30

    goto :goto_0

    .line 592
    :cond_2
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget v0, v0, Lcom/sun/javafx/geom/Arc2D;->extent:F

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->abs(F)F

    move-result v30

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    move-wide/from16 v16, v30

    .line 593
    .local v16, "angExt":D
    move-wide/from16 v30, v16

    const-wide v32, 0x4076800000000000L    # 360.0

    cmpl-double v30, v30, v32

    if-ltz v30, :cond_3

    .line 594
    const/16 v30, 0x1

    move/from16 v3, v30

    goto/16 :goto_0

    .line 596
    :cond_3
    move-object/from16 v30, v3

    move-wide/from16 v31, v12

    move-wide/from16 v33, v8

    invoke-static/range {v31 .. v34}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v31

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v31

    move-wide/from16 v0, v31

    neg-double v0, v0

    move-wide/from16 v31, v0

    move-wide/from16 v0, v31

    double-to-float v0, v0

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Lcom/sun/javafx/geom/Arc2D;->containsAngle(F)Z

    move-result v30

    move/from16 v18, v30

    .line 598
    .local v18, "inarc":Z
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget v0, v0, Lcom/sun/javafx/geom/Arc2D;->type:I

    move/from16 v30, v0

    const/16 v31, 0x2

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_4

    .line 599
    move/from16 v30, v18

    move/from16 v3, v30

    goto/16 :goto_0

    .line 602
    :cond_4
    move/from16 v30, v18

    if-eqz v30, :cond_5

    .line 603
    move-wide/from16 v30, v16

    const-wide v32, 0x4066800000000000L    # 180.0

    cmpl-double v30, v30, v32

    if-ltz v30, :cond_6

    .line 604
    const/16 v30, 0x1

    move/from16 v3, v30

    goto/16 :goto_0

    .line 608
    :cond_5
    move-wide/from16 v30, v16

    const-wide v32, 0x4066800000000000L    # 180.0

    cmpg-double v30, v30, v32

    if-gtz v30, :cond_6

    .line 609
    const/16 v30, 0x0

    move/from16 v3, v30

    goto/16 :goto_0

    .line 615
    :cond_6
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget v0, v0, Lcom/sun/javafx/geom/Arc2D;->start:F

    move/from16 v30, v0

    move/from16 v0, v30

    neg-float v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v30

    move-wide/from16 v19, v30

    .line 616
    .local v19, "angle":D
    move-wide/from16 v30, v19

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->cos(D)D

    move-result-wide v30

    move-wide/from16 v21, v30

    .line 617
    .local v21, "x1":D
    move-wide/from16 v30, v19

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->sin(D)D

    move-result-wide v30

    move-wide/from16 v23, v30

    .line 618
    .local v23, "y1":D
    move-wide/from16 v30, v19

    move-object/from16 v32, v3

    move-object/from16 v0, v32

    iget v0, v0, Lcom/sun/javafx/geom/Arc2D;->extent:F

    move/from16 v32, v0

    move/from16 v0, v32

    neg-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v32

    add-double v30, v30, v32

    move-wide/from16 v19, v30

    .line 619
    move-wide/from16 v30, v19

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->cos(D)D

    move-result-wide v30

    move-wide/from16 v25, v30

    .line 620
    .local v25, "x2":D
    move-wide/from16 v30, v19

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->sin(D)D

    move-result-wide v30

    move-wide/from16 v27, v30

    .line 621
    .local v27, "y2":D
    move-wide/from16 v30, v21

    move-wide/from16 v0, v30

    double-to-float v0, v0

    move/from16 v30, v0

    move-wide/from16 v31, v23

    move-wide/from16 v0, v31

    double-to-float v0, v0

    move/from16 v31, v0

    move-wide/from16 v32, v25

    move-wide/from16 v0, v32

    double-to-float v0, v0

    move/from16 v32, v0

    move-wide/from16 v33, v27

    move-wide/from16 v0, v33

    double-to-float v0, v0

    move/from16 v33, v0

    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    move-wide/from16 v36, v8

    mul-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-float v0, v0

    move/from16 v34, v0

    const-wide/high16 v35, 0x4000000000000000L    # 2.0

    move-wide/from16 v37, v12

    mul-double v35, v35, v37

    move-wide/from16 v0, v35

    double-to-float v0, v0

    move/from16 v35, v0

    invoke-static/range {v30 .. v35}, Lcom/sun/javafx/geom/Line2D;->relativeCCW(FFFFFF)I

    move-result v30

    move-wide/from16 v31, v21

    move-wide/from16 v0, v31

    double-to-float v0, v0

    move/from16 v31, v0

    move-wide/from16 v32, v23

    move-wide/from16 v0, v32

    double-to-float v0, v0

    move/from16 v32, v0

    move-wide/from16 v33, v25

    move-wide/from16 v0, v33

    double-to-float v0, v0

    move/from16 v33, v0

    move-wide/from16 v34, v27

    move-wide/from16 v0, v34

    double-to-float v0, v0

    move/from16 v34, v0

    const/16 v35, 0x0

    const/16 v36, 0x0

    .line 622
    invoke-static/range {v31 .. v36}, Lcom/sun/javafx/geom/Line2D;->relativeCCW(FFFFFF)I

    move-result v31

    mul-int v30, v30, v31

    if-ltz v30, :cond_7

    const/16 v30, 0x1

    :goto_1
    move/from16 v29, v30

    .line 623
    .local v29, "inside":Z
    move/from16 v30, v18

    if-eqz v30, :cond_9

    move/from16 v30, v29

    if-nez v30, :cond_8

    const/16 v30, 0x1

    :goto_2
    move/from16 v3, v30

    goto/16 :goto_0

    .line 622
    .end local v29    # "inside":Z
    :cond_7
    const/16 v30, 0x0

    goto :goto_1

    .line 623
    .restart local v29    # "inside":Z
    :cond_8
    const/16 v30, 0x0

    goto :goto_2

    :cond_9
    move/from16 v30, v29

    goto :goto_2
.end method

.method public contains(FFFF)Z
    .locals 22

    .prologue
    .line 746
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/geom/Arc2D;
    move/from16 v3, p1

    .local v3, "x":F
    move/from16 v4, p2

    .local v4, "y":F
    move/from16 v5, p3

    .local v5, "w":F
    move/from16 v6, p4

    .local v6, "h":F
    move-object v14, v2

    move v15, v3

    move/from16 v16, v4

    invoke-virtual/range {v14 .. v16}, Lcom/sun/javafx/geom/Arc2D;->contains(FF)Z

    move-result v14

    if-eqz v14, :cond_0

    move-object v14, v2

    move v15, v3

    move/from16 v16, v5

    add-float v15, v15, v16

    move/from16 v16, v4

    .line 747
    invoke-virtual/range {v14 .. v16}, Lcom/sun/javafx/geom/Arc2D;->contains(FF)Z

    move-result v14

    if-eqz v14, :cond_0

    move-object v14, v2

    move v15, v3

    move/from16 v16, v4

    move/from16 v17, v6

    add-float v16, v16, v17

    .line 748
    invoke-virtual/range {v14 .. v16}, Lcom/sun/javafx/geom/Arc2D;->contains(FF)Z

    move-result v14

    if-eqz v14, :cond_0

    move-object v14, v2

    move v15, v3

    move/from16 v16, v5

    add-float v15, v15, v16

    move/from16 v16, v4

    move/from16 v17, v6

    add-float v16, v16, v17

    .line 749
    invoke-virtual/range {v14 .. v16}, Lcom/sun/javafx/geom/Arc2D;->contains(FF)Z

    move-result v14

    if-nez v14, :cond_1

    .line 750
    :cond_0
    const/4 v14, 0x0

    move v2, v14

    .line 777
    .end local v2    # "this":Lcom/sun/javafx/geom/Arc2D;
    :goto_0
    return v2

    .line 755
    .restart local v2    # "this":Lcom/sun/javafx/geom/Arc2D;
    :cond_1
    move-object v14, v2

    iget v14, v14, Lcom/sun/javafx/geom/Arc2D;->type:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_2

    move-object v14, v2

    iget v14, v14, Lcom/sun/javafx/geom/Arc2D;->extent:F

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    float-to-double v14, v14

    const-wide v16, 0x4066800000000000L    # 180.0

    cmpg-double v14, v14, v16

    if-gtz v14, :cond_3

    .line 756
    :cond_2
    const/4 v14, 0x1

    move v2, v14

    goto :goto_0

    .line 764
    :cond_3
    move-object v14, v2

    invoke-virtual {v14}, Lcom/sun/javafx/geom/Arc2D;->getWidth()F

    move-result v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    move v7, v14

    .line 765
    .local v7, "halfW":F
    move-object v14, v2

    invoke-virtual {v14}, Lcom/sun/javafx/geom/Arc2D;->getHeight()F

    move-result v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    move v8, v14

    .line 766
    .local v8, "halfH":F
    move v14, v3

    move v15, v7

    add-float/2addr v14, v15

    move v9, v14

    .line 767
    .local v9, "xc":F
    move v14, v4

    move v15, v8

    add-float/2addr v14, v15

    move v10, v14

    .line 768
    .local v10, "yc":F
    move-object v14, v2

    iget v14, v14, Lcom/sun/javafx/geom/Arc2D;->start:F

    neg-float v14, v14

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v14

    double-to-float v14, v14

    move v11, v14

    .line 769
    .local v11, "angle":F
    move v14, v9

    float-to-double v14, v14

    move/from16 v16, v7

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move/from16 v18, v11

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    add-double v14, v14, v16

    double-to-float v14, v14

    move v12, v14

    .line 770
    .local v12, "xe":F
    move v14, v10

    float-to-double v14, v14

    move/from16 v16, v8

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move/from16 v18, v11

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    add-double v14, v14, v16

    double-to-float v14, v14

    move v13, v14

    .line 771
    .local v13, "ye":F
    move v14, v3

    move v15, v4

    move/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v9

    move/from16 v19, v10

    move/from16 v20, v12

    move/from16 v21, v13

    invoke-static/range {v14 .. v21}, Lcom/sun/javafx/geom/Shape;->intersectsLine(FFFFFFFF)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 772
    const/4 v14, 0x0

    move v2, v14

    goto/16 :goto_0

    .line 774
    :cond_4
    move v14, v11

    move-object v15, v2

    iget v15, v15, Lcom/sun/javafx/geom/Arc2D;->extent:F

    neg-float v15, v15

    float-to-double v15, v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v15

    double-to-float v15, v15

    add-float/2addr v14, v15

    move v11, v14

    .line 775
    move v14, v9

    float-to-double v14, v14

    move/from16 v16, v7

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move/from16 v18, v11

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    add-double v14, v14, v16

    double-to-float v14, v14

    move v12, v14

    .line 776
    move v14, v10

    float-to-double v14, v14

    move/from16 v16, v8

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move/from16 v18, v11

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    add-double v14, v14, v16

    double-to-float v14, v14

    move v13, v14

    .line 777
    move v14, v3

    move v15, v4

    move/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v9

    move/from16 v19, v10

    move/from16 v20, v12

    move/from16 v21, v13

    invoke-static/range {v14 .. v21}, Lcom/sun/javafx/geom/Shape;->intersectsLine(FFFFFFFF)Z

    move-result v14

    if-nez v14, :cond_5

    const/4 v14, 0x1

    :goto_1
    move v2, v14

    goto/16 :goto_0

    :cond_5
    const/4 v14, 0x0

    goto :goto_1
.end method

.method public containsAngle(F)Z
    .locals 10

    .prologue
    .line 545
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Arc2D;
    move v2, p1

    .local v2, "angle":F
    move-object v6, v1

    iget v6, v6, Lcom/sun/javafx/geom/Arc2D;->extent:F

    float-to-double v6, v6

    move-wide v3, v6

    .line 546
    .local v3, "angExt":D
    move-wide v6, v3

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_1

    const/4 v6, 0x1

    :goto_0
    move v5, v6

    .line 547
    .local v5, "backwards":Z
    move v6, v5

    if-eqz v6, :cond_0

    .line 548
    move-wide v6, v3

    neg-double v6, v6

    move-wide v3, v6

    .line 550
    :cond_0
    move-wide v6, v3

    const-wide v8, 0x4076800000000000L    # 360.0

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_2

    .line 551
    const/4 v6, 0x1

    move v1, v6

    .line 561
    .end local v1    # "this":Lcom/sun/javafx/geom/Arc2D;
    :goto_1
    return v1

    .line 546
    .end local v5    # "backwards":Z
    .restart local v1    # "this":Lcom/sun/javafx/geom/Arc2D;
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 553
    .restart local v5    # "backwards":Z
    :cond_2
    move v6, v2

    float-to-double v6, v6

    invoke-static {v6, v7}, Lcom/sun/javafx/geom/Arc2D;->normalizeDegrees(D)F

    move-result v6

    move-object v7, v1

    iget v7, v7, Lcom/sun/javafx/geom/Arc2D;->start:F

    float-to-double v7, v7

    invoke-static {v7, v8}, Lcom/sun/javafx/geom/Arc2D;->normalizeDegrees(D)F

    move-result v7

    sub-float/2addr v6, v7

    move v2, v6

    .line 554
    move v6, v5

    if-eqz v6, :cond_3

    .line 555
    move v6, v2

    neg-float v6, v6

    move v2, v6

    .line 557
    :cond_3
    move v6, v2

    float-to-double v6, v6

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_4

    .line 558
    move v6, v2

    float-to-double v6, v6

    const-wide v8, 0x4076800000000000L    # 360.0

    add-double/2addr v6, v8

    double-to-float v6, v6

    move v2, v6

    .line 561
    :cond_4
    move v6, v2

    float-to-double v6, v6

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_5

    move v6, v2

    float-to-double v6, v6

    move-wide v8, v3

    cmpg-double v6, v6, v8

    if-gez v6, :cond_5

    const/4 v6, 0x1

    :goto_2
    move v1, v6

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public copy()Lcom/sun/javafx/geom/Arc2D;
    .locals 11

    .prologue
    .line 801
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Arc2D;
    new-instance v1, Lcom/sun/javafx/geom/Arc2D;

    move-object v10, v1

    move-object v1, v10

    move-object v2, v10

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Arc2D;->x:F

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/Arc2D;->y:F

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/Arc2D;->width:F

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/Arc2D;->height:F

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/geom/Arc2D;->start:F

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/geom/Arc2D;->extent:F

    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/geom/Arc2D;->type:I

    invoke-direct/range {v2 .. v9}, Lcom/sun/javafx/geom/Arc2D;-><init>(FFFFFFI)V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Arc2D;
    return-object v0
.end method

.method public bridge synthetic copy()Lcom/sun/javafx/geom/Shape;
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Arc2D;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/geom/Arc2D;->copy()Lcom/sun/javafx/geom/Arc2D;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Arc2D;
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 835
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Arc2D;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v1

    move-object v4, v0

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    move v0, v3

    .line 846
    .end local v0    # "this":Lcom/sun/javafx/geom/Arc2D;
    :goto_0
    return v0

    .line 836
    .restart local v0    # "this":Lcom/sun/javafx/geom/Arc2D;
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Lcom/sun/javafx/geom/Arc2D;

    if-eqz v3, :cond_2

    .line 837
    move-object v3, v1

    check-cast v3, Lcom/sun/javafx/geom/Arc2D;

    move-object v2, v3

    .line 838
    .local v2, "a2d":Lcom/sun/javafx/geom/Arc2D;
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Arc2D;->x:F

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/geom/Arc2D;->x:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Arc2D;->y:F

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/geom/Arc2D;->y:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Arc2D;->width:F

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/geom/Arc2D;->width:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Arc2D;->height:F

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/geom/Arc2D;->height:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Arc2D;->start:F

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/geom/Arc2D;->start:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Arc2D;->extent:F

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/geom/Arc2D;->extent:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Arc2D;->type:I

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/geom/Arc2D;->type:I

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 846
    .end local v2    # "a2d":Lcom/sun/javafx/geom/Arc2D;
    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public getArcType()I
    .locals 2

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Arc2D;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/Arc2D;->type:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Arc2D;
    return v0
.end method

.method public getBounds()Lcom/sun/javafx/geom/RectBounds;
    .locals 29

    .prologue
    .line 465
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/geom/Arc2D;
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/Arc2D;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 466
    new-instance v20, Lcom/sun/javafx/geom/RectBounds;

    move-object/from16 v27, v20

    move-object/from16 v20, v27

    move-object/from16 v21, v27

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sun/javafx/geom/Arc2D;->x:F

    move/from16 v22, v0

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sun/javafx/geom/Arc2D;->y:F

    move/from16 v23, v0

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sun/javafx/geom/Arc2D;->x:F

    move/from16 v24, v0

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Lcom/sun/javafx/geom/Arc2D;->width:F

    move/from16 v25, v0

    add-float v24, v24, v25

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Lcom/sun/javafx/geom/Arc2D;->y:F

    move/from16 v25, v0

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Lcom/sun/javafx/geom/Arc2D;->height:F

    move/from16 v26, v0

    add-float v25, v25, v26

    invoke-direct/range {v21 .. v25}, Lcom/sun/javafx/geom/RectBounds;-><init>(FFFF)V

    move-object/from16 v2, v20

    .line 504
    .end local v2    # "this":Lcom/sun/javafx/geom/Arc2D;
    .local v3, "x1":D
    .local v5, "y1":D
    .local v7, "x2":D
    .local v9, "y2":D
    .local v11, "angle":D
    .local v13, "w":D
    .local v15, "h":D
    :goto_0
    return-object v2

    .line 469
    .end local v3    # "x1":D
    .end local v5    # "y1":D
    .end local v7    # "x2":D
    .end local v9    # "y2":D
    .end local v11    # "angle":D
    .end local v13    # "w":D
    .end local v15    # "h":D
    .restart local v2    # "this":Lcom/sun/javafx/geom/Arc2D;
    :cond_0
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/Arc2D;->getArcType()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 470
    const-wide/16 v20, 0x0

    move-wide/from16 v27, v20

    move-wide/from16 v20, v27

    move-wide/from16 v22, v27

    move-wide/from16 v9, v22

    .restart local v9    # "y2":D
    move-wide/from16 v27, v20

    move-wide/from16 v20, v27

    move-wide/from16 v22, v27

    move-wide/from16 v7, v22

    .restart local v7    # "x2":D
    move-wide/from16 v27, v20

    move-wide/from16 v20, v27

    move-wide/from16 v22, v27

    move-wide/from16 v5, v22

    .restart local v5    # "y1":D
    move-wide/from16 v3, v20

    .line 475
    .restart local v3    # "x1":D
    :goto_1
    const-wide/16 v20, 0x0

    move-wide/from16 v11, v20

    .line 476
    .restart local v11    # "angle":D
    const/16 v20, 0x0

    move/from16 v13, v20

    .local v13, "i":I
    :goto_2
    move/from16 v20, v13

    const/16 v21, 0x6

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    .line 477
    move/from16 v20, v13

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    .line 479
    move-wide/from16 v20, v11

    const-wide v22, 0x4056800000000000L    # 90.0

    add-double v20, v20, v22

    move-wide/from16 v11, v20

    .line 480
    move-object/from16 v20, v2

    move-wide/from16 v21, v11

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/sun/javafx/geom/Arc2D;->containsAngle(F)Z

    move-result v20

    if-nez v20, :cond_3

    .line 481
    .line 476
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 472
    .end local v3    # "x1":D
    .end local v5    # "y1":D
    .end local v7    # "x2":D
    .end local v9    # "y2":D
    .end local v11    # "angle":D
    .end local v13    # "i":I
    :cond_1
    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v27, v20

    move-wide/from16 v20, v27

    move-wide/from16 v22, v27

    move-wide/from16 v5, v22

    .restart local v5    # "y1":D
    move-wide/from16 v3, v20

    .line 473
    .restart local v3    # "x1":D
    const-wide/high16 v20, -0x4010000000000000L    # -1.0

    move-wide/from16 v27, v20

    move-wide/from16 v20, v27

    move-wide/from16 v22, v27

    move-wide/from16 v9, v22

    .restart local v9    # "y2":D
    move-wide/from16 v7, v20

    .restart local v7    # "x2":D
    goto :goto_1

    .line 483
    .restart local v11    # "angle":D
    .restart local v13    # "i":I
    :cond_2
    move/from16 v20, v13

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 485
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/javafx/geom/Arc2D;->start:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v11, v20

    .line 490
    :cond_3
    :goto_4
    move-wide/from16 v20, v11

    move-wide/from16 v0, v20

    neg-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v20

    move-wide/from16 v14, v20

    .line 491
    .local v14, "rads":D
    move-wide/from16 v20, v14

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    move-wide/from16 v16, v20

    .line 492
    .local v16, "xe":D
    move-wide/from16 v20, v14

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    move-wide/from16 v18, v20

    .line 493
    .local v18, "ye":D
    move-wide/from16 v20, v3

    move-wide/from16 v22, v16

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->min(DD)D

    move-result-wide v20

    move-wide/from16 v3, v20

    .line 494
    move-wide/from16 v20, v5

    move-wide/from16 v22, v18

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->min(DD)D

    move-result-wide v20

    move-wide/from16 v5, v20

    .line 495
    move-wide/from16 v20, v7

    move-wide/from16 v22, v16

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(DD)D

    move-result-wide v20

    move-wide/from16 v7, v20

    .line 496
    move-wide/from16 v20, v9

    move-wide/from16 v22, v18

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(DD)D

    move-result-wide v20

    move-wide/from16 v9, v20

    goto :goto_3

    .line 488
    .end local v14    # "rads":D
    .end local v16    # "xe":D
    .end local v18    # "ye":D
    :cond_4
    move-wide/from16 v20, v11

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sun/javafx/geom/Arc2D;->extent:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    add-double v20, v20, v22

    move-wide/from16 v11, v20

    goto :goto_4

    .line 498
    :cond_5
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/javafx/geom/Arc2D;->width:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v13, v20

    .line 499
    .local v13, "w":D
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/javafx/geom/Arc2D;->height:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v15, v20

    .line 500
    .restart local v15    # "h":D
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/javafx/geom/Arc2D;->x:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v22, v7

    const-wide/high16 v24, 0x3fe0000000000000L    # 0.5

    mul-double v22, v22, v24

    const-wide/high16 v24, 0x3fe0000000000000L    # 0.5

    add-double v22, v22, v24

    move-wide/from16 v24, v13

    mul-double v22, v22, v24

    add-double v20, v20, v22

    move-wide/from16 v7, v20

    .line 501
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/javafx/geom/Arc2D;->y:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v22, v9

    const-wide/high16 v24, 0x3fe0000000000000L    # 0.5

    mul-double v22, v22, v24

    const-wide/high16 v24, 0x3fe0000000000000L    # 0.5

    add-double v22, v22, v24

    move-wide/from16 v24, v15

    mul-double v22, v22, v24

    add-double v20, v20, v22

    move-wide/from16 v9, v20

    .line 502
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/javafx/geom/Arc2D;->x:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v22, v3

    const-wide/high16 v24, 0x3fe0000000000000L    # 0.5

    mul-double v22, v22, v24

    const-wide/high16 v24, 0x3fe0000000000000L    # 0.5

    add-double v22, v22, v24

    move-wide/from16 v24, v13

    mul-double v22, v22, v24

    add-double v20, v20, v22

    move-wide/from16 v3, v20

    .line 503
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/javafx/geom/Arc2D;->y:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v22, v5

    const-wide/high16 v24, 0x3fe0000000000000L    # 0.5

    mul-double v22, v22, v24

    const-wide/high16 v24, 0x3fe0000000000000L    # 0.5

    add-double v22, v22, v24

    move-wide/from16 v24, v15

    mul-double v22, v22, v24

    add-double v20, v20, v22

    move-wide/from16 v5, v20

    .line 504
    new-instance v20, Lcom/sun/javafx/geom/RectBounds;

    move-object/from16 v27, v20

    move-object/from16 v20, v27

    move-object/from16 v21, v27

    move-wide/from16 v22, v3

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    move-wide/from16 v23, v5

    move-wide/from16 v0, v23

    double-to-float v0, v0

    move/from16 v23, v0

    move-wide/from16 v24, v7

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v24, v0

    move-wide/from16 v25, v9

    move-wide/from16 v0, v25

    double-to-float v0, v0

    move/from16 v25, v0

    invoke-direct/range {v21 .. v25}, Lcom/sun/javafx/geom/RectBounds;-><init>(FFFF)V

    move-object/from16 v2, v20

    goto/16 :goto_0
.end method

.method public getEndPoint()Lcom/sun/javafx/geom/Point2D;
    .locals 15

    .prologue
    .line 250
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Arc2D;
    move-object v8, v1

    iget v8, v8, Lcom/sun/javafx/geom/Arc2D;->start:F

    neg-float v8, v8

    move-object v9, v1

    iget v9, v9, Lcom/sun/javafx/geom/Arc2D;->extent:F

    sub-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    move-wide v2, v8

    .line 251
    .local v2, "angle":D
    move-object v8, v1

    iget v8, v8, Lcom/sun/javafx/geom/Arc2D;->x:F

    float-to-double v8, v8

    move-wide v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    add-double/2addr v10, v12

    move-object v12, v1

    iget v12, v12, Lcom/sun/javafx/geom/Arc2D;->width:F

    float-to-double v12, v12

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    move-wide v4, v8

    .line 252
    .local v4, "x":D
    move-object v8, v1

    iget v8, v8, Lcom/sun/javafx/geom/Arc2D;->y:F

    float-to-double v8, v8

    move-wide v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    add-double/2addr v10, v12

    move-object v12, v1

    iget v12, v12, Lcom/sun/javafx/geom/Arc2D;->height:F

    float-to-double v12, v12

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    move-wide v6, v8

    .line 253
    .local v6, "y":D
    new-instance v8, Lcom/sun/javafx/geom/Point2D;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-wide v10, v4

    double-to-float v10, v10

    move-wide v11, v6

    double-to-float v11, v11

    invoke-direct {v9, v10, v11}, Lcom/sun/javafx/geom/Point2D;-><init>(FF)V

    move-object v1, v8

    .end local v1    # "this":Lcom/sun/javafx/geom/Arc2D;
    return-object v1
.end method

.method public getHeight()F
    .locals 2

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Arc2D;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/Arc2D;->height:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Arc2D;
    return v0
.end method

.method public getPathIterator(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/PathIterator;
    .locals 7

    .prologue
    .line 796
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Arc2D;
    move-object v1, p1

    .local v1, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    new-instance v2, Lcom/sun/javafx/geom/ArcIterator;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/geom/ArcIterator;-><init>(Lcom/sun/javafx/geom/Arc2D;Lcom/sun/javafx/geom/transform/BaseTransform;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/Arc2D;
    return-object v0
.end method

.method public getStartPoint()Lcom/sun/javafx/geom/Point2D;
    .locals 15

    .prologue
    .line 234
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Arc2D;
    move-object v8, v1

    iget v8, v8, Lcom/sun/javafx/geom/Arc2D;->start:F

    neg-float v8, v8

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    move-wide v2, v8

    .line 235
    .local v2, "angle":D
    move-object v8, v1

    iget v8, v8, Lcom/sun/javafx/geom/Arc2D;->x:F

    float-to-double v8, v8

    move-wide v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    add-double/2addr v10, v12

    move-object v12, v1

    iget v12, v12, Lcom/sun/javafx/geom/Arc2D;->width:F

    float-to-double v12, v12

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    move-wide v4, v8

    .line 236
    .local v4, "x":D
    move-object v8, v1

    iget v8, v8, Lcom/sun/javafx/geom/Arc2D;->y:F

    float-to-double v8, v8

    move-wide v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    add-double/2addr v10, v12

    move-object v12, v1

    iget v12, v12, Lcom/sun/javafx/geom/Arc2D;->height:F

    float-to-double v12, v12

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    move-wide v6, v8

    .line 237
    .local v6, "y":D
    new-instance v8, Lcom/sun/javafx/geom/Point2D;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-wide v10, v4

    double-to-float v10, v10

    move-wide v11, v6

    double-to-float v11, v11

    invoke-direct {v9, v10, v11}, Lcom/sun/javafx/geom/Point2D;-><init>(FF)V

    move-object v1, v8

    .end local v1    # "this":Lcom/sun/javafx/geom/Arc2D;
    return-object v1
.end method

.method public getWidth()F
    .locals 2

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Arc2D;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/Arc2D;->width:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Arc2D;
    return v0
.end method

.method public getX()F
    .locals 2

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Arc2D;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/Arc2D;->x:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Arc2D;
    return v0
.end method

.method public getY()F
    .locals 2

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Arc2D;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/Arc2D;->y:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Arc2D;
    return v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 810
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Arc2D;
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/Arc2D;->x:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    move v1, v2

    .line 811
    .local v1, "bits":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Arc2D;->y:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    const/16 v4, 0x25

    mul-int/lit8 v3, v3, 0x25

    add-int/2addr v2, v3

    move v1, v2

    .line 812
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Arc2D;->width:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    const/16 v4, 0x2b

    mul-int/lit8 v3, v3, 0x2b

    add-int/2addr v2, v3

    move v1, v2

    .line 813
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Arc2D;->height:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    const/16 v4, 0x2f

    mul-int/lit8 v3, v3, 0x2f

    add-int/2addr v2, v3

    move v1, v2

    .line 814
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Arc2D;->start:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    const/16 v4, 0x35

    mul-int/lit8 v3, v3, 0x35

    add-int/2addr v2, v3

    move v1, v2

    .line 815
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Arc2D;->extent:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    const/16 v4, 0x3b

    mul-int/lit8 v3, v3, 0x3b

    add-int/2addr v2, v3

    move v1, v2

    .line 816
    move v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/geom/Arc2D;->getArcType()I

    move-result v3

    const/16 v4, 0x3d

    mul-int/lit8 v3, v3, 0x3d

    add-int/2addr v2, v3

    move v1, v2

    .line 817
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/Arc2D;
    return v0
.end method

.method public intersects(FFFF)Z
    .locals 34

    .prologue
    .line 639
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/geom/Arc2D;
    move/from16 v3, p1

    .local v3, "x":F
    move/from16 v4, p2

    .local v4, "y":F
    move/from16 v5, p3

    .local v5, "w":F
    move/from16 v6, p4

    .local v6, "h":F
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Lcom/sun/javafx/geom/Arc2D;->width:F

    move/from16 v26, v0

    move/from16 v7, v26

    .line 640
    .local v7, "aw":F
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Lcom/sun/javafx/geom/Arc2D;->height:F

    move/from16 v26, v0

    move/from16 v8, v26

    .line 642
    .local v8, "ah":F
    move/from16 v26, v5

    const/16 v27, 0x0

    cmpg-float v26, v26, v27

    if-lez v26, :cond_0

    move/from16 v26, v6

    const/16 v27, 0x0

    cmpg-float v26, v26, v27

    if-lez v26, :cond_0

    move/from16 v26, v7

    const/16 v27, 0x0

    cmpg-float v26, v26, v27

    if-lez v26, :cond_0

    move/from16 v26, v8

    const/16 v27, 0x0

    cmpg-float v26, v26, v27

    if-gtz v26, :cond_1

    .line 643
    :cond_0
    const/16 v26, 0x0

    move/from16 v2, v26

    .line 730
    .end local v2    # "this":Lcom/sun/javafx/geom/Arc2D;
    :goto_0
    return v2

    .line 645
    .restart local v2    # "this":Lcom/sun/javafx/geom/Arc2D;
    :cond_1
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Lcom/sun/javafx/geom/Arc2D;->extent:F

    move/from16 v26, v0

    move/from16 v9, v26

    .line 646
    .local v9, "ext":F
    move/from16 v26, v9

    const/16 v27, 0x0

    cmpl-float v26, v26, v27

    if-nez v26, :cond_2

    .line 647
    const/16 v26, 0x0

    move/from16 v2, v26

    goto :goto_0

    .line 650
    :cond_2
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Lcom/sun/javafx/geom/Arc2D;->x:F

    move/from16 v26, v0

    move/from16 v10, v26

    .line 651
    .local v10, "ax":F
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Lcom/sun/javafx/geom/Arc2D;->y:F

    move/from16 v26, v0

    move/from16 v11, v26

    .line 652
    .local v11, "ay":F
    move/from16 v26, v10

    move/from16 v27, v7

    add-float v26, v26, v27

    move/from16 v12, v26

    .line 653
    .local v12, "axw":F
    move/from16 v26, v11

    move/from16 v27, v8

    add-float v26, v26, v27

    move/from16 v13, v26

    .line 654
    .local v13, "ayh":F
    move/from16 v26, v3

    move/from16 v27, v5

    add-float v26, v26, v27

    move/from16 v14, v26

    .line 655
    .local v14, "xw":F
    move/from16 v26, v4

    move/from16 v27, v6

    add-float v26, v26, v27

    move/from16 v15, v26

    .line 658
    .local v15, "yh":F
    move/from16 v26, v3

    move/from16 v27, v12

    cmpl-float v26, v26, v27

    if-gez v26, :cond_3

    move/from16 v26, v4

    move/from16 v27, v13

    cmpl-float v26, v26, v27

    if-gez v26, :cond_3

    move/from16 v26, v14

    move/from16 v27, v10

    cmpg-float v26, v26, v27

    if-lez v26, :cond_3

    move/from16 v26, v15

    move/from16 v27, v11

    cmpg-float v26, v26, v27

    if-gtz v26, :cond_4

    .line 659
    :cond_3
    const/16 v26, 0x0

    move/from16 v2, v26

    goto :goto_0

    .line 663
    :cond_4
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/geom/Arc2D;->getCenterX()F

    move-result v26

    move/from16 v16, v26

    .line 664
    .local v16, "axc":F
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/geom/Arc2D;->getCenterY()F

    move-result v26

    move/from16 v17, v26

    .line 667
    .local v17, "ayc":F
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Lcom/sun/javafx/geom/Arc2D;->start:F

    move/from16 v26, v0

    move/from16 v0, v26

    neg-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v26

    move-wide/from16 v18, v26

    .line 668
    .local v18, "sangle":D
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Lcom/sun/javafx/geom/Arc2D;->x:F

    move/from16 v26, v0

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v28, v18

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    const-wide/high16 v30, 0x3fe0000000000000L    # 0.5

    mul-double v28, v28, v30

    const-wide/high16 v30, 0x3fe0000000000000L    # 0.5

    add-double v28, v28, v30

    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget v0, v0, Lcom/sun/javafx/geom/Arc2D;->width:F

    move/from16 v30, v0

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    mul-double v28, v28, v30

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    move/from16 v20, v26

    .line 669
    .local v20, "sx":F
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Lcom/sun/javafx/geom/Arc2D;->y:F

    move/from16 v26, v0

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v28, v18

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    const-wide/high16 v30, 0x3fe0000000000000L    # 0.5

    mul-double v28, v28, v30

    const-wide/high16 v30, 0x3fe0000000000000L    # 0.5

    add-double v28, v28, v30

    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget v0, v0, Lcom/sun/javafx/geom/Arc2D;->height:F

    move/from16 v30, v0

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    mul-double v28, v28, v30

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    move/from16 v21, v26

    .line 672
    .local v21, "sy":F
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Lcom/sun/javafx/geom/Arc2D;->start:F

    move/from16 v26, v0

    move/from16 v0, v26

    neg-float v0, v0

    move/from16 v26, v0

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget v0, v0, Lcom/sun/javafx/geom/Arc2D;->extent:F

    move/from16 v27, v0

    sub-float v26, v26, v27

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v26

    move-wide/from16 v22, v26

    .line 673
    .local v22, "eangle":D
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Lcom/sun/javafx/geom/Arc2D;->x:F

    move/from16 v26, v0

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v28, v22

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    const-wide/high16 v30, 0x3fe0000000000000L    # 0.5

    mul-double v28, v28, v30

    const-wide/high16 v30, 0x3fe0000000000000L    # 0.5

    add-double v28, v28, v30

    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget v0, v0, Lcom/sun/javafx/geom/Arc2D;->width:F

    move/from16 v30, v0

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    mul-double v28, v28, v30

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    move/from16 v24, v26

    .line 674
    .local v24, "ex":F
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Lcom/sun/javafx/geom/Arc2D;->y:F

    move/from16 v26, v0

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v28, v22

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    const-wide/high16 v30, 0x3fe0000000000000L    # 0.5

    mul-double v28, v28, v30

    const-wide/high16 v30, 0x3fe0000000000000L    # 0.5

    add-double v28, v28, v30

    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget v0, v0, Lcom/sun/javafx/geom/Arc2D;->height:F

    move/from16 v30, v0

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    mul-double v28, v28, v30

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    move/from16 v25, v26

    .line 686
    .local v25, "ey":F
    move/from16 v26, v17

    move/from16 v27, v4

    cmpl-float v26, v26, v27

    if-ltz v26, :cond_7

    move/from16 v26, v17

    move/from16 v27, v15

    cmpg-float v26, v26, v27

    if-gtz v26, :cond_7

    .line 687
    move/from16 v26, v20

    move/from16 v27, v14

    cmpg-float v26, v26, v27

    if-gez v26, :cond_5

    move/from16 v26, v24

    move/from16 v27, v14

    cmpg-float v26, v26, v27

    if-gez v26, :cond_5

    move/from16 v26, v16

    move/from16 v27, v14

    cmpg-float v26, v26, v27

    if-gez v26, :cond_5

    move/from16 v26, v12

    move/from16 v27, v3

    cmpl-float v26, v26, v27

    if-lez v26, :cond_5

    move-object/from16 v26, v2

    const/16 v27, 0x0

    .line 688
    invoke-virtual/range {v26 .. v27}, Lcom/sun/javafx/geom/Arc2D;->containsAngle(F)Z

    move-result v26

    if-nez v26, :cond_6

    :cond_5
    move/from16 v26, v20

    move/from16 v27, v3

    cmpl-float v26, v26, v27

    if-lez v26, :cond_7

    move/from16 v26, v24

    move/from16 v27, v3

    cmpl-float v26, v26, v27

    if-lez v26, :cond_7

    move/from16 v26, v16

    move/from16 v27, v3

    cmpl-float v26, v26, v27

    if-lez v26, :cond_7

    move/from16 v26, v10

    move/from16 v27, v14

    cmpg-float v26, v26, v27

    if-gez v26, :cond_7

    move-object/from16 v26, v2

    const/high16 v27, 0x43340000    # 180.0f

    .line 690
    invoke-virtual/range {v26 .. v27}, Lcom/sun/javafx/geom/Arc2D;->containsAngle(F)Z

    move-result v26

    if-eqz v26, :cond_7

    .line 691
    :cond_6
    const/16 v26, 0x1

    move/from16 v2, v26

    goto/16 :goto_0

    .line 694
    :cond_7
    move/from16 v26, v16

    move/from16 v27, v3

    cmpl-float v26, v26, v27

    if-ltz v26, :cond_a

    move/from16 v26, v16

    move/from16 v27, v14

    cmpg-float v26, v26, v27

    if-gtz v26, :cond_a

    .line 695
    move/from16 v26, v21

    move/from16 v27, v4

    cmpl-float v26, v26, v27

    if-lez v26, :cond_8

    move/from16 v26, v25

    move/from16 v27, v4

    cmpl-float v26, v26, v27

    if-lez v26, :cond_8

    move/from16 v26, v17

    move/from16 v27, v4

    cmpl-float v26, v26, v27

    if-lez v26, :cond_8

    move/from16 v26, v11

    move/from16 v27, v15

    cmpg-float v26, v26, v27

    if-gez v26, :cond_8

    move-object/from16 v26, v2

    const/high16 v27, 0x42b40000    # 90.0f

    .line 696
    invoke-virtual/range {v26 .. v27}, Lcom/sun/javafx/geom/Arc2D;->containsAngle(F)Z

    move-result v26

    if-nez v26, :cond_9

    :cond_8
    move/from16 v26, v21

    move/from16 v27, v15

    cmpg-float v26, v26, v27

    if-gez v26, :cond_a

    move/from16 v26, v25

    move/from16 v27, v15

    cmpg-float v26, v26, v27

    if-gez v26, :cond_a

    move/from16 v26, v17

    move/from16 v27, v15

    cmpg-float v26, v26, v27

    if-gez v26, :cond_a

    move/from16 v26, v13

    move/from16 v27, v4

    cmpl-float v26, v26, v27

    if-lez v26, :cond_a

    move-object/from16 v26, v2

    const/high16 v27, 0x43870000    # 270.0f

    .line 698
    invoke-virtual/range {v26 .. v27}, Lcom/sun/javafx/geom/Arc2D;->containsAngle(F)Z

    move-result v26

    if-eqz v26, :cond_a

    .line 699
    :cond_9
    const/16 v26, 0x1

    move/from16 v2, v26

    goto/16 :goto_0

    .line 710
    :cond_a
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Lcom/sun/javafx/geom/Arc2D;->type:I

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_b

    move/from16 v26, v9

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v26

    const/high16 v27, 0x43340000    # 180.0f

    cmpl-float v26, v26, v27

    if-lez v26, :cond_d

    .line 712
    :cond_b
    move/from16 v26, v3

    move/from16 v27, v4

    move/from16 v28, v5

    move/from16 v29, v6

    move/from16 v30, v16

    move/from16 v31, v17

    move/from16 v32, v20

    move/from16 v33, v21

    invoke-static/range {v26 .. v33}, Lcom/sun/javafx/geom/Shape;->intersectsLine(FFFFFFFF)Z

    move-result v26

    if-nez v26, :cond_c

    move/from16 v26, v3

    move/from16 v27, v4

    move/from16 v28, v5

    move/from16 v29, v6

    move/from16 v30, v16

    move/from16 v31, v17

    move/from16 v32, v24

    move/from16 v33, v25

    .line 713
    invoke-static/range {v26 .. v33}, Lcom/sun/javafx/geom/Shape;->intersectsLine(FFFFFFFF)Z

    move-result v26

    if-eqz v26, :cond_e

    .line 715
    :cond_c
    const/16 v26, 0x1

    move/from16 v2, v26

    goto/16 :goto_0

    .line 719
    :cond_d
    move/from16 v26, v3

    move/from16 v27, v4

    move/from16 v28, v5

    move/from16 v29, v6

    move/from16 v30, v20

    move/from16 v31, v21

    move/from16 v32, v24

    move/from16 v33, v25

    invoke-static/range {v26 .. v33}, Lcom/sun/javafx/geom/Shape;->intersectsLine(FFFFFFFF)Z

    move-result v26

    if-eqz v26, :cond_e

    .line 720
    const/16 v26, 0x1

    move/from16 v2, v26

    goto/16 :goto_0

    .line 725
    :cond_e
    move-object/from16 v26, v2

    move/from16 v27, v3

    move/from16 v28, v4

    invoke-virtual/range {v26 .. v28}, Lcom/sun/javafx/geom/Arc2D;->contains(FF)Z

    move-result v26

    if-nez v26, :cond_f

    move-object/from16 v26, v2

    move/from16 v27, v3

    move/from16 v28, v5

    add-float v27, v27, v28

    move/from16 v28, v4

    invoke-virtual/range {v26 .. v28}, Lcom/sun/javafx/geom/Arc2D;->contains(FF)Z

    move-result v26

    if-nez v26, :cond_f

    move-object/from16 v26, v2

    move/from16 v27, v3

    move/from16 v28, v4

    move/from16 v29, v6

    add-float v28, v28, v29

    .line 726
    invoke-virtual/range {v26 .. v28}, Lcom/sun/javafx/geom/Arc2D;->contains(FF)Z

    move-result v26

    if-nez v26, :cond_f

    move-object/from16 v26, v2

    move/from16 v27, v3

    move/from16 v28, v5

    add-float v27, v27, v28

    move/from16 v28, v4

    move/from16 v29, v6

    add-float v28, v28, v29

    invoke-virtual/range {v26 .. v28}, Lcom/sun/javafx/geom/Arc2D;->contains(FF)Z

    move-result v26

    if-eqz v26, :cond_10

    .line 727
    :cond_f
    const/16 v26, 0x1

    move/from16 v2, v26

    goto/16 :goto_0

    .line 730
    :cond_10
    const/16 v26, 0x0

    move/from16 v2, v26

    goto/16 :goto_0
.end method

.method public isEmpty()Z
    .locals 3

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Arc2D;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/Arc2D;->width:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-lez v1, :cond_0

    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/Arc2D;->height:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Arc2D;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/geom/Arc2D;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAngleStart(Lcom/sun/javafx/geom/Point2D;)V
    .locals 12

    .prologue
    .line 365
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Arc2D;
    move-object v2, p1

    .local v2, "p":Lcom/sun/javafx/geom/Point2D;
    move-object v7, v1

    iget v7, v7, Lcom/sun/javafx/geom/Arc2D;->height:F

    move-object v8, v2

    iget v8, v8, Lcom/sun/javafx/geom/Point2D;->x:F

    move-object v9, v1

    invoke-virtual {v9}, Lcom/sun/javafx/geom/Arc2D;->getCenterX()F

    move-result v9

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    float-to-double v7, v7

    move-wide v3, v7

    .line 366
    .local v3, "dx":D
    move-object v7, v1

    iget v7, v7, Lcom/sun/javafx/geom/Arc2D;->width:F

    move-object v8, v2

    iget v8, v8, Lcom/sun/javafx/geom/Point2D;->y:F

    move-object v9, v1

    invoke-virtual {v9}, Lcom/sun/javafx/geom/Arc2D;->getCenterY()F

    move-result v9

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    float-to-double v7, v7

    move-wide v5, v7

    .line 367
    .local v5, "dy":D
    move-object v7, v1

    move-wide v8, v5

    move-wide v10, v3

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    neg-double v8, v8

    double-to-float v8, v8

    iput v8, v7, Lcom/sun/javafx/geom/Arc2D;->start:F

    .line 368
    return-void
.end method

.method public setAngles(FFFF)V
    .locals 28

    .prologue
    .line 385
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/geom/Arc2D;
    move/from16 v4, p1

    .local v4, "x1":F
    move/from16 v5, p2

    .local v5, "y1":F
    move/from16 v6, p3

    .local v6, "x2":F
    move/from16 v7, p4

    .local v7, "y2":F
    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/Arc2D;->getCenterX()F

    move-result v20

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v8, v20

    .line 386
    .local v8, "x":D
    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/Arc2D;->getCenterY()F

    move-result v20

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v10, v20

    .line 387
    .local v10, "y":D
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/javafx/geom/Arc2D;->width:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v12, v20

    .line 388
    .local v12, "w":D
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/javafx/geom/Arc2D;->height:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v14, v20

    .line 392
    .local v14, "h":D
    move-wide/from16 v20, v12

    move-wide/from16 v22, v10

    move/from16 v24, v5

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    sub-double v22, v22, v24

    mul-double v20, v20, v22

    move-wide/from16 v22, v14

    move/from16 v24, v4

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v26, v8

    sub-double v24, v24, v26

    mul-double v22, v22, v24

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v20

    move-wide/from16 v16, v20

    .line 393
    .local v16, "ang1":D
    move-wide/from16 v20, v12

    move-wide/from16 v22, v10

    move/from16 v24, v7

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    sub-double v22, v22, v24

    mul-double v20, v20, v22

    move-wide/from16 v22, v14

    move/from16 v24, v6

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v26, v8

    sub-double v24, v24, v26

    mul-double v22, v22, v24

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v20

    move-wide/from16 v18, v20

    .line 394
    .local v18, "ang2":D
    move-wide/from16 v20, v18

    move-wide/from16 v22, v16

    sub-double v20, v20, v22

    move-wide/from16 v18, v20

    .line 395
    move-wide/from16 v20, v18

    const-wide/16 v22, 0x0

    cmpg-double v20, v20, v22

    if-gtz v20, :cond_0

    .line 396
    move-wide/from16 v20, v18

    const-wide v22, 0x401921fb54442d18L    # 6.283185307179586

    add-double v20, v20, v22

    move-wide/from16 v18, v20

    .line 398
    :cond_0
    move-object/from16 v20, v3

    move-wide/from16 v21, v16

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/sun/javafx/geom/Arc2D;->start:F

    .line 399
    move-object/from16 v20, v3

    move-wide/from16 v21, v18

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/sun/javafx/geom/Arc2D;->extent:F

    .line 400
    return-void
.end method

.method public setAngles(Lcom/sun/javafx/geom/Point2D;Lcom/sun/javafx/geom/Point2D;)V
    .locals 8

    .prologue
    .line 417
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Arc2D;
    move-object v1, p1

    .local v1, "p1":Lcom/sun/javafx/geom/Point2D;
    move-object v2, p2

    .local v2, "p2":Lcom/sun/javafx/geom/Point2D;
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Point2D;->x:F

    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/geom/Point2D;->y:F

    move-object v6, v2

    iget v6, v6, Lcom/sun/javafx/geom/Point2D;->x:F

    move-object v7, v2

    iget v7, v7, Lcom/sun/javafx/geom/Point2D;->y:F

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sun/javafx/geom/Arc2D;->setAngles(FFFF)V

    .line 418
    return-void
.end method

.method public setArc(FFFFFFI)V
    .locals 10

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Arc2D;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move v3, p3

    .local v3, "w":F
    move v4, p4

    .local v4, "h":F
    move v5, p5

    .local v5, "angSt":F
    move/from16 v6, p6

    .local v6, "angExt":F
    move/from16 v7, p7

    .local v7, "closure":I
    move-object v8, v0

    move v9, v7

    invoke-virtual {v8, v9}, Lcom/sun/javafx/geom/Arc2D;->setArcType(I)V

    .line 206
    move-object v8, v0

    move v9, v1

    iput v9, v8, Lcom/sun/javafx/geom/Arc2D;->x:F

    .line 207
    move-object v8, v0

    move v9, v2

    iput v9, v8, Lcom/sun/javafx/geom/Arc2D;->y:F

    .line 208
    move-object v8, v0

    move v9, v3

    iput v9, v8, Lcom/sun/javafx/geom/Arc2D;->width:F

    .line 209
    move-object v8, v0

    move v9, v4

    iput v9, v8, Lcom/sun/javafx/geom/Arc2D;->height:F

    .line 210
    move-object v8, v0

    move v9, v5

    iput v9, v8, Lcom/sun/javafx/geom/Arc2D;->start:F

    .line 211
    move-object v8, v0

    move v9, v6

    iput v9, v8, Lcom/sun/javafx/geom/Arc2D;->extent:F

    .line 212
    return-void
.end method

.method public setArc(Lcom/sun/javafx/geom/Arc2D;)V
    .locals 10

    .prologue
    .line 281
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Arc2D;
    move-object v1, p1

    .local v1, "a":Lcom/sun/javafx/geom/Arc2D;
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/Arc2D;->x:F

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Arc2D;->y:F

    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/geom/Arc2D;->width:F

    move-object v6, v1

    iget v6, v6, Lcom/sun/javafx/geom/Arc2D;->height:F

    move-object v7, v1

    iget v7, v7, Lcom/sun/javafx/geom/Arc2D;->start:F

    move-object v8, v1

    iget v8, v8, Lcom/sun/javafx/geom/Arc2D;->extent:F

    move-object v9, v1

    iget v9, v9, Lcom/sun/javafx/geom/Arc2D;->type:I

    invoke-virtual/range {v2 .. v9}, Lcom/sun/javafx/geom/Arc2D;->setArc(FFFFFFI)V

    .line 282
    return-void
.end method

.method public setArc(Lcom/sun/javafx/geom/Point2D;Lcom/sun/javafx/geom/Dimension2D;FFI)V
    .locals 14

    .prologue
    .line 272
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Arc2D;
    move-object v1, p1

    .local v1, "loc":Lcom/sun/javafx/geom/Point2D;
    move-object/from16 v2, p2

    .local v2, "size":Lcom/sun/javafx/geom/Dimension2D;
    move/from16 v3, p3

    .local v3, "angSt":F
    move/from16 v4, p4

    .local v4, "angExt":F
    move/from16 v5, p5

    .local v5, "closure":I
    move-object v6, v0

    move-object v7, v1

    iget v7, v7, Lcom/sun/javafx/geom/Point2D;->x:F

    move-object v8, v1

    iget v8, v8, Lcom/sun/javafx/geom/Point2D;->y:F

    move-object v9, v2

    iget v9, v9, Lcom/sun/javafx/geom/Dimension2D;->width:F

    move-object v10, v2

    iget v10, v10, Lcom/sun/javafx/geom/Dimension2D;->height:F

    move v11, v3

    move v12, v4

    move v13, v5

    invoke-virtual/range {v6 .. v13}, Lcom/sun/javafx/geom/Arc2D;->setArc(FFFFFFI)V

    .line 273
    return-void
.end method

.method public setArcByCenter(FFFFFI)V
    .locals 15

    .prologue
    .line 299
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Arc2D;
    move/from16 v1, p1

    .local v1, "x":F
    move/from16 v2, p2

    .local v2, "y":F
    move/from16 v3, p3

    .local v3, "radius":F
    move/from16 v4, p4

    .local v4, "angSt":F
    move/from16 v5, p5

    .local v5, "angExt":F
    move/from16 v6, p6

    .local v6, "closure":I
    move-object v7, v0

    move v8, v1

    move v9, v3

    sub-float/2addr v8, v9

    move v9, v2

    move v10, v3

    sub-float/2addr v9, v10

    move v10, v3

    const/high16 v11, 0x40000000    # 2.0f

    mul-float/2addr v10, v11

    move v11, v3

    const/high16 v12, 0x40000000    # 2.0f

    mul-float/2addr v11, v12

    move v12, v4

    move v13, v5

    move v14, v6

    invoke-virtual/range {v7 .. v14}, Lcom/sun/javafx/geom/Arc2D;->setArc(FFFFFFI)V

    .line 301
    return-void
.end method

.method public setArcByTangent(Lcom/sun/javafx/geom/Point2D;Lcom/sun/javafx/geom/Point2D;Lcom/sun/javafx/geom/Point2D;F)V
    .locals 31

    .prologue
    .line 321
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/geom/Arc2D;
    move-object/from16 v4, p1

    .local v4, "p1":Lcom/sun/javafx/geom/Point2D;
    move-object/from16 v5, p2

    .local v5, "p2":Lcom/sun/javafx/geom/Point2D;
    move-object/from16 v6, p3

    .local v6, "p3":Lcom/sun/javafx/geom/Point2D;
    move/from16 v7, p4

    .local v7, "radius":F
    move-object/from16 v24, v4

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->y:F

    move/from16 v24, v0

    move-object/from16 v25, v5

    move-object/from16 v0, v25

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->y:F

    move/from16 v25, v0

    sub-float v24, v24, v25

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v26, v4

    move-object/from16 v0, v26

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->x:F

    move/from16 v26, v0

    move-object/from16 v27, v5

    move-object/from16 v0, v27

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->x:F

    move/from16 v27, v0

    sub-float v26, v26, v27

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v24

    move-wide/from16 v8, v24

    .line 323
    .local v8, "ang1":D
    move-object/from16 v24, v6

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->y:F

    move/from16 v24, v0

    move-object/from16 v25, v5

    move-object/from16 v0, v25

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->y:F

    move/from16 v25, v0

    sub-float v24, v24, v25

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v26, v6

    move-object/from16 v0, v26

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->x:F

    move/from16 v26, v0

    move-object/from16 v27, v5

    move-object/from16 v0, v27

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->x:F

    move/from16 v27, v0

    sub-float v26, v26, v27

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v24

    move-wide/from16 v10, v24

    .line 325
    .local v10, "ang2":D
    move-wide/from16 v24, v10

    move-wide/from16 v26, v8

    sub-double v24, v24, v26

    move-wide/from16 v12, v24

    .line 326
    .local v12, "diff":D
    move-wide/from16 v24, v12

    const-wide v26, 0x400921fb54442d18L    # Math.PI

    cmpl-double v24, v24, v26

    if-lez v24, :cond_1

    .line 327
    move-wide/from16 v24, v10

    const-wide v26, 0x401921fb54442d18L    # 6.283185307179586

    sub-double v24, v24, v26

    move-wide/from16 v10, v24

    .line 331
    :cond_0
    :goto_0
    move-wide/from16 v24, v8

    move-wide/from16 v26, v10

    add-double v24, v24, v26

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    div-double v24, v24, v26

    move-wide/from16 v14, v24

    .line 332
    .local v14, "bisect":D
    move-wide/from16 v24, v10

    move-wide/from16 v26, v14

    sub-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->abs(D)D

    move-result-wide v24

    move-wide/from16 v16, v24

    .line 333
    .local v16, "theta":D
    move/from16 v24, v7

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v26, v16

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    div-double v24, v24, v26

    move-wide/from16 v18, v24

    .line 334
    .local v18, "dist":D
    move-object/from16 v24, v5

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->x:F

    move/from16 v24, v0

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v26, v18

    move-wide/from16 v28, v14

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    add-double v24, v24, v26

    move-wide/from16 v20, v24

    .line 335
    .local v20, "x":D
    move-object/from16 v24, v5

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->y:F

    move/from16 v24, v0

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v26, v18

    move-wide/from16 v28, v14

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    add-double v24, v24, v26

    move-wide/from16 v22, v24

    .line 337
    .local v22, "y":D
    move-wide/from16 v24, v8

    move-wide/from16 v26, v10

    cmpg-double v24, v24, v26

    if-gez v24, :cond_2

    .line 338
    move-wide/from16 v24, v8

    const-wide v26, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v24, v24, v26

    move-wide/from16 v8, v24

    .line 339
    move-wide/from16 v24, v10

    const-wide v26, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double v24, v24, v26

    move-wide/from16 v10, v24

    .line 344
    :goto_1
    move-wide/from16 v24, v8

    move-wide/from16 v0, v24

    neg-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v24

    move-wide/from16 v8, v24

    .line 345
    move-wide/from16 v24, v10

    move-wide/from16 v0, v24

    neg-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v24

    move-wide/from16 v10, v24

    .line 346
    move-wide/from16 v24, v10

    move-wide/from16 v26, v8

    sub-double v24, v24, v26

    move-wide/from16 v12, v24

    .line 347
    move-wide/from16 v24, v12

    const-wide/16 v26, 0x0

    cmpg-double v24, v24, v26

    if-gez v24, :cond_3

    .line 348
    move-wide/from16 v24, v12

    const-wide v26, 0x4076800000000000L    # 360.0

    add-double v24, v24, v26

    move-wide/from16 v12, v24

    .line 352
    :goto_2
    move-object/from16 v24, v3

    move-wide/from16 v25, v20

    move-wide/from16 v0, v25

    double-to-float v0, v0

    move/from16 v25, v0

    move-wide/from16 v26, v22

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    move/from16 v27, v7

    move-wide/from16 v28, v8

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v28, v0

    move-wide/from16 v29, v12

    move-wide/from16 v0, v29

    double-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget v0, v0, Lcom/sun/javafx/geom/Arc2D;->type:I

    move/from16 v30, v0

    invoke-virtual/range {v24 .. v30}, Lcom/sun/javafx/geom/Arc2D;->setArcByCenter(FFFFFI)V

    .line 353
    return-void

    .line 328
    .end local v14    # "bisect":D
    .end local v16    # "theta":D
    .end local v18    # "dist":D
    .end local v20    # "x":D
    .end local v22    # "y":D
    :cond_1
    move-wide/from16 v24, v12

    const-wide v26, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    cmpg-double v24, v24, v26

    if-gez v24, :cond_0

    .line 329
    move-wide/from16 v24, v10

    const-wide v26, 0x401921fb54442d18L    # 6.283185307179586

    add-double v24, v24, v26

    move-wide/from16 v10, v24

    goto/16 :goto_0

    .line 341
    .restart local v14    # "bisect":D
    .restart local v16    # "theta":D
    .restart local v18    # "dist":D
    .restart local v20    # "x":D
    .restart local v22    # "y":D
    :cond_2
    move-wide/from16 v24, v8

    const-wide v26, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double v24, v24, v26

    move-wide/from16 v8, v24

    .line 342
    move-wide/from16 v24, v10

    const-wide v26, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v24, v24, v26

    move-wide/from16 v10, v24

    goto/16 :goto_1

    .line 350
    :cond_3
    move-wide/from16 v24, v12

    const-wide v26, 0x4076800000000000L    # 360.0

    sub-double v24, v24, v26

    move-wide/from16 v12, v24

    goto :goto_2
.end method

.method public setArcType(I)V
    .locals 7

    .prologue
    .line 433
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Arc2D;
    move v1, p1

    .local v1, "type":I
    move v2, v1

    if-ltz v2, :cond_0

    move v2, v1

    const/4 v3, 0x2

    if-le v2, v3, :cond_1

    .line 434
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid type for Arc: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 436
    :cond_1
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/javafx/geom/Arc2D;->type:I

    .line 437
    return-void
.end method

.method public setFrame(FFFF)V
    .locals 13

    .prologue
    .line 446
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Arc2D;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move/from16 v3, p3

    .local v3, "w":F
    move/from16 v4, p4

    .local v4, "h":F
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/geom/Arc2D;->start:F

    move-object v11, v0

    iget v11, v11, Lcom/sun/javafx/geom/Arc2D;->extent:F

    move-object v12, v0

    iget v12, v12, Lcom/sun/javafx/geom/Arc2D;->type:I

    invoke-virtual/range {v5 .. v12}, Lcom/sun/javafx/geom/Arc2D;->setArc(FFFFFFI)V

    .line 447
    return-void
.end method
