.class public abstract Lcom/sun/javafx/sg/prism/NGShape3D;
.super Lcom/sun/javafx/sg/prism/NGNode;
.source "NGShape3D.java"


# instance fields
.field private cullFace:Ljavafx/scene/shape/CullFace;

.field private drawMode:Ljavafx/scene/shape/DrawMode;

.field private drawModeDirty:Z

.field private material:Lcom/sun/javafx/sg/prism/NGPhongMaterial;

.field private materialDirty:Z

.field mesh:Lcom/sun/javafx/sg/prism/NGTriangleMesh;

.field private meshView:Lcom/sun/prism/MeshView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGShape3D;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/sg/prism/NGNode;-><init>()V

    .line 46
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/javafx/sg/prism/NGShape3D;->materialDirty:Z

    .line 47
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/javafx/sg/prism/NGShape3D;->drawModeDirty:Z

    return-void
.end method

.method private renderMeshView(Lcom/sun/prism/Graphics;)V
    .locals 29

    .prologue
    .line 75
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/sg/prism/NGShape3D;
    move-object/from16 v3, p1

    .local v3, "g":Lcom/sun/prism/Graphics;
    move-object/from16 v18, v3

    invoke-interface/range {v18 .. v18}, Lcom/sun/prism/Graphics;->setup3DRendering()V

    .line 77
    move-object/from16 v18, v3

    invoke-interface/range {v18 .. v18}, Lcom/sun/prism/Graphics;->getResourceFactory()Lcom/sun/prism/ResourceFactory;

    move-result-object v18

    move-object/from16 v4, v18

    .line 79
    .local v4, "rf":Lcom/sun/prism/ResourceFactory;
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGShape3D;->meshView:Lcom/sun/prism/MeshView;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGShape3D;->mesh:Lcom/sun/javafx/sg/prism/NGTriangleMesh;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 80
    move-object/from16 v18, v2

    move-object/from16 v19, v4

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGShape3D;->mesh:Lcom/sun/javafx/sg/prism/NGTriangleMesh;

    move-object/from16 v20, v0

    move-object/from16 v21, v4

    invoke-virtual/range {v20 .. v21}, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->createMesh(Lcom/sun/prism/ResourceFactory;)Lcom/sun/prism/Mesh;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Lcom/sun/prism/ResourceFactory;->createMeshView(Lcom/sun/prism/Mesh;)Lcom/sun/prism/MeshView;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/sun/javafx/sg/prism/NGShape3D;->meshView:Lcom/sun/prism/MeshView;

    .line 81
    move-object/from16 v18, v2

    move-object/from16 v19, v2

    const/16 v20, 0x1

    move-object/from16 v27, v19

    move/from16 v28, v20

    move/from16 v19, v28

    move-object/from16 v20, v27

    move/from16 v21, v28

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lcom/sun/javafx/sg/prism/NGShape3D;->drawModeDirty:Z

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/sun/javafx/sg/prism/NGShape3D;->materialDirty:Z

    .line 84
    :cond_0
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGShape3D;->meshView:Lcom/sun/prism/MeshView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGShape3D;->mesh:Lcom/sun/javafx/sg/prism/NGTriangleMesh;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->validate()Z

    move-result v18

    if-nez v18, :cond_2

    .line 85
    .line 180
    :cond_1
    :goto_0
    return-void

    .line 88
    :cond_2
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGShape3D;->material:Lcom/sun/javafx/sg/prism/NGPhongMaterial;

    move-object/from16 v18, v0

    move-object/from16 v19, v4

    invoke-virtual/range {v18 .. v19}, Lcom/sun/javafx/sg/prism/NGPhongMaterial;->createMaterial(Lcom/sun/prism/ResourceFactory;)Lcom/sun/prism/Material;

    move-result-object v18

    move-object/from16 v5, v18

    .line 89
    .local v5, "mtl":Lcom/sun/prism/Material;
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/sun/javafx/sg/prism/NGShape3D;->materialDirty:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3

    .line 90
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGShape3D;->meshView:Lcom/sun/prism/MeshView;

    move-object/from16 v18, v0

    move-object/from16 v19, v5

    invoke-interface/range {v18 .. v19}, Lcom/sun/prism/MeshView;->setMaterial(Lcom/sun/prism/Material;)V

    .line 91
    move-object/from16 v18, v2

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/sun/javafx/sg/prism/NGShape3D;->materialDirty:Z

    .line 95
    :cond_3
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGShape3D;->cullFace:Ljavafx/scene/shape/CullFace;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/shape/CullFace;->ordinal()I

    move-result v18

    move/from16 v6, v18

    .line 96
    .local v6, "cullingMode":I
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGShape3D;->cullFace:Ljavafx/scene/shape/CullFace;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/shape/CullFace;->ordinal()I

    move-result v18

    sget v19, Lcom/sun/prism/MeshView;->CULL_NONE:I

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_4

    move-object/from16 v18, v3

    .line 97
    invoke-interface/range {v18 .. v18}, Lcom/sun/prism/Graphics;->getTransformNoClone()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/geom/transform/BaseTransform;->getDeterminant()D

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmpg-double v18, v18, v20

    if-gez v18, :cond_4

    .line 98
    move/from16 v18, v6

    sget v19, Lcom/sun/prism/MeshView;->CULL_BACK:I

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    sget v18, Lcom/sun/prism/MeshView;->CULL_FRONT:I

    :goto_1
    move/from16 v6, v18

    .line 101
    :cond_4
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGShape3D;->meshView:Lcom/sun/prism/MeshView;

    move-object/from16 v18, v0

    move/from16 v19, v6

    invoke-interface/range {v18 .. v19}, Lcom/sun/prism/MeshView;->setCullingMode(I)V

    .line 103
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/sun/javafx/sg/prism/NGShape3D;->drawModeDirty:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    .line 104
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGShape3D;->meshView:Lcom/sun/prism/MeshView;

    move-object/from16 v18, v0

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGShape3D;->drawMode:Ljavafx/scene/shape/DrawMode;

    move-object/from16 v19, v0

    sget-object v20, Ljavafx/scene/shape/DrawMode;->LINE:Ljavafx/scene/shape/DrawMode;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_8

    const/16 v19, 0x1

    :goto_2
    invoke-interface/range {v18 .. v19}, Lcom/sun/prism/MeshView;->setWireframe(Z)V

    .line 105
    move-object/from16 v18, v2

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/sun/javafx/sg/prism/NGShape3D;->drawModeDirty:Z

    .line 109
    :cond_5
    const/16 v18, 0x0

    move/from16 v7, v18

    .line 110
    .local v7, "pointLightIdx":I
    move-object/from16 v18, v3

    invoke-interface/range {v18 .. v18}, Lcom/sun/prism/Graphics;->getLights()[Lcom/sun/javafx/sg/prism/NGLightBase;

    move-result-object v18

    if-eqz v18, :cond_6

    move-object/from16 v18, v3

    invoke-interface/range {v18 .. v18}, Lcom/sun/prism/Graphics;->getLights()[Lcom/sun/javafx/sg/prism/NGLightBase;

    move-result-object v18

    const/16 v19, 0x0

    aget-object v18, v18, v19

    if-nez v18, :cond_9

    .line 113
    :cond_6
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGShape3D;->meshView:Lcom/sun/prism/MeshView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-interface/range {v18 .. v21}, Lcom/sun/prism/MeshView;->setAmbientLight(FFF)V

    .line 114
    move-object/from16 v18, v3

    invoke-interface/range {v18 .. v18}, Lcom/sun/prism/Graphics;->getCameraNoClone()Lcom/sun/javafx/sg/prism/NGCamera;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/sun/javafx/sg/prism/NGCamera;->getPositionInWorld(Lcom/sun/javafx/geom/Vec3d;)Lcom/sun/javafx/geom/Vec3d;

    move-result-object v18

    move-object/from16 v8, v18

    .line 115
    .local v8, "cameraPos":Lcom/sun/javafx/geom/Vec3d;
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGShape3D;->meshView:Lcom/sun/prism/MeshView;

    move-object/from16 v18, v0

    move/from16 v19, v7

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v20, v8

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v21, v8

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v22, v8

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x3f800000    # 1.0f

    const/high16 v24, 0x3f800000    # 1.0f

    const/high16 v25, 0x3f800000    # 1.0f

    const/high16 v26, 0x3f800000    # 1.0f

    invoke-interface/range {v18 .. v26}, Lcom/sun/prism/MeshView;->setPointLight(IFFFFFFF)V

    .line 120
    .line 174
    .end local v8    # "cameraPos":Lcom/sun/javafx/geom/Vec3d;
    :goto_3
    move/from16 v18, v7

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_f

    .line 176
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGShape3D;->meshView:Lcom/sun/prism/MeshView;

    move-object/from16 v18, v0

    move/from16 v19, v7

    add-int/lit8 v7, v7, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-interface/range {v18 .. v26}, Lcom/sun/prism/MeshView;->setPointLight(IFFFFFFF)V

    goto :goto_3

    .line 98
    .end local v7    # "pointLightIdx":I
    :cond_7
    sget v18, Lcom/sun/prism/MeshView;->CULL_BACK:I

    goto/16 :goto_1

    .line 104
    :cond_8
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 121
    .restart local v7    # "pointLightIdx":I
    :cond_9
    const/16 v18, 0x0

    move/from16 v8, v18

    .line 122
    .local v8, "ambientRed":F
    const/16 v18, 0x0

    move/from16 v9, v18

    .line 123
    .local v9, "ambientBlue":F
    const/16 v18, 0x0

    move/from16 v10, v18

    .line 125
    .local v10, "ambientGreen":F
    const/16 v18, 0x0

    move/from16 v11, v18

    .local v11, "i":I
    :goto_4
    move/from16 v18, v11

    move-object/from16 v19, v3

    invoke-interface/range {v19 .. v19}, Lcom/sun/prism/Graphics;->getLights()[Lcom/sun/javafx/sg/prism/NGLightBase;

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_a

    .line 126
    move-object/from16 v18, v3

    invoke-interface/range {v18 .. v18}, Lcom/sun/prism/Graphics;->getLights()[Lcom/sun/javafx/sg/prism/NGLightBase;

    move-result-object v18

    move/from16 v19, v11

    aget-object v18, v18, v19

    move-object/from16 v12, v18

    .line 127
    .local v12, "lightBase":Lcom/sun/javafx/sg/prism/NGLightBase;
    move-object/from16 v18, v12

    if-nez v18, :cond_b

    .line 129
    .line 168
    .end local v12    # "lightBase":Lcom/sun/javafx/sg/prism/NGLightBase;
    :cond_a
    move/from16 v18, v8

    invoke-static/range {v18 .. v18}, Lcom/sun/javafx/sg/prism/NGShape3D;->saturate(F)F

    move-result v18

    move/from16 v8, v18

    .line 169
    move/from16 v18, v10

    invoke-static/range {v18 .. v18}, Lcom/sun/javafx/sg/prism/NGShape3D;->saturate(F)F

    move-result v18

    move/from16 v10, v18

    .line 170
    move/from16 v18, v9

    invoke-static/range {v18 .. v18}, Lcom/sun/javafx/sg/prism/NGShape3D;->saturate(F)F

    move-result v18

    move/from16 v9, v18

    .line 171
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGShape3D;->meshView:Lcom/sun/prism/MeshView;

    move-object/from16 v18, v0

    move/from16 v19, v8

    move/from16 v20, v10

    move/from16 v21, v9

    invoke-interface/range {v18 .. v21}, Lcom/sun/prism/MeshView;->setAmbientLight(FFF)V

    goto/16 :goto_3

    .line 130
    .restart local v12    # "lightBase":Lcom/sun/javafx/sg/prism/NGLightBase;
    :cond_b
    move-object/from16 v18, v12

    move-object/from16 v19, v2

    invoke-virtual/range {v18 .. v19}, Lcom/sun/javafx/sg/prism/NGLightBase;->affects(Lcom/sun/javafx/sg/prism/NGShape3D;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 131
    move-object/from16 v18, v12

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/sg/prism/NGLightBase;->getColor()Lcom/sun/prism/paint/Color;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sun/prism/paint/Color;->getRed()F

    move-result v18

    move/from16 v13, v18

    .line 132
    .local v13, "rL":F
    move-object/from16 v18, v12

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/sg/prism/NGLightBase;->getColor()Lcom/sun/prism/paint/Color;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sun/prism/paint/Color;->getGreen()F

    move-result v18

    move/from16 v14, v18

    .line 133
    .local v14, "gL":F
    move-object/from16 v18, v12

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/sg/prism/NGLightBase;->getColor()Lcom/sun/prism/paint/Color;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sun/prism/paint/Color;->getBlue()F

    move-result v18

    move/from16 v15, v18

    .line 150
    .local v15, "bL":F
    move-object/from16 v18, v12

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/sun/javafx/sg/prism/NGPointLight;

    move/from16 v18, v0

    if-eqz v18, :cond_e

    .line 151
    move-object/from16 v18, v12

    check-cast v18, Lcom/sun/javafx/sg/prism/NGPointLight;

    move-object/from16 v16, v18

    .line 152
    .local v16, "light":Lcom/sun/javafx/sg/prism/NGPointLight;
    move/from16 v18, v13

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-nez v18, :cond_c

    move/from16 v18, v14

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-nez v18, :cond_c

    move/from16 v18, v15

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-eqz v18, :cond_d

    .line 153
    :cond_c
    move-object/from16 v18, v16

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/sg/prism/NGPointLight;->getWorldTransform()Lcom/sun/javafx/geom/transform/Affine3D;

    move-result-object v18

    move-object/from16 v17, v18

    .line 154
    .local v17, "lightWT":Lcom/sun/javafx/geom/transform/Affine3D;
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGShape3D;->meshView:Lcom/sun/prism/MeshView;

    move-object/from16 v18, v0

    move/from16 v19, v7

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v20, v17

    .line 155
    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/transform/Affine3D;->getMxt()D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v21, v17

    .line 156
    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/geom/transform/Affine3D;->getMyt()D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v22, v17

    .line 157
    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/geom/transform/Affine3D;->getMzt()D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    move/from16 v23, v13

    move/from16 v24, v14

    move/from16 v25, v15

    const/high16 v26, 0x3f800000    # 1.0f

    .line 154
    invoke-interface/range {v18 .. v26}, Lcom/sun/prism/MeshView;->setPointLight(IFFFFFFF)V

    .line 160
    .line 125
    .end local v13    # "rL":F
    .end local v14    # "gL":F
    .end local v15    # "bL":F
    .end local v16    # "light":Lcom/sun/javafx/sg/prism/NGPointLight;
    .end local v17    # "lightWT":Lcom/sun/javafx/geom/transform/Affine3D;
    :cond_d
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_4

    .line 160
    .restart local v13    # "rL":F
    .restart local v14    # "gL":F
    .restart local v15    # "bL":F
    :cond_e
    move-object/from16 v18, v12

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/sun/javafx/sg/prism/NGAmbientLight;

    move/from16 v18, v0

    if-eqz v18, :cond_d

    .line 162
    move/from16 v18, v8

    move/from16 v19, v13

    add-float v18, v18, v19

    move/from16 v8, v18

    .line 163
    move/from16 v18, v10

    move/from16 v19, v14

    add-float v18, v18, v19

    move/from16 v10, v18

    .line 164
    move/from16 v18, v9

    move/from16 v19, v15

    add-float v18, v18, v19

    move/from16 v9, v18

    goto :goto_5

    .line 179
    .end local v8    # "ambientRed":F
    .end local v9    # "ambientBlue":F
    .end local v10    # "ambientGreen":F
    .end local v11    # "i":I
    .end local v12    # "lightBase":Lcom/sun/javafx/sg/prism/NGLightBase;
    .end local v13    # "rL":F
    .end local v14    # "gL":F
    .end local v15    # "bL":F
    :cond_f
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGShape3D;->meshView:Lcom/sun/prism/MeshView;

    move-object/from16 v18, v0

    move-object/from16 v19, v3

    invoke-interface/range {v18 .. v19}, Lcom/sun/prism/MeshView;->render(Lcom/sun/prism/Graphics;)V

    .line 180
    goto/16 :goto_0
.end method

.method private static saturate(F)F
    .locals 3

    .prologue
    .line 184
    move v0, p0

    .local v0, "value":F
    move v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    move v1, v0

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "value":F
    return v0

    .restart local v0    # "value":F
    :cond_0
    move v1, v0

    goto :goto_0

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0
.end method


# virtual methods
.method protected hasOverlappingContents()Z
    .locals 2

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGShape3D;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGShape3D;
    return v0
.end method

.method invalidate()V
    .locals 3

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGShape3D;
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/sg/prism/NGShape3D;->meshView:Lcom/sun/prism/MeshView;

    .line 69
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/sg/prism/NGShape3D;->visualsChanged()V

    .line 70
    return-void
.end method

.method isShape3D()Z
    .locals 2

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGShape3D;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGShape3D;
    return v0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 219
    return-void
.end method

.method protected renderContent(Lcom/sun/prism/Graphics;)V
    .locals 4

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGShape3D;
    move-object v1, p1

    .local v1, "g":Lcom/sun/prism/Graphics;
    sget-object v2, Ljavafx/application/ConditionalFeature;->SCENE3D:Ljavafx/application/ConditionalFeature;

    invoke-static {v2}, Ljavafx/application/Platform;->isSupported(Ljavafx/application/ConditionalFeature;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGShape3D;->material:Lcom/sun/javafx/sg/prism/NGPhongMaterial;

    if-eqz v2, :cond_0

    move-object v2, v1

    instance-of v2, v2, Lcom/sun/prism/PrinterGraphics;

    if-eqz v2, :cond_1

    .line 199
    .line 202
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/sg/prism/NGShape3D;->renderMeshView(Lcom/sun/prism/Graphics;)V

    .line 202
    goto :goto_0
.end method

.method public setCullFace(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGShape3D;
    move-object v1, p1

    .local v1, "cullFace":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/shape/CullFace;

    iput-object v3, v2, Lcom/sun/javafx/sg/prism/NGShape3D;->cullFace:Ljavafx/scene/shape/CullFace;

    .line 64
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/sg/prism/NGShape3D;->visualsChanged()V

    .line 65
    return-void
.end method

.method public setDrawMode(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGShape3D;
    move-object v1, p1

    .local v1, "drawMode":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/shape/DrawMode;

    iput-object v3, v2, Lcom/sun/javafx/sg/prism/NGShape3D;->drawMode:Ljavafx/scene/shape/DrawMode;

    .line 58
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/javafx/sg/prism/NGShape3D;->drawModeDirty:Z

    .line 59
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/sg/prism/NGShape3D;->visualsChanged()V

    .line 60
    return-void
.end method

.method public setMaterial(Lcom/sun/javafx/sg/prism/NGPhongMaterial;)V
    .locals 4

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGShape3D;
    move-object v1, p1

    .local v1, "material":Lcom/sun/javafx/sg/prism/NGPhongMaterial;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/sg/prism/NGShape3D;->material:Lcom/sun/javafx/sg/prism/NGPhongMaterial;

    .line 53
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/javafx/sg/prism/NGShape3D;->materialDirty:Z

    .line 54
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/sg/prism/NGShape3D;->visualsChanged()V

    .line 55
    return-void
.end method

.method public setMesh(Lcom/sun/javafx/sg/prism/NGTriangleMesh;)V
    .locals 4

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGShape3D;
    move-object v1, p1

    .local v1, "triangleMesh":Lcom/sun/javafx/sg/prism/NGTriangleMesh;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/sg/prism/NGShape3D;->mesh:Lcom/sun/javafx/sg/prism/NGTriangleMesh;

    .line 189
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/sg/prism/NGShape3D;->meshView:Lcom/sun/prism/MeshView;

    .line 190
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/sg/prism/NGShape3D;->visualsChanged()V

    .line 191
    return-void
.end method
