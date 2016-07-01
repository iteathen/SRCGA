.class public Lcom/sun/javafx/geom/transform/Affine3D;
.super Lcom/sun/javafx/geom/transform/AffineBase;
.source "Affine3D.java"


# instance fields
.field private mxz:D

.field private myz:D

.field private mzt:D

.field private mzx:D

.field private mzy:D

.field private mzz:D


# direct methods
.method public constructor <init>()V
    .locals 12

    .prologue
    .line 44
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/Affine3D;
    move-object v2, v1

    invoke-direct {v2}, Lcom/sun/javafx/geom/transform/AffineBase;-><init>()V

    .line 45
    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    move-object v9, v4

    move-wide v10, v5

    move-wide v4, v10

    move-object v6, v9

    move-wide v7, v10

    iput-wide v7, v6, Lcom/sun/javafx/geom/transform/Affine3D;->mzz:D

    move-object v9, v3

    move-wide v10, v4

    move-wide v3, v10

    move-object v5, v9

    move-wide v6, v10

    iput-wide v6, v5, Lcom/sun/javafx/geom/transform/Affine3D;->myy:D

    iput-wide v3, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mxx:D

    .line 50
    return-void
.end method

.method public constructor <init>(DDDDDDDDDDDD)V
    .locals 31

    .prologue
    .line 59
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/geom/transform/Affine3D;
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
    move-object/from16 v28, v3

    invoke-direct/range {v28 .. v28}, Lcom/sun/javafx/geom/transform/AffineBase;-><init>()V

    .line 60
    move-object/from16 v28, v3

    move-wide/from16 v29, v4

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mxx:D

    .line 61
    move-object/from16 v28, v3

    move-wide/from16 v29, v6

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mxy:D

    .line 62
    move-object/from16 v28, v3

    move-wide/from16 v29, v8

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mxz:D

    .line 63
    move-object/from16 v28, v3

    move-wide/from16 v29, v10

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mxt:D

    .line 65
    move-object/from16 v28, v3

    move-wide/from16 v29, v12

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->myx:D

    .line 66
    move-object/from16 v28, v3

    move-wide/from16 v29, v14

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->myy:D

    .line 67
    move-object/from16 v28, v3

    move-wide/from16 v29, v16

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->myz:D

    .line 68
    move-object/from16 v28, v3

    move-wide/from16 v29, v18

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->myt:D

    .line 70
    move-object/from16 v28, v3

    move-wide/from16 v29, v20

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mzx:D

    .line 71
    move-object/from16 v28, v3

    move-wide/from16 v29, v22

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mzy:D

    .line 72
    move-object/from16 v28, v3

    move-wide/from16 v29, v24

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mzz:D

    .line 73
    move-object/from16 v28, v3

    move-wide/from16 v29, v26

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mzt:D

    .line 75
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/geom/transform/Affine3D;->updateState()V

    .line 76
    return-void
.end method

.method public constructor <init>(Lcom/sun/javafx/geom/transform/Affine3D;)V
    .locals 6

    .prologue
    .line 78
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/Affine3D;
    move-object v2, p1

    .local v2, "other":Lcom/sun/javafx/geom/transform/Affine3D;
    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/javafx/geom/transform/AffineBase;-><init>()V

    .line 79
    move-object v3, v1

    move-object v4, v2

    iget-wide v4, v4, Lcom/sun/javafx/geom/transform/Affine3D;->mxx:D

    iput-wide v4, v3, Lcom/sun/javafx/geom/transform/Affine3D;->mxx:D

    .line 80
    move-object v3, v1

    move-object v4, v2

    iget-wide v4, v4, Lcom/sun/javafx/geom/transform/Affine3D;->mxy:D

    iput-wide v4, v3, Lcom/sun/javafx/geom/transform/Affine3D;->mxy:D

    .line 81
    move-object v3, v1

    move-object v4, v2

    iget-wide v4, v4, Lcom/sun/javafx/geom/transform/Affine3D;->mxz:D

    iput-wide v4, v3, Lcom/sun/javafx/geom/transform/Affine3D;->mxz:D

    .line 82
    move-object v3, v1

    move-object v4, v2

    iget-wide v4, v4, Lcom/sun/javafx/geom/transform/Affine3D;->mxt:D

    iput-wide v4, v3, Lcom/sun/javafx/geom/transform/Affine3D;->mxt:D

    .line 84
    move-object v3, v1

    move-object v4, v2

    iget-wide v4, v4, Lcom/sun/javafx/geom/transform/Affine3D;->myx:D

    iput-wide v4, v3, Lcom/sun/javafx/geom/transform/Affine3D;->myx:D

    .line 85
    move-object v3, v1

    move-object v4, v2

    iget-wide v4, v4, Lcom/sun/javafx/geom/transform/Affine3D;->myy:D

    iput-wide v4, v3, Lcom/sun/javafx/geom/transform/Affine3D;->myy:D

    .line 86
    move-object v3, v1

    move-object v4, v2

    iget-wide v4, v4, Lcom/sun/javafx/geom/transform/Affine3D;->myz:D

    iput-wide v4, v3, Lcom/sun/javafx/geom/transform/Affine3D;->myz:D

    .line 87
    move-object v3, v1

    move-object v4, v2

    iget-wide v4, v4, Lcom/sun/javafx/geom/transform/Affine3D;->myt:D

    iput-wide v4, v3, Lcom/sun/javafx/geom/transform/Affine3D;->myt:D

    .line 89
    move-object v3, v1

    move-object v4, v2

    iget-wide v4, v4, Lcom/sun/javafx/geom/transform/Affine3D;->mzx:D

    iput-wide v4, v3, Lcom/sun/javafx/geom/transform/Affine3D;->mzx:D

    .line 90
    move-object v3, v1

    move-object v4, v2

    iget-wide v4, v4, Lcom/sun/javafx/geom/transform/Affine3D;->mzy:D

    iput-wide v4, v3, Lcom/sun/javafx/geom/transform/Affine3D;->mzy:D

    .line 91
    move-object v3, v1

    move-object v4, v2

    iget-wide v4, v4, Lcom/sun/javafx/geom/transform/Affine3D;->mzz:D

    iput-wide v4, v3, Lcom/sun/javafx/geom/transform/Affine3D;->mzz:D

    .line 92
    move-object v3, v1

    move-object v4, v2

    iget-wide v4, v4, Lcom/sun/javafx/geom/transform/Affine3D;->mzt:D

    iput-wide v4, v3, Lcom/sun/javafx/geom/transform/Affine3D;->mzt:D

    .line 94
    move-object v3, v1

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/geom/transform/Affine3D;->state:I

    iput v4, v3, Lcom/sun/javafx/geom/transform/Affine3D;->state:I

    .line 95
    move-object v3, v1

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/geom/transform/Affine3D;->type:I

    iput v4, v3, Lcom/sun/javafx/geom/transform/Affine3D;->type:I

    .line 96
    return-void
.end method

.method public constructor <init>(Lcom/sun/javafx/geom/transform/BaseTransform;)V
    .locals 4

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Affine3D;
    move-object v1, p1

    .local v1, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/geom/transform/AffineBase;-><init>()V

    .line 53
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/geom/transform/Affine3D;->setTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 54
    return-void
.end method

.method private static _matround(D)D
    .locals 6

    .prologue
    .line 1131
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

.method static almostOne(D)Z
    .locals 6

    .prologue
    .line 1125
    move-wide v0, p0

    .local v0, "a":D
    move-wide v2, v0

    const-wide v4, 0x3ff0000a7c5ac472L    # 1.00001

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    move-wide v2, v0

    const-wide v4, 0x3fefffeb074a771dL    # 0.99999

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "a":D
    return v0

    .restart local v0    # "a":D
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private minor(II)D
    .locals 34

    .prologue
    .line 562
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/geom/transform/Affine3D;
    move/from16 v4, p1

    .local v4, "row":I
    move/from16 v5, p2

    .local v5, "col":I
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mxx:D

    move-wide/from16 v24, v0

    move-wide/from16 v6, v24

    .local v6, "m00":D
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mxy:D

    move-wide/from16 v24, v0

    move-wide/from16 v8, v24

    .local v8, "m01":D
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mxz:D

    move-wide/from16 v24, v0

    move-wide/from16 v10, v24

    .line 563
    .local v10, "m02":D
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->myx:D

    move-wide/from16 v24, v0

    move-wide/from16 v12, v24

    .local v12, "m10":D
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->myy:D

    move-wide/from16 v24, v0

    move-wide/from16 v14, v24

    .local v14, "m11":D
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->myz:D

    move-wide/from16 v24, v0

    move-wide/from16 v16, v24

    .line 564
    .local v16, "m12":D
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mzx:D

    move-wide/from16 v24, v0

    move-wide/from16 v18, v24

    .local v18, "m20":D
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mzy:D

    move-wide/from16 v24, v0

    move-wide/from16 v20, v24

    .local v20, "m21":D
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mzz:D

    move-wide/from16 v24, v0

    move-wide/from16 v22, v24

    .line 565
    .local v22, "m22":D
    move/from16 v24, v5

    packed-switch v24, :pswitch_data_0

    .line 579
    :goto_0
    move/from16 v24, v4

    packed-switch v24, :pswitch_data_1

    .line 602
    :goto_1
    move-wide/from16 v24, v6

    move-wide/from16 v26, v14

    mul-double v24, v24, v26

    move-wide/from16 v26, v8

    move-wide/from16 v28, v12

    mul-double v26, v26, v28

    sub-double v24, v24, v26

    move-wide/from16 v3, v24

    .end local v3    # "this":Lcom/sun/javafx/geom/transform/Affine3D;
    :goto_2
    return-wide v3

    .line 567
    .restart local v3    # "this":Lcom/sun/javafx/geom/transform/Affine3D;
    :pswitch_0
    move-wide/from16 v24, v8

    move-wide/from16 v6, v24

    .line 568
    move-wide/from16 v24, v14

    move-wide/from16 v12, v24

    .line 569
    move-wide/from16 v24, v20

    move-wide/from16 v18, v24

    .line 571
    :pswitch_1
    move-wide/from16 v24, v10

    move-wide/from16 v8, v24

    .line 572
    move-wide/from16 v24, v16

    move-wide/from16 v14, v24

    .line 573
    move-wide/from16 v24, v22

    move-wide/from16 v20, v24

    .line 575
    :pswitch_2
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mxt:D

    move-wide/from16 v24, v0

    move-wide/from16 v10, v24

    .line 576
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->myt:D

    move-wide/from16 v24, v0

    move-wide/from16 v16, v24

    .line 577
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mzt:D

    move-wide/from16 v24, v0

    move-wide/from16 v22, v24

    goto :goto_0

    .line 581
    :pswitch_3
    move-wide/from16 v24, v12

    move-wide/from16 v6, v24

    .line 582
    move-wide/from16 v24, v14

    move-wide/from16 v8, v24

    .line 585
    :pswitch_4
    move-wide/from16 v24, v18

    move-wide/from16 v12, v24

    .line 586
    move-wide/from16 v24, v20

    move-wide/from16 v14, v24

    .line 592
    :pswitch_5
    goto :goto_1

    .line 595
    :pswitch_6
    move-wide/from16 v24, v6

    move-wide/from16 v26, v14

    move-wide/from16 v28, v22

    mul-double v26, v26, v28

    move-wide/from16 v28, v20

    move-wide/from16 v30, v16

    mul-double v28, v28, v30

    sub-double v26, v26, v28

    mul-double v24, v24, v26

    move-wide/from16 v26, v8

    move-wide/from16 v28, v16

    move-wide/from16 v30, v18

    mul-double v28, v28, v30

    move-wide/from16 v30, v22

    move-wide/from16 v32, v12

    mul-double v30, v30, v32

    sub-double v28, v28, v30

    mul-double v26, v26, v28

    add-double v24, v24, v26

    move-wide/from16 v26, v10

    move-wide/from16 v28, v12

    move-wide/from16 v30, v20

    mul-double v28, v28, v30

    move-wide/from16 v30, v18

    move-wide/from16 v32, v14

    mul-double v30, v30, v32

    sub-double v28, v28, v30

    mul-double v26, v26, v28

    add-double v24, v24, v26

    move-wide/from16 v3, v24

    goto/16 :goto_2

    .line 565
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 579
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public concatenate(DDDDDDDDDDDD)V
    .locals 59

    .prologue
    .line 902
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/geom/transform/Affine3D;
    move-wide/from16 v4, p1

    .local v4, "Txx":D
    move-wide/from16 v6, p3

    .local v6, "Txy":D
    move-wide/from16 v8, p5

    .local v8, "Txz":D
    move-wide/from16 v10, p7

    .local v10, "Txt":D
    move-wide/from16 v12, p9

    .local v12, "Tyx":D
    move-wide/from16 v14, p11

    .local v14, "Tyy":D
    move-wide/from16 v16, p13

    .local v16, "Tyz":D
    move-wide/from16 v18, p15

    .local v18, "Tyt":D
    move-wide/from16 v20, p17

    .local v20, "Tzx":D
    move-wide/from16 v22, p19

    .local v22, "Tzy":D
    move-wide/from16 v24, p21

    .local v24, "Tzz":D
    move-wide/from16 v26, p23

    .local v26, "Tzt":D
    move-object/from16 v52, v3

    move-object/from16 v0, v52

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mxx:D

    move-wide/from16 v52, v0

    move-wide/from16 v54, v4

    mul-double v52, v52, v54

    move-object/from16 v54, v3

    move-object/from16 v0, v54

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mxy:D

    move-wide/from16 v54, v0

    move-wide/from16 v56, v12

    mul-double v54, v54, v56

    add-double v52, v52, v54

    move-object/from16 v54, v3

    move-object/from16 v0, v54

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mxz:D

    move-wide/from16 v54, v0

    move-wide/from16 v56, v20

    mul-double v54, v54, v56

    add-double v52, v52, v54

    move-wide/from16 v28, v52

    .line 903
    .local v28, "rxx":D
    move-object/from16 v52, v3

    move-object/from16 v0, v52

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mxx:D

    move-wide/from16 v52, v0

    move-wide/from16 v54, v6

    mul-double v52, v52, v54

    move-object/from16 v54, v3

    move-object/from16 v0, v54

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mxy:D

    move-wide/from16 v54, v0

    move-wide/from16 v56, v14

    mul-double v54, v54, v56

    add-double v52, v52, v54

    move-object/from16 v54, v3

    move-object/from16 v0, v54

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mxz:D

    move-wide/from16 v54, v0

    move-wide/from16 v56, v22

    mul-double v54, v54, v56

    add-double v52, v52, v54

    move-wide/from16 v30, v52

    .line 904
    .local v30, "rxy":D
    move-object/from16 v52, v3

    move-object/from16 v0, v52

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mxx:D

    move-wide/from16 v52, v0

    move-wide/from16 v54, v8

    mul-double v52, v52, v54

    move-object/from16 v54, v3

    move-object/from16 v0, v54

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mxy:D

    move-wide/from16 v54, v0

    move-wide/from16 v56, v16

    mul-double v54, v54, v56

    add-double v52, v52, v54

    move-object/from16 v54, v3

    move-object/from16 v0, v54

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mxz:D

    move-wide/from16 v54, v0

    move-wide/from16 v56, v24

    mul-double v54, v54, v56

    add-double v52, v52, v54

    move-wide/from16 v32, v52

    .line 905
    .local v32, "rxz":D
    move-object/from16 v52, v3

    move-object/from16 v0, v52

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mxx:D

    move-wide/from16 v52, v0

    move-wide/from16 v54, v10

    mul-double v52, v52, v54

    move-object/from16 v54, v3

    move-object/from16 v0, v54

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mxy:D

    move-wide/from16 v54, v0

    move-wide/from16 v56, v18

    mul-double v54, v54, v56

    add-double v52, v52, v54

    move-object/from16 v54, v3

    move-object/from16 v0, v54

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mxz:D

    move-wide/from16 v54, v0

    move-wide/from16 v56, v26

    mul-double v54, v54, v56

    add-double v52, v52, v54

    move-object/from16 v54, v3

    move-object/from16 v0, v54

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mxt:D

    move-wide/from16 v54, v0

    add-double v52, v52, v54

    move-wide/from16 v34, v52

    .line 906
    .local v34, "rxt":D
    move-object/from16 v52, v3

    move-object/from16 v0, v52

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->myx:D

    move-wide/from16 v52, v0

    move-wide/from16 v54, v4

    mul-double v52, v52, v54

    move-object/from16 v54, v3

    move-object/from16 v0, v54

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->myy:D

    move-wide/from16 v54, v0

    move-wide/from16 v56, v12

    mul-double v54, v54, v56

    add-double v52, v52, v54

    move-object/from16 v54, v3

    move-object/from16 v0, v54

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->myz:D

    move-wide/from16 v54, v0

    move-wide/from16 v56, v20

    mul-double v54, v54, v56

    add-double v52, v52, v54

    move-wide/from16 v36, v52

    .line 907
    .local v36, "ryx":D
    move-object/from16 v52, v3

    move-object/from16 v0, v52

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->myx:D

    move-wide/from16 v52, v0

    move-wide/from16 v54, v6

    mul-double v52, v52, v54

    move-object/from16 v54, v3

    move-object/from16 v0, v54

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->myy:D

    move-wide/from16 v54, v0

    move-wide/from16 v56, v14

    mul-double v54, v54, v56

    add-double v52, v52, v54

    move-object/from16 v54, v3

    move-object/from16 v0, v54

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->myz:D

    move-wide/from16 v54, v0

    move-wide/from16 v56, v22

    mul-double v54, v54, v56

    add-double v52, v52, v54

    move-wide/from16 v38, v52

    .line 908
    .local v38, "ryy":D
    move-object/from16 v52, v3

    move-object/from16 v0, v52

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->myx:D

    move-wide/from16 v52, v0

    move-wide/from16 v54, v8

    mul-double v52, v52, v54

    move-object/from16 v54, v3

    move-object/from16 v0, v54

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->myy:D

    move-wide/from16 v54, v0

    move-wide/from16 v56, v16

    mul-double v54, v54, v56

    add-double v52, v52, v54

    move-object/from16 v54, v3

    move-object/from16 v0, v54

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->myz:D

    move-wide/from16 v54, v0

    move-wide/from16 v56, v24

    mul-double v54, v54, v56

    add-double v52, v52, v54

    move-wide/from16 v40, v52

    .line 909
    .local v40, "ryz":D
    move-object/from16 v52, v3

    move-object/from16 v0, v52

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->myx:D

    move-wide/from16 v52, v0

    move-wide/from16 v54, v10

    mul-double v52, v52, v54

    move-object/from16 v54, v3

    move-object/from16 v0, v54

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->myy:D

    move-wide/from16 v54, v0

    move-wide/from16 v56, v18

    mul-double v54, v54, v56

    add-double v52, v52, v54

    move-object/from16 v54, v3

    move-object/from16 v0, v54

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->myz:D

    move-wide/from16 v54, v0

    move-wide/from16 v56, v26

    mul-double v54, v54, v56

    add-double v52, v52, v54

    move-object/from16 v54, v3

    move-object/from16 v0, v54

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->myt:D

    move-wide/from16 v54, v0

    add-double v52, v52, v54

    move-wide/from16 v42, v52

    .line 910
    .local v42, "ryt":D
    move-object/from16 v52, v3

    move-object/from16 v0, v52

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mzx:D

    move-wide/from16 v52, v0

    move-wide/from16 v54, v4

    mul-double v52, v52, v54

    move-object/from16 v54, v3

    move-object/from16 v0, v54

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mzy:D

    move-wide/from16 v54, v0

    move-wide/from16 v56, v12

    mul-double v54, v54, v56

    add-double v52, v52, v54

    move-object/from16 v54, v3

    move-object/from16 v0, v54

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mzz:D

    move-wide/from16 v54, v0

    move-wide/from16 v56, v20

    mul-double v54, v54, v56

    add-double v52, v52, v54

    move-wide/from16 v44, v52

    .line 911
    .local v44, "rzx":D
    move-object/from16 v52, v3

    move-object/from16 v0, v52

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mzx:D

    move-wide/from16 v52, v0

    move-wide/from16 v54, v6

    mul-double v52, v52, v54

    move-object/from16 v54, v3

    move-object/from16 v0, v54

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mzy:D

    move-wide/from16 v54, v0

    move-wide/from16 v56, v14

    mul-double v54, v54, v56

    add-double v52, v52, v54

    move-object/from16 v54, v3

    move-object/from16 v0, v54

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mzz:D

    move-wide/from16 v54, v0

    move-wide/from16 v56, v22

    mul-double v54, v54, v56

    add-double v52, v52, v54

    move-wide/from16 v46, v52

    .line 912
    .local v46, "rzy":D
    move-object/from16 v52, v3

    move-object/from16 v0, v52

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mzx:D

    move-wide/from16 v52, v0

    move-wide/from16 v54, v8

    mul-double v52, v52, v54

    move-object/from16 v54, v3

    move-object/from16 v0, v54

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mzy:D

    move-wide/from16 v54, v0

    move-wide/from16 v56, v16

    mul-double v54, v54, v56

    add-double v52, v52, v54

    move-object/from16 v54, v3

    move-object/from16 v0, v54

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mzz:D

    move-wide/from16 v54, v0

    move-wide/from16 v56, v24

    mul-double v54, v54, v56

    add-double v52, v52, v54

    move-wide/from16 v48, v52

    .line 913
    .local v48, "rzz":D
    move-object/from16 v52, v3

    move-object/from16 v0, v52

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mzx:D

    move-wide/from16 v52, v0

    move-wide/from16 v54, v10

    mul-double v52, v52, v54

    move-object/from16 v54, v3

    move-object/from16 v0, v54

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mzy:D

    move-wide/from16 v54, v0

    move-wide/from16 v56, v18

    mul-double v54, v54, v56

    add-double v52, v52, v54

    move-object/from16 v54, v3

    move-object/from16 v0, v54

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mzz:D

    move-wide/from16 v54, v0

    move-wide/from16 v56, v26

    mul-double v54, v54, v56

    add-double v52, v52, v54

    move-object/from16 v54, v3

    move-object/from16 v0, v54

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mzt:D

    move-wide/from16 v54, v0

    add-double v52, v52, v54

    move-wide/from16 v50, v52

    .line 914
    .local v50, "rzt":D
    move-object/from16 v52, v3

    move-wide/from16 v53, v28

    move-wide/from16 v0, v53

    move-object/from16 v2, v52

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mxx:D

    .line 915
    move-object/from16 v52, v3

    move-wide/from16 v53, v30

    move-wide/from16 v0, v53

    move-object/from16 v2, v52

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mxy:D

    .line 916
    move-object/from16 v52, v3

    move-wide/from16 v53, v32

    move-wide/from16 v0, v53

    move-object/from16 v2, v52

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mxz:D

    .line 917
    move-object/from16 v52, v3

    move-wide/from16 v53, v34

    move-wide/from16 v0, v53

    move-object/from16 v2, v52

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mxt:D

    .line 918
    move-object/from16 v52, v3

    move-wide/from16 v53, v36

    move-wide/from16 v0, v53

    move-object/from16 v2, v52

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->myx:D

    .line 919
    move-object/from16 v52, v3

    move-wide/from16 v53, v38

    move-wide/from16 v0, v53

    move-object/from16 v2, v52

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->myy:D

    .line 920
    move-object/from16 v52, v3

    move-wide/from16 v53, v40

    move-wide/from16 v0, v53

    move-object/from16 v2, v52

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->myz:D

    .line 921
    move-object/from16 v52, v3

    move-wide/from16 v53, v42

    move-wide/from16 v0, v53

    move-object/from16 v2, v52

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->myt:D

    .line 922
    move-object/from16 v52, v3

    move-wide/from16 v53, v44

    move-wide/from16 v0, v53

    move-object/from16 v2, v52

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mzx:D

    .line 923
    move-object/from16 v52, v3

    move-wide/from16 v53, v46

    move-wide/from16 v0, v53

    move-object/from16 v2, v52

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mzy:D

    .line 924
    move-object/from16 v52, v3

    move-wide/from16 v53, v48

    move-wide/from16 v0, v53

    move-object/from16 v2, v52

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mzz:D

    .line 925
    move-object/from16 v52, v3

    move-wide/from16 v53, v50

    move-wide/from16 v0, v53

    move-object/from16 v2, v52

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mzt:D

    .line 926
    move-object/from16 v52, v3

    invoke-virtual/range {v52 .. v52}, Lcom/sun/javafx/geom/transform/Affine3D;->updateState()V

    .line 927
    return-void
.end method

.method public concatenate(Lcom/sun/javafx/geom/transform/BaseTransform;)V
    .locals 61

    .prologue
    .line 838
    move-object/from16 v4, p0

    .local v4, "this":Lcom/sun/javafx/geom/transform/Affine3D;
    move-object/from16 v5, p1

    .local v5, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    sget-object v54, Lcom/sun/javafx/geom/transform/Affine3D$1;->$SwitchMap$com$sun$javafx$geom$transform$BaseTransform$Degree:[I

    move-object/from16 v55, v5

    invoke-virtual/range {v55 .. v55}, Lcom/sun/javafx/geom/transform/BaseTransform;->getDegree()Lcom/sun/javafx/geom/transform/BaseTransform$Degree;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Lcom/sun/javafx/geom/transform/BaseTransform$Degree;->ordinal()I

    move-result v55

    aget v54, v54, v55

    packed-switch v54, :pswitch_data_0

    .line 859
    :cond_0
    :goto_0
    move-object/from16 v54, v5

    invoke-virtual/range {v54 .. v54}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxx()D

    move-result-wide v54

    move-wide/from16 v6, v54

    .line 860
    .local v6, "Txx":D
    move-object/from16 v54, v5

    invoke-virtual/range {v54 .. v54}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxy()D

    move-result-wide v54

    move-wide/from16 v8, v54

    .line 861
    .local v8, "Txy":D
    move-object/from16 v54, v5

    invoke-virtual/range {v54 .. v54}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxz()D

    move-result-wide v54

    move-wide/from16 v10, v54

    .line 862
    .local v10, "Txz":D
    move-object/from16 v54, v5

    invoke-virtual/range {v54 .. v54}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxt()D

    move-result-wide v54

    move-wide/from16 v12, v54

    .line 863
    .local v12, "Txt":D
    move-object/from16 v54, v5

    invoke-virtual/range {v54 .. v54}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyx()D

    move-result-wide v54

    move-wide/from16 v14, v54

    .line 864
    .local v14, "Tyx":D
    move-object/from16 v54, v5

    invoke-virtual/range {v54 .. v54}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyy()D

    move-result-wide v54

    move-wide/from16 v16, v54

    .line 865
    .local v16, "Tyy":D
    move-object/from16 v54, v5

    invoke-virtual/range {v54 .. v54}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyz()D

    move-result-wide v54

    move-wide/from16 v18, v54

    .line 866
    .local v18, "Tyz":D
    move-object/from16 v54, v5

    invoke-virtual/range {v54 .. v54}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyt()D

    move-result-wide v54

    move-wide/from16 v20, v54

    .line 867
    .local v20, "Tyt":D
    move-object/from16 v54, v5

    invoke-virtual/range {v54 .. v54}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzx()D

    move-result-wide v54

    move-wide/from16 v22, v54

    .line 868
    .local v22, "Tzx":D
    move-object/from16 v54, v5

    invoke-virtual/range {v54 .. v54}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzy()D

    move-result-wide v54

    move-wide/from16 v24, v54

    .line 869
    .local v24, "Tzy":D
    move-object/from16 v54, v5

    invoke-virtual/range {v54 .. v54}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzz()D

    move-result-wide v54

    move-wide/from16 v26, v54

    .line 870
    .local v26, "Tzz":D
    move-object/from16 v54, v5

    invoke-virtual/range {v54 .. v54}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzt()D

    move-result-wide v54

    move-wide/from16 v28, v54

    .line 871
    .local v28, "Tzt":D
    move-object/from16 v54, v4

    move-object/from16 v0, v54

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mxx:D

    move-wide/from16 v54, v0

    move-wide/from16 v56, v6

    mul-double v54, v54, v56

    move-object/from16 v56, v4

    move-object/from16 v0, v56

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mxy:D

    move-wide/from16 v56, v0

    move-wide/from16 v58, v14

    mul-double v56, v56, v58

    add-double v54, v54, v56

    move-object/from16 v56, v4

    move-object/from16 v0, v56

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mxz:D

    move-wide/from16 v56, v0

    move-wide/from16 v58, v22

    mul-double v56, v56, v58

    add-double v54, v54, v56

    move-wide/from16 v30, v54

    .line 872
    .local v30, "rxx":D
    move-object/from16 v54, v4

    move-object/from16 v0, v54

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mxx:D

    move-wide/from16 v54, v0

    move-wide/from16 v56, v8

    mul-double v54, v54, v56

    move-object/from16 v56, v4

    move-object/from16 v0, v56

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mxy:D

    move-wide/from16 v56, v0

    move-wide/from16 v58, v16

    mul-double v56, v56, v58

    add-double v54, v54, v56

    move-object/from16 v56, v4

    move-object/from16 v0, v56

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mxz:D

    move-wide/from16 v56, v0

    move-wide/from16 v58, v24

    mul-double v56, v56, v58

    add-double v54, v54, v56

    move-wide/from16 v32, v54

    .line 873
    .local v32, "rxy":D
    move-object/from16 v54, v4

    move-object/from16 v0, v54

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mxx:D

    move-wide/from16 v54, v0

    move-wide/from16 v56, v10

    mul-double v54, v54, v56

    move-object/from16 v56, v4

    move-object/from16 v0, v56

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mxy:D

    move-wide/from16 v56, v0

    move-wide/from16 v58, v18

    mul-double v56, v56, v58

    add-double v54, v54, v56

    move-object/from16 v56, v4

    move-object/from16 v0, v56

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mxz:D

    move-wide/from16 v56, v0

    move-wide/from16 v58, v26

    mul-double v56, v56, v58

    add-double v54, v54, v56

    move-wide/from16 v34, v54

    .line 874
    .local v34, "rxz":D
    move-object/from16 v54, v4

    move-object/from16 v0, v54

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mxx:D

    move-wide/from16 v54, v0

    move-wide/from16 v56, v12

    mul-double v54, v54, v56

    move-object/from16 v56, v4

    move-object/from16 v0, v56

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mxy:D

    move-wide/from16 v56, v0

    move-wide/from16 v58, v20

    mul-double v56, v56, v58

    add-double v54, v54, v56

    move-object/from16 v56, v4

    move-object/from16 v0, v56

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mxz:D

    move-wide/from16 v56, v0

    move-wide/from16 v58, v28

    mul-double v56, v56, v58

    add-double v54, v54, v56

    move-object/from16 v56, v4

    move-object/from16 v0, v56

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mxt:D

    move-wide/from16 v56, v0

    add-double v54, v54, v56

    move-wide/from16 v36, v54

    .line 875
    .local v36, "rxt":D
    move-object/from16 v54, v4

    move-object/from16 v0, v54

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->myx:D

    move-wide/from16 v54, v0

    move-wide/from16 v56, v6

    mul-double v54, v54, v56

    move-object/from16 v56, v4

    move-object/from16 v0, v56

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->myy:D

    move-wide/from16 v56, v0

    move-wide/from16 v58, v14

    mul-double v56, v56, v58

    add-double v54, v54, v56

    move-object/from16 v56, v4

    move-object/from16 v0, v56

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->myz:D

    move-wide/from16 v56, v0

    move-wide/from16 v58, v22

    mul-double v56, v56, v58

    add-double v54, v54, v56

    move-wide/from16 v38, v54

    .line 876
    .local v38, "ryx":D
    move-object/from16 v54, v4

    move-object/from16 v0, v54

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->myx:D

    move-wide/from16 v54, v0

    move-wide/from16 v56, v8

    mul-double v54, v54, v56

    move-object/from16 v56, v4

    move-object/from16 v0, v56

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->myy:D

    move-wide/from16 v56, v0

    move-wide/from16 v58, v16

    mul-double v56, v56, v58

    add-double v54, v54, v56

    move-object/from16 v56, v4

    move-object/from16 v0, v56

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->myz:D

    move-wide/from16 v56, v0

    move-wide/from16 v58, v24

    mul-double v56, v56, v58

    add-double v54, v54, v56

    move-wide/from16 v40, v54

    .line 877
    .local v40, "ryy":D
    move-object/from16 v54, v4

    move-object/from16 v0, v54

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->myx:D

    move-wide/from16 v54, v0

    move-wide/from16 v56, v10

    mul-double v54, v54, v56

    move-object/from16 v56, v4

    move-object/from16 v0, v56

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->myy:D

    move-wide/from16 v56, v0

    move-wide/from16 v58, v18

    mul-double v56, v56, v58

    add-double v54, v54, v56

    move-object/from16 v56, v4

    move-object/from16 v0, v56

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->myz:D

    move-wide/from16 v56, v0

    move-wide/from16 v58, v26

    mul-double v56, v56, v58

    add-double v54, v54, v56

    move-wide/from16 v42, v54

    .line 878
    .local v42, "ryz":D
    move-object/from16 v54, v4

    move-object/from16 v0, v54

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->myx:D

    move-wide/from16 v54, v0

    move-wide/from16 v56, v12

    mul-double v54, v54, v56

    move-object/from16 v56, v4

    move-object/from16 v0, v56

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->myy:D

    move-wide/from16 v56, v0

    move-wide/from16 v58, v20

    mul-double v56, v56, v58

    add-double v54, v54, v56

    move-object/from16 v56, v4

    move-object/from16 v0, v56

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->myz:D

    move-wide/from16 v56, v0

    move-wide/from16 v58, v28

    mul-double v56, v56, v58

    add-double v54, v54, v56

    move-object/from16 v56, v4

    move-object/from16 v0, v56

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->myt:D

    move-wide/from16 v56, v0

    add-double v54, v54, v56

    move-wide/from16 v44, v54

    .line 879
    .local v44, "ryt":D
    move-object/from16 v54, v4

    move-object/from16 v0, v54

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mzx:D

    move-wide/from16 v54, v0

    move-wide/from16 v56, v6

    mul-double v54, v54, v56

    move-object/from16 v56, v4

    move-object/from16 v0, v56

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mzy:D

    move-wide/from16 v56, v0

    move-wide/from16 v58, v14

    mul-double v56, v56, v58

    add-double v54, v54, v56

    move-object/from16 v56, v4

    move-object/from16 v0, v56

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mzz:D

    move-wide/from16 v56, v0

    move-wide/from16 v58, v22

    mul-double v56, v56, v58

    add-double v54, v54, v56

    move-wide/from16 v46, v54

    .line 880
    .local v46, "rzx":D
    move-object/from16 v54, v4

    move-object/from16 v0, v54

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mzx:D

    move-wide/from16 v54, v0

    move-wide/from16 v56, v8

    mul-double v54, v54, v56

    move-object/from16 v56, v4

    move-object/from16 v0, v56

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mzy:D

    move-wide/from16 v56, v0

    move-wide/from16 v58, v16

    mul-double v56, v56, v58

    add-double v54, v54, v56

    move-object/from16 v56, v4

    move-object/from16 v0, v56

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mzz:D

    move-wide/from16 v56, v0

    move-wide/from16 v58, v24

    mul-double v56, v56, v58

    add-double v54, v54, v56

    move-wide/from16 v48, v54

    .line 881
    .local v48, "rzy":D
    move-object/from16 v54, v4

    move-object/from16 v0, v54

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mzx:D

    move-wide/from16 v54, v0

    move-wide/from16 v56, v10

    mul-double v54, v54, v56

    move-object/from16 v56, v4

    move-object/from16 v0, v56

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mzy:D

    move-wide/from16 v56, v0

    move-wide/from16 v58, v18

    mul-double v56, v56, v58

    add-double v54, v54, v56

    move-object/from16 v56, v4

    move-object/from16 v0, v56

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mzz:D

    move-wide/from16 v56, v0

    move-wide/from16 v58, v26

    mul-double v56, v56, v58

    add-double v54, v54, v56

    move-wide/from16 v50, v54

    .line 882
    .local v50, "rzz":D
    move-object/from16 v54, v4

    move-object/from16 v0, v54

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mzx:D

    move-wide/from16 v54, v0

    move-wide/from16 v56, v12

    mul-double v54, v54, v56

    move-object/from16 v56, v4

    move-object/from16 v0, v56

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mzy:D

    move-wide/from16 v56, v0

    move-wide/from16 v58, v20

    mul-double v56, v56, v58

    add-double v54, v54, v56

    move-object/from16 v56, v4

    move-object/from16 v0, v56

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mzz:D

    move-wide/from16 v56, v0

    move-wide/from16 v58, v28

    mul-double v56, v56, v58

    add-double v54, v54, v56

    move-object/from16 v56, v4

    move-object/from16 v0, v56

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mzt:D

    move-wide/from16 v56, v0

    add-double v54, v54, v56

    move-wide/from16 v52, v54

    .line 883
    .local v52, "rzt":D
    move-object/from16 v54, v4

    move-wide/from16 v55, v30

    move-wide/from16 v0, v55

    move-object/from16 v2, v54

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mxx:D

    .line 884
    move-object/from16 v54, v4

    move-wide/from16 v55, v32

    move-wide/from16 v0, v55

    move-object/from16 v2, v54

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mxy:D

    .line 885
    move-object/from16 v54, v4

    move-wide/from16 v55, v34

    move-wide/from16 v0, v55

    move-object/from16 v2, v54

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mxz:D

    .line 886
    move-object/from16 v54, v4

    move-wide/from16 v55, v36

    move-wide/from16 v0, v55

    move-object/from16 v2, v54

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mxt:D

    .line 887
    move-object/from16 v54, v4

    move-wide/from16 v55, v38

    move-wide/from16 v0, v55

    move-object/from16 v2, v54

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->myx:D

    .line 888
    move-object/from16 v54, v4

    move-wide/from16 v55, v40

    move-wide/from16 v0, v55

    move-object/from16 v2, v54

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->myy:D

    .line 889
    move-object/from16 v54, v4

    move-wide/from16 v55, v42

    move-wide/from16 v0, v55

    move-object/from16 v2, v54

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->myz:D

    .line 890
    move-object/from16 v54, v4

    move-wide/from16 v55, v44

    move-wide/from16 v0, v55

    move-object/from16 v2, v54

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->myt:D

    .line 891
    move-object/from16 v54, v4

    move-wide/from16 v55, v46

    move-wide/from16 v0, v55

    move-object/from16 v2, v54

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mzx:D

    .line 892
    move-object/from16 v54, v4

    move-wide/from16 v55, v48

    move-wide/from16 v0, v55

    move-object/from16 v2, v54

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mzy:D

    .line 893
    move-object/from16 v54, v4

    move-wide/from16 v55, v50

    move-wide/from16 v0, v55

    move-object/from16 v2, v54

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mzz:D

    .line 894
    move-object/from16 v54, v4

    move-wide/from16 v55, v52

    move-wide/from16 v0, v55

    move-object/from16 v2, v54

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mzt:D

    .line 895
    move-object/from16 v54, v4

    invoke-virtual/range {v54 .. v54}, Lcom/sun/javafx/geom/transform/Affine3D;->updateState()V

    .line 896
    .end local v6    # "Txx":D
    .end local v8    # "Txy":D
    .end local v10    # "Txz":D
    .end local v12    # "Txt":D
    .end local v14    # "Tyx":D
    .end local v16    # "Tyy":D
    .end local v18    # "Tyz":D
    .end local v20    # "Tyt":D
    .end local v22    # "Tzx":D
    .end local v24    # "Tzy":D
    .end local v26    # "Tzz":D
    .end local v28    # "Tzt":D
    .end local v30    # "rxx":D
    .end local v32    # "rxy":D
    .end local v34    # "rxz":D
    .end local v36    # "rxt":D
    .end local v38    # "ryx":D
    .end local v40    # "ryy":D
    .end local v42    # "ryz":D
    .end local v44    # "ryt":D
    .end local v46    # "rzx":D
    .end local v48    # "rzy":D
    .end local v50    # "rzz":D
    .end local v52    # "rzt":D
    :goto_1
    return-void

    .line 840
    :pswitch_0
    goto :goto_1

    .line 842
    :pswitch_1
    move-object/from16 v54, v4

    move-object/from16 v55, v5

    invoke-virtual/range {v55 .. v55}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxt()D

    move-result-wide v55

    move-object/from16 v57, v5

    invoke-virtual/range {v57 .. v57}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyt()D

    move-result-wide v57

    invoke-virtual/range {v54 .. v58}, Lcom/sun/javafx/geom/transform/Affine3D;->translate(DD)V

    .line 843
    goto :goto_1

    .line 845
    :pswitch_2
    move-object/from16 v54, v4

    move-object/from16 v55, v5

    invoke-virtual/range {v55 .. v55}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxt()D

    move-result-wide v55

    move-object/from16 v57, v5

    invoke-virtual/range {v57 .. v57}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyt()D

    move-result-wide v57

    move-object/from16 v59, v5

    invoke-virtual/range {v59 .. v59}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzt()D

    move-result-wide v59

    invoke-virtual/range {v54 .. v60}, Lcom/sun/javafx/geom/transform/Affine3D;->translate(DDD)V

    .line 846
    goto :goto_1

    .line 848
    :pswitch_3
    move-object/from16 v54, v5

    invoke-virtual/range {v54 .. v54}, Lcom/sun/javafx/geom/transform/BaseTransform;->is2D()Z

    move-result v54

    if-nez v54, :cond_1

    .line 849
    goto/16 :goto_0

    .line 853
    :cond_1
    :pswitch_4
    move-object/from16 v54, v4

    move-object/from16 v0, v54

    iget v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->state:I

    move/from16 v54, v0

    const/16 v55, 0x8

    and-int/lit8 v54, v54, 0x8

    if-nez v54, :cond_0

    .line 854
    move-object/from16 v54, v4

    move-object/from16 v55, v5

    invoke-super/range {v54 .. v55}, Lcom/sun/javafx/geom/transform/AffineBase;->concatenate(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 855
    goto :goto_1

    .line 838
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public copy()Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 5

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Affine3D;
    new-instance v1, Lcom/sun/javafx/geom/transform/Affine3D;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/geom/transform/Affine3D;-><init>(Lcom/sun/javafx/geom/transform/Affine3D;)V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Affine3D;
    return-object v0
.end method

.method public createInverse()Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 511
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Affine3D;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/geom/transform/Affine3D;->copy()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v2

    move-object v1, v2

    .line 512
    .local v1, "t":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/geom/transform/BaseTransform;->invert()V

    .line 513
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Affine3D;
    return-object v0
.end method

.method public deltaTransform(Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Vec3d;)Lcom/sun/javafx/geom/Vec3d;
    .locals 17

    .prologue
    .line 389
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Affine3D;
    move-object/from16 v1, p1

    .local v1, "src":Lcom/sun/javafx/geom/Vec3d;
    move-object/from16 v2, p2

    .local v2, "dst":Lcom/sun/javafx/geom/Vec3d;
    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/geom/transform/Affine3D;->state:I

    const/16 v10, 0x8

    and-int/lit8 v9, v9, 0x8

    if-nez v9, :cond_0

    .line 390
    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    invoke-super {v9, v10, v11}, Lcom/sun/javafx/geom/transform/AffineBase;->deltaTransform(Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Vec3d;)Lcom/sun/javafx/geom/Vec3d;

    move-result-object v9

    move-object v0, v9

    .line 401
    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Affine3D;
    :goto_0
    return-object v0

    .line 392
    .restart local v0    # "this":Lcom/sun/javafx/geom/transform/Affine3D;
    :cond_0
    move-object v9, v2

    if-nez v9, :cond_1

    .line 393
    new-instance v9, Lcom/sun/javafx/geom/Vec3d;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    invoke-direct {v10}, Lcom/sun/javafx/geom/Vec3d;-><init>()V

    move-object v2, v9

    .line 395
    :cond_1
    move-object v9, v1

    iget-wide v9, v9, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide v3, v9

    .line 396
    .local v3, "x":D
    move-object v9, v1

    iget-wide v9, v9, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide v5, v9

    .line 397
    .local v5, "y":D
    move-object v9, v1

    iget-wide v9, v9, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide v7, v9

    .line 398
    .local v7, "z":D
    move-object v9, v2

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/geom/transform/Affine3D;->mxx:D

    move-wide v12, v3

    mul-double/2addr v10, v12

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/Affine3D;->mxy:D

    move-wide v14, v5

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/Affine3D;->mxz:D

    move-wide v14, v7

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    iput-wide v10, v9, Lcom/sun/javafx/geom/Vec3d;->x:D

    .line 399
    move-object v9, v2

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/geom/transform/Affine3D;->myx:D

    move-wide v12, v3

    mul-double/2addr v10, v12

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/Affine3D;->myy:D

    move-wide v14, v5

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/Affine3D;->myz:D

    move-wide v14, v7

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    iput-wide v10, v9, Lcom/sun/javafx/geom/Vec3d;->y:D

    .line 400
    move-object v9, v2

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/geom/transform/Affine3D;->mzx:D

    move-wide v12, v3

    mul-double/2addr v10, v12

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/Affine3D;->mzy:D

    move-wide v14, v5

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/Affine3D;->mzz:D

    move-wide v14, v7

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    iput-wide v10, v9, Lcom/sun/javafx/geom/Vec3d;->z:D

    .line 401
    move-object v9, v2

    move-object v0, v9

    goto :goto_0
.end method

.method public deriveWithConcatenation(DDDDDD)Lcom/sun/javafx/geom/transform/Affine3D;
    .locals 41

    .prologue
    .line 934
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/geom/transform/Affine3D;
    move-wide/from16 v4, p1

    .local v4, "Txx":D
    move-wide/from16 v6, p3

    .local v6, "Tyx":D
    move-wide/from16 v8, p5

    .local v8, "Txy":D
    move-wide/from16 v10, p7

    .local v10, "Tyy":D
    move-wide/from16 v12, p9

    .local v12, "Txt":D
    move-wide/from16 v14, p11

    .local v14, "Tyt":D
    move-object/from16 v34, v3

    move-object/from16 v0, v34

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mxx:D

    move-wide/from16 v34, v0

    move-wide/from16 v36, v4

    mul-double v34, v34, v36

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mxy:D

    move-wide/from16 v36, v0

    move-wide/from16 v38, v6

    mul-double v36, v36, v38

    add-double v34, v34, v36

    move-wide/from16 v16, v34

    .line 935
    .local v16, "rxx":D
    move-object/from16 v34, v3

    move-object/from16 v0, v34

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mxx:D

    move-wide/from16 v34, v0

    move-wide/from16 v36, v8

    mul-double v34, v34, v36

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mxy:D

    move-wide/from16 v36, v0

    move-wide/from16 v38, v10

    mul-double v36, v36, v38

    add-double v34, v34, v36

    move-wide/from16 v18, v34

    .line 937
    .local v18, "rxy":D
    move-object/from16 v34, v3

    move-object/from16 v0, v34

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mxx:D

    move-wide/from16 v34, v0

    move-wide/from16 v36, v12

    mul-double v34, v34, v36

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mxy:D

    move-wide/from16 v36, v0

    move-wide/from16 v38, v14

    mul-double v36, v36, v38

    add-double v34, v34, v36

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mxt:D

    move-wide/from16 v36, v0

    add-double v34, v34, v36

    move-wide/from16 v20, v34

    .line 938
    .local v20, "rxt":D
    move-object/from16 v34, v3

    move-object/from16 v0, v34

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->myx:D

    move-wide/from16 v34, v0

    move-wide/from16 v36, v4

    mul-double v34, v34, v36

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->myy:D

    move-wide/from16 v36, v0

    move-wide/from16 v38, v6

    mul-double v36, v36, v38

    add-double v34, v34, v36

    move-wide/from16 v22, v34

    .line 939
    .local v22, "ryx":D
    move-object/from16 v34, v3

    move-object/from16 v0, v34

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->myx:D

    move-wide/from16 v34, v0

    move-wide/from16 v36, v8

    mul-double v34, v34, v36

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->myy:D

    move-wide/from16 v36, v0

    move-wide/from16 v38, v10

    mul-double v36, v36, v38

    add-double v34, v34, v36

    move-wide/from16 v24, v34

    .line 941
    .local v24, "ryy":D
    move-object/from16 v34, v3

    move-object/from16 v0, v34

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->myx:D

    move-wide/from16 v34, v0

    move-wide/from16 v36, v12

    mul-double v34, v34, v36

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->myy:D

    move-wide/from16 v36, v0

    move-wide/from16 v38, v14

    mul-double v36, v36, v38

    add-double v34, v34, v36

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->myt:D

    move-wide/from16 v36, v0

    add-double v34, v34, v36

    move-wide/from16 v26, v34

    .line 942
    .local v26, "ryt":D
    move-object/from16 v34, v3

    move-object/from16 v0, v34

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mzx:D

    move-wide/from16 v34, v0

    move-wide/from16 v36, v4

    mul-double v34, v34, v36

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mzy:D

    move-wide/from16 v36, v0

    move-wide/from16 v38, v6

    mul-double v36, v36, v38

    add-double v34, v34, v36

    move-wide/from16 v28, v34

    .line 943
    .local v28, "rzx":D
    move-object/from16 v34, v3

    move-object/from16 v0, v34

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mzx:D

    move-wide/from16 v34, v0

    move-wide/from16 v36, v8

    mul-double v34, v34, v36

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mzy:D

    move-wide/from16 v36, v0

    move-wide/from16 v38, v10

    mul-double v36, v36, v38

    add-double v34, v34, v36

    move-wide/from16 v30, v34

    .line 945
    .local v30, "rzy":D
    move-object/from16 v34, v3

    move-object/from16 v0, v34

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mzx:D

    move-wide/from16 v34, v0

    move-wide/from16 v36, v12

    mul-double v34, v34, v36

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mzy:D

    move-wide/from16 v36, v0

    move-wide/from16 v38, v14

    mul-double v36, v36, v38

    add-double v34, v34, v36

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mzt:D

    move-wide/from16 v36, v0

    add-double v34, v34, v36

    move-wide/from16 v32, v34

    .line 946
    .local v32, "rzt":D
    move-object/from16 v34, v3

    move-wide/from16 v35, v16

    move-wide/from16 v0, v35

    move-object/from16 v2, v34

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mxx:D

    .line 947
    move-object/from16 v34, v3

    move-wide/from16 v35, v18

    move-wide/from16 v0, v35

    move-object/from16 v2, v34

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mxy:D

    .line 949
    move-object/from16 v34, v3

    move-wide/from16 v35, v20

    move-wide/from16 v0, v35

    move-object/from16 v2, v34

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mxt:D

    .line 950
    move-object/from16 v34, v3

    move-wide/from16 v35, v22

    move-wide/from16 v0, v35

    move-object/from16 v2, v34

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->myx:D

    .line 951
    move-object/from16 v34, v3

    move-wide/from16 v35, v24

    move-wide/from16 v0, v35

    move-object/from16 v2, v34

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->myy:D

    .line 953
    move-object/from16 v34, v3

    move-wide/from16 v35, v26

    move-wide/from16 v0, v35

    move-object/from16 v2, v34

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->myt:D

    .line 954
    move-object/from16 v34, v3

    move-wide/from16 v35, v28

    move-wide/from16 v0, v35

    move-object/from16 v2, v34

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mzx:D

    .line 955
    move-object/from16 v34, v3

    move-wide/from16 v35, v30

    move-wide/from16 v0, v35

    move-object/from16 v2, v34

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mzy:D

    .line 957
    move-object/from16 v34, v3

    move-wide/from16 v35, v32

    move-wide/from16 v0, v35

    move-object/from16 v2, v34

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mzt:D

    .line 958
    move-object/from16 v34, v3

    invoke-virtual/range {v34 .. v34}, Lcom/sun/javafx/geom/transform/Affine3D;->updateState()V

    .line 959
    move-object/from16 v34, v3

    move-object/from16 v3, v34

    .end local v3    # "this":Lcom/sun/javafx/geom/transform/Affine3D;
    return-object v3
.end method

.method public deriveWithConcatenation(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/Affine3D;
    .locals 4

    .prologue
    .line 826
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Affine3D;
    move-object v1, p1

    .local v1, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/geom/transform/Affine3D;->concatenate(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 827
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Affine3D;
    return-object v0
.end method

.method public bridge synthetic deriveWithConcatenation(DDDDDD)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 27

    .prologue
    .line 36
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Affine3D;
    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-object v13, v0

    move-wide v14, v1

    move-wide/from16 v16, v3

    move-wide/from16 v18, v5

    move-wide/from16 v20, v7

    move-wide/from16 v22, v9

    move-wide/from16 v24, v11

    invoke-virtual/range {v13 .. v25}, Lcom/sun/javafx/geom/transform/Affine3D;->deriveWithConcatenation(DDDDDD)Lcom/sun/javafx/geom/transform/Affine3D;

    move-result-object v13

    move-object v0, v13

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Affine3D;
    return-object v0
.end method

.method public deriveWithConcatenation(DDDDDDDDDDDD)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 51

    .prologue
    .line 967
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Affine3D;
    move-wide/from16 v1, p1

    .local v1, "mxx":D
    move-wide/from16 v3, p3

    .local v3, "mxy":D
    move-wide/from16 v5, p5

    .local v5, "mxz":D
    move-wide/from16 v7, p7

    .local v7, "mxt":D
    move-wide/from16 v9, p9

    .local v9, "myx":D
    move-wide/from16 v11, p11

    .local v11, "myy":D
    move-wide/from16 v13, p13

    .local v13, "myz":D
    move-wide/from16 v15, p15

    .local v15, "myt":D
    move-wide/from16 v17, p17

    .local v17, "mzx":D
    move-wide/from16 v19, p19

    .local v19, "mzy":D
    move-wide/from16 v21, p21

    .local v21, "mzz":D
    move-wide/from16 v23, p23

    .local v23, "mzt":D
    move-object/from16 v25, v0

    move-wide/from16 v26, v1

    move-wide/from16 v28, v3

    move-wide/from16 v30, v5

    move-wide/from16 v32, v7

    move-wide/from16 v34, v9

    move-wide/from16 v36, v11

    move-wide/from16 v38, v13

    move-wide/from16 v40, v15

    move-wide/from16 v42, v17

    move-wide/from16 v44, v19

    move-wide/from16 v46, v21

    move-wide/from16 v48, v23

    invoke-virtual/range {v25 .. v49}, Lcom/sun/javafx/geom/transform/Affine3D;->concatenate(DDDDDDDDDDDD)V

    .line 970
    move-object/from16 v25, v0

    move-object/from16 v0, v25

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Affine3D;
    return-object v0
.end method

.method public bridge synthetic deriveWithConcatenation(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Affine3D;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/geom/transform/Affine3D;->deriveWithConcatenation(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/Affine3D;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Affine3D;
    return-object v0
.end method

.method public deriveWithNewTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/Affine3D;
    .locals 4

    .prologue
    .line 607
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Affine3D;
    move-object v1, p1

    .local v1, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/geom/transform/Affine3D;->setTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 608
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Affine3D;
    return-object v0
.end method

.method public bridge synthetic deriveWithNewTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Affine3D;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/geom/transform/Affine3D;->deriveWithNewTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/Affine3D;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Affine3D;
    return-object v0
.end method

.method public deriveWithPreConcatenation(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/Affine3D;
    .locals 4

    .prologue
    .line 832
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Affine3D;
    move-object v1, p1

    .local v1, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/geom/transform/Affine3D;->preConcatenate(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 833
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Affine3D;
    return-object v0
.end method

.method public bridge synthetic deriveWithPreConcatenation(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Affine3D;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/geom/transform/Affine3D;->deriveWithPreConcatenation(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/Affine3D;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Affine3D;
    return-object v0
.end method

.method public deriveWithPreTranslation(DD)Lcom/sun/javafx/geom/transform/Affine3D;
    .locals 13

    .prologue
    .line 646
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Affine3D;
    move-wide v1, p1

    .local v1, "mxt":D
    move-wide/from16 v3, p3

    .local v3, "myt":D
    move-object v5, v0

    move-wide v6, v1

    move-wide v8, v3

    const-wide/16 v10, 0x0

    invoke-virtual/range {v5 .. v11}, Lcom/sun/javafx/geom/transform/Affine3D;->preTranslate(DDD)V

    .line 647
    move-object v5, v0

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Affine3D;
    return-object v0
.end method

.method public bridge synthetic deriveWithPreTranslation(DD)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 11

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Affine3D;
    move-wide v1, p1

    move-wide v3, p3

    move-object v5, v0

    move-wide v6, v1

    move-wide v8, v3

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sun/javafx/geom/transform/Affine3D;->deriveWithPreTranslation(DD)Lcom/sun/javafx/geom/transform/Affine3D;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Affine3D;
    return-object v0
.end method

.method public deriveWithRotation(DDDD)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 19

    .prologue
    .line 665
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Affine3D;
    move-wide/from16 v1, p1

    .local v1, "theta":D
    move-wide/from16 v3, p3

    .local v3, "axisX":D
    move-wide/from16 v5, p5

    .local v5, "axisY":D
    move-wide/from16 v7, p7

    .local v7, "axisZ":D
    move-object v9, v0

    move-wide v10, v1

    move-wide v12, v3

    move-wide v14, v5

    move-wide/from16 v16, v7

    invoke-virtual/range {v9 .. v17}, Lcom/sun/javafx/geom/transform/Affine3D;->rotate(DDDD)V

    .line 666
    move-object v9, v0

    move-object v0, v9

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Affine3D;
    return-object v0
.end method

.method public deriveWithScale(DDD)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 15

    .prologue
    .line 658
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Affine3D;
    move-wide/from16 v1, p1

    .local v1, "mxx":D
    move-wide/from16 v3, p3

    .local v3, "myy":D
    move-wide/from16 v5, p5

    .local v5, "mzz":D
    move-object v7, v0

    move-wide v8, v1

    move-wide v10, v3

    move-wide v12, v5

    invoke-virtual/range {v7 .. v13}, Lcom/sun/javafx/geom/transform/Affine3D;->scale(DDD)V

    .line 659
    move-object v7, v0

    move-object v0, v7

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Affine3D;
    return-object v0
.end method

.method public deriveWithTranslation(DD)Lcom/sun/javafx/geom/transform/Affine3D;
    .locals 13

    .prologue
    .line 613
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Affine3D;
    move-wide v1, p1

    .local v1, "tx":D
    move-wide/from16 v3, p3

    .local v3, "ty":D
    move-object v5, v0

    move-wide v6, v1

    move-wide v8, v3

    const-wide/16 v10, 0x0

    invoke-virtual/range {v5 .. v11}, Lcom/sun/javafx/geom/transform/Affine3D;->translate(DDD)V

    .line 614
    move-object v5, v0

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Affine3D;
    return-object v0
.end method

.method public bridge synthetic deriveWithTranslation(DD)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 11

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Affine3D;
    move-wide v1, p1

    move-wide v3, p3

    move-object v5, v0

    move-wide v6, v1

    move-wide v8, v3

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sun/javafx/geom/transform/Affine3D;->deriveWithTranslation(DD)Lcom/sun/javafx/geom/transform/Affine3D;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Affine3D;
    return-object v0
.end method

.method public deriveWithTranslation(DDD)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 15

    .prologue
    .line 652
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Affine3D;
    move-wide/from16 v1, p1

    .local v1, "mxt":D
    move-wide/from16 v3, p3

    .local v3, "myt":D
    move-wide/from16 v5, p5

    .local v5, "mzt":D
    move-object v7, v0

    move-wide v8, v1

    move-wide v10, v3

    move-wide v12, v5

    invoke-virtual/range {v7 .. v13}, Lcom/sun/javafx/geom/transform/Affine3D;->translate(DDD)V

    .line 653
    move-object v7, v0

    move-object v0, v7

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Affine3D;
    return-object v0
.end method

.method public getDegree()Lcom/sun/javafx/geom/transform/BaseTransform$Degree;
    .locals 2

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Affine3D;
    sget-object v1, Lcom/sun/javafx/geom/transform/BaseTransform$Degree;->AFFINE_3D:Lcom/sun/javafx/geom/transform/BaseTransform$Degree;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Affine3D;
    return-object v0
.end method

.method public getDeterminant()D
    .locals 12

    .prologue
    .line 144
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/Affine3D;
    move-object v2, v1

    iget v2, v2, Lcom/sun/javafx/geom/transform/Affine3D;->state:I

    const/16 v3, 0x8

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_0

    .line 145
    move-object v2, v1

    invoke-super {v2}, Lcom/sun/javafx/geom/transform/AffineBase;->getDeterminant()D

    move-result-wide v2

    move-wide v1, v2

    .line 150
    .end local v1    # "this":Lcom/sun/javafx/geom/transform/Affine3D;
    :goto_0
    return-wide v1

    .restart local v1    # "this":Lcom/sun/javafx/geom/transform/Affine3D;
    :cond_0
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mxx:D

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/geom/transform/Affine3D;->myy:D

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/transform/Affine3D;->mzz:D

    mul-double/2addr v4, v6

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/transform/Affine3D;->mzy:D

    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/javafx/geom/transform/Affine3D;->myz:D

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/geom/transform/Affine3D;->mxy:D

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/transform/Affine3D;->myz:D

    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/javafx/geom/transform/Affine3D;->mzx:D

    mul-double/2addr v6, v8

    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/javafx/geom/transform/Affine3D;->mzz:D

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/geom/transform/Affine3D;->myx:D

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/geom/transform/Affine3D;->mxz:D

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/transform/Affine3D;->myx:D

    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/javafx/geom/transform/Affine3D;->mzy:D

    mul-double/2addr v6, v8

    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/javafx/geom/transform/Affine3D;->mzx:D

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/geom/transform/Affine3D;->myy:D

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    move-wide v1, v2

    goto :goto_0
.end method

.method public getMxz()D
    .locals 3

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Affine3D;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/geom/transform/Affine3D;->mxz:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Affine3D;
    return-wide v0
.end method

.method public getMyz()D
    .locals 3

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Affine3D;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/geom/transform/Affine3D;->myz:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Affine3D;
    return-wide v0
.end method

.method public getMzt()D
    .locals 3

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Affine3D;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/geom/transform/Affine3D;->mzt:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Affine3D;
    return-wide v0
.end method

.method public getMzx()D
    .locals 3

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Affine3D;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/geom/transform/Affine3D;->mzx:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Affine3D;
    return-wide v0
.end method

.method public getMzy()D
    .locals 3

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Affine3D;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/geom/transform/Affine3D;->mzy:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Affine3D;
    return-wide v0
.end method

.method public getMzz()D
    .locals 3

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Affine3D;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/geom/transform/Affine3D;->mzz:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Affine3D;
    return-wide v0
.end method

.method public inverseDeltaTransform(Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Vec3d;)Lcom/sun/javafx/geom/Vec3d;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 474
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Affine3D;
    move-object v1, p1

    .local v1, "src":Lcom/sun/javafx/geom/Vec3d;
    move-object v2, p2

    .local v2, "dst":Lcom/sun/javafx/geom/Vec3d;
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/transform/Affine3D;->state:I

    const/16 v4, 0x8

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_0

    .line 475
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lcom/sun/javafx/geom/transform/AffineBase;->inverseDeltaTransform(Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Vec3d;)Lcom/sun/javafx/geom/Vec3d;

    move-result-object v3

    move-object v0, v3

    .line 478
    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Affine3D;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/geom/transform/Affine3D;
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/geom/transform/Affine3D;->createInverse()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/geom/transform/BaseTransform;->deltaTransform(Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Vec3d;)Lcom/sun/javafx/geom/Vec3d;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public inverseDeltaTransform([FI[FII)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 424
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Affine3D;
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
    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/transform/Affine3D;->state:I

    const/16 v7, 0x8

    and-int/lit8 v6, v6, 0x8

    if-nez v6, :cond_0

    .line 425
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move-object v9, v3

    move v10, v4

    move v11, v5

    invoke-super/range {v6 .. v11}, Lcom/sun/javafx/geom/transform/AffineBase;->inverseDeltaTransform([FI[FII)V

    .line 430
    :goto_0
    return-void

    .line 428
    :cond_0
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/Affine3D;->createInverse()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v6

    move-object v7, v1

    move v8, v2

    move-object v9, v3

    move v10, v4

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/sun/javafx/geom/transform/BaseTransform;->deltaTransform([FI[FII)V

    goto :goto_0
.end method

.method public inverseTransform(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 486
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Affine3D;
    move-object v1, p1

    .local v1, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object v2, p2

    .local v2, "result":Lcom/sun/javafx/geom/BaseBounds;
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/transform/Affine3D;->state:I

    const/16 v4, 0x8

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_0

    .line 487
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lcom/sun/javafx/geom/transform/AffineBase;->inverseTransform(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v3

    move-object v2, v3

    .line 492
    :goto_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Affine3D;
    return-object v0

    .line 490
    .restart local v0    # "this":Lcom/sun/javafx/geom/transform/Affine3D;
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/geom/transform/Affine3D;->createInverse()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/geom/transform/BaseTransform;->transform(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v3

    move-object v2, v3

    goto :goto_0
.end method

.method public inverseTransform(Lcom/sun/javafx/geom/Point2D;Lcom/sun/javafx/geom/Point2D;)Lcom/sun/javafx/geom/Point2D;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 450
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Affine3D;
    move-object v1, p1

    .local v1, "src":Lcom/sun/javafx/geom/Point2D;
    move-object v2, p2

    .local v2, "dst":Lcom/sun/javafx/geom/Point2D;
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/transform/Affine3D;->state:I

    const/16 v4, 0x8

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_0

    .line 451
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lcom/sun/javafx/geom/transform/AffineBase;->inverseTransform(Lcom/sun/javafx/geom/Point2D;Lcom/sun/javafx/geom/Point2D;)Lcom/sun/javafx/geom/Point2D;

    move-result-object v3

    move-object v0, v3

    .line 454
    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Affine3D;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/geom/transform/Affine3D;
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/geom/transform/Affine3D;->createInverse()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/geom/transform/BaseTransform;->transform(Lcom/sun/javafx/geom/Point2D;Lcom/sun/javafx/geom/Point2D;)Lcom/sun/javafx/geom/Point2D;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public inverseTransform(Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Vec3d;)Lcom/sun/javafx/geom/Vec3d;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 462
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Affine3D;
    move-object v1, p1

    .local v1, "src":Lcom/sun/javafx/geom/Vec3d;
    move-object v2, p2

    .local v2, "dst":Lcom/sun/javafx/geom/Vec3d;
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/transform/Affine3D;->state:I

    const/16 v4, 0x8

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_0

    .line 463
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lcom/sun/javafx/geom/transform/AffineBase;->inverseTransform(Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Vec3d;)Lcom/sun/javafx/geom/Vec3d;

    move-result-object v3

    move-object v0, v3

    .line 466
    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Affine3D;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/geom/transform/Affine3D;
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/geom/transform/Affine3D;->createInverse()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/geom/transform/BaseTransform;->transform(Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Vec3d;)Lcom/sun/javafx/geom/Vec3d;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public inverseTransform(Lcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/Rectangle;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 499
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Affine3D;
    move-object v1, p1

    .local v1, "bounds":Lcom/sun/javafx/geom/Rectangle;
    move-object v2, p2

    .local v2, "result":Lcom/sun/javafx/geom/Rectangle;
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/transform/Affine3D;->state:I

    const/16 v4, 0x8

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_0

    .line 500
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lcom/sun/javafx/geom/transform/AffineBase;->inverseTransform(Lcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/Rectangle;)V

    .line 505
    :goto_0
    return-void

    .line 503
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/geom/transform/Affine3D;->createInverse()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/geom/transform/BaseTransform;->transform(Lcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/Rectangle;)V

    goto :goto_0
.end method

.method public inverseTransform([DI[DII)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 438
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Affine3D;
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
    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/transform/Affine3D;->state:I

    const/16 v7, 0x8

    and-int/lit8 v6, v6, 0x8

    if-nez v6, :cond_0

    .line 439
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move-object v9, v3

    move v10, v4

    move v11, v5

    invoke-super/range {v6 .. v11}, Lcom/sun/javafx/geom/transform/AffineBase;->inverseTransform([DI[DII)V

    .line 444
    :goto_0
    return-void

    .line 442
    :cond_0
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/Affine3D;->createInverse()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v6

    move-object v7, v1

    move v8, v2

    move-object v9, v3

    move v10, v4

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/sun/javafx/geom/transform/BaseTransform;->transform([DI[DII)V

    goto :goto_0
.end method

.method public inverseTransform([FI[FII)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 410
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Affine3D;
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
    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/transform/Affine3D;->state:I

    const/16 v7, 0x8

    and-int/lit8 v6, v6, 0x8

    if-nez v6, :cond_0

    .line 411
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move-object v9, v3

    move v10, v4

    move v11, v5

    invoke-super/range {v6 .. v11}, Lcom/sun/javafx/geom/transform/AffineBase;->inverseTransform([FI[FII)V

    .line 416
    :goto_0
    return-void

    .line 414
    :cond_0
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/Affine3D;->createInverse()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v6

    move-object v7, v1

    move v8, v2

    move-object v9, v3

    move v10, v4

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/sun/javafx/geom/transform/BaseTransform;->transform([FI[FII)V

    goto :goto_0
.end method

.method public invert()V
    .locals 35
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 520
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/geom/transform/Affine3D;
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->state:I

    move/from16 v30, v0

    const/16 v31, 0x8

    and-int/lit8 v30, v30, 0x8

    if-nez v30, :cond_0

    .line 521
    move-object/from16 v30, v3

    invoke-super/range {v30 .. v30}, Lcom/sun/javafx/geom/transform/AffineBase;->invert()V

    .line 522
    .line 559
    :goto_0
    return-void

    .line 533
    :cond_0
    move-object/from16 v30, v3

    const/16 v31, 0x0

    const/16 v32, 0x0

    invoke-direct/range {v30 .. v32}, Lcom/sun/javafx/geom/transform/Affine3D;->minor(II)D

    move-result-wide v30

    move-wide/from16 v4, v30

    .line 534
    .local v4, "cxx":D
    move-object/from16 v30, v3

    const/16 v31, 0x0

    const/16 v32, 0x1

    invoke-direct/range {v30 .. v32}, Lcom/sun/javafx/geom/transform/Affine3D;->minor(II)D

    move-result-wide v30

    move-wide/from16 v0, v30

    neg-double v0, v0

    move-wide/from16 v30, v0

    move-wide/from16 v6, v30

    .line 535
    .local v6, "cyx":D
    move-object/from16 v30, v3

    const/16 v31, 0x0

    const/16 v32, 0x2

    invoke-direct/range {v30 .. v32}, Lcom/sun/javafx/geom/transform/Affine3D;->minor(II)D

    move-result-wide v30

    move-wide/from16 v8, v30

    .line 536
    .local v8, "czx":D
    move-object/from16 v30, v3

    const/16 v31, 0x1

    const/16 v32, 0x0

    invoke-direct/range {v30 .. v32}, Lcom/sun/javafx/geom/transform/Affine3D;->minor(II)D

    move-result-wide v30

    move-wide/from16 v0, v30

    neg-double v0, v0

    move-wide/from16 v30, v0

    move-wide/from16 v10, v30

    .line 537
    .local v10, "cxy":D
    move-object/from16 v30, v3

    const/16 v31, 0x1

    const/16 v32, 0x1

    invoke-direct/range {v30 .. v32}, Lcom/sun/javafx/geom/transform/Affine3D;->minor(II)D

    move-result-wide v30

    move-wide/from16 v12, v30

    .line 538
    .local v12, "cyy":D
    move-object/from16 v30, v3

    const/16 v31, 0x1

    const/16 v32, 0x2

    invoke-direct/range {v30 .. v32}, Lcom/sun/javafx/geom/transform/Affine3D;->minor(II)D

    move-result-wide v30

    move-wide/from16 v0, v30

    neg-double v0, v0

    move-wide/from16 v30, v0

    move-wide/from16 v14, v30

    .line 539
    .local v14, "czy":D
    move-object/from16 v30, v3

    const/16 v31, 0x2

    const/16 v32, 0x0

    invoke-direct/range {v30 .. v32}, Lcom/sun/javafx/geom/transform/Affine3D;->minor(II)D

    move-result-wide v30

    move-wide/from16 v16, v30

    .line 540
    .local v16, "cxz":D
    move-object/from16 v30, v3

    const/16 v31, 0x2

    const/16 v32, 0x1

    invoke-direct/range {v30 .. v32}, Lcom/sun/javafx/geom/transform/Affine3D;->minor(II)D

    move-result-wide v30

    move-wide/from16 v0, v30

    neg-double v0, v0

    move-wide/from16 v30, v0

    move-wide/from16 v18, v30

    .line 541
    .local v18, "cyz":D
    move-object/from16 v30, v3

    const/16 v31, 0x2

    const/16 v32, 0x2

    invoke-direct/range {v30 .. v32}, Lcom/sun/javafx/geom/transform/Affine3D;->minor(II)D

    move-result-wide v30

    move-wide/from16 v20, v30

    .line 542
    .local v20, "czz":D
    move-object/from16 v30, v3

    const/16 v31, 0x3

    const/16 v32, 0x0

    invoke-direct/range {v30 .. v32}, Lcom/sun/javafx/geom/transform/Affine3D;->minor(II)D

    move-result-wide v30

    move-wide/from16 v0, v30

    neg-double v0, v0

    move-wide/from16 v30, v0

    move-wide/from16 v22, v30

    .line 543
    .local v22, "cxt":D
    move-object/from16 v30, v3

    const/16 v31, 0x3

    const/16 v32, 0x1

    invoke-direct/range {v30 .. v32}, Lcom/sun/javafx/geom/transform/Affine3D;->minor(II)D

    move-result-wide v30

    move-wide/from16 v24, v30

    .line 544
    .local v24, "cyt":D
    move-object/from16 v30, v3

    const/16 v31, 0x3

    const/16 v32, 0x2

    invoke-direct/range {v30 .. v32}, Lcom/sun/javafx/geom/transform/Affine3D;->minor(II)D

    move-result-wide v30

    move-wide/from16 v0, v30

    neg-double v0, v0

    move-wide/from16 v30, v0

    move-wide/from16 v26, v30

    .line 545
    .local v26, "czt":D
    move-object/from16 v30, v3

    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/geom/transform/Affine3D;->getDeterminant()D

    move-result-wide v30

    move-wide/from16 v28, v30

    .line 546
    .local v28, "det":D
    move-object/from16 v30, v3

    move-wide/from16 v31, v4

    move-wide/from16 v33, v28

    div-double v31, v31, v33

    move-wide/from16 v0, v31

    move-object/from16 v2, v30

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mxx:D

    .line 547
    move-object/from16 v30, v3

    move-wide/from16 v31, v10

    move-wide/from16 v33, v28

    div-double v31, v31, v33

    move-wide/from16 v0, v31

    move-object/from16 v2, v30

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mxy:D

    .line 548
    move-object/from16 v30, v3

    move-wide/from16 v31, v16

    move-wide/from16 v33, v28

    div-double v31, v31, v33

    move-wide/from16 v0, v31

    move-object/from16 v2, v30

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mxz:D

    .line 549
    move-object/from16 v30, v3

    move-wide/from16 v31, v22

    move-wide/from16 v33, v28

    div-double v31, v31, v33

    move-wide/from16 v0, v31

    move-object/from16 v2, v30

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mxt:D

    .line 550
    move-object/from16 v30, v3

    move-wide/from16 v31, v6

    move-wide/from16 v33, v28

    div-double v31, v31, v33

    move-wide/from16 v0, v31

    move-object/from16 v2, v30

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->myx:D

    .line 551
    move-object/from16 v30, v3

    move-wide/from16 v31, v12

    move-wide/from16 v33, v28

    div-double v31, v31, v33

    move-wide/from16 v0, v31

    move-object/from16 v2, v30

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->myy:D

    .line 552
    move-object/from16 v30, v3

    move-wide/from16 v31, v18

    move-wide/from16 v33, v28

    div-double v31, v31, v33

    move-wide/from16 v0, v31

    move-object/from16 v2, v30

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->myz:D

    .line 553
    move-object/from16 v30, v3

    move-wide/from16 v31, v24

    move-wide/from16 v33, v28

    div-double v31, v31, v33

    move-wide/from16 v0, v31

    move-object/from16 v2, v30

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->myt:D

    .line 554
    move-object/from16 v30, v3

    move-wide/from16 v31, v8

    move-wide/from16 v33, v28

    div-double v31, v31, v33

    move-wide/from16 v0, v31

    move-object/from16 v2, v30

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mzx:D

    .line 555
    move-object/from16 v30, v3

    move-wide/from16 v31, v14

    move-wide/from16 v33, v28

    div-double v31, v31, v33

    move-wide/from16 v0, v31

    move-object/from16 v2, v30

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mzy:D

    .line 556
    move-object/from16 v30, v3

    move-wide/from16 v31, v20

    move-wide/from16 v33, v28

    div-double v31, v31, v33

    move-wide/from16 v0, v31

    move-object/from16 v2, v30

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mzz:D

    .line 557
    move-object/from16 v30, v3

    move-wide/from16 v31, v26

    move-wide/from16 v33, v28

    div-double v31, v31, v33

    move-wide/from16 v0, v31

    move-object/from16 v2, v30

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mzt:D

    .line 558
    move-object/from16 v30, v3

    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/geom/transform/Affine3D;->updateState()V

    .line 559
    goto/16 :goto_0
.end method

.method public lookAt(Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Vec3d;)Lcom/sun/javafx/geom/transform/Affine3D;
    .locals 36

    .prologue
    .line 1074
    move-object/from16 v4, p0

    .local v4, "this":Lcom/sun/javafx/geom/transform/Affine3D;
    move-object/from16 v5, p1

    .local v5, "eye":Lcom/sun/javafx/geom/Vec3d;
    move-object/from16 v6, p2

    .local v6, "center":Lcom/sun/javafx/geom/Vec3d;
    move-object/from16 v7, p3

    .local v7, "up":Lcom/sun/javafx/geom/Vec3d;
    move-object/from16 v28, v5

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v28, v0

    move-object/from16 v30, v6

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v30, v0

    sub-double v28, v28, v30

    move-wide/from16 v8, v28

    .line 1075
    .local v8, "forwardx":D
    move-object/from16 v28, v5

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v28, v0

    move-object/from16 v30, v6

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v30, v0

    sub-double v28, v28, v30

    move-wide/from16 v10, v28

    .line 1076
    .local v10, "forwardy":D
    move-object/from16 v28, v5

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v28, v0

    move-object/from16 v30, v6

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v30, v0

    sub-double v28, v28, v30

    move-wide/from16 v12, v28

    .line 1078
    .local v12, "forwardz":D
    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v30, v8

    move-wide/from16 v32, v8

    mul-double v30, v30, v32

    move-wide/from16 v32, v10

    move-wide/from16 v34, v10

    mul-double v32, v32, v34

    add-double v30, v30, v32

    move-wide/from16 v32, v12

    move-wide/from16 v34, v12

    mul-double v32, v32, v34

    add-double v30, v30, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v30

    div-double v28, v28, v30

    move-wide/from16 v14, v28

    .line 1079
    .local v14, "invMag":D
    move-wide/from16 v28, v8

    move-wide/from16 v30, v14

    mul-double v28, v28, v30

    move-wide/from16 v8, v28

    .line 1080
    move-wide/from16 v28, v10

    move-wide/from16 v30, v14

    mul-double v28, v28, v30

    move-wide/from16 v10, v28

    .line 1081
    move-wide/from16 v28, v12

    move-wide/from16 v30, v14

    mul-double v28, v28, v30

    move-wide/from16 v12, v28

    .line 1083
    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    move-object/from16 v30, v7

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v30, v0

    move-object/from16 v32, v7

    move-object/from16 v0, v32

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v32, v0

    mul-double v30, v30, v32

    move-object/from16 v32, v7

    move-object/from16 v0, v32

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v32, v0

    move-object/from16 v34, v7

    move-object/from16 v0, v34

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v34, v0

    mul-double v32, v32, v34

    add-double v30, v30, v32

    move-object/from16 v32, v7

    move-object/from16 v0, v32

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v32, v0

    move-object/from16 v34, v7

    move-object/from16 v0, v34

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v34, v0

    mul-double v32, v32, v34

    add-double v30, v30, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v30

    div-double v28, v28, v30

    move-wide/from16 v14, v28

    .line 1084
    move-object/from16 v28, v7

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v28, v0

    move-wide/from16 v30, v14

    mul-double v28, v28, v30

    move-wide/from16 v16, v28

    .line 1085
    .local v16, "upx":D
    move-object/from16 v28, v7

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v28, v0

    move-wide/from16 v30, v14

    mul-double v28, v28, v30

    move-wide/from16 v18, v28

    .line 1086
    .local v18, "upy":D
    move-object/from16 v28, v7

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v28, v0

    move-wide/from16 v30, v14

    mul-double v28, v28, v30

    move-wide/from16 v20, v28

    .line 1089
    .local v20, "upz":D
    move-wide/from16 v28, v18

    move-wide/from16 v30, v12

    mul-double v28, v28, v30

    move-wide/from16 v30, v10

    move-wide/from16 v32, v20

    mul-double v30, v30, v32

    sub-double v28, v28, v30

    move-wide/from16 v22, v28

    .line 1090
    .local v22, "sidex":D
    move-wide/from16 v28, v20

    move-wide/from16 v30, v8

    mul-double v28, v28, v30

    move-wide/from16 v30, v16

    move-wide/from16 v32, v12

    mul-double v30, v30, v32

    sub-double v28, v28, v30

    move-wide/from16 v24, v28

    .line 1091
    .local v24, "sidey":D
    move-wide/from16 v28, v16

    move-wide/from16 v30, v10

    mul-double v28, v28, v30

    move-wide/from16 v30, v18

    move-wide/from16 v32, v8

    mul-double v30, v30, v32

    sub-double v28, v28, v30

    move-wide/from16 v26, v28

    .line 1093
    .local v26, "sidez":D
    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v30, v22

    move-wide/from16 v32, v22

    mul-double v30, v30, v32

    move-wide/from16 v32, v24

    move-wide/from16 v34, v24

    mul-double v32, v32, v34

    add-double v30, v30, v32

    move-wide/from16 v32, v26

    move-wide/from16 v34, v26

    mul-double v32, v32, v34

    add-double v30, v30, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v30

    div-double v28, v28, v30

    move-wide/from16 v14, v28

    .line 1094
    move-wide/from16 v28, v22

    move-wide/from16 v30, v14

    mul-double v28, v28, v30

    move-wide/from16 v22, v28

    .line 1095
    move-wide/from16 v28, v24

    move-wide/from16 v30, v14

    mul-double v28, v28, v30

    move-wide/from16 v24, v28

    .line 1096
    move-wide/from16 v28, v26

    move-wide/from16 v30, v14

    mul-double v28, v28, v30

    move-wide/from16 v26, v28

    .line 1099
    move-wide/from16 v28, v10

    move-wide/from16 v30, v26

    mul-double v28, v28, v30

    move-wide/from16 v30, v24

    move-wide/from16 v32, v12

    mul-double v30, v30, v32

    sub-double v28, v28, v30

    move-wide/from16 v16, v28

    .line 1100
    move-wide/from16 v28, v12

    move-wide/from16 v30, v22

    mul-double v28, v28, v30

    move-wide/from16 v30, v8

    move-wide/from16 v32, v26

    mul-double v30, v30, v32

    sub-double v28, v28, v30

    move-wide/from16 v18, v28

    .line 1101
    move-wide/from16 v28, v8

    move-wide/from16 v30, v24

    mul-double v28, v28, v30

    move-wide/from16 v30, v10

    move-wide/from16 v32, v22

    mul-double v30, v30, v32

    sub-double v28, v28, v30

    move-wide/from16 v20, v28

    .line 1104
    move-object/from16 v28, v4

    move-wide/from16 v29, v22

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mxx:D

    .line 1105
    move-object/from16 v28, v4

    move-wide/from16 v29, v24

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mxy:D

    .line 1106
    move-object/from16 v28, v4

    move-wide/from16 v29, v26

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mxz:D

    .line 1108
    move-object/from16 v28, v4

    move-wide/from16 v29, v16

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->myx:D

    .line 1109
    move-object/from16 v28, v4

    move-wide/from16 v29, v18

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->myy:D

    .line 1110
    move-object/from16 v28, v4

    move-wide/from16 v29, v20

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->myz:D

    .line 1112
    move-object/from16 v28, v4

    move-wide/from16 v29, v8

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mzx:D

    .line 1113
    move-object/from16 v28, v4

    move-wide/from16 v29, v10

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mzy:D

    .line 1114
    move-object/from16 v28, v4

    move-wide/from16 v29, v12

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mzz:D

    .line 1116
    move-object/from16 v28, v4

    move-object/from16 v29, v5

    move-object/from16 v0, v29

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v29, v0

    move-wide/from16 v0, v29

    neg-double v0, v0

    move-wide/from16 v29, v0

    move-object/from16 v31, v4

    move-object/from16 v0, v31

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mxx:D

    move-wide/from16 v31, v0

    mul-double v29, v29, v31

    move-object/from16 v31, v5

    move-object/from16 v0, v31

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v31, v0

    move-wide/from16 v0, v31

    neg-double v0, v0

    move-wide/from16 v31, v0

    move-object/from16 v33, v4

    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mxy:D

    move-wide/from16 v33, v0

    mul-double v31, v31, v33

    add-double v29, v29, v31

    move-object/from16 v31, v5

    move-object/from16 v0, v31

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v31, v0

    move-wide/from16 v0, v31

    neg-double v0, v0

    move-wide/from16 v31, v0

    move-object/from16 v33, v4

    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mxz:D

    move-wide/from16 v33, v0

    mul-double v31, v31, v33

    add-double v29, v29, v31

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mxt:D

    .line 1117
    move-object/from16 v28, v4

    move-object/from16 v29, v5

    move-object/from16 v0, v29

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v29, v0

    move-wide/from16 v0, v29

    neg-double v0, v0

    move-wide/from16 v29, v0

    move-object/from16 v31, v4

    move-object/from16 v0, v31

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->myx:D

    move-wide/from16 v31, v0

    mul-double v29, v29, v31

    move-object/from16 v31, v5

    move-object/from16 v0, v31

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v31, v0

    move-wide/from16 v0, v31

    neg-double v0, v0

    move-wide/from16 v31, v0

    move-object/from16 v33, v4

    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->myy:D

    move-wide/from16 v33, v0

    mul-double v31, v31, v33

    add-double v29, v29, v31

    move-object/from16 v31, v5

    move-object/from16 v0, v31

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v31, v0

    move-wide/from16 v0, v31

    neg-double v0, v0

    move-wide/from16 v31, v0

    move-object/from16 v33, v4

    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->myz:D

    move-wide/from16 v33, v0

    mul-double v31, v31, v33

    add-double v29, v29, v31

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->myt:D

    .line 1118
    move-object/from16 v28, v4

    move-object/from16 v29, v5

    move-object/from16 v0, v29

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v29, v0

    move-wide/from16 v0, v29

    neg-double v0, v0

    move-wide/from16 v29, v0

    move-object/from16 v31, v4

    move-object/from16 v0, v31

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mzx:D

    move-wide/from16 v31, v0

    mul-double v29, v29, v31

    move-object/from16 v31, v5

    move-object/from16 v0, v31

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v31, v0

    move-wide/from16 v0, v31

    neg-double v0, v0

    move-wide/from16 v31, v0

    move-object/from16 v33, v4

    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mzy:D

    move-wide/from16 v33, v0

    mul-double v31, v31, v33

    add-double v29, v29, v31

    move-object/from16 v31, v5

    move-object/from16 v0, v31

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v31, v0

    move-wide/from16 v0, v31

    neg-double v0, v0

    move-wide/from16 v31, v0

    move-object/from16 v33, v4

    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mzz:D

    move-wide/from16 v33, v0

    mul-double v31, v31, v33

    add-double v29, v29, v31

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mzt:D

    .line 1120
    move-object/from16 v28, v4

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/geom/transform/Affine3D;->updateState()V

    .line 1121
    move-object/from16 v28, v4

    move-object/from16 v4, v28

    .end local v4    # "this":Lcom/sun/javafx/geom/transform/Affine3D;
    return-object v4
.end method

.method public preConcatenate(Lcom/sun/javafx/geom/transform/BaseTransform;)V
    .locals 61

    .prologue
    .line 974
    move-object/from16 v4, p0

    .local v4, "this":Lcom/sun/javafx/geom/transform/Affine3D;
    move-object/from16 v5, p1

    .local v5, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    sget-object v54, Lcom/sun/javafx/geom/transform/Affine3D$1;->$SwitchMap$com$sun$javafx$geom$transform$BaseTransform$Degree:[I

    move-object/from16 v55, v5

    invoke-virtual/range {v55 .. v55}, Lcom/sun/javafx/geom/transform/BaseTransform;->getDegree()Lcom/sun/javafx/geom/transform/BaseTransform$Degree;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Lcom/sun/javafx/geom/transform/BaseTransform$Degree;->ordinal()I

    move-result v55

    aget v54, v54, v55

    packed-switch v54, :pswitch_data_0

    .line 984
    move-object/from16 v54, v5

    invoke-virtual/range {v54 .. v54}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxx()D

    move-result-wide v54

    move-wide/from16 v6, v54

    .line 985
    .local v6, "Txx":D
    move-object/from16 v54, v5

    invoke-virtual/range {v54 .. v54}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxy()D

    move-result-wide v54

    move-wide/from16 v8, v54

    .line 986
    .local v8, "Txy":D
    move-object/from16 v54, v5

    invoke-virtual/range {v54 .. v54}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxz()D

    move-result-wide v54

    move-wide/from16 v10, v54

    .line 987
    .local v10, "Txz":D
    move-object/from16 v54, v5

    invoke-virtual/range {v54 .. v54}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxt()D

    move-result-wide v54

    move-wide/from16 v12, v54

    .line 988
    .local v12, "Txt":D
    move-object/from16 v54, v5

    invoke-virtual/range {v54 .. v54}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyx()D

    move-result-wide v54

    move-wide/from16 v14, v54

    .line 989
    .local v14, "Tyx":D
    move-object/from16 v54, v5

    invoke-virtual/range {v54 .. v54}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyy()D

    move-result-wide v54

    move-wide/from16 v16, v54

    .line 990
    .local v16, "Tyy":D
    move-object/from16 v54, v5

    invoke-virtual/range {v54 .. v54}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyz()D

    move-result-wide v54

    move-wide/from16 v18, v54

    .line 991
    .local v18, "Tyz":D
    move-object/from16 v54, v5

    invoke-virtual/range {v54 .. v54}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyt()D

    move-result-wide v54

    move-wide/from16 v20, v54

    .line 992
    .local v20, "Tyt":D
    move-object/from16 v54, v5

    invoke-virtual/range {v54 .. v54}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzx()D

    move-result-wide v54

    move-wide/from16 v22, v54

    .line 993
    .local v22, "Tzx":D
    move-object/from16 v54, v5

    invoke-virtual/range {v54 .. v54}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzy()D

    move-result-wide v54

    move-wide/from16 v24, v54

    .line 994
    .local v24, "Tzy":D
    move-object/from16 v54, v5

    invoke-virtual/range {v54 .. v54}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzz()D

    move-result-wide v54

    move-wide/from16 v26, v54

    .line 995
    .local v26, "Tzz":D
    move-object/from16 v54, v5

    invoke-virtual/range {v54 .. v54}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzt()D

    move-result-wide v54

    move-wide/from16 v28, v54

    .line 996
    .local v28, "Tzt":D
    move-wide/from16 v54, v6

    move-object/from16 v56, v4

    move-object/from16 v0, v56

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mxx:D

    move-wide/from16 v56, v0

    mul-double v54, v54, v56

    move-wide/from16 v56, v8

    move-object/from16 v58, v4

    move-object/from16 v0, v58

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->myx:D

    move-wide/from16 v58, v0

    mul-double v56, v56, v58

    add-double v54, v54, v56

    move-wide/from16 v56, v10

    move-object/from16 v58, v4

    move-object/from16 v0, v58

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mzx:D

    move-wide/from16 v58, v0

    mul-double v56, v56, v58

    add-double v54, v54, v56

    move-wide/from16 v30, v54

    .line 997
    .local v30, "rxx":D
    move-wide/from16 v54, v6

    move-object/from16 v56, v4

    move-object/from16 v0, v56

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mxy:D

    move-wide/from16 v56, v0

    mul-double v54, v54, v56

    move-wide/from16 v56, v8

    move-object/from16 v58, v4

    move-object/from16 v0, v58

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->myy:D

    move-wide/from16 v58, v0

    mul-double v56, v56, v58

    add-double v54, v54, v56

    move-wide/from16 v56, v10

    move-object/from16 v58, v4

    move-object/from16 v0, v58

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mzy:D

    move-wide/from16 v58, v0

    mul-double v56, v56, v58

    add-double v54, v54, v56

    move-wide/from16 v32, v54

    .line 998
    .local v32, "rxy":D
    move-wide/from16 v54, v6

    move-object/from16 v56, v4

    move-object/from16 v0, v56

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mxz:D

    move-wide/from16 v56, v0

    mul-double v54, v54, v56

    move-wide/from16 v56, v8

    move-object/from16 v58, v4

    move-object/from16 v0, v58

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->myz:D

    move-wide/from16 v58, v0

    mul-double v56, v56, v58

    add-double v54, v54, v56

    move-wide/from16 v56, v10

    move-object/from16 v58, v4

    move-object/from16 v0, v58

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mzz:D

    move-wide/from16 v58, v0

    mul-double v56, v56, v58

    add-double v54, v54, v56

    move-wide/from16 v34, v54

    .line 999
    .local v34, "rxz":D
    move-wide/from16 v54, v6

    move-object/from16 v56, v4

    move-object/from16 v0, v56

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mxt:D

    move-wide/from16 v56, v0

    mul-double v54, v54, v56

    move-wide/from16 v56, v8

    move-object/from16 v58, v4

    move-object/from16 v0, v58

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->myt:D

    move-wide/from16 v58, v0

    mul-double v56, v56, v58

    add-double v54, v54, v56

    move-wide/from16 v56, v10

    move-object/from16 v58, v4

    move-object/from16 v0, v58

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mzt:D

    move-wide/from16 v58, v0

    mul-double v56, v56, v58

    add-double v54, v54, v56

    move-wide/from16 v56, v12

    add-double v54, v54, v56

    move-wide/from16 v36, v54

    .line 1000
    .local v36, "rxt":D
    move-wide/from16 v54, v14

    move-object/from16 v56, v4

    move-object/from16 v0, v56

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mxx:D

    move-wide/from16 v56, v0

    mul-double v54, v54, v56

    move-wide/from16 v56, v16

    move-object/from16 v58, v4

    move-object/from16 v0, v58

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->myx:D

    move-wide/from16 v58, v0

    mul-double v56, v56, v58

    add-double v54, v54, v56

    move-wide/from16 v56, v18

    move-object/from16 v58, v4

    move-object/from16 v0, v58

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mzx:D

    move-wide/from16 v58, v0

    mul-double v56, v56, v58

    add-double v54, v54, v56

    move-wide/from16 v38, v54

    .line 1001
    .local v38, "ryx":D
    move-wide/from16 v54, v14

    move-object/from16 v56, v4

    move-object/from16 v0, v56

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mxy:D

    move-wide/from16 v56, v0

    mul-double v54, v54, v56

    move-wide/from16 v56, v16

    move-object/from16 v58, v4

    move-object/from16 v0, v58

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->myy:D

    move-wide/from16 v58, v0

    mul-double v56, v56, v58

    add-double v54, v54, v56

    move-wide/from16 v56, v18

    move-object/from16 v58, v4

    move-object/from16 v0, v58

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mzy:D

    move-wide/from16 v58, v0

    mul-double v56, v56, v58

    add-double v54, v54, v56

    move-wide/from16 v40, v54

    .line 1002
    .local v40, "ryy":D
    move-wide/from16 v54, v14

    move-object/from16 v56, v4

    move-object/from16 v0, v56

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mxz:D

    move-wide/from16 v56, v0

    mul-double v54, v54, v56

    move-wide/from16 v56, v16

    move-object/from16 v58, v4

    move-object/from16 v0, v58

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->myz:D

    move-wide/from16 v58, v0

    mul-double v56, v56, v58

    add-double v54, v54, v56

    move-wide/from16 v56, v18

    move-object/from16 v58, v4

    move-object/from16 v0, v58

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mzz:D

    move-wide/from16 v58, v0

    mul-double v56, v56, v58

    add-double v54, v54, v56

    move-wide/from16 v42, v54

    .line 1003
    .local v42, "ryz":D
    move-wide/from16 v54, v14

    move-object/from16 v56, v4

    move-object/from16 v0, v56

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mxt:D

    move-wide/from16 v56, v0

    mul-double v54, v54, v56

    move-wide/from16 v56, v16

    move-object/from16 v58, v4

    move-object/from16 v0, v58

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->myt:D

    move-wide/from16 v58, v0

    mul-double v56, v56, v58

    add-double v54, v54, v56

    move-wide/from16 v56, v18

    move-object/from16 v58, v4

    move-object/from16 v0, v58

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mzt:D

    move-wide/from16 v58, v0

    mul-double v56, v56, v58

    add-double v54, v54, v56

    move-wide/from16 v56, v20

    add-double v54, v54, v56

    move-wide/from16 v44, v54

    .line 1004
    .local v44, "ryt":D
    move-wide/from16 v54, v22

    move-object/from16 v56, v4

    move-object/from16 v0, v56

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mxx:D

    move-wide/from16 v56, v0

    mul-double v54, v54, v56

    move-wide/from16 v56, v24

    move-object/from16 v58, v4

    move-object/from16 v0, v58

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->myx:D

    move-wide/from16 v58, v0

    mul-double v56, v56, v58

    add-double v54, v54, v56

    move-wide/from16 v56, v26

    move-object/from16 v58, v4

    move-object/from16 v0, v58

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mzx:D

    move-wide/from16 v58, v0

    mul-double v56, v56, v58

    add-double v54, v54, v56

    move-wide/from16 v46, v54

    .line 1005
    .local v46, "rzx":D
    move-wide/from16 v54, v22

    move-object/from16 v56, v4

    move-object/from16 v0, v56

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mxy:D

    move-wide/from16 v56, v0

    mul-double v54, v54, v56

    move-wide/from16 v56, v24

    move-object/from16 v58, v4

    move-object/from16 v0, v58

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->myy:D

    move-wide/from16 v58, v0

    mul-double v56, v56, v58

    add-double v54, v54, v56

    move-wide/from16 v56, v26

    move-object/from16 v58, v4

    move-object/from16 v0, v58

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mzy:D

    move-wide/from16 v58, v0

    mul-double v56, v56, v58

    add-double v54, v54, v56

    move-wide/from16 v48, v54

    .line 1006
    .local v48, "rzy":D
    move-wide/from16 v54, v22

    move-object/from16 v56, v4

    move-object/from16 v0, v56

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mxz:D

    move-wide/from16 v56, v0

    mul-double v54, v54, v56

    move-wide/from16 v56, v24

    move-object/from16 v58, v4

    move-object/from16 v0, v58

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->myz:D

    move-wide/from16 v58, v0

    mul-double v56, v56, v58

    add-double v54, v54, v56

    move-wide/from16 v56, v26

    move-object/from16 v58, v4

    move-object/from16 v0, v58

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mzz:D

    move-wide/from16 v58, v0

    mul-double v56, v56, v58

    add-double v54, v54, v56

    move-wide/from16 v50, v54

    .line 1007
    .local v50, "rzz":D
    move-wide/from16 v54, v22

    move-object/from16 v56, v4

    move-object/from16 v0, v56

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mxt:D

    move-wide/from16 v56, v0

    mul-double v54, v54, v56

    move-wide/from16 v56, v24

    move-object/from16 v58, v4

    move-object/from16 v0, v58

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->myt:D

    move-wide/from16 v58, v0

    mul-double v56, v56, v58

    add-double v54, v54, v56

    move-wide/from16 v56, v26

    move-object/from16 v58, v4

    move-object/from16 v0, v58

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mzt:D

    move-wide/from16 v58, v0

    mul-double v56, v56, v58

    add-double v54, v54, v56

    move-wide/from16 v56, v28

    add-double v54, v54, v56

    move-wide/from16 v52, v54

    .line 1008
    .local v52, "rzt":D
    move-object/from16 v54, v4

    move-wide/from16 v55, v30

    move-wide/from16 v0, v55

    move-object/from16 v2, v54

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mxx:D

    .line 1009
    move-object/from16 v54, v4

    move-wide/from16 v55, v32

    move-wide/from16 v0, v55

    move-object/from16 v2, v54

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mxy:D

    .line 1010
    move-object/from16 v54, v4

    move-wide/from16 v55, v34

    move-wide/from16 v0, v55

    move-object/from16 v2, v54

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mxz:D

    .line 1011
    move-object/from16 v54, v4

    move-wide/from16 v55, v36

    move-wide/from16 v0, v55

    move-object/from16 v2, v54

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mxt:D

    .line 1012
    move-object/from16 v54, v4

    move-wide/from16 v55, v38

    move-wide/from16 v0, v55

    move-object/from16 v2, v54

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->myx:D

    .line 1013
    move-object/from16 v54, v4

    move-wide/from16 v55, v40

    move-wide/from16 v0, v55

    move-object/from16 v2, v54

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->myy:D

    .line 1014
    move-object/from16 v54, v4

    move-wide/from16 v55, v42

    move-wide/from16 v0, v55

    move-object/from16 v2, v54

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->myz:D

    .line 1015
    move-object/from16 v54, v4

    move-wide/from16 v55, v44

    move-wide/from16 v0, v55

    move-object/from16 v2, v54

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->myt:D

    .line 1016
    move-object/from16 v54, v4

    move-wide/from16 v55, v46

    move-wide/from16 v0, v55

    move-object/from16 v2, v54

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mzx:D

    .line 1017
    move-object/from16 v54, v4

    move-wide/from16 v55, v48

    move-wide/from16 v0, v55

    move-object/from16 v2, v54

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mzy:D

    .line 1018
    move-object/from16 v54, v4

    move-wide/from16 v55, v50

    move-wide/from16 v0, v55

    move-object/from16 v2, v54

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mzz:D

    .line 1019
    move-object/from16 v54, v4

    move-wide/from16 v55, v52

    move-wide/from16 v0, v55

    move-object/from16 v2, v54

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mzt:D

    .line 1020
    move-object/from16 v54, v4

    invoke-virtual/range {v54 .. v54}, Lcom/sun/javafx/geom/transform/Affine3D;->updateState()V

    .line 1021
    .end local v6    # "Txx":D
    .end local v8    # "Txy":D
    .end local v10    # "Txz":D
    .end local v12    # "Txt":D
    .end local v14    # "Tyx":D
    .end local v16    # "Tyy":D
    .end local v18    # "Tyz":D
    .end local v20    # "Tyt":D
    .end local v22    # "Tzx":D
    .end local v24    # "Tzy":D
    .end local v26    # "Tzz":D
    .end local v28    # "Tzt":D
    .end local v30    # "rxx":D
    .end local v32    # "rxy":D
    .end local v34    # "rxz":D
    .end local v36    # "rxt":D
    .end local v38    # "ryx":D
    .end local v40    # "ryy":D
    .end local v42    # "ryz":D
    .end local v44    # "ryt":D
    .end local v46    # "rzx":D
    .end local v48    # "rzy":D
    .end local v50    # "rzz":D
    .end local v52    # "rzt":D
    :goto_0
    return-void

    .line 976
    :pswitch_0
    goto :goto_0

    .line 978
    :pswitch_1
    move-object/from16 v54, v4

    move-object/from16 v55, v5

    invoke-virtual/range {v55 .. v55}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxt()D

    move-result-wide v55

    move-object/from16 v57, v5

    invoke-virtual/range {v57 .. v57}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyt()D

    move-result-wide v57

    const-wide/16 v59, 0x0

    invoke-virtual/range {v54 .. v60}, Lcom/sun/javafx/geom/transform/Affine3D;->preTranslate(DDD)V

    .line 979
    goto :goto_0

    .line 981
    :pswitch_2
    move-object/from16 v54, v4

    move-object/from16 v55, v5

    invoke-virtual/range {v55 .. v55}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxt()D

    move-result-wide v55

    move-object/from16 v57, v5

    invoke-virtual/range {v57 .. v57}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyt()D

    move-result-wide v57

    move-object/from16 v59, v5

    invoke-virtual/range {v59 .. v59}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzt()D

    move-result-wide v59

    invoke-virtual/range {v54 .. v60}, Lcom/sun/javafx/geom/transform/Affine3D;->preTranslate(DDD)V

    .line 982
    goto :goto_0

    .line 974
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public preTranslate(DDD)V
    .locals 15

    .prologue
    .line 670
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Affine3D;
    move-wide/from16 v1, p1

    .local v1, "mxt":D
    move-wide/from16 v3, p3

    .local v3, "myt":D
    move-wide/from16 v5, p5

    .local v5, "mzt":D
    move-object v9, v0

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    iget-wide v10, v10, Lcom/sun/javafx/geom/transform/Affine3D;->mxt:D

    move-wide v12, v1

    add-double/2addr v10, v12

    iput-wide v10, v9, Lcom/sun/javafx/geom/transform/Affine3D;->mxt:D

    .line 671
    move-object v9, v0

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    iget-wide v10, v10, Lcom/sun/javafx/geom/transform/Affine3D;->myt:D

    move-wide v12, v3

    add-double/2addr v10, v12

    iput-wide v10, v9, Lcom/sun/javafx/geom/transform/Affine3D;->myt:D

    .line 672
    move-object v9, v0

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    iget-wide v10, v10, Lcom/sun/javafx/geom/transform/Affine3D;->mzt:D

    move-wide v12, v5

    add-double/2addr v10, v12

    iput-wide v10, v9, Lcom/sun/javafx/geom/transform/Affine3D;->mzt:D

    .line 673
    const/4 v9, 0x0

    move v7, v9

    .line 674
    .local v7, "clearflags":I
    const/4 v9, 0x0

    move v8, v9

    .line 675
    .local v8, "setflags":I
    move-object v9, v0

    iget-wide v9, v9, Lcom/sun/javafx/geom/transform/Affine3D;->mzt:D

    const-wide/16 v11, 0x0

    cmpl-double v9, v9, v11

    if-nez v9, :cond_0

    .line 676
    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/geom/transform/Affine3D;->state:I

    const/16 v10, 0x8

    and-int/lit8 v9, v9, 0x8

    if-eqz v9, :cond_1

    .line 678
    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/geom/transform/Affine3D;->updateState()V

    .line 679
    .line 695
    :goto_0
    return-void

    .line 682
    :cond_0
    move-object v9, v0

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    iget v10, v10, Lcom/sun/javafx/geom/transform/Affine3D;->state:I

    const/16 v11, 0x8

    or-int/lit8 v10, v10, 0x8

    iput v10, v9, Lcom/sun/javafx/geom/transform/Affine3D;->state:I

    .line 683
    const/16 v9, 0x80

    move v8, v9

    .line 685
    :cond_1
    move-object v9, v0

    iget-wide v9, v9, Lcom/sun/javafx/geom/transform/Affine3D;->mxt:D

    const-wide/16 v11, 0x0

    cmpl-double v9, v9, v11

    if-nez v9, :cond_3

    move-object v9, v0

    iget-wide v9, v9, Lcom/sun/javafx/geom/transform/Affine3D;->myt:D

    const-wide/16 v11, 0x0

    cmpl-double v9, v9, v11

    if-nez v9, :cond_3

    .line 686
    move-object v9, v0

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    iget v10, v10, Lcom/sun/javafx/geom/transform/Affine3D;->state:I

    const/4 v11, -0x2

    and-int/lit8 v10, v10, -0x2

    iput v10, v9, Lcom/sun/javafx/geom/transform/Affine3D;->state:I

    .line 687
    const/4 v9, 0x1

    move v7, v9

    .line 692
    :goto_1
    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/geom/transform/Affine3D;->type:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2

    .line 693
    move-object v9, v0

    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/geom/transform/Affine3D;->type:I

    move v11, v7

    const/4 v12, -0x1

    xor-int/lit8 v11, v11, -0x1

    and-int/2addr v10, v11

    move v11, v8

    or-int/2addr v10, v11

    iput v10, v9, Lcom/sun/javafx/geom/transform/Affine3D;->type:I

    .line 695
    :cond_2
    goto :goto_0

    .line 689
    :cond_3
    move-object v9, v0

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    iget v10, v10, Lcom/sun/javafx/geom/transform/Affine3D;->state:I

    const/4 v11, 0x1

    or-int/lit8 v10, v10, 0x1

    iput v10, v9, Lcom/sun/javafx/geom/transform/Affine3D;->state:I

    .line 690
    move v9, v8

    const/4 v10, 0x1

    or-int/lit8 v9, v9, 0x1

    move v8, v9

    goto :goto_1
.end method

.method protected reset3Delements()V
    .locals 4

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Affine3D;
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/sun/javafx/geom/transform/Affine3D;->mxz:D

    .line 111
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/sun/javafx/geom/transform/Affine3D;->myz:D

    .line 112
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/sun/javafx/geom/transform/Affine3D;->mzx:D

    .line 113
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/sun/javafx/geom/transform/Affine3D;->mzy:D

    .line 114
    move-object v1, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, v1, Lcom/sun/javafx/geom/transform/Affine3D;->mzz:D

    .line 115
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/sun/javafx/geom/transform/Affine3D;->mzt:D

    .line 116
    return-void
.end method

.method public restoreTransform(DDDDDD)V
    .locals 19

    .prologue
    .line 1028
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/Affine3D;
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
    new-instance v14, Ljava/lang/InternalError;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    const-string v16, "must use Affine3D restore method to prevent loss of information"

    invoke-direct/range {v15 .. v16}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v14
.end method

.method public restoreTransform(DDDDDDDDDDDD)V
    .locals 31

    .prologue
    .line 1037
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/geom/transform/Affine3D;
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
    move-object/from16 v28, v3

    move-wide/from16 v29, v4

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mxx:D

    .line 1038
    move-object/from16 v28, v3

    move-wide/from16 v29, v6

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mxy:D

    .line 1039
    move-object/from16 v28, v3

    move-wide/from16 v29, v8

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mxz:D

    .line 1040
    move-object/from16 v28, v3

    move-wide/from16 v29, v10

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mxt:D

    .line 1042
    move-object/from16 v28, v3

    move-wide/from16 v29, v12

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->myx:D

    .line 1043
    move-object/from16 v28, v3

    move-wide/from16 v29, v14

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->myy:D

    .line 1044
    move-object/from16 v28, v3

    move-wide/from16 v29, v16

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->myz:D

    .line 1045
    move-object/from16 v28, v3

    move-wide/from16 v29, v18

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->myt:D

    .line 1047
    move-object/from16 v28, v3

    move-wide/from16 v29, v20

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mzx:D

    .line 1048
    move-object/from16 v28, v3

    move-wide/from16 v29, v22

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mzy:D

    .line 1049
    move-object/from16 v28, v3

    move-wide/from16 v29, v24

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mzz:D

    .line 1050
    move-object/from16 v28, v3

    move-wide/from16 v29, v26

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mzt:D

    .line 1052
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/geom/transform/Affine3D;->updateState()V

    .line 1053
    return-void
.end method

.method public rotate(D)V
    .locals 13

    .prologue
    .line 736
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Affine3D;
    move-wide v1, p1

    .local v1, "theta":D
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/transform/Affine3D;->state:I

    const/16 v4, 0x8

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_0

    .line 737
    move-object v3, v0

    move-wide v4, v1

    invoke-super {v3, v4, v5}, Lcom/sun/javafx/geom/transform/AffineBase;->rotate(D)V

    .line 741
    :goto_0
    return-void

    .line 739
    :cond_0
    move-object v3, v0

    move-wide v4, v1

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-virtual/range {v3 .. v11}, Lcom/sun/javafx/geom/transform/Affine3D;->rotate(DDDD)V

    goto :goto_0
.end method

.method public rotate(DDDD)V
    .locals 75

    .prologue
    .line 744
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/geom/transform/Affine3D;
    move-wide/from16 v4, p1

    .local v4, "theta":D
    move-wide/from16 v6, p3

    .local v6, "axisX":D
    move-wide/from16 v8, p5

    .local v8, "axisY":D
    move-wide/from16 v10, p7

    .local v10, "axisZ":D
    move-object/from16 v68, v3

    move-object/from16 v0, v68

    iget v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->state:I

    move/from16 v68, v0

    const/16 v69, 0x8

    and-int/lit8 v68, v68, 0x8

    if-nez v68, :cond_2

    move-wide/from16 v68, v6

    invoke-static/range {v68 .. v69}, Lcom/sun/javafx/geom/transform/Affine3D;->almostZero(D)Z

    move-result v68

    if-eqz v68, :cond_2

    move-wide/from16 v68, v8

    invoke-static/range {v68 .. v69}, Lcom/sun/javafx/geom/transform/Affine3D;->almostZero(D)Z

    move-result v68

    if-eqz v68, :cond_2

    .line 745
    move-wide/from16 v68, v10

    const-wide/16 v70, 0x0

    cmpl-double v68, v68, v70

    if-lez v68, :cond_1

    .line 746
    move-object/from16 v68, v3

    move-wide/from16 v69, v4

    invoke-super/range {v68 .. v70}, Lcom/sun/javafx/geom/transform/AffineBase;->rotate(D)V

    .line 750
    .line 801
    :cond_0
    :goto_0
    return-void

    .line 747
    :cond_1
    move-wide/from16 v68, v10

    const-wide/16 v70, 0x0

    cmpg-double v68, v68, v70

    if-gez v68, :cond_0

    .line 748
    move-object/from16 v68, v3

    move-wide/from16 v69, v4

    move-wide/from16 v0, v69

    neg-double v0, v0

    move-wide/from16 v69, v0

    invoke-super/range {v68 .. v70}, Lcom/sun/javafx/geom/transform/AffineBase;->rotate(D)V

    goto :goto_0

    .line 752
    :cond_2
    move-wide/from16 v68, v6

    move-wide/from16 v70, v6

    mul-double v68, v68, v70

    move-wide/from16 v70, v8

    move-wide/from16 v72, v8

    mul-double v70, v70, v72

    add-double v68, v68, v70

    move-wide/from16 v70, v10

    move-wide/from16 v72, v10

    mul-double v70, v70, v72

    add-double v68, v68, v70

    invoke-static/range {v68 .. v69}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v68

    move-wide/from16 v12, v68

    .line 754
    .local v12, "mag":D
    move-wide/from16 v68, v12

    invoke-static/range {v68 .. v69}, Lcom/sun/javafx/geom/transform/Affine3D;->almostZero(D)Z

    move-result v68

    if-eqz v68, :cond_3

    .line 755
    goto :goto_0

    .line 757
    :cond_3
    const-wide/high16 v68, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v70, v12

    div-double v68, v68, v70

    move-wide/from16 v12, v68

    .line 758
    move-wide/from16 v68, v6

    move-wide/from16 v70, v12

    mul-double v68, v68, v70

    move-wide/from16 v14, v68

    .line 759
    .local v14, "ax":D
    move-wide/from16 v68, v8

    move-wide/from16 v70, v12

    mul-double v68, v68, v70

    move-wide/from16 v16, v68

    .line 760
    .local v16, "ay":D
    move-wide/from16 v68, v10

    move-wide/from16 v70, v12

    mul-double v68, v68, v70

    move-wide/from16 v18, v68

    .line 762
    .local v18, "az":D
    move-wide/from16 v68, v4

    invoke-static/range {v68 .. v69}, Ljava/lang/Math;->sin(D)D

    move-result-wide v68

    move-wide/from16 v20, v68

    .line 763
    .local v20, "sinTheta":D
    move-wide/from16 v68, v4

    invoke-static/range {v68 .. v69}, Ljava/lang/Math;->cos(D)D

    move-result-wide v68

    move-wide/from16 v22, v68

    .line 764
    .local v22, "cosTheta":D
    const-wide/high16 v68, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v70, v22

    sub-double v68, v68, v70

    move-wide/from16 v24, v68

    .line 766
    .local v24, "t":D
    move-wide/from16 v68, v14

    move-wide/from16 v70, v18

    mul-double v68, v68, v70

    move-wide/from16 v26, v68

    .line 767
    .local v26, "xz":D
    move-wide/from16 v68, v14

    move-wide/from16 v70, v16

    mul-double v68, v68, v70

    move-wide/from16 v28, v68

    .line 768
    .local v28, "xy":D
    move-wide/from16 v68, v16

    move-wide/from16 v70, v18

    mul-double v68, v68, v70

    move-wide/from16 v30, v68

    .line 770
    .local v30, "yz":D
    move-wide/from16 v68, v24

    move-wide/from16 v70, v14

    mul-double v68, v68, v70

    move-wide/from16 v70, v14

    mul-double v68, v68, v70

    move-wide/from16 v70, v22

    add-double v68, v68, v70

    move-wide/from16 v32, v68

    .line 771
    .local v32, "Txx":D
    move-wide/from16 v68, v24

    move-wide/from16 v70, v28

    mul-double v68, v68, v70

    move-wide/from16 v70, v20

    move-wide/from16 v72, v18

    mul-double v70, v70, v72

    sub-double v68, v68, v70

    move-wide/from16 v34, v68

    .line 772
    .local v34, "Txy":D
    move-wide/from16 v68, v24

    move-wide/from16 v70, v26

    mul-double v68, v68, v70

    move-wide/from16 v70, v20

    move-wide/from16 v72, v16

    mul-double v70, v70, v72

    add-double v68, v68, v70

    move-wide/from16 v36, v68

    .line 774
    .local v36, "Txz":D
    move-wide/from16 v68, v24

    move-wide/from16 v70, v28

    mul-double v68, v68, v70

    move-wide/from16 v70, v20

    move-wide/from16 v72, v18

    mul-double v70, v70, v72

    add-double v68, v68, v70

    move-wide/from16 v38, v68

    .line 775
    .local v38, "Tyx":D
    move-wide/from16 v68, v24

    move-wide/from16 v70, v16

    mul-double v68, v68, v70

    move-wide/from16 v70, v16

    mul-double v68, v68, v70

    move-wide/from16 v70, v22

    add-double v68, v68, v70

    move-wide/from16 v40, v68

    .line 776
    .local v40, "Tyy":D
    move-wide/from16 v68, v24

    move-wide/from16 v70, v30

    mul-double v68, v68, v70

    move-wide/from16 v70, v20

    move-wide/from16 v72, v14

    mul-double v70, v70, v72

    sub-double v68, v68, v70

    move-wide/from16 v42, v68

    .line 778
    .local v42, "Tyz":D
    move-wide/from16 v68, v24

    move-wide/from16 v70, v26

    mul-double v68, v68, v70

    move-wide/from16 v70, v20

    move-wide/from16 v72, v16

    mul-double v70, v70, v72

    sub-double v68, v68, v70

    move-wide/from16 v44, v68

    .line 779
    .local v44, "Tzx":D
    move-wide/from16 v68, v24

    move-wide/from16 v70, v30

    mul-double v68, v68, v70

    move-wide/from16 v70, v20

    move-wide/from16 v72, v14

    mul-double v70, v70, v72

    add-double v68, v68, v70

    move-wide/from16 v46, v68

    .line 780
    .local v46, "Tzy":D
    move-wide/from16 v68, v24

    move-wide/from16 v70, v18

    mul-double v68, v68, v70

    move-wide/from16 v70, v18

    mul-double v68, v68, v70

    move-wide/from16 v70, v22

    add-double v68, v68, v70

    move-wide/from16 v48, v68

    .line 782
    .local v48, "Tzz":D
    move-object/from16 v68, v3

    move-object/from16 v0, v68

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mxx:D

    move-wide/from16 v68, v0

    move-wide/from16 v70, v32

    mul-double v68, v68, v70

    move-object/from16 v70, v3

    move-object/from16 v0, v70

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mxy:D

    move-wide/from16 v70, v0

    move-wide/from16 v72, v38

    mul-double v70, v70, v72

    add-double v68, v68, v70

    move-object/from16 v70, v3

    move-object/from16 v0, v70

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mxz:D

    move-wide/from16 v70, v0

    move-wide/from16 v72, v44

    mul-double v70, v70, v72

    add-double v68, v68, v70

    move-wide/from16 v50, v68

    .line 783
    .local v50, "rxx":D
    move-object/from16 v68, v3

    move-object/from16 v0, v68

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mxx:D

    move-wide/from16 v68, v0

    move-wide/from16 v70, v34

    mul-double v68, v68, v70

    move-object/from16 v70, v3

    move-object/from16 v0, v70

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mxy:D

    move-wide/from16 v70, v0

    move-wide/from16 v72, v40

    mul-double v70, v70, v72

    add-double v68, v68, v70

    move-object/from16 v70, v3

    move-object/from16 v0, v70

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mxz:D

    move-wide/from16 v70, v0

    move-wide/from16 v72, v46

    mul-double v70, v70, v72

    add-double v68, v68, v70

    move-wide/from16 v52, v68

    .line 784
    .local v52, "rxy":D
    move-object/from16 v68, v3

    move-object/from16 v0, v68

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mxx:D

    move-wide/from16 v68, v0

    move-wide/from16 v70, v36

    mul-double v68, v68, v70

    move-object/from16 v70, v3

    move-object/from16 v0, v70

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mxy:D

    move-wide/from16 v70, v0

    move-wide/from16 v72, v42

    mul-double v70, v70, v72

    add-double v68, v68, v70

    move-object/from16 v70, v3

    move-object/from16 v0, v70

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mxz:D

    move-wide/from16 v70, v0

    move-wide/from16 v72, v48

    mul-double v70, v70, v72

    add-double v68, v68, v70

    move-wide/from16 v54, v68

    .line 785
    .local v54, "rxz":D
    move-object/from16 v68, v3

    move-object/from16 v0, v68

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->myx:D

    move-wide/from16 v68, v0

    move-wide/from16 v70, v32

    mul-double v68, v68, v70

    move-object/from16 v70, v3

    move-object/from16 v0, v70

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->myy:D

    move-wide/from16 v70, v0

    move-wide/from16 v72, v38

    mul-double v70, v70, v72

    add-double v68, v68, v70

    move-object/from16 v70, v3

    move-object/from16 v0, v70

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->myz:D

    move-wide/from16 v70, v0

    move-wide/from16 v72, v44

    mul-double v70, v70, v72

    add-double v68, v68, v70

    move-wide/from16 v56, v68

    .line 786
    .local v56, "ryx":D
    move-object/from16 v68, v3

    move-object/from16 v0, v68

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->myx:D

    move-wide/from16 v68, v0

    move-wide/from16 v70, v34

    mul-double v68, v68, v70

    move-object/from16 v70, v3

    move-object/from16 v0, v70

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->myy:D

    move-wide/from16 v70, v0

    move-wide/from16 v72, v40

    mul-double v70, v70, v72

    add-double v68, v68, v70

    move-object/from16 v70, v3

    move-object/from16 v0, v70

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->myz:D

    move-wide/from16 v70, v0

    move-wide/from16 v72, v46

    mul-double v70, v70, v72

    add-double v68, v68, v70

    move-wide/from16 v58, v68

    .line 787
    .local v58, "ryy":D
    move-object/from16 v68, v3

    move-object/from16 v0, v68

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->myx:D

    move-wide/from16 v68, v0

    move-wide/from16 v70, v36

    mul-double v68, v68, v70

    move-object/from16 v70, v3

    move-object/from16 v0, v70

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->myy:D

    move-wide/from16 v70, v0

    move-wide/from16 v72, v42

    mul-double v70, v70, v72

    add-double v68, v68, v70

    move-object/from16 v70, v3

    move-object/from16 v0, v70

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->myz:D

    move-wide/from16 v70, v0

    move-wide/from16 v72, v48

    mul-double v70, v70, v72

    add-double v68, v68, v70

    move-wide/from16 v60, v68

    .line 788
    .local v60, "ryz":D
    move-object/from16 v68, v3

    move-object/from16 v0, v68

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mzx:D

    move-wide/from16 v68, v0

    move-wide/from16 v70, v32

    mul-double v68, v68, v70

    move-object/from16 v70, v3

    move-object/from16 v0, v70

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mzy:D

    move-wide/from16 v70, v0

    move-wide/from16 v72, v38

    mul-double v70, v70, v72

    add-double v68, v68, v70

    move-object/from16 v70, v3

    move-object/from16 v0, v70

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mzz:D

    move-wide/from16 v70, v0

    move-wide/from16 v72, v44

    mul-double v70, v70, v72

    add-double v68, v68, v70

    move-wide/from16 v62, v68

    .line 789
    .local v62, "rzx":D
    move-object/from16 v68, v3

    move-object/from16 v0, v68

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mzx:D

    move-wide/from16 v68, v0

    move-wide/from16 v70, v34

    mul-double v68, v68, v70

    move-object/from16 v70, v3

    move-object/from16 v0, v70

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mzy:D

    move-wide/from16 v70, v0

    move-wide/from16 v72, v40

    mul-double v70, v70, v72

    add-double v68, v68, v70

    move-object/from16 v70, v3

    move-object/from16 v0, v70

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mzz:D

    move-wide/from16 v70, v0

    move-wide/from16 v72, v46

    mul-double v70, v70, v72

    add-double v68, v68, v70

    move-wide/from16 v64, v68

    .line 790
    .local v64, "rzy":D
    move-object/from16 v68, v3

    move-object/from16 v0, v68

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mzx:D

    move-wide/from16 v68, v0

    move-wide/from16 v70, v36

    mul-double v68, v68, v70

    move-object/from16 v70, v3

    move-object/from16 v0, v70

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mzy:D

    move-wide/from16 v70, v0

    move-wide/from16 v72, v42

    mul-double v70, v70, v72

    add-double v68, v68, v70

    move-object/from16 v70, v3

    move-object/from16 v0, v70

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mzz:D

    move-wide/from16 v70, v0

    move-wide/from16 v72, v48

    mul-double v70, v70, v72

    add-double v68, v68, v70

    move-wide/from16 v66, v68

    .line 791
    .local v66, "rzz":D
    move-object/from16 v68, v3

    move-wide/from16 v69, v50

    move-wide/from16 v0, v69

    move-object/from16 v2, v68

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mxx:D

    .line 792
    move-object/from16 v68, v3

    move-wide/from16 v69, v52

    move-wide/from16 v0, v69

    move-object/from16 v2, v68

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mxy:D

    .line 793
    move-object/from16 v68, v3

    move-wide/from16 v69, v54

    move-wide/from16 v0, v69

    move-object/from16 v2, v68

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mxz:D

    .line 794
    move-object/from16 v68, v3

    move-wide/from16 v69, v56

    move-wide/from16 v0, v69

    move-object/from16 v2, v68

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->myx:D

    .line 795
    move-object/from16 v68, v3

    move-wide/from16 v69, v58

    move-wide/from16 v0, v69

    move-object/from16 v2, v68

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->myy:D

    .line 796
    move-object/from16 v68, v3

    move-wide/from16 v69, v60

    move-wide/from16 v0, v69

    move-object/from16 v2, v68

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->myz:D

    .line 797
    move-object/from16 v68, v3

    move-wide/from16 v69, v62

    move-wide/from16 v0, v69

    move-object/from16 v2, v68

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mzx:D

    .line 798
    move-object/from16 v68, v3

    move-wide/from16 v69, v64

    move-wide/from16 v0, v69

    move-object/from16 v2, v68

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mzy:D

    .line 799
    move-object/from16 v68, v3

    move-wide/from16 v69, v66

    move-wide/from16 v0, v69

    move-object/from16 v2, v68

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mzz:D

    .line 800
    move-object/from16 v68, v3

    invoke-virtual/range {v68 .. v68}, Lcom/sun/javafx/geom/transform/Affine3D;->updateState()V

    .line 801
    goto/16 :goto_0
.end method

.method public scale(DD)V
    .locals 13

    .prologue
    .line 699
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Affine3D;
    move-wide v1, p1

    .local v1, "sx":D
    move-wide/from16 v3, p3

    .local v3, "sy":D
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/transform/Affine3D;->state:I

    const/16 v6, 0x8

    and-int/lit8 v5, v5, 0x8

    if-nez v5, :cond_0

    .line 700
    move-object v5, v0

    move-wide v6, v1

    move-wide v8, v3

    invoke-super {v5, v6, v7, v8, v9}, Lcom/sun/javafx/geom/transform/AffineBase;->scale(DD)V

    .line 704
    :goto_0
    return-void

    .line 702
    :cond_0
    move-object v5, v0

    move-wide v6, v1

    move-wide v8, v3

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-virtual/range {v5 .. v11}, Lcom/sun/javafx/geom/transform/Affine3D;->scale(DDD)V

    goto :goto_0
.end method

.method public scale(DDD)V
    .locals 13

    .prologue
    .line 707
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Affine3D;
    move-wide v1, p1

    .local v1, "sx":D
    move-wide/from16 v3, p3

    .local v3, "sy":D
    move-wide/from16 v5, p5

    .local v5, "sz":D
    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/geom/transform/Affine3D;->state:I

    const/16 v8, 0x8

    and-int/lit8 v7, v7, 0x8

    if-nez v7, :cond_1

    .line 708
    move-object v7, v0

    move-wide v8, v1

    move-wide v10, v3

    invoke-super {v7, v8, v9, v10, v11}, Lcom/sun/javafx/geom/transform/AffineBase;->scale(DD)V

    .line 709
    move-wide v7, v5

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, v7, v9

    if-eqz v7, :cond_0

    .line 710
    move-object v7, v0

    move-wide v8, v5

    iput-wide v8, v7, Lcom/sun/javafx/geom/transform/Affine3D;->mzz:D

    .line 711
    move-object v7, v0

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget v8, v8, Lcom/sun/javafx/geom/transform/Affine3D;->state:I

    const/16 v9, 0x8

    or-int/lit8 v8, v8, 0x8

    iput v8, v7, Lcom/sun/javafx/geom/transform/Affine3D;->state:I

    .line 712
    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/geom/transform/Affine3D;->type:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 713
    move-object v7, v0

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget v8, v8, Lcom/sun/javafx/geom/transform/Affine3D;->type:I

    const/16 v9, 0x80

    or-int/lit16 v8, v8, 0x80

    iput v8, v7, Lcom/sun/javafx/geom/transform/Affine3D;->type:I

    .line 716
    .line 732
    :cond_0
    :goto_0
    return-void

    .line 718
    :cond_1
    move-object v7, v0

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget-wide v8, v8, Lcom/sun/javafx/geom/transform/Affine3D;->mxx:D

    move-wide v10, v1

    mul-double/2addr v8, v10

    iput-wide v8, v7, Lcom/sun/javafx/geom/transform/Affine3D;->mxx:D

    .line 719
    move-object v7, v0

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget-wide v8, v8, Lcom/sun/javafx/geom/transform/Affine3D;->mxy:D

    move-wide v10, v3

    mul-double/2addr v8, v10

    iput-wide v8, v7, Lcom/sun/javafx/geom/transform/Affine3D;->mxy:D

    .line 720
    move-object v7, v0

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget-wide v8, v8, Lcom/sun/javafx/geom/transform/Affine3D;->mxz:D

    move-wide v10, v5

    mul-double/2addr v8, v10

    iput-wide v8, v7, Lcom/sun/javafx/geom/transform/Affine3D;->mxz:D

    .line 722
    move-object v7, v0

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget-wide v8, v8, Lcom/sun/javafx/geom/transform/Affine3D;->myx:D

    move-wide v10, v1

    mul-double/2addr v8, v10

    iput-wide v8, v7, Lcom/sun/javafx/geom/transform/Affine3D;->myx:D

    .line 723
    move-object v7, v0

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget-wide v8, v8, Lcom/sun/javafx/geom/transform/Affine3D;->myy:D

    move-wide v10, v3

    mul-double/2addr v8, v10

    iput-wide v8, v7, Lcom/sun/javafx/geom/transform/Affine3D;->myy:D

    .line 724
    move-object v7, v0

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget-wide v8, v8, Lcom/sun/javafx/geom/transform/Affine3D;->myz:D

    move-wide v10, v5

    mul-double/2addr v8, v10

    iput-wide v8, v7, Lcom/sun/javafx/geom/transform/Affine3D;->myz:D

    .line 726
    move-object v7, v0

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget-wide v8, v8, Lcom/sun/javafx/geom/transform/Affine3D;->mzx:D

    move-wide v10, v1

    mul-double/2addr v8, v10

    iput-wide v8, v7, Lcom/sun/javafx/geom/transform/Affine3D;->mzx:D

    .line 727
    move-object v7, v0

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget-wide v8, v8, Lcom/sun/javafx/geom/transform/Affine3D;->mzy:D

    move-wide v10, v3

    mul-double/2addr v8, v10

    iput-wide v8, v7, Lcom/sun/javafx/geom/transform/Affine3D;->mzy:D

    .line 728
    move-object v7, v0

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget-wide v8, v8, Lcom/sun/javafx/geom/transform/Affine3D;->mzz:D

    move-wide v10, v5

    mul-double/2addr v8, v10

    iput-wide v8, v7, Lcom/sun/javafx/geom/transform/Affine3D;->mzz:D

    .line 731
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/geom/transform/Affine3D;->updateState()V

    .line 732
    goto :goto_0
.end method

.method public setToRotation(DDDD)V
    .locals 39

    .prologue
    .line 275
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/geom/transform/Affine3D;
    move-wide/from16 v4, p1

    .local v4, "theta":D
    move-wide/from16 v6, p3

    .local v6, "axisX":D
    move-wide/from16 v8, p5

    .local v8, "axisY":D
    move-wide/from16 v10, p7

    .local v10, "axisZ":D
    move-wide/from16 v32, v6

    move-wide/from16 v34, v6

    mul-double v32, v32, v34

    move-wide/from16 v34, v8

    move-wide/from16 v36, v8

    mul-double v34, v34, v36

    add-double v32, v32, v34

    move-wide/from16 v34, v10

    move-wide/from16 v36, v10

    mul-double v34, v34, v36

    add-double v32, v32, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v32

    move-wide/from16 v12, v32

    .line 277
    .local v12, "mag":D
    move-wide/from16 v32, v12

    invoke-static/range {v32 .. v33}, Lcom/sun/javafx/geom/transform/Affine3D;->almostZero(D)Z

    move-result v32

    if-eqz v32, :cond_0

    .line 278
    move-object/from16 v32, v3

    invoke-virtual/range {v32 .. v32}, Lcom/sun/javafx/geom/transform/Affine3D;->setToIdentity()V

    .line 279
    .line 310
    :goto_0
    return-void

    .line 281
    :cond_0
    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v34, v12

    div-double v32, v32, v34

    move-wide/from16 v12, v32

    .line 282
    move-wide/from16 v32, v6

    move-wide/from16 v34, v12

    mul-double v32, v32, v34

    move-wide/from16 v14, v32

    .line 283
    .local v14, "ax":D
    move-wide/from16 v32, v8

    move-wide/from16 v34, v12

    mul-double v32, v32, v34

    move-wide/from16 v16, v32

    .line 284
    .local v16, "ay":D
    move-wide/from16 v32, v10

    move-wide/from16 v34, v12

    mul-double v32, v32, v34

    move-wide/from16 v18, v32

    .line 286
    .local v18, "az":D
    move-wide/from16 v32, v4

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->sin(D)D

    move-result-wide v32

    move-wide/from16 v20, v32

    .line 287
    .local v20, "sinTheta":D
    move-wide/from16 v32, v4

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->cos(D)D

    move-result-wide v32

    move-wide/from16 v22, v32

    .line 288
    .local v22, "cosTheta":D
    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v34, v22

    sub-double v32, v32, v34

    move-wide/from16 v24, v32

    .line 290
    .local v24, "t":D
    move-wide/from16 v32, v14

    move-wide/from16 v34, v18

    mul-double v32, v32, v34

    move-wide/from16 v26, v32

    .line 291
    .local v26, "xz":D
    move-wide/from16 v32, v14

    move-wide/from16 v34, v16

    mul-double v32, v32, v34

    move-wide/from16 v28, v32

    .line 292
    .local v28, "xy":D
    move-wide/from16 v32, v16

    move-wide/from16 v34, v18

    mul-double v32, v32, v34

    move-wide/from16 v30, v32

    .line 294
    .local v30, "yz":D
    move-object/from16 v32, v3

    move-wide/from16 v33, v24

    move-wide/from16 v35, v14

    mul-double v33, v33, v35

    move-wide/from16 v35, v14

    mul-double v33, v33, v35

    move-wide/from16 v35, v22

    add-double v33, v33, v35

    move-wide/from16 v0, v33

    move-object/from16 v2, v32

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mxx:D

    .line 295
    move-object/from16 v32, v3

    move-wide/from16 v33, v24

    move-wide/from16 v35, v28

    mul-double v33, v33, v35

    move-wide/from16 v35, v20

    move-wide/from16 v37, v18

    mul-double v35, v35, v37

    sub-double v33, v33, v35

    move-wide/from16 v0, v33

    move-object/from16 v2, v32

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mxy:D

    .line 296
    move-object/from16 v32, v3

    move-wide/from16 v33, v24

    move-wide/from16 v35, v26

    mul-double v33, v33, v35

    move-wide/from16 v35, v20

    move-wide/from16 v37, v16

    mul-double v35, v35, v37

    add-double v33, v33, v35

    move-wide/from16 v0, v33

    move-object/from16 v2, v32

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mxz:D

    .line 297
    move-object/from16 v32, v3

    const-wide/16 v33, 0x0

    move-wide/from16 v0, v33

    move-object/from16 v2, v32

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mxt:D

    .line 299
    move-object/from16 v32, v3

    move-wide/from16 v33, v24

    move-wide/from16 v35, v28

    mul-double v33, v33, v35

    move-wide/from16 v35, v20

    move-wide/from16 v37, v18

    mul-double v35, v35, v37

    add-double v33, v33, v35

    move-wide/from16 v0, v33

    move-object/from16 v2, v32

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->myx:D

    .line 300
    move-object/from16 v32, v3

    move-wide/from16 v33, v24

    move-wide/from16 v35, v16

    mul-double v33, v33, v35

    move-wide/from16 v35, v16

    mul-double v33, v33, v35

    move-wide/from16 v35, v22

    add-double v33, v33, v35

    move-wide/from16 v0, v33

    move-object/from16 v2, v32

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->myy:D

    .line 301
    move-object/from16 v32, v3

    move-wide/from16 v33, v24

    move-wide/from16 v35, v30

    mul-double v33, v33, v35

    move-wide/from16 v35, v20

    move-wide/from16 v37, v14

    mul-double v35, v35, v37

    sub-double v33, v33, v35

    move-wide/from16 v0, v33

    move-object/from16 v2, v32

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->myz:D

    .line 302
    move-object/from16 v32, v3

    const-wide/16 v33, 0x0

    move-wide/from16 v0, v33

    move-object/from16 v2, v32

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->myt:D

    .line 304
    move-object/from16 v32, v3

    move-wide/from16 v33, v24

    move-wide/from16 v35, v26

    mul-double v33, v33, v35

    move-wide/from16 v35, v20

    move-wide/from16 v37, v16

    mul-double v35, v35, v37

    sub-double v33, v33, v35

    move-wide/from16 v0, v33

    move-object/from16 v2, v32

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mzx:D

    .line 305
    move-object/from16 v32, v3

    move-wide/from16 v33, v24

    move-wide/from16 v35, v30

    mul-double v33, v33, v35

    move-wide/from16 v35, v20

    move-wide/from16 v37, v14

    mul-double v35, v35, v37

    add-double v33, v33, v35

    move-wide/from16 v0, v33

    move-object/from16 v2, v32

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mzy:D

    .line 306
    move-object/from16 v32, v3

    move-wide/from16 v33, v24

    move-wide/from16 v35, v18

    mul-double v33, v33, v35

    move-wide/from16 v35, v18

    mul-double v33, v33, v35

    move-wide/from16 v35, v22

    add-double v33, v33, v35

    move-wide/from16 v0, v33

    move-object/from16 v2, v32

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mzz:D

    .line 307
    move-object/from16 v32, v3

    const-wide/16 v33, 0x0

    move-wide/from16 v0, v33

    move-object/from16 v2, v32

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mzt:D

    .line 309
    move-object/from16 v32, v3

    invoke-virtual/range {v32 .. v32}, Lcom/sun/javafx/geom/transform/Affine3D;->updateState()V

    .line 310
    goto/16 :goto_0
.end method

.method public setToRotation(DDDDDDD)V
    .locals 27

    .prologue
    .line 267
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/geom/transform/Affine3D;
    move-wide/from16 v4, p1

    .local v4, "theta":D
    move-wide/from16 v6, p3

    .local v6, "axisX":D
    move-wide/from16 v8, p5

    .local v8, "axisY":D
    move-wide/from16 v10, p7

    .local v10, "axisZ":D
    move-wide/from16 v12, p9

    .local v12, "pivotX":D
    move-wide/from16 v14, p11

    .local v14, "pivotY":D
    move-wide/from16 v16, p13

    .local v16, "pivotZ":D
    move-object/from16 v18, v3

    move-wide/from16 v19, v4

    move-wide/from16 v21, v6

    move-wide/from16 v23, v8

    move-wide/from16 v25, v10

    invoke-virtual/range {v18 .. v26}, Lcom/sun/javafx/geom/transform/Affine3D;->setToRotation(DDDD)V

    .line 268
    move-wide/from16 v18, v12

    const-wide/16 v20, 0x0

    cmpl-double v18, v18, v20

    if-nez v18, :cond_0

    move-wide/from16 v18, v14

    const-wide/16 v20, 0x0

    cmpl-double v18, v18, v20

    if-nez v18, :cond_0

    move-wide/from16 v18, v16

    const-wide/16 v20, 0x0

    cmpl-double v18, v18, v20

    if-eqz v18, :cond_1

    .line 269
    :cond_0
    move-object/from16 v18, v3

    move-wide/from16 v19, v12

    move-wide/from16 v21, v14

    move-wide/from16 v23, v16

    invoke-virtual/range {v18 .. v24}, Lcom/sun/javafx/geom/transform/Affine3D;->preTranslate(DDD)V

    .line 270
    move-object/from16 v18, v3

    move-wide/from16 v19, v12

    move-wide/from16 v0, v19

    neg-double v0, v0

    move-wide/from16 v19, v0

    move-wide/from16 v21, v14

    move-wide/from16 v0, v21

    neg-double v0, v0

    move-wide/from16 v21, v0

    move-wide/from16 v23, v16

    move-wide/from16 v0, v23

    neg-double v0, v0

    move-wide/from16 v23, v0

    invoke-virtual/range {v18 .. v24}, Lcom/sun/javafx/geom/transform/Affine3D;->translate(DDD)V

    .line 272
    :cond_1
    return-void
.end method

.method public setToScale(DDD)V
    .locals 13

    .prologue
    .line 229
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/Affine3D;
    move-wide v2, p1

    .local v2, "sx":D
    move-wide/from16 v4, p3

    .local v4, "sy":D
    move-wide/from16 v6, p5

    .local v6, "sz":D
    move-object v8, v1

    move-wide v9, v2

    iput-wide v9, v8, Lcom/sun/javafx/geom/transform/Affine3D;->mxx:D

    .line 230
    move-object v8, v1

    const-wide/16 v9, 0x0

    iput-wide v9, v8, Lcom/sun/javafx/geom/transform/Affine3D;->mxy:D

    .line 231
    move-object v8, v1

    const-wide/16 v9, 0x0

    iput-wide v9, v8, Lcom/sun/javafx/geom/transform/Affine3D;->mxz:D

    .line 232
    move-object v8, v1

    const-wide/16 v9, 0x0

    iput-wide v9, v8, Lcom/sun/javafx/geom/transform/Affine3D;->mxt:D

    .line 234
    move-object v8, v1

    const-wide/16 v9, 0x0

    iput-wide v9, v8, Lcom/sun/javafx/geom/transform/Affine3D;->myx:D

    .line 235
    move-object v8, v1

    move-wide v9, v4

    iput-wide v9, v8, Lcom/sun/javafx/geom/transform/Affine3D;->myy:D

    .line 236
    move-object v8, v1

    const-wide/16 v9, 0x0

    iput-wide v9, v8, Lcom/sun/javafx/geom/transform/Affine3D;->myz:D

    .line 237
    move-object v8, v1

    const-wide/16 v9, 0x0

    iput-wide v9, v8, Lcom/sun/javafx/geom/transform/Affine3D;->myt:D

    .line 239
    move-object v8, v1

    const-wide/16 v9, 0x0

    iput-wide v9, v8, Lcom/sun/javafx/geom/transform/Affine3D;->mzx:D

    .line 240
    move-object v8, v1

    const-wide/16 v9, 0x0

    iput-wide v9, v8, Lcom/sun/javafx/geom/transform/Affine3D;->mzy:D

    .line 241
    move-object v8, v1

    move-wide v9, v6

    iput-wide v9, v8, Lcom/sun/javafx/geom/transform/Affine3D;->mzz:D

    .line 242
    move-object v8, v1

    const-wide/16 v9, 0x0

    iput-wide v9, v8, Lcom/sun/javafx/geom/transform/Affine3D;->mzt:D

    .line 244
    move-wide v8, v6

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpl-double v8, v8, v10

    if-nez v8, :cond_1

    .line 245
    move-wide v8, v2

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpl-double v8, v8, v10

    if-nez v8, :cond_0

    move-wide v8, v4

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpl-double v8, v8, v10

    if-nez v8, :cond_0

    .line 246
    move-object v8, v1

    const/4 v9, 0x0

    iput v9, v8, Lcom/sun/javafx/geom/transform/Affine3D;->state:I

    .line 247
    move-object v8, v1

    const/4 v9, 0x0

    iput v9, v8, Lcom/sun/javafx/geom/transform/Affine3D;->type:I

    .line 261
    :goto_0
    return-void

    .line 249
    :cond_0
    move-object v8, v1

    const/4 v9, 0x2

    iput v9, v8, Lcom/sun/javafx/geom/transform/Affine3D;->state:I

    .line 250
    move-object v8, v1

    const/4 v9, -0x1

    iput v9, v8, Lcom/sun/javafx/geom/transform/Affine3D;->type:I

    goto :goto_0

    .line 253
    :cond_1
    move-wide v8, v2

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpl-double v8, v8, v10

    if-nez v8, :cond_2

    move-wide v8, v4

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpl-double v8, v8, v10

    if-nez v8, :cond_2

    .line 254
    move-object v8, v1

    const/16 v9, 0x8

    iput v9, v8, Lcom/sun/javafx/geom/transform/Affine3D;->state:I

    .line 255
    move-object v8, v1

    const/16 v9, 0x80

    iput v9, v8, Lcom/sun/javafx/geom/transform/Affine3D;->type:I

    goto :goto_0

    .line 257
    :cond_2
    move-object v8, v1

    const/16 v9, 0xa

    iput v9, v8, Lcom/sun/javafx/geom/transform/Affine3D;->state:I

    .line 258
    move-object v8, v1

    const/4 v9, -0x1

    iput v9, v8, Lcom/sun/javafx/geom/transform/Affine3D;->type:I

    goto :goto_0
.end method

.method public setToTranslation(DDD)V
    .locals 13

    .prologue
    .line 194
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/Affine3D;
    move-wide v2, p1

    .local v2, "tx":D
    move-wide/from16 v4, p3

    .local v4, "ty":D
    move-wide/from16 v6, p5

    .local v6, "tz":D
    move-object v8, v1

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    iput-wide v9, v8, Lcom/sun/javafx/geom/transform/Affine3D;->mxx:D

    .line 195
    move-object v8, v1

    const-wide/16 v9, 0x0

    iput-wide v9, v8, Lcom/sun/javafx/geom/transform/Affine3D;->mxy:D

    .line 196
    move-object v8, v1

    const-wide/16 v9, 0x0

    iput-wide v9, v8, Lcom/sun/javafx/geom/transform/Affine3D;->mxz:D

    .line 197
    move-object v8, v1

    move-wide v9, v2

    iput-wide v9, v8, Lcom/sun/javafx/geom/transform/Affine3D;->mxt:D

    .line 199
    move-object v8, v1

    const-wide/16 v9, 0x0

    iput-wide v9, v8, Lcom/sun/javafx/geom/transform/Affine3D;->myx:D

    .line 200
    move-object v8, v1

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    iput-wide v9, v8, Lcom/sun/javafx/geom/transform/Affine3D;->myy:D

    .line 201
    move-object v8, v1

    const-wide/16 v9, 0x0

    iput-wide v9, v8, Lcom/sun/javafx/geom/transform/Affine3D;->myz:D

    .line 202
    move-object v8, v1

    move-wide v9, v4

    iput-wide v9, v8, Lcom/sun/javafx/geom/transform/Affine3D;->myt:D

    .line 204
    move-object v8, v1

    const-wide/16 v9, 0x0

    iput-wide v9, v8, Lcom/sun/javafx/geom/transform/Affine3D;->mzx:D

    .line 205
    move-object v8, v1

    const-wide/16 v9, 0x0

    iput-wide v9, v8, Lcom/sun/javafx/geom/transform/Affine3D;->mzy:D

    .line 206
    move-object v8, v1

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    iput-wide v9, v8, Lcom/sun/javafx/geom/transform/Affine3D;->mzz:D

    .line 207
    move-object v8, v1

    move-wide v9, v6

    iput-wide v9, v8, Lcom/sun/javafx/geom/transform/Affine3D;->mzt:D

    .line 209
    move-wide v8, v6

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-nez v8, :cond_1

    .line 210
    move-wide v8, v2

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-nez v8, :cond_0

    move-wide v8, v4

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-nez v8, :cond_0

    .line 211
    move-object v8, v1

    const/4 v9, 0x0

    iput v9, v8, Lcom/sun/javafx/geom/transform/Affine3D;->state:I

    .line 212
    move-object v8, v1

    const/4 v9, 0x0

    iput v9, v8, Lcom/sun/javafx/geom/transform/Affine3D;->type:I

    .line 226
    :goto_0
    return-void

    .line 214
    :cond_0
    move-object v8, v1

    const/4 v9, 0x1

    iput v9, v8, Lcom/sun/javafx/geom/transform/Affine3D;->state:I

    .line 215
    move-object v8, v1

    const/4 v9, 0x1

    iput v9, v8, Lcom/sun/javafx/geom/transform/Affine3D;->type:I

    goto :goto_0

    .line 218
    :cond_1
    move-wide v8, v2

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-nez v8, :cond_2

    move-wide v8, v4

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-nez v8, :cond_2

    .line 219
    move-object v8, v1

    const/16 v9, 0x8

    iput v9, v8, Lcom/sun/javafx/geom/transform/Affine3D;->state:I

    .line 220
    move-object v8, v1

    const/16 v9, 0x80

    iput v9, v8, Lcom/sun/javafx/geom/transform/Affine3D;->type:I

    goto :goto_0

    .line 222
    :cond_2
    move-object v8, v1

    const/16 v9, 0x9

    iput v9, v8, Lcom/sun/javafx/geom/transform/Affine3D;->state:I

    .line 223
    move-object v8, v1

    const/16 v9, 0x81

    iput v9, v8, Lcom/sun/javafx/geom/transform/Affine3D;->type:I

    goto :goto_0
.end method

.method public setTransform(DDDDDDDDDDDD)V
    .locals 31

    .prologue
    .line 175
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/geom/transform/Affine3D;
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
    move-object/from16 v28, v3

    move-wide/from16 v29, v4

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mxx:D

    .line 176
    move-object/from16 v28, v3

    move-wide/from16 v29, v6

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mxy:D

    .line 177
    move-object/from16 v28, v3

    move-wide/from16 v29, v8

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mxz:D

    .line 178
    move-object/from16 v28, v3

    move-wide/from16 v29, v10

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mxt:D

    .line 180
    move-object/from16 v28, v3

    move-wide/from16 v29, v12

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->myx:D

    .line 181
    move-object/from16 v28, v3

    move-wide/from16 v29, v14

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->myy:D

    .line 182
    move-object/from16 v28, v3

    move-wide/from16 v29, v16

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->myz:D

    .line 183
    move-object/from16 v28, v3

    move-wide/from16 v29, v18

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->myt:D

    .line 185
    move-object/from16 v28, v3

    move-wide/from16 v29, v20

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mzx:D

    .line 186
    move-object/from16 v28, v3

    move-wide/from16 v29, v22

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mzy:D

    .line 187
    move-object/from16 v28, v3

    move-wide/from16 v29, v24

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mzz:D

    .line 188
    move-object/from16 v28, v3

    move-wide/from16 v29, v26

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mzt:D

    .line 190
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/geom/transform/Affine3D;->updateState()V

    .line 191
    return-void
.end method

.method public setTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)V
    .locals 6

    .prologue
    .line 156
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/Affine3D;
    move-object v2, p1

    .local v2, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxx()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/sun/javafx/geom/transform/Affine3D;->mxx:D

    .line 157
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxy()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/sun/javafx/geom/transform/Affine3D;->mxy:D

    .line 158
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxz()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/sun/javafx/geom/transform/Affine3D;->mxz:D

    .line 159
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxt()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/sun/javafx/geom/transform/Affine3D;->mxt:D

    .line 160
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyx()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/sun/javafx/geom/transform/Affine3D;->myx:D

    .line 161
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyy()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/sun/javafx/geom/transform/Affine3D;->myy:D

    .line 162
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyz()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/sun/javafx/geom/transform/Affine3D;->myz:D

    .line 163
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyt()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/sun/javafx/geom/transform/Affine3D;->myt:D

    .line 164
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzx()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/sun/javafx/geom/transform/Affine3D;->mzx:D

    .line 165
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzy()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/sun/javafx/geom/transform/Affine3D;->mzy:D

    .line 166
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzz()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/sun/javafx/geom/transform/Affine3D;->mzz:D

    .line 167
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzt()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/sun/javafx/geom/transform/Affine3D;->mzt:D

    .line 168
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/geom/transform/Affine3D;->updateState()V

    .line 169
    return-void
.end method

.method public shear(DD)V
    .locals 27

    .prologue
    .line 805
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/geom/transform/Affine3D;
    move-wide/from16 v4, p1

    .local v4, "shx":D
    move-wide/from16 v6, p3

    .local v6, "shy":D
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->state:I

    move/from16 v20, v0

    const/16 v21, 0x8

    and-int/lit8 v20, v20, 0x8

    if-nez v20, :cond_0

    .line 806
    move-object/from16 v20, v3

    move-wide/from16 v21, v4

    move-wide/from16 v23, v6

    invoke-super/range {v20 .. v24}, Lcom/sun/javafx/geom/transform/AffineBase;->shear(DD)V

    .line 807
    .line 822
    :goto_0
    return-void

    .line 809
    :cond_0
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mxx:D

    move-wide/from16 v20, v0

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mxy:D

    move-wide/from16 v22, v0

    move-wide/from16 v24, v6

    mul-double v22, v22, v24

    add-double v20, v20, v22

    move-wide/from16 v8, v20

    .line 810
    .local v8, "rxx":D
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mxy:D

    move-wide/from16 v20, v0

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mxx:D

    move-wide/from16 v22, v0

    move-wide/from16 v24, v4

    mul-double v22, v22, v24

    add-double v20, v20, v22

    move-wide/from16 v10, v20

    .line 811
    .local v10, "rxy":D
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->myx:D

    move-wide/from16 v20, v0

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->myy:D

    move-wide/from16 v22, v0

    move-wide/from16 v24, v6

    mul-double v22, v22, v24

    add-double v20, v20, v22

    move-wide/from16 v12, v20

    .line 812
    .local v12, "ryx":D
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->myy:D

    move-wide/from16 v20, v0

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->myx:D

    move-wide/from16 v22, v0

    move-wide/from16 v24, v4

    mul-double v22, v22, v24

    add-double v20, v20, v22

    move-wide/from16 v14, v20

    .line 813
    .local v14, "ryy":D
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mzx:D

    move-wide/from16 v20, v0

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mzy:D

    move-wide/from16 v22, v0

    move-wide/from16 v24, v6

    mul-double v22, v22, v24

    add-double v20, v20, v22

    move-wide/from16 v16, v20

    .line 814
    .local v16, "rzx":D
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mzy:D

    move-wide/from16 v20, v0

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine3D;->mzx:D

    move-wide/from16 v22, v0

    move-wide/from16 v24, v4

    mul-double v22, v22, v24

    add-double v20, v20, v22

    move-wide/from16 v18, v20

    .line 815
    .local v18, "rzy":D
    move-object/from16 v20, v3

    move-wide/from16 v21, v8

    move-wide/from16 v0, v21

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mxx:D

    .line 816
    move-object/from16 v20, v3

    move-wide/from16 v21, v10

    move-wide/from16 v0, v21

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mxy:D

    .line 817
    move-object/from16 v20, v3

    move-wide/from16 v21, v12

    move-wide/from16 v0, v21

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->myx:D

    .line 818
    move-object/from16 v20, v3

    move-wide/from16 v21, v14

    move-wide/from16 v0, v21

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->myy:D

    .line 819
    move-object/from16 v20, v3

    move-wide/from16 v21, v16

    move-wide/from16 v0, v21

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mzx:D

    .line 820
    move-object/from16 v20, v3

    move-wide/from16 v21, v18

    move-wide/from16 v0, v21

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mzy:D

    .line 821
    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/transform/Affine3D;->updateState()V

    .line 822
    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1142
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Affine3D;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Affine3D[["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mxx:D

    .line 1143
    invoke-static {v2, v3}, Lcom/sun/javafx/geom/transform/Affine3D;->_matround(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mxy:D

    .line 1144
    invoke-static {v2, v3}, Lcom/sun/javafx/geom/transform/Affine3D;->_matround(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mxz:D

    .line 1145
    invoke-static {v2, v3}, Lcom/sun/javafx/geom/transform/Affine3D;->_matround(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mxt:D

    .line 1146
    invoke-static {v2, v3}, Lcom/sun/javafx/geom/transform/Affine3D;->_matround(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/javafx/geom/transform/Affine3D;->myx:D

    .line 1147
    invoke-static {v2, v3}, Lcom/sun/javafx/geom/transform/Affine3D;->_matround(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/javafx/geom/transform/Affine3D;->myy:D

    .line 1148
    invoke-static {v2, v3}, Lcom/sun/javafx/geom/transform/Affine3D;->_matround(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/javafx/geom/transform/Affine3D;->myz:D

    .line 1149
    invoke-static {v2, v3}, Lcom/sun/javafx/geom/transform/Affine3D;->_matround(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/javafx/geom/transform/Affine3D;->myt:D

    .line 1150
    invoke-static {v2, v3}, Lcom/sun/javafx/geom/transform/Affine3D;->_matround(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mzx:D

    .line 1151
    invoke-static {v2, v3}, Lcom/sun/javafx/geom/transform/Affine3D;->_matround(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mzy:D

    .line 1152
    invoke-static {v2, v3}, Lcom/sun/javafx/geom/transform/Affine3D;->_matround(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mzz:D

    .line 1153
    invoke-static {v2, v3}, Lcom/sun/javafx/geom/transform/Affine3D;->_matround(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mzt:D

    .line 1154
    invoke-static {v2, v3}, Lcom/sun/javafx/geom/transform/Affine3D;->_matround(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Affine3D;
    return-object v0
.end method

.method public transform(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 15

    .prologue
    .line 314
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Affine3D;
    move-object/from16 v1, p1

    .local v1, "src":Lcom/sun/javafx/geom/BaseBounds;
    move-object/from16 v2, p2

    .local v2, "dst":Lcom/sun/javafx/geom/BaseBounds;
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/transform/Affine3D;->state:I

    const/16 v5, 0x8

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_0

    .line 315
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Lcom/sun/javafx/geom/transform/AffineBase;->transform(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v4

    move-object v14, v4

    move-object v4, v14

    move-object v5, v14

    move-object v2, v5

    move-object v0, v4

    .line 366
    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Affine3D;
    :goto_0
    return-object v0

    .line 318
    .restart local v0    # "this":Lcom/sun/javafx/geom/transform/Affine3D;
    :cond_0
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/transform/Affine3D;->state:I

    packed-switch v4, :pswitch_data_0

    .line 329
    new-instance v4, Lcom/sun/javafx/geom/Vec3d;

    move-object v14, v4

    move-object v4, v14

    move-object v5, v14

    invoke-direct {v5}, Lcom/sun/javafx/geom/Vec3d;-><init>()V

    move-object v3, v4

    .line 330
    .local v3, "tempV3d":Lcom/sun/javafx/geom/Vec3d;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-static {v4, v5, v6, v7}, Lcom/sun/javafx/geom/transform/TransformHelper;->general3dBoundsTransform(Lcom/sun/javafx/geom/transform/CanTransformVec3d;Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/Vec3d;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v4

    move-object v2, v4

    .line 366
    .end local v3    # "tempV3d":Lcom/sun/javafx/geom/Vec3d;
    :cond_1
    :goto_1
    move-object v4, v2

    move-object v0, v4

    goto :goto_0

    .line 333
    :pswitch_0
    move-object v4, v2

    move-object v5, v1

    .line 334
    invoke-virtual {v5}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v5

    float-to-double v5, v5

    move-object v7, v0

    iget-wide v7, v7, Lcom/sun/javafx/geom/transform/Affine3D;->mxx:D

    mul-double/2addr v5, v7

    move-object v7, v0

    iget-wide v7, v7, Lcom/sun/javafx/geom/transform/Affine3D;->mxt:D

    add-double/2addr v5, v7

    double-to-float v5, v5

    move-object v6, v1

    .line 335
    invoke-virtual {v6}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v6

    float-to-double v6, v6

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/geom/transform/Affine3D;->myy:D

    mul-double/2addr v6, v8

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/geom/transform/Affine3D;->myt:D

    add-double/2addr v6, v8

    double-to-float v6, v6

    move-object v7, v1

    .line 336
    invoke-virtual {v7}, Lcom/sun/javafx/geom/BaseBounds;->getMinZ()F

    move-result v7

    float-to-double v7, v7

    move-object v9, v0

    iget-wide v9, v9, Lcom/sun/javafx/geom/transform/Affine3D;->mzz:D

    mul-double/2addr v7, v9

    move-object v9, v0

    iget-wide v9, v9, Lcom/sun/javafx/geom/transform/Affine3D;->mzt:D

    add-double/2addr v7, v9

    double-to-float v7, v7

    move-object v8, v1

    .line 337
    invoke-virtual {v8}, Lcom/sun/javafx/geom/BaseBounds;->getMaxX()F

    move-result v8

    float-to-double v8, v8

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/geom/transform/Affine3D;->mxx:D

    mul-double/2addr v8, v10

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/geom/transform/Affine3D;->mxt:D

    add-double/2addr v8, v10

    double-to-float v8, v8

    move-object v9, v1

    .line 338
    invoke-virtual {v9}, Lcom/sun/javafx/geom/BaseBounds;->getMaxY()F

    move-result v9

    float-to-double v9, v9

    move-object v11, v0

    iget-wide v11, v11, Lcom/sun/javafx/geom/transform/Affine3D;->myy:D

    mul-double/2addr v9, v11

    move-object v11, v0

    iget-wide v11, v11, Lcom/sun/javafx/geom/transform/Affine3D;->myt:D

    add-double/2addr v9, v11

    double-to-float v9, v9

    move-object v10, v1

    .line 339
    invoke-virtual {v10}, Lcom/sun/javafx/geom/BaseBounds;->getMaxZ()F

    move-result v10

    float-to-double v10, v10

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/Affine3D;->mzz:D

    mul-double/2addr v10, v12

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/Affine3D;->mzt:D

    add-double/2addr v10, v12

    double-to-float v10, v10

    .line 333
    invoke-virtual/range {v4 .. v10}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithNewBoundsAndSort(FFFFFF)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v4

    move-object v2, v4

    .line 340
    goto :goto_1

    .line 342
    :pswitch_1
    move-object v4, v2

    move-object v5, v1

    .line 343
    invoke-virtual {v5}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v5

    float-to-double v5, v5

    move-object v7, v0

    iget-wide v7, v7, Lcom/sun/javafx/geom/transform/Affine3D;->mxx:D

    mul-double/2addr v5, v7

    double-to-float v5, v5

    move-object v6, v1

    .line 344
    invoke-virtual {v6}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v6

    float-to-double v6, v6

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/geom/transform/Affine3D;->myy:D

    mul-double/2addr v6, v8

    double-to-float v6, v6

    move-object v7, v1

    .line 345
    invoke-virtual {v7}, Lcom/sun/javafx/geom/BaseBounds;->getMinZ()F

    move-result v7

    float-to-double v7, v7

    move-object v9, v0

    iget-wide v9, v9, Lcom/sun/javafx/geom/transform/Affine3D;->mzz:D

    mul-double/2addr v7, v9

    double-to-float v7, v7

    move-object v8, v1

    .line 346
    invoke-virtual {v8}, Lcom/sun/javafx/geom/BaseBounds;->getMaxX()F

    move-result v8

    float-to-double v8, v8

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/geom/transform/Affine3D;->mxx:D

    mul-double/2addr v8, v10

    double-to-float v8, v8

    move-object v9, v1

    .line 347
    invoke-virtual {v9}, Lcom/sun/javafx/geom/BaseBounds;->getMaxY()F

    move-result v9

    float-to-double v9, v9

    move-object v11, v0

    iget-wide v11, v11, Lcom/sun/javafx/geom/transform/Affine3D;->myy:D

    mul-double/2addr v9, v11

    double-to-float v9, v9

    move-object v10, v1

    .line 348
    invoke-virtual {v10}, Lcom/sun/javafx/geom/BaseBounds;->getMaxZ()F

    move-result v10

    float-to-double v10, v10

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/Affine3D;->mzz:D

    mul-double/2addr v10, v12

    double-to-float v10, v10

    .line 342
    invoke-virtual/range {v4 .. v10}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithNewBoundsAndSort(FFFFFF)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v4

    move-object v2, v4

    .line 349
    goto/16 :goto_1

    .line 351
    :pswitch_2
    move-object v4, v2

    move-object v5, v1

    .line 352
    invoke-virtual {v5}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v5

    float-to-double v5, v5

    move-object v7, v0

    iget-wide v7, v7, Lcom/sun/javafx/geom/transform/Affine3D;->mxt:D

    add-double/2addr v5, v7

    double-to-float v5, v5

    move-object v6, v1

    .line 353
    invoke-virtual {v6}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v6

    float-to-double v6, v6

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/geom/transform/Affine3D;->myt:D

    add-double/2addr v6, v8

    double-to-float v6, v6

    move-object v7, v1

    .line 354
    invoke-virtual {v7}, Lcom/sun/javafx/geom/BaseBounds;->getMinZ()F

    move-result v7

    float-to-double v7, v7

    move-object v9, v0

    iget-wide v9, v9, Lcom/sun/javafx/geom/transform/Affine3D;->mzt:D

    add-double/2addr v7, v9

    double-to-float v7, v7

    move-object v8, v1

    .line 355
    invoke-virtual {v8}, Lcom/sun/javafx/geom/BaseBounds;->getMaxX()F

    move-result v8

    float-to-double v8, v8

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/geom/transform/Affine3D;->mxt:D

    add-double/2addr v8, v10

    double-to-float v8, v8

    move-object v9, v1

    .line 356
    invoke-virtual {v9}, Lcom/sun/javafx/geom/BaseBounds;->getMaxY()F

    move-result v9

    float-to-double v9, v9

    move-object v11, v0

    iget-wide v11, v11, Lcom/sun/javafx/geom/transform/Affine3D;->myt:D

    add-double/2addr v9, v11

    double-to-float v9, v9

    move-object v10, v1

    .line 357
    invoke-virtual {v10}, Lcom/sun/javafx/geom/BaseBounds;->getMaxZ()F

    move-result v10

    float-to-double v10, v10

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/Affine3D;->mzt:D

    add-double/2addr v10, v12

    double-to-float v10, v10

    .line 351
    invoke-virtual/range {v4 .. v10}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithNewBounds(FFFFFF)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v4

    move-object v2, v4

    .line 358
    goto/16 :goto_1

    .line 360
    :pswitch_3
    move-object v4, v1

    move-object v5, v2

    if-eq v4, v5, :cond_1

    .line 361
    move-object v4, v2

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithNewBounds(Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v4

    move-object v2, v4

    goto/16 :goto_1

    .line 318
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public transform(Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Vec3d;)Lcom/sun/javafx/geom/Vec3d;
    .locals 17

    .prologue
    .line 372
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Affine3D;
    move-object/from16 v1, p1

    .local v1, "src":Lcom/sun/javafx/geom/Vec3d;
    move-object/from16 v2, p2

    .local v2, "dst":Lcom/sun/javafx/geom/Vec3d;
    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/geom/transform/Affine3D;->state:I

    const/16 v10, 0x8

    and-int/lit8 v9, v9, 0x8

    if-nez v9, :cond_0

    .line 373
    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    invoke-super {v9, v10, v11}, Lcom/sun/javafx/geom/transform/AffineBase;->transform(Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Vec3d;)Lcom/sun/javafx/geom/Vec3d;

    move-result-object v9

    move-object v0, v9

    .line 384
    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Affine3D;
    :goto_0
    return-object v0

    .line 375
    .restart local v0    # "this":Lcom/sun/javafx/geom/transform/Affine3D;
    :cond_0
    move-object v9, v2

    if-nez v9, :cond_1

    .line 376
    new-instance v9, Lcom/sun/javafx/geom/Vec3d;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    invoke-direct {v10}, Lcom/sun/javafx/geom/Vec3d;-><init>()V

    move-object v2, v9

    .line 378
    :cond_1
    move-object v9, v1

    iget-wide v9, v9, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide v3, v9

    .line 379
    .local v3, "x":D
    move-object v9, v1

    iget-wide v9, v9, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide v5, v9

    .line 380
    .local v5, "y":D
    move-object v9, v1

    iget-wide v9, v9, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide v7, v9

    .line 381
    .local v7, "z":D
    move-object v9, v2

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/geom/transform/Affine3D;->mxx:D

    move-wide v12, v3

    mul-double/2addr v10, v12

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/Affine3D;->mxy:D

    move-wide v14, v5

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/Affine3D;->mxz:D

    move-wide v14, v7

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/Affine3D;->mxt:D

    add-double/2addr v10, v12

    iput-wide v10, v9, Lcom/sun/javafx/geom/Vec3d;->x:D

    .line 382
    move-object v9, v2

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/geom/transform/Affine3D;->myx:D

    move-wide v12, v3

    mul-double/2addr v10, v12

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/Affine3D;->myy:D

    move-wide v14, v5

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/Affine3D;->myz:D

    move-wide v14, v7

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/Affine3D;->myt:D

    add-double/2addr v10, v12

    iput-wide v10, v9, Lcom/sun/javafx/geom/Vec3d;->y:D

    .line 383
    move-object v9, v2

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/geom/transform/Affine3D;->mzx:D

    move-wide v12, v3

    mul-double/2addr v10, v12

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/Affine3D;->mzy:D

    move-wide v14, v5

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/Affine3D;->mzz:D

    move-wide v14, v7

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/Affine3D;->mzt:D

    add-double/2addr v10, v12

    iput-wide v10, v9, Lcom/sun/javafx/geom/Vec3d;->z:D

    .line 384
    move-object v9, v2

    move-object v0, v9

    goto :goto_0
.end method

.method public translate(DD)V
    .locals 13

    .prologue
    .line 619
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Affine3D;
    move-wide v1, p1

    .local v1, "tx":D
    move-wide/from16 v3, p3

    .local v3, "ty":D
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/transform/Affine3D;->state:I

    const/16 v6, 0x8

    and-int/lit8 v5, v5, 0x8

    if-nez v5, :cond_0

    .line 620
    move-object v5, v0

    move-wide v6, v1

    move-wide v8, v3

    invoke-super {v5, v6, v7, v8, v9}, Lcom/sun/javafx/geom/transform/AffineBase;->translate(DD)V

    .line 624
    :goto_0
    return-void

    .line 622
    :cond_0
    move-object v5, v0

    move-wide v6, v1

    move-wide v8, v3

    const-wide/16 v10, 0x0

    invoke-virtual/range {v5 .. v11}, Lcom/sun/javafx/geom/transform/Affine3D;->translate(DDD)V

    goto :goto_0
.end method

.method public translate(DDD)V
    .locals 15

    .prologue
    .line 627
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Affine3D;
    move-wide/from16 v1, p1

    .local v1, "tx":D
    move-wide/from16 v3, p3

    .local v3, "ty":D
    move-wide/from16 v5, p5

    .local v5, "tz":D
    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/geom/transform/Affine3D;->state:I

    const/16 v8, 0x8

    and-int/lit8 v7, v7, 0x8

    if-nez v7, :cond_1

    .line 628
    move-object v7, v0

    move-wide v8, v1

    move-wide v10, v3

    invoke-super {v7, v8, v9, v10, v11}, Lcom/sun/javafx/geom/transform/AffineBase;->translate(DD)V

    .line 629
    move-wide v7, v5

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-eqz v7, :cond_0

    .line 630
    move-object v7, v0

    move-wide v8, v5

    iput-wide v8, v7, Lcom/sun/javafx/geom/transform/Affine3D;->mzt:D

    .line 631
    move-object v7, v0

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    iget v8, v8, Lcom/sun/javafx/geom/transform/Affine3D;->state:I

    const/16 v9, 0x8

    or-int/lit8 v8, v8, 0x8

    iput v8, v7, Lcom/sun/javafx/geom/transform/Affine3D;->state:I

    .line 632
    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/geom/transform/Affine3D;->type:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 633
    move-object v7, v0

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    iget v8, v8, Lcom/sun/javafx/geom/transform/Affine3D;->type:I

    const/16 v9, 0x80

    or-int/lit16 v8, v8, 0x80

    iput v8, v7, Lcom/sun/javafx/geom/transform/Affine3D;->type:I

    .line 636
    .line 642
    :cond_0
    :goto_0
    return-void

    .line 638
    :cond_1
    move-object v7, v0

    move-wide v8, v1

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/geom/transform/Affine3D;->mxx:D

    mul-double/2addr v8, v10

    move-wide v10, v3

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/Affine3D;->mxy:D

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    move-wide v10, v5

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/Affine3D;->mxz:D

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/geom/transform/Affine3D;->mxt:D

    add-double/2addr v8, v10

    iput-wide v8, v7, Lcom/sun/javafx/geom/transform/Affine3D;->mxt:D

    .line 639
    move-object v7, v0

    move-wide v8, v1

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/geom/transform/Affine3D;->myx:D

    mul-double/2addr v8, v10

    move-wide v10, v3

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/Affine3D;->myy:D

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    move-wide v10, v5

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/Affine3D;->myz:D

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/geom/transform/Affine3D;->myt:D

    add-double/2addr v8, v10

    iput-wide v8, v7, Lcom/sun/javafx/geom/transform/Affine3D;->myt:D

    .line 640
    move-object v7, v0

    move-wide v8, v1

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/geom/transform/Affine3D;->mzx:D

    mul-double/2addr v8, v10

    move-wide v10, v3

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/Affine3D;->mzy:D

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    move-wide v10, v5

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/Affine3D;->mzz:D

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/geom/transform/Affine3D;->mzt:D

    add-double/2addr v8, v10

    iput-wide v8, v7, Lcom/sun/javafx/geom/transform/Affine3D;->mzt:D

    .line 641
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/geom/transform/Affine3D;->updateState()V

    .line 642
    goto :goto_0
.end method

.method protected updateState()V
    .locals 6

    .prologue
    .line 120
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/Affine3D;
    move-object v2, v1

    invoke-super {v2}, Lcom/sun/javafx/geom/transform/AffineBase;->updateState()V

    .line 121
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mxz:D

    invoke-static {v2, v3}, Lcom/sun/javafx/geom/transform/Affine3D;->almostZero(D)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/geom/transform/Affine3D;->myz:D

    .line 122
    invoke-static {v2, v3}, Lcom/sun/javafx/geom/transform/Affine3D;->almostZero(D)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mzx:D

    .line 123
    invoke-static {v2, v3}, Lcom/sun/javafx/geom/transform/Affine3D;->almostZero(D)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mzy:D

    .line 124
    invoke-static {v2, v3}, Lcom/sun/javafx/geom/transform/Affine3D;->almostZero(D)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mzz:D

    .line 125
    invoke-static {v2, v3}, Lcom/sun/javafx/geom/transform/Affine3D;->almostOne(D)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/geom/transform/Affine3D;->mzt:D

    .line 126
    invoke-static {v2, v3}, Lcom/sun/javafx/geom/transform/Affine3D;->almostZero(D)Z

    move-result v2

    if-nez v2, :cond_1

    .line 128
    :cond_0
    move-object v2, v1

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/sun/javafx/geom/transform/Affine3D;->state:I

    const/16 v4, 0x8

    or-int/lit8 v3, v3, 0x8

    iput v3, v2, Lcom/sun/javafx/geom/transform/Affine3D;->state:I

    .line 129
    move-object v2, v1

    iget v2, v2, Lcom/sun/javafx/geom/transform/Affine3D;->type:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 130
    move-object v2, v1

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/sun/javafx/geom/transform/Affine3D;->type:I

    const/16 v4, 0x80

    or-int/lit16 v3, v3, 0x80

    iput v3, v2, Lcom/sun/javafx/geom/transform/Affine3D;->type:I

    .line 133
    :cond_1
    return-void
.end method
