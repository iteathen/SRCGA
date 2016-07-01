.class public Lcom/sun/javafx/scene/transform/TransformUtils;
.super Ljava/lang/Object;
.source "TransformUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/transform/TransformUtils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static immutableTransform(DDDDDDDDDDDD)Ljavafx/scene/transform/Transform;
    .locals 52

    .prologue
    .line 51
    move-wide/from16 v0, p0

    .local v0, "mxx":D
    move-wide/from16 v2, p2

    .local v2, "mxy":D
    move-wide/from16 v4, p4

    .local v4, "mxz":D
    move-wide/from16 v6, p6

    .local v6, "tx":D
    move-wide/from16 v8, p8

    .local v8, "myx":D
    move-wide/from16 v10, p10

    .local v10, "myy":D
    move-wide/from16 v12, p12

    .local v12, "myz":D
    move-wide/from16 v14, p14

    .local v14, "ty":D
    move-wide/from16 v16, p16

    .local v16, "mzx":D
    move-wide/from16 v18, p18

    .local v18, "mzy":D
    move-wide/from16 v20, p20

    .local v20, "mzz":D
    move-wide/from16 v22, p22

    .local v22, "tz":D
    new-instance v24, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;

    move-object/from16 v50, v24

    move-object/from16 v24, v50

    move-object/from16 v25, v50

    move-wide/from16 v26, v0

    move-wide/from16 v28, v2

    move-wide/from16 v30, v4

    move-wide/from16 v32, v6

    move-wide/from16 v34, v8

    move-wide/from16 v36, v10

    move-wide/from16 v38, v12

    move-wide/from16 v40, v14

    move-wide/from16 v42, v16

    move-wide/from16 v44, v18

    move-wide/from16 v46, v20

    move-wide/from16 v48, v22

    invoke-direct/range {v25 .. v49}, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;-><init>(DDDDDDDDDDDD)V

    move-object/from16 v0, v24

    .end local v0    # "mxx":D
    return-object v0
.end method

.method public static immutableTransform(Ljavafx/scene/transform/Transform;)Ljavafx/scene/transform/Transform;
    .locals 29

    .prologue
    .line 64
    move-object/from16 v1, p0

    .local v1, "t":Ljavafx/scene/transform/Transform;
    new-instance v2, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;

    move-object/from16 v28, v2

    move-object/from16 v2, v28

    move-object/from16 v3, v28

    move-object v4, v1

    .line 65
    invoke-virtual {v4}, Ljavafx/scene/transform/Transform;->getMxx()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Transform;->getMxy()D

    move-result-wide v6

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Transform;->getMxz()D

    move-result-wide v8

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/transform/Transform;->getTx()D

    move-result-wide v10

    move-object v12, v1

    .line 66
    invoke-virtual {v12}, Ljavafx/scene/transform/Transform;->getMyx()D

    move-result-wide v12

    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/transform/Transform;->getMyy()D

    move-result-wide v14

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/transform/Transform;->getMyz()D

    move-result-wide v16

    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/transform/Transform;->getTy()D

    move-result-wide v18

    move-object/from16 v20, v1

    .line 67
    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/transform/Transform;->getMzx()D

    move-result-wide v20

    move-object/from16 v22, v1

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/transform/Transform;->getMzy()D

    move-result-wide v22

    move-object/from16 v24, v1

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Transform;->getMzz()D

    move-result-wide v24

    move-object/from16 v26, v1

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/transform/Transform;->getTz()D

    move-result-wide v26

    invoke-direct/range {v3 .. v27}, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;-><init>(DDDDDDDDDDDD)V

    move-object v1, v2

    .end local v1    # "t":Ljavafx/scene/transform/Transform;
    return-object v1
.end method

.method public static immutableTransform(Ljavafx/scene/transform/Transform;DDDDDDDDDDDD)Ljavafx/scene/transform/Transform;
    .locals 53

    .prologue
    .line 83
    move-object/from16 v1, p0

    .local v1, "reuse":Ljavafx/scene/transform/Transform;
    move-wide/from16 v2, p1

    .local v2, "mxx":D
    move-wide/from16 v4, p3

    .local v4, "mxy":D
    move-wide/from16 v6, p5

    .local v6, "mxz":D
    move-wide/from16 v8, p7

    .local v8, "tx":D
    move-wide/from16 v10, p9

    .local v10, "myx":D
    move-wide/from16 v12, p11

    .local v12, "myy":D
    move-wide/from16 v14, p13

    .local v14, "myz":D
    move-wide/from16 v16, p15

    .local v16, "ty":D
    move-wide/from16 v18, p17

    .local v18, "mzx":D
    move-wide/from16 v20, p19

    .local v20, "mzy":D
    move-wide/from16 v22, p21

    .local v22, "mzz":D
    move-wide/from16 v24, p23

    .local v24, "tz":D
    move-object/from16 v26, v1

    if-nez v26, :cond_0

    .line 84
    new-instance v26, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;

    move-object/from16 v52, v26

    move-object/from16 v26, v52

    move-object/from16 v27, v52

    move-wide/from16 v28, v2

    move-wide/from16 v30, v4

    move-wide/from16 v32, v6

    move-wide/from16 v34, v8

    move-wide/from16 v36, v10

    move-wide/from16 v38, v12

    move-wide/from16 v40, v14

    move-wide/from16 v42, v16

    move-wide/from16 v44, v18

    move-wide/from16 v46, v20

    move-wide/from16 v48, v22

    move-wide/from16 v50, v24

    invoke-direct/range {v27 .. v51}, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;-><init>(DDDDDDDDDDDD)V

    move-object/from16 v1, v26

    .line 94
    .end local v1    # "reuse":Ljavafx/scene/transform/Transform;
    :goto_0
    return-object v1

    .line 90
    .restart local v1    # "reuse":Ljavafx/scene/transform/Transform;
    :cond_0
    move-object/from16 v26, v1

    check-cast v26, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;

    move-wide/from16 v27, v2

    move-wide/from16 v29, v4

    move-wide/from16 v31, v6

    move-wide/from16 v33, v8

    move-wide/from16 v35, v10

    move-wide/from16 v37, v12

    move-wide/from16 v39, v14

    move-wide/from16 v41, v16

    move-wide/from16 v43, v18

    move-wide/from16 v45, v20

    move-wide/from16 v47, v22

    move-wide/from16 v49, v24

    invoke-static/range {v26 .. v50}, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->access$000(Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;DDDDDDDDDDDD)V

    .line 94
    move-object/from16 v26, v1

    move-object/from16 v1, v26

    goto :goto_0
.end method

.method public static immutableTransform(Ljavafx/scene/transform/Transform;Ljavafx/scene/transform/Transform;)Ljavafx/scene/transform/Transform;
    .locals 28

    .prologue
    .line 108
    move-object/from16 v1, p0

    .local v1, "reuse":Ljavafx/scene/transform/Transform;
    move-object/from16 v2, p1

    .local v2, "t":Ljavafx/scene/transform/Transform;
    move-object v3, v1

    check-cast v3, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;

    move-object v4, v2

    .line 109
    invoke-virtual {v4}, Ljavafx/scene/transform/Transform;->getMxx()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/transform/Transform;->getMxy()D

    move-result-wide v6

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/scene/transform/Transform;->getMxz()D

    move-result-wide v8

    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/scene/transform/Transform;->getTx()D

    move-result-wide v10

    move-object v12, v2

    .line 110
    invoke-virtual {v12}, Ljavafx/scene/transform/Transform;->getMyx()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/scene/transform/Transform;->getMyy()D

    move-result-wide v14

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/transform/Transform;->getMyz()D

    move-result-wide v16

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/transform/Transform;->getTy()D

    move-result-wide v18

    move-object/from16 v20, v2

    .line 111
    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/transform/Transform;->getMzx()D

    move-result-wide v20

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/transform/Transform;->getMzy()D

    move-result-wide v22

    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Transform;->getMzz()D

    move-result-wide v24

    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/transform/Transform;->getTz()D

    move-result-wide v26

    .line 108
    invoke-static/range {v3 .. v27}, Lcom/sun/javafx/scene/transform/TransformUtils;->immutableTransform(Ljavafx/scene/transform/Transform;DDDDDDDDDDDD)Ljavafx/scene/transform/Transform;

    move-result-object v3

    move-object v1, v3

    .end local v1    # "reuse":Ljavafx/scene/transform/Transform;
    return-object v1
.end method

.method public static immutableTransform(Ljavafx/scene/transform/Transform;Ljavafx/scene/transform/Transform;Ljavafx/scene/transform/Transform;)Ljavafx/scene/transform/Transform;
    .locals 7

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "reuse":Ljavafx/scene/transform/Transform;
    move-object v1, p1

    .local v1, "left":Ljavafx/scene/transform/Transform;
    move-object v2, p2

    .local v2, "right":Ljavafx/scene/transform/Transform;
    move-object v3, v0

    if-nez v3, :cond_0

    .line 127
    new-instance v3, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;-><init>()V

    move-object v0, v3

    .line 130
    :cond_0
    move-object v3, v0

    check-cast v3, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;

    move-object v4, v1

    check-cast v4, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;

    move-object v5, v2

    check-cast v5, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->access$100(Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;)V

    .line 133
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "reuse":Ljavafx/scene/transform/Transform;
    return-object v0
.end method
