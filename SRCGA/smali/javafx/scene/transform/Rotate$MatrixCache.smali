.class Ljavafx/scene/transform/Rotate$MatrixCache;
.super Ljava/lang/Object;
.source "Rotate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/transform/Rotate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MatrixCache"
.end annotation


# instance fields
.field is3D:Z

.field mxx:D

.field mxy:D

.field mxz:D

.field myx:D

.field myy:D

.field myz:D

.field mzx:D

.field mzy:D

.field mzz:D

.field tx:D

.field ty:D

.field tz:D

.field valid:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 851
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Rotate$MatrixCache;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 844
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/scene/transform/Rotate$MatrixCache;->valid:Z

    .line 845
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/scene/transform/Rotate$MatrixCache;->is3D:Z

    .line 853
    move-object v1, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, v1, Ljavafx/scene/transform/Rotate$MatrixCache;->mzz:D

    .line 854
    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 3

    .prologue
    .line 934
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Rotate$MatrixCache;
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/scene/transform/Rotate$MatrixCache;->valid:Z

    .line 935
    return-void
.end method

.method public update(DLjavafx/geometry/Point3D;DDD)V
    .locals 36

    .prologue
    .line 859
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/transform/Rotate$MatrixCache;
    move-wide/from16 v4, p1

    .local v4, "angle":D
    move-object/from16 v6, p3

    .local v6, "axis":Ljavafx/geometry/Point3D;
    move-wide/from16 v7, p4

    .local v7, "px":D
    move-wide/from16 v9, p6

    .local v9, "py":D
    move-wide/from16 v11, p8

    .local v11, "pz":D
    move-wide/from16 v27, v4

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v27

    move-wide/from16 v13, v27

    .line 860
    .local v13, "rads":D
    move-wide/from16 v27, v13

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->sin(D)D

    move-result-wide v27

    move-wide/from16 v15, v27

    .line 861
    .local v15, "sin":D
    move-wide/from16 v27, v13

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->cos(D)D

    move-result-wide v27

    move-wide/from16 v17, v27

    .line 863
    .local v17, "cos":D
    move-object/from16 v27, v6

    sget-object v28, Ljavafx/scene/transform/Rotate;->Z_AXIS:Ljavafx/geometry/Point3D;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_0

    move-object/from16 v27, v6

    .line 864
    invoke-virtual/range {v27 .. v27}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v27

    const-wide/16 v29, 0x0

    cmpl-double v27, v27, v29

    if-nez v27, :cond_2

    move-object/from16 v27, v6

    .line 865
    invoke-virtual/range {v27 .. v27}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v27

    const-wide/16 v29, 0x0

    cmpl-double v27, v27, v29

    if-nez v27, :cond_2

    move-object/from16 v27, v6

    .line 866
    invoke-virtual/range {v27 .. v27}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v27

    const-wide/16 v29, 0x0

    cmpl-double v27, v27, v29

    if-lez v27, :cond_2

    .line 868
    :cond_0
    move-object/from16 v27, v3

    move-wide/from16 v28, v17

    move-wide/from16 v0, v28

    move-object/from16 v2, v27

    iput-wide v0, v2, Ljavafx/scene/transform/Rotate$MatrixCache;->mxx:D

    .line 869
    move-object/from16 v27, v3

    move-wide/from16 v28, v15

    move-wide/from16 v0, v28

    neg-double v0, v0

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    move-object/from16 v2, v27

    iput-wide v0, v2, Ljavafx/scene/transform/Rotate$MatrixCache;->mxy:D

    .line 870
    move-object/from16 v27, v3

    move-wide/from16 v28, v7

    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v32, v17

    sub-double v30, v30, v32

    mul-double v28, v28, v30

    move-wide/from16 v30, v9

    move-wide/from16 v32, v15

    mul-double v30, v30, v32

    add-double v28, v28, v30

    move-wide/from16 v0, v28

    move-object/from16 v2, v27

    iput-wide v0, v2, Ljavafx/scene/transform/Rotate$MatrixCache;->tx:D

    .line 871
    move-object/from16 v27, v3

    move-wide/from16 v28, v15

    move-wide/from16 v0, v28

    move-object/from16 v2, v27

    iput-wide v0, v2, Ljavafx/scene/transform/Rotate$MatrixCache;->myx:D

    .line 872
    move-object/from16 v27, v3

    move-wide/from16 v28, v17

    move-wide/from16 v0, v28

    move-object/from16 v2, v27

    iput-wide v0, v2, Ljavafx/scene/transform/Rotate$MatrixCache;->myy:D

    .line 873
    move-object/from16 v27, v3

    move-wide/from16 v28, v9

    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v32, v17

    sub-double v30, v30, v32

    mul-double v28, v28, v30

    move-wide/from16 v30, v7

    move-wide/from16 v32, v15

    mul-double v30, v30, v32

    sub-double v28, v28, v30

    move-wide/from16 v0, v28

    move-object/from16 v2, v27

    iput-wide v0, v2, Ljavafx/scene/transform/Rotate$MatrixCache;->ty:D

    .line 875
    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget-boolean v0, v0, Ljavafx/scene/transform/Rotate$MatrixCache;->is3D:Z

    move/from16 v27, v0

    if-eqz v27, :cond_1

    .line 877
    move-object/from16 v27, v3

    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    move-object/from16 v2, v27

    iput-wide v0, v2, Ljavafx/scene/transform/Rotate$MatrixCache;->mxz:D

    .line 878
    move-object/from16 v27, v3

    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    move-object/from16 v2, v27

    iput-wide v0, v2, Ljavafx/scene/transform/Rotate$MatrixCache;->myz:D

    .line 879
    move-object/from16 v27, v3

    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    move-object/from16 v2, v27

    iput-wide v0, v2, Ljavafx/scene/transform/Rotate$MatrixCache;->mzx:D

    .line 880
    move-object/from16 v27, v3

    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    move-object/from16 v2, v27

    iput-wide v0, v2, Ljavafx/scene/transform/Rotate$MatrixCache;->mzy:D

    .line 881
    move-object/from16 v27, v3

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v0, v28

    move-object/from16 v2, v27

    iput-wide v0, v2, Ljavafx/scene/transform/Rotate$MatrixCache;->mzz:D

    .line 882
    move-object/from16 v27, v3

    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    move-object/from16 v2, v27

    iput-wide v0, v2, Ljavafx/scene/transform/Rotate$MatrixCache;->tz:D

    .line 883
    move-object/from16 v27, v3

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput-boolean v0, v1, Ljavafx/scene/transform/Rotate$MatrixCache;->is3D:Z

    .line 885
    :cond_1
    move-object/from16 v27, v3

    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput-boolean v0, v1, Ljavafx/scene/transform/Rotate$MatrixCache;->valid:Z

    .line 886
    .line 931
    :goto_0
    return-void

    .line 889
    :cond_2
    move-object/from16 v27, v3

    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput-boolean v0, v1, Ljavafx/scene/transform/Rotate$MatrixCache;->is3D:Z

    .line 893
    move-object/from16 v27, v6

    sget-object v28, Ljavafx/scene/transform/Rotate;->X_AXIS:Ljavafx/geometry/Point3D;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_3

    move-object/from16 v27, v6

    sget-object v28, Ljavafx/scene/transform/Rotate;->Y_AXIS:Ljavafx/geometry/Point3D;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_3

    move-object/from16 v27, v6

    sget-object v28, Ljavafx/scene/transform/Rotate;->Z_AXIS:Ljavafx/geometry/Point3D;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_4

    .line 894
    :cond_3
    move-object/from16 v27, v6

    invoke-virtual/range {v27 .. v27}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v27

    move-wide/from16 v19, v27

    .line 895
    .local v19, "axisX":D
    move-object/from16 v27, v6

    invoke-virtual/range {v27 .. v27}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v27

    move-wide/from16 v21, v27

    .line 896
    .local v21, "axisY":D
    move-object/from16 v27, v6

    invoke-virtual/range {v27 .. v27}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v27

    move-wide/from16 v23, v27

    .line 915
    .local v23, "axisZ":D
    :goto_1
    move-object/from16 v27, v3

    move-wide/from16 v28, v17

    move-wide/from16 v30, v19

    move-wide/from16 v32, v19

    mul-double v30, v30, v32

    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v34, v17

    sub-double v32, v32, v34

    mul-double v30, v30, v32

    add-double v28, v28, v30

    move-wide/from16 v0, v28

    move-object/from16 v2, v27

    iput-wide v0, v2, Ljavafx/scene/transform/Rotate$MatrixCache;->mxx:D

    .line 916
    move-object/from16 v27, v3

    move-wide/from16 v28, v19

    move-wide/from16 v30, v21

    mul-double v28, v28, v30

    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v32, v17

    sub-double v30, v30, v32

    mul-double v28, v28, v30

    move-wide/from16 v30, v23

    move-wide/from16 v32, v15

    mul-double v30, v30, v32

    sub-double v28, v28, v30

    move-wide/from16 v0, v28

    move-object/from16 v2, v27

    iput-wide v0, v2, Ljavafx/scene/transform/Rotate$MatrixCache;->mxy:D

    .line 917
    move-object/from16 v27, v3

    move-wide/from16 v28, v19

    move-wide/from16 v30, v23

    mul-double v28, v28, v30

    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v32, v17

    sub-double v30, v30, v32

    mul-double v28, v28, v30

    move-wide/from16 v30, v21

    move-wide/from16 v32, v15

    mul-double v30, v30, v32

    add-double v28, v28, v30

    move-wide/from16 v0, v28

    move-object/from16 v2, v27

    iput-wide v0, v2, Ljavafx/scene/transform/Rotate$MatrixCache;->mxz:D

    .line 918
    move-object/from16 v27, v3

    move-wide/from16 v28, v7

    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    move-object/from16 v32, v3

    move-object/from16 v0, v32

    iget-wide v0, v0, Ljavafx/scene/transform/Rotate$MatrixCache;->mxx:D

    move-wide/from16 v32, v0

    sub-double v30, v30, v32

    mul-double v28, v28, v30

    move-wide/from16 v30, v9

    move-object/from16 v32, v3

    move-object/from16 v0, v32

    iget-wide v0, v0, Ljavafx/scene/transform/Rotate$MatrixCache;->mxy:D

    move-wide/from16 v32, v0

    mul-double v30, v30, v32

    sub-double v28, v28, v30

    move-wide/from16 v30, v11

    move-object/from16 v32, v3

    move-object/from16 v0, v32

    iget-wide v0, v0, Ljavafx/scene/transform/Rotate$MatrixCache;->mxz:D

    move-wide/from16 v32, v0

    mul-double v30, v30, v32

    sub-double v28, v28, v30

    move-wide/from16 v0, v28

    move-object/from16 v2, v27

    iput-wide v0, v2, Ljavafx/scene/transform/Rotate$MatrixCache;->tx:D

    .line 920
    move-object/from16 v27, v3

    move-wide/from16 v28, v21

    move-wide/from16 v30, v19

    mul-double v28, v28, v30

    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v32, v17

    sub-double v30, v30, v32

    mul-double v28, v28, v30

    move-wide/from16 v30, v23

    move-wide/from16 v32, v15

    mul-double v30, v30, v32

    add-double v28, v28, v30

    move-wide/from16 v0, v28

    move-object/from16 v2, v27

    iput-wide v0, v2, Ljavafx/scene/transform/Rotate$MatrixCache;->myx:D

    .line 921
    move-object/from16 v27, v3

    move-wide/from16 v28, v17

    move-wide/from16 v30, v21

    move-wide/from16 v32, v21

    mul-double v30, v30, v32

    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v34, v17

    sub-double v32, v32, v34

    mul-double v30, v30, v32

    add-double v28, v28, v30

    move-wide/from16 v0, v28

    move-object/from16 v2, v27

    iput-wide v0, v2, Ljavafx/scene/transform/Rotate$MatrixCache;->myy:D

    .line 922
    move-object/from16 v27, v3

    move-wide/from16 v28, v21

    move-wide/from16 v30, v23

    mul-double v28, v28, v30

    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v32, v17

    sub-double v30, v30, v32

    mul-double v28, v28, v30

    move-wide/from16 v30, v19

    move-wide/from16 v32, v15

    mul-double v30, v30, v32

    sub-double v28, v28, v30

    move-wide/from16 v0, v28

    move-object/from16 v2, v27

    iput-wide v0, v2, Ljavafx/scene/transform/Rotate$MatrixCache;->myz:D

    .line 923
    move-object/from16 v27, v3

    move-wide/from16 v28, v9

    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    move-object/from16 v32, v3

    move-object/from16 v0, v32

    iget-wide v0, v0, Ljavafx/scene/transform/Rotate$MatrixCache;->myy:D

    move-wide/from16 v32, v0

    sub-double v30, v30, v32

    mul-double v28, v28, v30

    move-wide/from16 v30, v7

    move-object/from16 v32, v3

    move-object/from16 v0, v32

    iget-wide v0, v0, Ljavafx/scene/transform/Rotate$MatrixCache;->myx:D

    move-wide/from16 v32, v0

    mul-double v30, v30, v32

    sub-double v28, v28, v30

    move-wide/from16 v30, v11

    move-object/from16 v32, v3

    move-object/from16 v0, v32

    iget-wide v0, v0, Ljavafx/scene/transform/Rotate$MatrixCache;->myz:D

    move-wide/from16 v32, v0

    mul-double v30, v30, v32

    sub-double v28, v28, v30

    move-wide/from16 v0, v28

    move-object/from16 v2, v27

    iput-wide v0, v2, Ljavafx/scene/transform/Rotate$MatrixCache;->ty:D

    .line 925
    move-object/from16 v27, v3

    move-wide/from16 v28, v23

    move-wide/from16 v30, v19

    mul-double v28, v28, v30

    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v32, v17

    sub-double v30, v30, v32

    mul-double v28, v28, v30

    move-wide/from16 v30, v21

    move-wide/from16 v32, v15

    mul-double v30, v30, v32

    sub-double v28, v28, v30

    move-wide/from16 v0, v28

    move-object/from16 v2, v27

    iput-wide v0, v2, Ljavafx/scene/transform/Rotate$MatrixCache;->mzx:D

    .line 926
    move-object/from16 v27, v3

    move-wide/from16 v28, v23

    move-wide/from16 v30, v21

    mul-double v28, v28, v30

    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v32, v17

    sub-double v30, v30, v32

    mul-double v28, v28, v30

    move-wide/from16 v30, v19

    move-wide/from16 v32, v15

    mul-double v30, v30, v32

    add-double v28, v28, v30

    move-wide/from16 v0, v28

    move-object/from16 v2, v27

    iput-wide v0, v2, Ljavafx/scene/transform/Rotate$MatrixCache;->mzy:D

    .line 927
    move-object/from16 v27, v3

    move-wide/from16 v28, v17

    move-wide/from16 v30, v23

    move-wide/from16 v32, v23

    mul-double v30, v30, v32

    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v34, v17

    sub-double v32, v32, v34

    mul-double v30, v30, v32

    add-double v28, v28, v30

    move-wide/from16 v0, v28

    move-object/from16 v2, v27

    iput-wide v0, v2, Ljavafx/scene/transform/Rotate$MatrixCache;->mzz:D

    .line 928
    move-object/from16 v27, v3

    move-wide/from16 v28, v11

    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    move-object/from16 v32, v3

    move-object/from16 v0, v32

    iget-wide v0, v0, Ljavafx/scene/transform/Rotate$MatrixCache;->mzz:D

    move-wide/from16 v32, v0

    sub-double v30, v30, v32

    mul-double v28, v28, v30

    move-wide/from16 v30, v7

    move-object/from16 v32, v3

    move-object/from16 v0, v32

    iget-wide v0, v0, Ljavafx/scene/transform/Rotate$MatrixCache;->mzx:D

    move-wide/from16 v32, v0

    mul-double v30, v30, v32

    sub-double v28, v28, v30

    move-wide/from16 v30, v9

    move-object/from16 v32, v3

    move-object/from16 v0, v32

    iget-wide v0, v0, Ljavafx/scene/transform/Rotate$MatrixCache;->mzy:D

    move-wide/from16 v32, v0

    mul-double v30, v30, v32

    sub-double v28, v28, v30

    move-wide/from16 v0, v28

    move-object/from16 v2, v27

    iput-wide v0, v2, Ljavafx/scene/transform/Rotate$MatrixCache;->tz:D

    .line 930
    move-object/from16 v27, v3

    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput-boolean v0, v1, Ljavafx/scene/transform/Rotate$MatrixCache;->valid:Z

    .line 931
    goto/16 :goto_0

    .line 899
    .end local v19    # "axisX":D
    .end local v21    # "axisY":D
    .end local v23    # "axisZ":D
    :cond_4
    move-object/from16 v27, v6

    invoke-virtual/range {v27 .. v27}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v27

    move-object/from16 v29, v6

    invoke-virtual/range {v29 .. v29}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v29

    mul-double v27, v27, v29

    move-object/from16 v29, v6

    .line 900
    invoke-virtual/range {v29 .. v29}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v29

    move-object/from16 v31, v6

    invoke-virtual/range {v31 .. v31}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v31

    mul-double v29, v29, v31

    add-double v27, v27, v29

    move-object/from16 v29, v6

    invoke-virtual/range {v29 .. v29}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v29

    move-object/from16 v31, v6

    invoke-virtual/range {v31 .. v31}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v31

    mul-double v29, v29, v31

    add-double v27, v27, v29

    .line 899
    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v27

    move-wide/from16 v25, v27

    .line 902
    .local v25, "mag":D
    move-wide/from16 v27, v25

    const-wide/16 v29, 0x0

    cmpl-double v27, v27, v29

    if-nez v27, :cond_5

    .line 903
    move-object/from16 v27, v3

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v0, v28

    move-object/from16 v2, v27

    iput-wide v0, v2, Ljavafx/scene/transform/Rotate$MatrixCache;->mxx:D

    move-object/from16 v27, v3

    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    move-object/from16 v2, v27

    iput-wide v0, v2, Ljavafx/scene/transform/Rotate$MatrixCache;->mxy:D

    move-object/from16 v27, v3

    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    move-object/from16 v2, v27

    iput-wide v0, v2, Ljavafx/scene/transform/Rotate$MatrixCache;->mxz:D

    move-object/from16 v27, v3

    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    move-object/from16 v2, v27

    iput-wide v0, v2, Ljavafx/scene/transform/Rotate$MatrixCache;->tx:D

    .line 904
    move-object/from16 v27, v3

    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    move-object/from16 v2, v27

    iput-wide v0, v2, Ljavafx/scene/transform/Rotate$MatrixCache;->myx:D

    move-object/from16 v27, v3

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v0, v28

    move-object/from16 v2, v27

    iput-wide v0, v2, Ljavafx/scene/transform/Rotate$MatrixCache;->myy:D

    move-object/from16 v27, v3

    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    move-object/from16 v2, v27

    iput-wide v0, v2, Ljavafx/scene/transform/Rotate$MatrixCache;->myz:D

    move-object/from16 v27, v3

    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    move-object/from16 v2, v27

    iput-wide v0, v2, Ljavafx/scene/transform/Rotate$MatrixCache;->ty:D

    .line 905
    move-object/from16 v27, v3

    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    move-object/from16 v2, v27

    iput-wide v0, v2, Ljavafx/scene/transform/Rotate$MatrixCache;->mzx:D

    move-object/from16 v27, v3

    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    move-object/from16 v2, v27

    iput-wide v0, v2, Ljavafx/scene/transform/Rotate$MatrixCache;->mzy:D

    move-object/from16 v27, v3

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v0, v28

    move-object/from16 v2, v27

    iput-wide v0, v2, Ljavafx/scene/transform/Rotate$MatrixCache;->mzz:D

    move-object/from16 v27, v3

    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    move-object/from16 v2, v27

    iput-wide v0, v2, Ljavafx/scene/transform/Rotate$MatrixCache;->tz:D

    .line 906
    move-object/from16 v27, v3

    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput-boolean v0, v1, Ljavafx/scene/transform/Rotate$MatrixCache;->valid:Z

    .line 907
    goto/16 :goto_0

    .line 909
    :cond_5
    move-object/from16 v27, v6

    invoke-virtual/range {v27 .. v27}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v27

    move-wide/from16 v29, v25

    div-double v27, v27, v29

    move-wide/from16 v19, v27

    .line 910
    .restart local v19    # "axisX":D
    move-object/from16 v27, v6

    invoke-virtual/range {v27 .. v27}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v27

    move-wide/from16 v29, v25

    div-double v27, v27, v29

    move-wide/from16 v21, v27

    .line 911
    .restart local v21    # "axisY":D
    move-object/from16 v27, v6

    invoke-virtual/range {v27 .. v27}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v27

    move-wide/from16 v29, v25

    div-double v27, v27, v29

    move-wide/from16 v23, v27

    .restart local v23    # "axisZ":D
    goto/16 :goto_1
.end method
