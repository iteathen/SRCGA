.class public final Lcom/sun/javafx/geometry/BoundsUtils;
.super Ljava/lang/Object;
.source "BoundsUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geometry/BoundsUtils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createBoundingBox(Ljavafx/geometry/Point2D;Ljavafx/geometry/Point2D;Ljavafx/geometry/Point2D;Ljavafx/geometry/Point2D;)Ljavafx/geometry/Bounds;
    .locals 25

    .prologue
    .line 104
    move-object/from16 v0, p0

    .local v0, "p1":Ljavafx/geometry/Point2D;
    move-object/from16 v1, p1

    .local v1, "p2":Ljavafx/geometry/Point2D;
    move-object/from16 v2, p2

    .local v2, "p3":Ljavafx/geometry/Point2D;
    move-object/from16 v3, p3

    .local v3, "p4":Ljavafx/geometry/Point2D;
    move-object v12, v0

    if-eqz v12, :cond_0

    move-object v12, v1

    if-eqz v12, :cond_0

    move-object v12, v2

    if-eqz v12, :cond_0

    move-object v12, v3

    if-nez v12, :cond_1

    .line 105
    :cond_0
    const/4 v12, 0x0

    move-object v0, v12

    .line 113
    .end local v0    # "p1":Ljavafx/geometry/Point2D;
    :goto_0
    return-object v0

    .line 108
    .restart local v0    # "p1":Ljavafx/geometry/Point2D;
    :cond_1
    move-object v12, v0

    invoke-virtual {v12}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v12

    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v14

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v16

    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v18

    invoke-static/range {v12 .. v19}, Lcom/sun/javafx/geometry/BoundsUtils;->min4(DDDD)D

    move-result-wide v12

    move-wide v4, v12

    .line 109
    .local v4, "minX":D
    move-object v12, v0

    invoke-virtual {v12}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v12

    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v14

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v16

    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v18

    invoke-static/range {v12 .. v19}, Lcom/sun/javafx/geometry/BoundsUtils;->max4(DDDD)D

    move-result-wide v12

    move-wide v6, v12

    .line 110
    .local v6, "maxX":D
    move-object v12, v0

    invoke-virtual {v12}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v12

    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v14

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v16

    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v18

    invoke-static/range {v12 .. v19}, Lcom/sun/javafx/geometry/BoundsUtils;->min4(DDDD)D

    move-result-wide v12

    move-wide v8, v12

    .line 111
    .local v8, "minY":D
    move-object v12, v0

    invoke-virtual {v12}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v12

    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v14

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v16

    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v18

    invoke-static/range {v12 .. v19}, Lcom/sun/javafx/geometry/BoundsUtils;->max4(DDDD)D

    move-result-wide v12

    move-wide v10, v12

    .line 113
    .local v10, "maxY":D
    new-instance v12, Ljavafx/geometry/BoundingBox;

    move-object/from16 v24, v12

    move-object/from16 v12, v24

    move-object/from16 v13, v24

    move-wide v14, v4

    move-wide/from16 v16, v8

    move-wide/from16 v18, v6

    move-wide/from16 v20, v4

    sub-double v18, v18, v20

    move-wide/from16 v20, v10

    move-wide/from16 v22, v8

    sub-double v20, v20, v22

    invoke-direct/range {v13 .. v21}, Ljavafx/geometry/BoundingBox;-><init>(DDDD)V

    move-object v0, v12

    goto/16 :goto_0
.end method

.method public static createBoundingBox(Ljavafx/geometry/Point2D;Ljavafx/geometry/Point2D;Ljavafx/geometry/Point2D;Ljavafx/geometry/Point2D;Ljavafx/geometry/Point2D;Ljavafx/geometry/Point2D;Ljavafx/geometry/Point2D;Ljavafx/geometry/Point2D;)Ljavafx/geometry/Bounds;
    .locals 33

    .prologue
    .line 58
    move-object/from16 v0, p0

    .local v0, "p1":Ljavafx/geometry/Point2D;
    move-object/from16 v1, p1

    .local v1, "p2":Ljavafx/geometry/Point2D;
    move-object/from16 v2, p2

    .local v2, "p3":Ljavafx/geometry/Point2D;
    move-object/from16 v3, p3

    .local v3, "p4":Ljavafx/geometry/Point2D;
    move-object/from16 v4, p4

    .local v4, "p5":Ljavafx/geometry/Point2D;
    move-object/from16 v5, p5

    .local v5, "p6":Ljavafx/geometry/Point2D;
    move-object/from16 v6, p6

    .local v6, "p7":Ljavafx/geometry/Point2D;
    move-object/from16 v7, p7

    .local v7, "p8":Ljavafx/geometry/Point2D;
    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    move-object/from16 v16, v1

    if-eqz v16, :cond_0

    move-object/from16 v16, v2

    if-eqz v16, :cond_0

    move-object/from16 v16, v3

    if-eqz v16, :cond_0

    move-object/from16 v16, v4

    if-eqz v16, :cond_0

    move-object/from16 v16, v5

    if-eqz v16, :cond_0

    move-object/from16 v16, v6

    if-eqz v16, :cond_0

    move-object/from16 v16, v7

    if-nez v16, :cond_1

    .line 60
    :cond_0
    const/16 v16, 0x0

    move-object/from16 v0, v16

    .line 73
    .end local v0    # "p1":Ljavafx/geometry/Point2D;
    :goto_0
    return-object v0

    .line 63
    .restart local v0    # "p1":Ljavafx/geometry/Point2D;
    :cond_1
    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v16

    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v18

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v20

    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v22

    move-object/from16 v24, v4

    .line 64
    invoke-virtual/range {v24 .. v24}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v24

    move-object/from16 v26, v5

    invoke-virtual/range {v26 .. v26}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v26

    move-object/from16 v28, v6

    invoke-virtual/range {v28 .. v28}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v28

    move-object/from16 v30, v7

    invoke-virtual/range {v30 .. v30}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v30

    .line 63
    invoke-static/range {v16 .. v31}, Lcom/sun/javafx/geometry/BoundsUtils;->min8(DDDDDDDD)D

    move-result-wide v16

    move-wide/from16 v8, v16

    .line 65
    .local v8, "minX":D
    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v16

    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v18

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v20

    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v22

    move-object/from16 v24, v4

    .line 66
    invoke-virtual/range {v24 .. v24}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v24

    move-object/from16 v26, v5

    invoke-virtual/range {v26 .. v26}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v26

    move-object/from16 v28, v6

    invoke-virtual/range {v28 .. v28}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v28

    move-object/from16 v30, v7

    invoke-virtual/range {v30 .. v30}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v30

    .line 65
    invoke-static/range {v16 .. v31}, Lcom/sun/javafx/geometry/BoundsUtils;->max8(DDDDDDDD)D

    move-result-wide v16

    move-wide/from16 v10, v16

    .line 68
    .local v10, "maxX":D
    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v16

    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v18

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v20

    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v22

    move-object/from16 v24, v4

    .line 69
    invoke-virtual/range {v24 .. v24}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v24

    move-object/from16 v26, v5

    invoke-virtual/range {v26 .. v26}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v26

    move-object/from16 v28, v6

    invoke-virtual/range {v28 .. v28}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v28

    move-object/from16 v30, v7

    invoke-virtual/range {v30 .. v30}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v30

    .line 68
    invoke-static/range {v16 .. v31}, Lcom/sun/javafx/geometry/BoundsUtils;->min8(DDDDDDDD)D

    move-result-wide v16

    move-wide/from16 v12, v16

    .line 70
    .local v12, "minY":D
    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v16

    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v18

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v20

    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v22

    move-object/from16 v24, v4

    .line 71
    invoke-virtual/range {v24 .. v24}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v24

    move-object/from16 v26, v5

    invoke-virtual/range {v26 .. v26}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v26

    move-object/from16 v28, v6

    invoke-virtual/range {v28 .. v28}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v28

    move-object/from16 v30, v7

    invoke-virtual/range {v30 .. v30}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v30

    .line 70
    invoke-static/range {v16 .. v31}, Lcom/sun/javafx/geometry/BoundsUtils;->max8(DDDDDDDD)D

    move-result-wide v16

    move-wide/from16 v14, v16

    .line 73
    .local v14, "maxY":D
    new-instance v16, Ljavafx/geometry/BoundingBox;

    move-object/from16 v32, v16

    move-object/from16 v16, v32

    move-object/from16 v17, v32

    move-wide/from16 v18, v8

    move-wide/from16 v20, v12

    move-wide/from16 v22, v10

    move-wide/from16 v24, v8

    sub-double v22, v22, v24

    move-wide/from16 v24, v14

    move-wide/from16 v26, v12

    sub-double v24, v24, v26

    invoke-direct/range {v17 .. v25}, Ljavafx/geometry/BoundingBox;-><init>(DDDD)V

    move-object/from16 v0, v16

    goto/16 :goto_0
.end method

.method public static createBoundingBox(Ljavafx/geometry/Point3D;Ljavafx/geometry/Point3D;Ljavafx/geometry/Point3D;Ljavafx/geometry/Point3D;Ljavafx/geometry/Point3D;Ljavafx/geometry/Point3D;Ljavafx/geometry/Point3D;Ljavafx/geometry/Point3D;)Ljavafx/geometry/Bounds;
    .locals 37

    .prologue
    .line 79
    move-object/from16 v0, p0

    .local v0, "p1":Ljavafx/geometry/Point3D;
    move-object/from16 v1, p1

    .local v1, "p2":Ljavafx/geometry/Point3D;
    move-object/from16 v2, p2

    .local v2, "p3":Ljavafx/geometry/Point3D;
    move-object/from16 v3, p3

    .local v3, "p4":Ljavafx/geometry/Point3D;
    move-object/from16 v4, p4

    .local v4, "p5":Ljavafx/geometry/Point3D;
    move-object/from16 v5, p5

    .local v5, "p6":Ljavafx/geometry/Point3D;
    move-object/from16 v6, p6

    .local v6, "p7":Ljavafx/geometry/Point3D;
    move-object/from16 v7, p7

    .local v7, "p8":Ljavafx/geometry/Point3D;
    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v20, v1

    if-eqz v20, :cond_0

    move-object/from16 v20, v2

    if-eqz v20, :cond_0

    move-object/from16 v20, v3

    if-eqz v20, :cond_0

    move-object/from16 v20, v4

    if-eqz v20, :cond_0

    move-object/from16 v20, v5

    if-eqz v20, :cond_0

    move-object/from16 v20, v6

    if-eqz v20, :cond_0

    move-object/from16 v20, v7

    if-nez v20, :cond_1

    .line 81
    :cond_0
    const/16 v20, 0x0

    move-object/from16 v0, v20

    .line 99
    .end local v0    # "p1":Ljavafx/geometry/Point3D;
    :goto_0
    return-object v0

    .line 84
    .restart local v0    # "p1":Ljavafx/geometry/Point3D;
    :cond_1
    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v20

    move-object/from16 v22, v1

    invoke-virtual/range {v22 .. v22}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v22

    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v24

    move-object/from16 v26, v3

    invoke-virtual/range {v26 .. v26}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v26

    move-object/from16 v28, v4

    .line 85
    invoke-virtual/range {v28 .. v28}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v28

    move-object/from16 v30, v5

    invoke-virtual/range {v30 .. v30}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v30

    move-object/from16 v32, v6

    invoke-virtual/range {v32 .. v32}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v32

    move-object/from16 v34, v7

    invoke-virtual/range {v34 .. v34}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v34

    .line 84
    invoke-static/range {v20 .. v35}, Lcom/sun/javafx/geometry/BoundsUtils;->min8(DDDDDDDD)D

    move-result-wide v20

    move-wide/from16 v8, v20

    .line 86
    .local v8, "minX":D
    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v20

    move-object/from16 v22, v1

    invoke-virtual/range {v22 .. v22}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v22

    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v24

    move-object/from16 v26, v3

    invoke-virtual/range {v26 .. v26}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v26

    move-object/from16 v28, v4

    .line 87
    invoke-virtual/range {v28 .. v28}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v28

    move-object/from16 v30, v5

    invoke-virtual/range {v30 .. v30}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v30

    move-object/from16 v32, v6

    invoke-virtual/range {v32 .. v32}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v32

    move-object/from16 v34, v7

    invoke-virtual/range {v34 .. v34}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v34

    .line 86
    invoke-static/range {v20 .. v35}, Lcom/sun/javafx/geometry/BoundsUtils;->max8(DDDDDDDD)D

    move-result-wide v20

    move-wide/from16 v10, v20

    .line 89
    .local v10, "maxX":D
    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v20

    move-object/from16 v22, v1

    invoke-virtual/range {v22 .. v22}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v22

    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v24

    move-object/from16 v26, v3

    invoke-virtual/range {v26 .. v26}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v26

    move-object/from16 v28, v4

    .line 90
    invoke-virtual/range {v28 .. v28}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v28

    move-object/from16 v30, v5

    invoke-virtual/range {v30 .. v30}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v30

    move-object/from16 v32, v6

    invoke-virtual/range {v32 .. v32}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v32

    move-object/from16 v34, v7

    invoke-virtual/range {v34 .. v34}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v34

    .line 89
    invoke-static/range {v20 .. v35}, Lcom/sun/javafx/geometry/BoundsUtils;->min8(DDDDDDDD)D

    move-result-wide v20

    move-wide/from16 v12, v20

    .line 91
    .local v12, "minY":D
    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v20

    move-object/from16 v22, v1

    invoke-virtual/range {v22 .. v22}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v22

    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v24

    move-object/from16 v26, v3

    invoke-virtual/range {v26 .. v26}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v26

    move-object/from16 v28, v4

    .line 92
    invoke-virtual/range {v28 .. v28}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v28

    move-object/from16 v30, v5

    invoke-virtual/range {v30 .. v30}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v30

    move-object/from16 v32, v6

    invoke-virtual/range {v32 .. v32}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v32

    move-object/from16 v34, v7

    invoke-virtual/range {v34 .. v34}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v34

    .line 91
    invoke-static/range {v20 .. v35}, Lcom/sun/javafx/geometry/BoundsUtils;->max8(DDDDDDDD)D

    move-result-wide v20

    move-wide/from16 v14, v20

    .line 94
    .local v14, "maxY":D
    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v20

    move-object/from16 v22, v1

    invoke-virtual/range {v22 .. v22}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v22

    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v24

    move-object/from16 v26, v3

    invoke-virtual/range {v26 .. v26}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v26

    move-object/from16 v28, v4

    .line 95
    invoke-virtual/range {v28 .. v28}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v28

    move-object/from16 v30, v5

    invoke-virtual/range {v30 .. v30}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v30

    move-object/from16 v32, v6

    invoke-virtual/range {v32 .. v32}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v32

    move-object/from16 v34, v7

    invoke-virtual/range {v34 .. v34}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v34

    .line 94
    invoke-static/range {v20 .. v35}, Lcom/sun/javafx/geometry/BoundsUtils;->min8(DDDDDDDD)D

    move-result-wide v20

    move-wide/from16 v16, v20

    .line 96
    .local v16, "minZ":D
    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v20

    move-object/from16 v22, v1

    invoke-virtual/range {v22 .. v22}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v22

    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v24

    move-object/from16 v26, v3

    invoke-virtual/range {v26 .. v26}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v26

    move-object/from16 v28, v4

    .line 97
    invoke-virtual/range {v28 .. v28}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v28

    move-object/from16 v30, v5

    invoke-virtual/range {v30 .. v30}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v30

    move-object/from16 v32, v6

    invoke-virtual/range {v32 .. v32}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v32

    move-object/from16 v34, v7

    invoke-virtual/range {v34 .. v34}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v34

    .line 96
    invoke-static/range {v20 .. v35}, Lcom/sun/javafx/geometry/BoundsUtils;->max8(DDDDDDDD)D

    move-result-wide v20

    move-wide/from16 v18, v20

    .line 99
    .local v18, "maxZ":D
    new-instance v20, Ljavafx/geometry/BoundingBox;

    move-object/from16 v36, v20

    move-object/from16 v20, v36

    move-object/from16 v21, v36

    move-wide/from16 v22, v8

    move-wide/from16 v24, v12

    move-wide/from16 v26, v16

    move-wide/from16 v28, v10

    move-wide/from16 v30, v8

    sub-double v28, v28, v30

    move-wide/from16 v30, v14

    move-wide/from16 v32, v12

    sub-double v30, v30, v32

    move-wide/from16 v32, v18

    move-wide/from16 v34, v16

    sub-double v32, v32, v34

    invoke-direct/range {v21 .. v33}, Ljavafx/geometry/BoundingBox;-><init>(DDDDDD)V

    move-object/from16 v0, v20

    goto/16 :goto_0
.end method

.method private static max4(DDDD)D
    .locals 14

    .prologue
    .line 46
    move-wide v0, p0

    .local v0, "v1":D
    move-wide/from16 v2, p2

    .local v2, "v2":D
    move-wide/from16 v4, p4

    .local v4, "v3":D
    move-wide/from16 v6, p6

    .local v6, "v4":D
    move-wide v8, v0

    move-wide v10, v2

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    move-wide v10, v4

    move-wide v12, v6

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    move-wide v0, v8

    .end local v0    # "v1":D
    return-wide v0
.end method

.method private static max8(DDDDDDDD)D
    .locals 26

    .prologue
    .line 51
    move-wide/from16 v0, p0

    .local v0, "v1":D
    move-wide/from16 v2, p2

    .local v2, "v2":D
    move-wide/from16 v4, p4

    .local v4, "v3":D
    move-wide/from16 v6, p6

    .local v6, "v4":D
    move-wide/from16 v8, p8

    .local v8, "v5":D
    move-wide/from16 v10, p10

    .local v10, "v6":D
    move-wide/from16 v12, p12

    .local v12, "v7":D
    move-wide/from16 v14, p14

    .local v14, "v8":D
    move-wide/from16 v16, v0

    move-wide/from16 v18, v2

    move-wide/from16 v20, v4

    move-wide/from16 v22, v6

    invoke-static/range {v16 .. v23}, Lcom/sun/javafx/geometry/BoundsUtils;->max4(DDDD)D

    move-result-wide v16

    move-wide/from16 v18, v8

    move-wide/from16 v20, v10

    move-wide/from16 v22, v12

    move-wide/from16 v24, v14

    invoke-static/range {v18 .. v25}, Lcom/sun/javafx/geometry/BoundsUtils;->max4(DDDD)D

    move-result-wide v18

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->max(DD)D

    move-result-wide v16

    move-wide/from16 v0, v16

    .end local v0    # "v1":D
    return-wide v0
.end method

.method private static min4(DDDD)D
    .locals 14

    .prologue
    .line 37
    move-wide v0, p0

    .local v0, "v1":D
    move-wide/from16 v2, p2

    .local v2, "v2":D
    move-wide/from16 v4, p4

    .local v4, "v3":D
    move-wide/from16 v6, p6

    .local v6, "v4":D
    move-wide v8, v0

    move-wide v10, v2

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    move-wide v10, v4

    move-wide v12, v6

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    move-wide v0, v8

    .end local v0    # "v1":D
    return-wide v0
.end method

.method private static min8(DDDDDDDD)D
    .locals 26

    .prologue
    .line 42
    move-wide/from16 v0, p0

    .local v0, "v1":D
    move-wide/from16 v2, p2

    .local v2, "v2":D
    move-wide/from16 v4, p4

    .local v4, "v3":D
    move-wide/from16 v6, p6

    .local v6, "v4":D
    move-wide/from16 v8, p8

    .local v8, "v5":D
    move-wide/from16 v10, p10

    .local v10, "v6":D
    move-wide/from16 v12, p12

    .local v12, "v7":D
    move-wide/from16 v14, p14

    .local v14, "v8":D
    move-wide/from16 v16, v0

    move-wide/from16 v18, v2

    move-wide/from16 v20, v4

    move-wide/from16 v22, v6

    invoke-static/range {v16 .. v23}, Lcom/sun/javafx/geometry/BoundsUtils;->min4(DDDD)D

    move-result-wide v16

    move-wide/from16 v18, v8

    move-wide/from16 v20, v10

    move-wide/from16 v22, v12

    move-wide/from16 v24, v14

    invoke-static/range {v18 .. v25}, Lcom/sun/javafx/geometry/BoundsUtils;->min4(DDDD)D

    move-result-wide v18

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->min(DD)D

    move-result-wide v16

    move-wide/from16 v0, v16

    .end local v0    # "v1":D
    return-wide v0
.end method
