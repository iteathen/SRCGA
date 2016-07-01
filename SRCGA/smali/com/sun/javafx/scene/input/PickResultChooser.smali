.class public Lcom/sun/javafx/scene/input/PickResultChooser;
.super Ljava/lang/Object;
.source "PickResultChooser.java"


# instance fields
.field private closed:Z

.field private distance:D

.field private empty:Z

.field private face:I

.field private node:Ljavafx/scene/Node;

.field private normal:Ljavafx/geometry/Point3D;

.field private point:Ljavafx/geometry/Point3D;

.field private texCoord:Ljavafx/geometry/Point2D;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/input/PickResultChooser;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 45
    move-object v1, v0

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    iput-wide v2, v1, Lcom/sun/javafx/scene/input/PickResultChooser;->distance:D

    .line 47
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lcom/sun/javafx/scene/input/PickResultChooser;->face:I

    .line 51
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/javafx/scene/input/PickResultChooser;->empty:Z

    .line 52
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/javafx/scene/input/PickResultChooser;->closed:Z

    return-void
.end method

.method public static computePoint(Lcom/sun/javafx/geom/PickRay;D)Ljavafx/geometry/Point3D;
    .locals 19

    .prologue
    .line 64
    move-object/from16 v1, p0

    .local v1, "ray":Lcom/sun/javafx/geom/PickRay;
    move-wide/from16 v2, p1

    .local v2, "distance":D
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/geom/PickRay;->getOriginNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v6

    move-object v4, v6

    .line 65
    .local v4, "origin":Lcom/sun/javafx/geom/Vec3d;
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/geom/PickRay;->getDirectionNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v6

    move-object v5, v6

    .line 67
    .local v5, "dir":Lcom/sun/javafx/geom/Vec3d;
    new-instance v6, Ljavafx/geometry/Point3D;

    move-object/from16 v18, v6

    move-object/from16 v6, v18

    move-object/from16 v7, v18

    move-object v8, v4

    iget-wide v8, v8, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-object v10, v5

    iget-wide v10, v10, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide v12, v2

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    move-object v10, v4

    iget-wide v10, v10, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-object v12, v5

    iget-wide v12, v12, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide v14, v2

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    move-object v12, v4

    iget-wide v12, v12, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-object v14, v5

    iget-wide v14, v14, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v16, v2

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    invoke-direct/range {v7 .. v13}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v1, v6

    .end local v1    # "ray":Lcom/sun/javafx/geom/PickRay;
    return-object v1
.end method

.method private processOffer(Ljavafx/scene/Node;Ljavafx/scene/Node;DLjavafx/geometry/Point3D;ILjavafx/geometry/Point3D;Ljavafx/geometry/Point2D;)Z
    .locals 21

    .prologue
    .line 181
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/scene/input/PickResultChooser;
    move-object/from16 v4, p1

    .local v4, "node":Ljavafx/scene/Node;
    move-object/from16 v5, p2

    .local v5, "depthTestNode":Ljavafx/scene/Node;
    move-wide/from16 v6, p3

    .local v6, "distance":D
    move-object/from16 v8, p5

    .local v8, "point":Ljavafx/geometry/Point3D;
    move/from16 v9, p6

    .local v9, "face":I
    move-object/from16 v10, p7

    .local v10, "normal":Ljavafx/geometry/Point3D;
    move-object/from16 v11, p8

    .local v11, "texCoord":Ljavafx/geometry/Point2D;
    move-object/from16 v16, v5

    invoke-static/range {v16 .. v16}, Lcom/sun/javafx/scene/NodeHelper;->getSubScene(Ljavafx/scene/Node;)Ljavafx/scene/SubScene;

    move-result-object v16

    move-object/from16 v12, v16

    .line 182
    .local v12, "subScene":Ljavafx/scene/SubScene;
    sget-object v16, Ljavafx/application/ConditionalFeature;->SCENE3D:Ljavafx/application/ConditionalFeature;

    invoke-static/range {v16 .. v16}, Ljavafx/application/Platform;->isSupported(Ljavafx/application/ConditionalFeature;)Z

    move-result v16

    if-eqz v16, :cond_4

    move-object/from16 v16, v12

    if-eqz v16, :cond_3

    move-object/from16 v16, v12

    .line 184
    invoke-static/range {v16 .. v16}, Lcom/sun/javafx/scene/SubSceneHelper;->isDepthBuffer(Ljavafx/scene/SubScene;)Z

    move-result v16

    .line 185
    :goto_0
    move/from16 v13, v16

    .line 187
    .local v13, "hasDepthBuffer":Z
    move/from16 v16, v13

    if-eqz v16, :cond_5

    move-object/from16 v16, v5

    .line 188
    invoke-static/range {v16 .. v16}, Lcom/sun/javafx/scene/NodeHelper;->isDerivedDepthTest(Ljavafx/scene/Node;)Z

    move-result v16

    if-eqz v16, :cond_5

    const/16 v16, 0x1

    :goto_1
    move/from16 v14, v16

    .line 190
    .local v14, "hasDepthTest":Z
    const/16 v16, 0x0

    move/from16 v15, v16

    .line 191
    .local v15, "accepted":Z
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/sun/javafx/scene/input/PickResultChooser;->empty:Z

    move/from16 v16, v0

    if-nez v16, :cond_0

    move/from16 v16, v14

    if-eqz v16, :cond_1

    move-wide/from16 v16, v6

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/scene/input/PickResultChooser;->distance:D

    move-wide/from16 v18, v0

    cmpg-double v16, v16, v18

    if-gez v16, :cond_1

    :cond_0
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/sun/javafx/scene/input/PickResultChooser;->closed:Z

    move/from16 v16, v0

    if-nez v16, :cond_1

    .line 192
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/sun/javafx/scene/input/PickResultChooser;->node:Ljavafx/scene/Node;

    .line 193
    move-object/from16 v16, v3

    move-wide/from16 v17, v6

    move-wide/from16 v0, v17

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/sun/javafx/scene/input/PickResultChooser;->distance:D

    .line 194
    move-object/from16 v16, v3

    move/from16 v17, v9

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/sun/javafx/scene/input/PickResultChooser;->face:I

    .line 195
    move-object/from16 v16, v3

    move-object/from16 v17, v8

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/sun/javafx/scene/input/PickResultChooser;->point:Ljavafx/geometry/Point3D;

    .line 196
    move-object/from16 v16, v3

    move-object/from16 v17, v10

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/sun/javafx/scene/input/PickResultChooser;->normal:Ljavafx/geometry/Point3D;

    .line 197
    move-object/from16 v16, v3

    move-object/from16 v17, v11

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/sun/javafx/scene/input/PickResultChooser;->texCoord:Ljavafx/geometry/Point2D;

    .line 198
    move-object/from16 v16, v3

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/sun/javafx/scene/input/PickResultChooser;->empty:Z

    .line 199
    const/16 v16, 0x1

    move/from16 v15, v16

    .line 202
    :cond_1
    move/from16 v16, v14

    if-nez v16, :cond_2

    .line 203
    move-object/from16 v16, v3

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/sun/javafx/scene/input/PickResultChooser;->closed:Z

    .line 206
    :cond_2
    move/from16 v16, v15

    move/from16 v3, v16

    .end local v3    # "this":Lcom/sun/javafx/scene/input/PickResultChooser;
    return v3

    .line 184
    .end local v13    # "hasDepthBuffer":Z
    .end local v14    # "hasDepthTest":Z
    .end local v15    # "accepted":Z
    .restart local v3    # "this":Lcom/sun/javafx/scene/input/PickResultChooser;
    :cond_3
    move-object/from16 v16, v5

    .line 185
    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/Scene;->isDepthBuffer()Z

    move-result v16

    goto/16 :goto_0

    :cond_4
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 188
    .restart local v13    # "hasDepthBuffer":Z
    :cond_5
    const/16 v16, 0x0

    goto/16 :goto_1
.end method


# virtual methods
.method public final getIntersectedDistance()D
    .locals 3

    .prologue
    .line 224
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/input/PickResultChooser;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/scene/input/PickResultChooser;->distance:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/input/PickResultChooser;
    return-wide v0
.end method

.method public final getIntersectedFace()I
    .locals 2

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/input/PickResultChooser;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/scene/input/PickResultChooser;->face:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/input/PickResultChooser;
    return v0
.end method

.method public final getIntersectedNode()Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/input/PickResultChooser;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/input/PickResultChooser;->node:Ljavafx/scene/Node;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/input/PickResultChooser;
    return-object v0
.end method

.method public final getIntersectedNormal()Ljavafx/geometry/Point3D;
    .locals 2

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/input/PickResultChooser;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/input/PickResultChooser;->normal:Ljavafx/geometry/Point3D;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/input/PickResultChooser;
    return-object v0
.end method

.method public final getIntersectedPoint()Ljavafx/geometry/Point3D;
    .locals 2

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/input/PickResultChooser;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/input/PickResultChooser;->point:Ljavafx/geometry/Point3D;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/input/PickResultChooser;
    return-object v0
.end method

.method public final getIntersectedTexCoord()Ljavafx/geometry/Point2D;
    .locals 2

    .prologue
    .line 261
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/input/PickResultChooser;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/input/PickResultChooser;->texCoord:Ljavafx/geometry/Point2D;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/input/PickResultChooser;
    return-object v0
.end method

.method public isClosed()Z
    .locals 2

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/input/PickResultChooser;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/scene/input/PickResultChooser;->closed:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/input/PickResultChooser;
    return v0
.end method

.method public isCloser(D)Z
    .locals 9

    .prologue
    .line 92
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/input/PickResultChooser;
    move-wide v2, p1

    .local v2, "distance":D
    move-wide v4, v2

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/input/PickResultChooser;->distance:D

    cmpg-double v4, v4, v6

    if-ltz v4, :cond_0

    move-object v4, v1

    iget-boolean v4, v4, Lcom/sun/javafx/scene/input/PickResultChooser;->empty:Z

    if-eqz v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    move v1, v4

    .end local v1    # "this":Lcom/sun/javafx/scene/input/PickResultChooser;
    return v1

    .restart local v1    # "this":Lcom/sun/javafx/scene/input/PickResultChooser;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/input/PickResultChooser;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/scene/input/PickResultChooser;->empty:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/input/PickResultChooser;
    return v0
.end method

.method public offer(Ljavafx/scene/Node;DILjavafx/geometry/Point3D;Ljavafx/geometry/Point2D;)Z
    .locals 16

    .prologue
    .line 126
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/input/PickResultChooser;
    move-object/from16 v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    move-wide/from16 v2, p2

    .local v2, "distance":D
    move/from16 v4, p4

    .local v4, "face":I
    move-object/from16 v5, p5

    .local v5, "point":Ljavafx/geometry/Point3D;
    move-object/from16 v6, p6

    .local v6, "texCoord":Ljavafx/geometry/Point2D;
    move-object v7, v0

    move-object v8, v1

    move-object v9, v1

    move-wide v10, v2

    move-object v12, v5

    move v13, v4

    move-object v14, v0

    iget-object v14, v14, Lcom/sun/javafx/scene/input/PickResultChooser;->normal:Ljavafx/geometry/Point3D;

    move-object v15, v6

    invoke-direct/range {v7 .. v15}, Lcom/sun/javafx/scene/input/PickResultChooser;->processOffer(Ljavafx/scene/Node;Ljavafx/scene/Node;DLjavafx/geometry/Point3D;ILjavafx/geometry/Point3D;Ljavafx/geometry/Point2D;)Z

    move-result v7

    move v0, v7

    .end local v0    # "this":Lcom/sun/javafx/scene/input/PickResultChooser;
    return v0
.end method

.method public offer(Ljavafx/scene/Node;DLjavafx/geometry/Point3D;)Z
    .locals 14

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/input/PickResultChooser;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    move-wide/from16 v2, p2

    .local v2, "distance":D
    move-object/from16 v4, p4

    .local v4, "point":Ljavafx/geometry/Point3D;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v1

    move-wide v8, v2

    move-object v10, v4

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v5 .. v13}, Lcom/sun/javafx/scene/input/PickResultChooser;->processOffer(Ljavafx/scene/Node;Ljavafx/scene/Node;DLjavafx/geometry/Point3D;ILjavafx/geometry/Point3D;Ljavafx/geometry/Point2D;)Z

    move-result v5

    move v0, v5

    .end local v0    # "this":Lcom/sun/javafx/scene/input/PickResultChooser;
    return v0
.end method

.method public offerSubScenePickResult(Ljavafx/scene/SubScene;Ljavafx/scene/input/PickResult;D)Z
    .locals 15

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/input/PickResultChooser;
    move-object/from16 v1, p1

    .local v1, "subScene":Ljavafx/scene/SubScene;
    move-object/from16 v2, p2

    .local v2, "pickResult":Ljavafx/scene/input/PickResult;
    move-wide/from16 v3, p3

    .local v3, "distance":D
    move-object v5, v2

    if-nez v5, :cond_0

    .line 156
    const/4 v5, 0x0

    move v0, v5

    .line 158
    .end local v0    # "this":Lcom/sun/javafx/scene/input/PickResultChooser;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/input/PickResultChooser;
    :cond_0
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/input/PickResult;->getIntersectedNode()Ljavafx/scene/Node;

    move-result-object v6

    move-object v7, v1

    move-wide v8, v3

    move-object v10, v2

    .line 159
    invoke-virtual {v10}, Ljavafx/scene/input/PickResult;->getIntersectedPoint()Ljavafx/geometry/Point3D;

    move-result-object v10

    move-object v11, v2

    invoke-virtual {v11}, Ljavafx/scene/input/PickResult;->getIntersectedFace()I

    move-result v11

    move-object v12, v2

    .line 160
    invoke-virtual {v12}, Ljavafx/scene/input/PickResult;->getIntersectedNormal()Ljavafx/geometry/Point3D;

    move-result-object v12

    move-object v13, v2

    invoke-virtual {v13}, Ljavafx/scene/input/PickResult;->getIntersectedTexCoord()Ljavafx/geometry/Point2D;

    move-result-object v13

    .line 158
    invoke-direct/range {v5 .. v13}, Lcom/sun/javafx/scene/input/PickResultChooser;->processOffer(Ljavafx/scene/Node;Ljavafx/scene/Node;DLjavafx/geometry/Point3D;ILjavafx/geometry/Point3D;Ljavafx/geometry/Point2D;)Z

    move-result v5

    move v0, v5

    goto :goto_0
.end method

.method public toPickResult()Ljavafx/scene/input/PickResult;
    .locals 12

    .prologue
    .line 79
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/input/PickResultChooser;
    move-object v2, v1

    iget-boolean v2, v2, Lcom/sun/javafx/scene/input/PickResultChooser;->empty:Z

    if-eqz v2, :cond_0

    .line 80
    const/4 v2, 0x0

    move-object v1, v2

    .line 82
    .end local v1    # "this":Lcom/sun/javafx/scene/input/PickResultChooser;
    :goto_0
    return-object v1

    .restart local v1    # "this":Lcom/sun/javafx/scene/input/PickResultChooser;
    :cond_0
    new-instance v2, Ljavafx/scene/input/PickResult;

    move-object v11, v2

    move-object v2, v11

    move-object v3, v11

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/input/PickResultChooser;->node:Ljavafx/scene/Node;

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/input/PickResultChooser;->point:Ljavafx/geometry/Point3D;

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/input/PickResultChooser;->distance:D

    move-object v8, v1

    iget v8, v8, Lcom/sun/javafx/scene/input/PickResultChooser;->face:I

    move-object v9, v1

    iget-object v9, v9, Lcom/sun/javafx/scene/input/PickResultChooser;->normal:Ljavafx/geometry/Point3D;

    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/input/PickResultChooser;->texCoord:Ljavafx/geometry/Point2D;

    invoke-direct/range {v3 .. v10}, Ljavafx/scene/input/PickResult;-><init>(Ljavafx/scene/Node;Ljavafx/geometry/Point3D;DILjavafx/geometry/Point3D;Ljavafx/geometry/Point2D;)V

    move-object v1, v2

    goto :goto_0
.end method
