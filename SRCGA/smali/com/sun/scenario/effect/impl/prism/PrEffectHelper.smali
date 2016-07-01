.class public Lcom/sun/scenario/effect/impl/prism/PrEffectHelper;
.super Ljava/lang/Object;
.source "PrEffectHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/PrEffectHelper;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clipbounds(Lcom/sun/javafx/geom/Point2D;Lcom/sun/javafx/geom/Point2D;Lcom/sun/javafx/geom/Point2D;Lcom/sun/javafx/geom/Point2D;)Lcom/sun/javafx/geom/Rectangle;
    .locals 25

    .prologue
    .line 217
    move-object/from16 v2, p0

    .local v2, "cul":Lcom/sun/javafx/geom/Point2D;
    move-object/from16 v3, p1

    .local v3, "cur":Lcom/sun/javafx/geom/Point2D;
    move-object/from16 v4, p2

    .local v4, "cll":Lcom/sun/javafx/geom/Point2D;
    move-object/from16 v5, p3

    .local v5, "clr":Lcom/sun/javafx/geom/Point2D;
    move-object/from16 v18, v2

    if-eqz v18, :cond_4

    move-object/from16 v18, v3

    if-eqz v18, :cond_4

    move-object/from16 v18, v4

    if-eqz v18, :cond_4

    move-object/from16 v18, v5

    if-eqz v18, :cond_4

    .line 219
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->x:F

    move/from16 v18, v0

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->x:F

    move/from16 v19, v0

    cmpg-float v18, v18, v19

    if-gez v18, :cond_0

    .line 220
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->x:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v6, v18

    .local v6, "x1":D
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->x:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v10, v18

    .line 224
    .local v10, "x2":D
    :goto_0
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->y:F

    move/from16 v18, v0

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->y:F

    move/from16 v19, v0

    cmpg-float v18, v18, v19

    if-gez v18, :cond_1

    .line 225
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->y:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v8, v18

    .local v8, "y1":D
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->y:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v12, v18

    .line 229
    .local v12, "y2":D
    :goto_1
    move-object/from16 v18, v4

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->x:F

    move/from16 v18, v0

    move-object/from16 v19, v5

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->x:F

    move/from16 v19, v0

    cmpg-float v18, v18, v19

    if-gez v18, :cond_2

    .line 230
    move-wide/from16 v18, v6

    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->x:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->min(DD)D

    move-result-wide v18

    move-wide/from16 v6, v18

    move-wide/from16 v18, v10

    move-object/from16 v20, v5

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->x:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->max(DD)D

    move-result-wide v18

    move-wide/from16 v10, v18

    .line 234
    :goto_2
    move-object/from16 v18, v4

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->y:F

    move/from16 v18, v0

    move-object/from16 v19, v5

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->y:F

    move/from16 v19, v0

    cmpg-float v18, v18, v19

    if-gez v18, :cond_3

    .line 235
    move-wide/from16 v18, v8

    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->y:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->min(DD)D

    move-result-wide v18

    move-wide/from16 v8, v18

    move-wide/from16 v18, v12

    move-object/from16 v20, v5

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->y:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->max(DD)D

    move-result-wide v18

    move-wide/from16 v12, v18

    .line 241
    :goto_3
    move-wide/from16 v18, v6

    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    sub-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->floor(D)D

    move-result-wide v18

    move-wide/from16 v6, v18

    .line 242
    move-wide/from16 v18, v8

    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    sub-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->floor(D)D

    move-result-wide v18

    move-wide/from16 v8, v18

    .line 243
    move-wide/from16 v18, v10

    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    add-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v18

    move-wide/from16 v20, v6

    sub-double v18, v18, v20

    move-wide/from16 v10, v18

    .line 244
    move-wide/from16 v18, v12

    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    add-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v18

    move-wide/from16 v20, v8

    sub-double v18, v18, v20

    move-wide/from16 v12, v18

    .line 245
    move-wide/from16 v18, v6

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    move/from16 v14, v18

    .line 246
    .local v14, "x":I
    move-wide/from16 v18, v8

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    move/from16 v15, v18

    .line 247
    .local v15, "y":I
    move-wide/from16 v18, v10

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    move/from16 v16, v18

    .line 248
    .local v16, "w":I
    move-wide/from16 v18, v12

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    move/from16 v17, v18

    .line 249
    .local v17, "h":I
    move/from16 v18, v14

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v20, v6

    cmpl-double v18, v18, v20

    if-nez v18, :cond_4

    move/from16 v18, v15

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v20, v8

    cmpl-double v18, v18, v20

    if-nez v18, :cond_4

    move/from16 v18, v16

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v20, v10

    cmpl-double v18, v18, v20

    if-nez v18, :cond_4

    move/from16 v18, v17

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v20, v12

    cmpl-double v18, v18, v20

    if-nez v18, :cond_4

    .line 253
    new-instance v18, Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    move/from16 v20, v14

    move/from16 v21, v15

    move/from16 v22, v16

    move/from16 v23, v17

    invoke-direct/range {v19 .. v23}, Lcom/sun/javafx/geom/Rectangle;-><init>(IIII)V

    move-object/from16 v2, v18

    .line 256
    .end local v2    # "cul":Lcom/sun/javafx/geom/Point2D;
    .end local v6    # "x1":D
    .end local v8    # "y1":D
    .end local v10    # "x2":D
    .end local v12    # "y2":D
    .end local v14    # "x":I
    .end local v15    # "y":I
    .end local v16    # "w":I
    .end local v17    # "h":I
    :goto_4
    return-object v2

    .line 222
    .restart local v2    # "cul":Lcom/sun/javafx/geom/Point2D;
    :cond_0
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->x:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v6, v18

    .restart local v6    # "x1":D
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->x:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v10, v18

    .restart local v10    # "x2":D
    goto/16 :goto_0

    .line 227
    :cond_1
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->y:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v8, v18

    .restart local v8    # "y1":D
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->y:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v12, v18

    .restart local v12    # "y2":D
    goto/16 :goto_1

    .line 232
    :cond_2
    move-wide/from16 v18, v6

    move-object/from16 v20, v5

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->x:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->min(DD)D

    move-result-wide v18

    move-wide/from16 v6, v18

    move-wide/from16 v18, v10

    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->x:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->max(DD)D

    move-result-wide v18

    move-wide/from16 v10, v18

    goto/16 :goto_2

    .line 237
    :cond_3
    move-wide/from16 v18, v8

    move-object/from16 v20, v5

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->y:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->min(DD)D

    move-result-wide v18

    move-wide/from16 v8, v18

    move-wide/from16 v18, v12

    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->y:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->max(DD)D

    move-result-wide v18

    move-wide/from16 v12, v18

    goto/16 :goto_3

    .line 256
    .end local v6    # "x1":D
    .end local v8    # "y1":D
    .end local v10    # "x2":D
    .end local v12    # "y2":D
    :cond_4
    const/16 v18, 0x0

    move-object/from16 v2, v18

    goto/16 :goto_4
.end method

.method public static getGraphicsClipNoClone(Lcom/sun/prism/Graphics;)Lcom/sun/javafx/geom/Rectangle;
    .locals 8

    .prologue
    .line 260
    move-object v0, p0

    .local v0, "g":Lcom/sun/prism/Graphics;
    move-object v3, v0

    invoke-interface {v3}, Lcom/sun/prism/Graphics;->getClipRectNoClone()Lcom/sun/javafx/geom/Rectangle;

    move-result-object v3

    move-object v1, v3

    .line 261
    .local v1, "rclip":Lcom/sun/javafx/geom/Rectangle;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 262
    move-object v3, v0

    invoke-interface {v3}, Lcom/sun/prism/Graphics;->getRenderTarget()Lcom/sun/prism/RenderTarget;

    move-result-object v3

    move-object v2, v3

    .line 263
    .local v2, "rt":Lcom/sun/prism/RenderTarget;
    new-instance v3, Lcom/sun/javafx/geom/Rectangle;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v2

    invoke-interface {v5}, Lcom/sun/prism/RenderTarget;->getContentWidth()I

    move-result v5

    move-object v6, v2

    invoke-interface {v6}, Lcom/sun/prism/RenderTarget;->getContentHeight()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/geom/Rectangle;-><init>(II)V

    move-object v1, v3

    .line 265
    .end local v2    # "rt":Lcom/sun/prism/RenderTarget;
    :cond_0
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "g":Lcom/sun/prism/Graphics;
    return-object v0
.end method

.method static project(FFDDLcom/sun/javafx/sg/prism/NGCamera;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/PickRay;Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Point2D;)Lcom/sun/javafx/geom/Point2D;
    .locals 24

    .prologue
    .line 192
    move/from16 v3, p0

    .local v3, "x":F
    move/from16 v4, p1

    .local v4, "y":F
    move-wide/from16 v5, p2

    .local v5, "vw":D
    move-wide/from16 v7, p4

    .local v7, "vh":D
    move-object/from16 v9, p6

    .local v9, "cam":Lcom/sun/javafx/sg/prism/NGCamera;
    move-object/from16 v10, p7

    .local v10, "inv":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v11, p8

    .local v11, "tmpray":Lcom/sun/javafx/geom/PickRay;
    move-object/from16 v12, p9

    .local v12, "tmpvec":Lcom/sun/javafx/geom/Vec3d;
    move-object/from16 v13, p10

    .local v13, "ret":Lcom/sun/javafx/geom/Point2D;
    move-object/from16 v18, v9

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/sg/prism/NGCamera;->getViewWidth()D

    move-result-wide v18

    move-wide/from16 v20, v5

    div-double v18, v18, v20

    move-wide/from16 v14, v18

    .line 193
    .local v14, "xscale":D
    move-object/from16 v18, v9

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/sg/prism/NGCamera;->getViewHeight()D

    move-result-wide v18

    move-wide/from16 v20, v7

    div-double v18, v18, v20

    move-wide/from16 v16, v18

    .line 194
    .local v16, "yscale":D
    move/from16 v18, v3

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v20, v14

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    move/from16 v3, v18

    .line 195
    move/from16 v18, v4

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v20, v16

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    move/from16 v4, v18

    .line 196
    move-object/from16 v18, v9

    move/from16 v19, v3

    move/from16 v20, v4

    move-object/from16 v21, v11

    invoke-virtual/range {v18 .. v21}, Lcom/sun/javafx/sg/prism/NGCamera;->computePickRay(FFLcom/sun/javafx/geom/PickRay;)Lcom/sun/javafx/geom/PickRay;

    move-result-object v18

    move-object/from16 v11, v18

    .line 197
    move-object/from16 v18, v11

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/geom/PickRay;->getOriginNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v18

    move-wide/from16 v19, v14

    move-wide/from16 v21, v16

    invoke-static/range {v18 .. v22}, Lcom/sun/scenario/effect/impl/prism/PrEffectHelper;->unscale(Lcom/sun/javafx/geom/Vec3d;DD)V

    .line 198
    move-object/from16 v18, v11

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/geom/PickRay;->getDirectionNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v18

    move-wide/from16 v19, v14

    move-wide/from16 v21, v16

    invoke-static/range {v18 .. v22}, Lcom/sun/scenario/effect/impl/prism/PrEffectHelper;->unscale(Lcom/sun/javafx/geom/Vec3d;DD)V

    .line 199
    move-object/from16 v18, v11

    move-object/from16 v19, v10

    move-object/from16 v20, v9

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/sun/javafx/sg/prism/NGPerspectiveCamera;

    move/from16 v20, v0

    move-object/from16 v21, v12

    move-object/from16 v22, v13

    invoke-virtual/range {v18 .. v22}, Lcom/sun/javafx/geom/PickRay;->projectToZeroPlane(Lcom/sun/javafx/geom/transform/BaseTransform;ZLcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Point2D;)Lcom/sun/javafx/geom/Point2D;

    move-result-object v18

    move-object/from16 v3, v18

    .end local v3    # "x":F
    return-object v3
.end method

.method public static render(Lcom/sun/scenario/effect/Effect;Lcom/sun/prism/Graphics;FFLcom/sun/scenario/effect/Effect;)V
    .locals 46

    .prologue
    .line 75
    move-object/from16 v3, p0

    .local v3, "effect":Lcom/sun/scenario/effect/Effect;
    move-object/from16 v4, p1

    .local v4, "g":Lcom/sun/prism/Graphics;
    move/from16 v5, p2

    .local v5, "x":F
    move/from16 v6, p3

    .local v6, "y":F
    move-object/from16 v7, p4

    .local v7, "defaultInput":Lcom/sun/scenario/effect/Effect;
    move-object/from16 v34, v4

    invoke-static/range {v34 .. v34}, Lcom/sun/scenario/effect/impl/prism/PrEffectHelper;->getGraphicsClipNoClone(Lcom/sun/prism/Graphics;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v34

    move-object/from16 v9, v34

    .line 76
    .local v9, "rclip":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v34, v4

    invoke-interface/range {v34 .. v34}, Lcom/sun/prism/Graphics;->getTransformNoClone()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Lcom/sun/javafx/geom/transform/BaseTransform;->copy()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v34

    move-object/from16 v10, v34

    .line 78
    .local v10, "origtx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v34, v10

    invoke-virtual/range {v34 .. v34}, Lcom/sun/javafx/geom/transform/BaseTransform;->is2D()Z

    move-result v34

    if-eqz v34, :cond_3

    .line 81
    move/from16 v34, v5

    const/16 v35, 0x0

    cmpl-float v34, v34, v35

    if-nez v34, :cond_0

    move/from16 v34, v6

    const/16 v35, 0x0

    cmpl-float v34, v34, v35

    if-nez v34, :cond_0

    move-object/from16 v34, v10

    invoke-virtual/range {v34 .. v34}, Lcom/sun/javafx/geom/transform/BaseTransform;->isIdentity()Z

    move-result v34

    if-nez v34, :cond_2

    .line 82
    :cond_0
    new-instance v34, Lcom/sun/javafx/geom/transform/Affine2D;

    move-object/from16 v45, v34

    move-object/from16 v34, v45

    move-object/from16 v35, v45

    move-object/from16 v36, v10

    invoke-direct/range {v35 .. v36}, Lcom/sun/javafx/geom/transform/Affine2D;-><init>(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    move-object/from16 v8, v34

    .line 83
    .local v8, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v34, v8

    check-cast v34, Lcom/sun/javafx/geom/transform/Affine2D;

    move/from16 v35, v5

    move/from16 v0, v35

    float-to-double v0, v0

    move-wide/from16 v35, v0

    move/from16 v37, v6

    move/from16 v0, v37

    float-to-double v0, v0

    move-wide/from16 v37, v0

    invoke-virtual/range {v34 .. v38}, Lcom/sun/javafx/geom/transform/Affine2D;->translate(DD)V

    .line 87
    :goto_0
    move-object/from16 v34, v4

    const/16 v35, 0x0

    invoke-interface/range {v34 .. v35}, Lcom/sun/prism/Graphics;->setTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 88
    const/16 v34, 0x0

    move-object/from16 v11, v34

    .line 134
    .local v11, "rendertx":Lcom/sun/javafx/geom/transform/BaseTransform;
    :goto_1
    move-object/from16 v34, v4

    invoke-interface/range {v34 .. v34}, Lcom/sun/prism/Graphics;->getAssociatedScreen()Lcom/sun/glass/ui/Screen;

    move-result-object v34

    move-object/from16 v12, v34

    .line 137
    .local v12, "screen":Lcom/sun/glass/ui/Screen;
    move-object/from16 v34, v12

    if-nez v34, :cond_5

    .line 138
    move-object/from16 v34, v4

    invoke-interface/range {v34 .. v34}, Lcom/sun/prism/Graphics;->getResourceFactory()Lcom/sun/prism/ResourceFactory;

    move-result-object v34

    move-object/from16 v14, v34

    .line 139
    .local v14, "factory":Lcom/sun/prism/ResourceFactory;
    move-object/from16 v34, v14

    invoke-static/range {v34 .. v34}, Lcom/sun/scenario/effect/impl/prism/PrFilterContext;->getPrinterContext(Ljava/lang/Object;)Lcom/sun/scenario/effect/impl/prism/PrFilterContext;

    move-result-object v34

    move-object/from16 v13, v34

    .line 146
    .end local v14    # "factory":Lcom/sun/prism/ResourceFactory;
    .local v13, "fctx":Lcom/sun/scenario/effect/FilterContext;
    :goto_2
    move-object/from16 v34, v11

    if-eqz v34, :cond_6

    .line 149
    const/16 v34, 0x0

    move-object/from16 v14, v34

    .line 163
    .local v14, "prinfo":Lcom/sun/scenario/effect/impl/prism/PrRenderInfo;
    :goto_3
    sget-wide v34, Lcom/sun/scenario/effect/impl/ImagePool;->numEffects:J

    const-wide/16 v36, 0x1

    add-long v34, v34, v36

    sput-wide v34, Lcom/sun/scenario/effect/impl/ImagePool;->numEffects:J

    .line 166
    :cond_1
    move-object/from16 v34, v3

    move-object/from16 v35, v13

    move-object/from16 v36, v8

    move-object/from16 v37, v9

    move-object/from16 v38, v14

    move-object/from16 v39, v7

    invoke-virtual/range {v34 .. v39}, Lcom/sun/scenario/effect/Effect;->filter(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Ljava/lang/Object;Lcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/ImageData;

    move-result-object v34

    move-object/from16 v16, v34

    .line 167
    .local v16, "res":Lcom/sun/scenario/effect/ImageData;
    move-object/from16 v34, v16

    if-nez v34, :cond_8

    .line 181
    .end local v12    # "screen":Lcom/sun/glass/ui/Screen;
    .end local v13    # "fctx":Lcom/sun/scenario/effect/FilterContext;
    .end local v14    # "prinfo":Lcom/sun/scenario/effect/impl/prism/PrRenderInfo;
    .end local v16    # "res":Lcom/sun/scenario/effect/ImageData;
    :goto_4
    return-void

    .line 85
    .end local v8    # "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    .end local v11    # "rendertx":Lcom/sun/javafx/geom/transform/BaseTransform;
    :cond_2
    sget-object v34, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v8, v34

    .restart local v8    # "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    goto :goto_0

    .line 98
    .end local v8    # "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    :cond_3
    move-object/from16 v34, v10

    invoke-virtual/range {v34 .. v34}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxx()D

    move-result-wide v34

    move-object/from16 v36, v10

    invoke-virtual/range {v36 .. v36}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyx()D

    move-result-wide v36

    invoke-static/range {v34 .. v37}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v34

    move-wide/from16 v12, v34

    .line 99
    .local v12, "scalex":D
    move-object/from16 v34, v10

    invoke-virtual/range {v34 .. v34}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxy()D

    move-result-wide v34

    move-object/from16 v36, v10

    invoke-virtual/range {v36 .. v36}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyy()D

    move-result-wide v36

    invoke-static/range {v34 .. v37}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v34

    move-wide/from16 v14, v34

    .line 100
    .local v14, "scaley":D
    move-wide/from16 v34, v12

    move-wide/from16 v36, v14

    invoke-static/range {v34 .. v37}, Ljava/lang/Math;->max(DD)D

    move-result-wide v34

    move-wide/from16 v16, v34

    .line 101
    .local v16, "scale":D
    move-wide/from16 v34, v16

    const-wide/high16 v36, 0x3ff0000000000000L    # 1.0

    cmpg-double v34, v34, v36

    if-gtz v34, :cond_4

    .line 102
    sget-object v34, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v8, v34

    .line 103
    .restart local v8    # "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v34, v10

    move-object/from16 v11, v34

    .line 110
    .restart local v11    # "rendertx":Lcom/sun/javafx/geom/transform/BaseTransform;
    :goto_5
    move-object/from16 v34, v4

    invoke-interface/range {v34 .. v34}, Lcom/sun/prism/Graphics;->getCameraNoClone()Lcom/sun/javafx/sg/prism/NGCamera;

    move-result-object v34

    move-object/from16 v18, v34

    .line 113
    .local v18, "cam":Lcom/sun/javafx/sg/prism/NGCamera;
    move-object/from16 v34, v11

    :try_start_0
    invoke-virtual/range {v34 .. v34}, Lcom/sun/javafx/geom/transform/BaseTransform;->createInverse()Lcom/sun/javafx/geom/transform/BaseTransform;
    :try_end_0
    .catch Lcom/sun/javafx/geom/transform/NoninvertibleTransformException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v34

    move-object/from16 v19, v34

    .line 116
    .line 117
    .local v19, "inv":Lcom/sun/javafx/geom/transform/BaseTransform;
    new-instance v34, Lcom/sun/javafx/geom/PickRay;

    move-object/from16 v45, v34

    move-object/from16 v34, v45

    move-object/from16 v35, v45

    invoke-direct/range {v35 .. v35}, Lcom/sun/javafx/geom/PickRay;-><init>()V

    move-object/from16 v20, v34

    .line 118
    .local v20, "ray":Lcom/sun/javafx/geom/PickRay;
    new-instance v34, Lcom/sun/javafx/geom/Vec3d;

    move-object/from16 v45, v34

    move-object/from16 v34, v45

    move-object/from16 v35, v45

    invoke-direct/range {v35 .. v35}, Lcom/sun/javafx/geom/Vec3d;-><init>()V

    move-object/from16 v21, v34

    .line 121
    .local v21, "tmpvec":Lcom/sun/javafx/geom/Vec3d;
    move-object/from16 v34, v9

    move-object/from16 v0, v34

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->x:I

    move/from16 v34, v0

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    const/high16 v35, 0x3f000000    # 0.5f

    add-float v34, v34, v35

    move/from16 v22, v34

    .line 122
    .local v22, "x1":F
    move-object/from16 v34, v9

    move-object/from16 v0, v34

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->y:I

    move/from16 v34, v0

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    const/high16 v35, 0x3f000000    # 0.5f

    add-float v34, v34, v35

    move/from16 v23, v34

    .line 123
    .local v23, "y1":F
    move-object/from16 v34, v9

    move-object/from16 v0, v34

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->x:I

    move/from16 v34, v0

    move-object/from16 v35, v9

    move-object/from16 v0, v35

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->width:I

    move/from16 v35, v0

    add-int v34, v34, v35

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    const/high16 v35, 0x3f000000    # 0.5f

    sub-float v34, v34, v35

    move/from16 v24, v34

    .line 124
    .local v24, "x2":F
    move-object/from16 v34, v9

    move-object/from16 v0, v34

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->y:I

    move/from16 v34, v0

    move-object/from16 v35, v9

    move-object/from16 v0, v35

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->height:I

    move/from16 v35, v0

    add-int v34, v34, v35

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    const/high16 v35, 0x3f000000    # 0.5f

    sub-float v34, v34, v35

    move/from16 v25, v34

    .line 125
    .local v25, "y2":F
    move-object/from16 v34, v4

    invoke-interface/range {v34 .. v34}, Lcom/sun/prism/Graphics;->getRenderTarget()Lcom/sun/prism/RenderTarget;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Lcom/sun/prism/RenderTarget;->getContentWidth()I

    move-result v34

    move/from16 v0, v34

    int-to-double v0, v0

    move-wide/from16 v34, v0

    move-wide/from16 v26, v34

    .line 126
    .local v26, "rtw":D
    move-object/from16 v34, v4

    invoke-interface/range {v34 .. v34}, Lcom/sun/prism/Graphics;->getRenderTarget()Lcom/sun/prism/RenderTarget;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Lcom/sun/prism/RenderTarget;->getContentHeight()I

    move-result v34

    move/from16 v0, v34

    int-to-double v0, v0

    move-wide/from16 v34, v0

    move-wide/from16 v28, v34

    .line 127
    .local v28, "rth":D
    move/from16 v34, v22

    move/from16 v35, v23

    move-wide/from16 v36, v26

    move-wide/from16 v38, v28

    move-object/from16 v40, v18

    move-object/from16 v41, v19

    move-object/from16 v42, v20

    move-object/from16 v43, v21

    const/16 v44, 0x0

    invoke-static/range {v34 .. v44}, Lcom/sun/scenario/effect/impl/prism/PrEffectHelper;->project(FFDDLcom/sun/javafx/sg/prism/NGCamera;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/PickRay;Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Point2D;)Lcom/sun/javafx/geom/Point2D;

    move-result-object v34

    move-object/from16 v30, v34

    .line 128
    .local v30, "cul":Lcom/sun/javafx/geom/Point2D;
    move/from16 v34, v24

    move/from16 v35, v23

    move-wide/from16 v36, v26

    move-wide/from16 v38, v28

    move-object/from16 v40, v18

    move-object/from16 v41, v19

    move-object/from16 v42, v20

    move-object/from16 v43, v21

    const/16 v44, 0x0

    invoke-static/range {v34 .. v44}, Lcom/sun/scenario/effect/impl/prism/PrEffectHelper;->project(FFDDLcom/sun/javafx/sg/prism/NGCamera;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/PickRay;Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Point2D;)Lcom/sun/javafx/geom/Point2D;

    move-result-object v34

    move-object/from16 v31, v34

    .line 129
    .local v31, "cur":Lcom/sun/javafx/geom/Point2D;
    move/from16 v34, v22

    move/from16 v35, v25

    move-wide/from16 v36, v26

    move-wide/from16 v38, v28

    move-object/from16 v40, v18

    move-object/from16 v41, v19

    move-object/from16 v42, v20

    move-object/from16 v43, v21

    const/16 v44, 0x0

    invoke-static/range {v34 .. v44}, Lcom/sun/scenario/effect/impl/prism/PrEffectHelper;->project(FFDDLcom/sun/javafx/sg/prism/NGCamera;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/PickRay;Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Point2D;)Lcom/sun/javafx/geom/Point2D;

    move-result-object v34

    move-object/from16 v32, v34

    .line 130
    .local v32, "cll":Lcom/sun/javafx/geom/Point2D;
    move/from16 v34, v24

    move/from16 v35, v25

    move-wide/from16 v36, v26

    move-wide/from16 v38, v28

    move-object/from16 v40, v18

    move-object/from16 v41, v19

    move-object/from16 v42, v20

    move-object/from16 v43, v21

    const/16 v44, 0x0

    invoke-static/range {v34 .. v44}, Lcom/sun/scenario/effect/impl/prism/PrEffectHelper;->project(FFDDLcom/sun/javafx/sg/prism/NGCamera;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/PickRay;Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Point2D;)Lcom/sun/javafx/geom/Point2D;

    move-result-object v34

    move-object/from16 v33, v34

    .line 131
    .local v33, "clr":Lcom/sun/javafx/geom/Point2D;
    move-object/from16 v34, v30

    move-object/from16 v35, v31

    move-object/from16 v36, v32

    move-object/from16 v37, v33

    invoke-static/range {v34 .. v37}, Lcom/sun/scenario/effect/impl/prism/PrEffectHelper;->clipbounds(Lcom/sun/javafx/geom/Point2D;Lcom/sun/javafx/geom/Point2D;Lcom/sun/javafx/geom/Point2D;Lcom/sun/javafx/geom/Point2D;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v34

    move-object/from16 v9, v34

    goto/16 :goto_1

    .line 105
    .end local v8    # "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    .end local v11    # "rendertx":Lcom/sun/javafx/geom/transform/BaseTransform;
    .end local v18    # "cam":Lcom/sun/javafx/sg/prism/NGCamera;
    .end local v19    # "inv":Lcom/sun/javafx/geom/transform/BaseTransform;
    .end local v20    # "ray":Lcom/sun/javafx/geom/PickRay;
    .end local v21    # "tmpvec":Lcom/sun/javafx/geom/Vec3d;
    .end local v22    # "x1":F
    .end local v23    # "y1":F
    .end local v24    # "x2":F
    .end local v25    # "y2":F
    .end local v26    # "rtw":D
    .end local v28    # "rth":D
    .end local v30    # "cul":Lcom/sun/javafx/geom/Point2D;
    .end local v31    # "cur":Lcom/sun/javafx/geom/Point2D;
    .end local v32    # "cll":Lcom/sun/javafx/geom/Point2D;
    .end local v33    # "clr":Lcom/sun/javafx/geom/Point2D;
    :cond_4
    move-wide/from16 v34, v16

    move-wide/from16 v36, v16

    invoke-static/range {v34 .. v37}, Lcom/sun/javafx/geom/transform/BaseTransform;->getScaleInstance(DD)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v34

    move-object/from16 v8, v34

    .line 106
    .restart local v8    # "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    new-instance v34, Lcom/sun/javafx/geom/transform/Affine3D;

    move-object/from16 v45, v34

    move-object/from16 v34, v45

    move-object/from16 v35, v45

    move-object/from16 v36, v10

    invoke-direct/range {v35 .. v36}, Lcom/sun/javafx/geom/transform/Affine3D;-><init>(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    move-object/from16 v11, v34

    .line 107
    .restart local v11    # "rendertx":Lcom/sun/javafx/geom/transform/BaseTransform;
    const-wide/high16 v34, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v36, v16

    div-double v34, v34, v36

    move-wide/from16 v16, v34

    .line 108
    move-object/from16 v34, v11

    check-cast v34, Lcom/sun/javafx/geom/transform/Affine3D;

    move-wide/from16 v35, v16

    move-wide/from16 v37, v16

    invoke-virtual/range {v34 .. v38}, Lcom/sun/javafx/geom/transform/Affine3D;->scale(DD)V

    goto/16 :goto_5

    .line 114
    .restart local v18    # "cam":Lcom/sun/javafx/sg/prism/NGCamera;
    :catch_0
    move-exception v34

    move-object/from16 v20, v34

    .line 115
    .local v20, "e":Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
    goto/16 :goto_4

    .line 141
    .end local v14    # "scaley":D
    .end local v16    # "scale":D
    .end local v18    # "cam":Lcom/sun/javafx/sg/prism/NGCamera;
    .end local v20    # "e":Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
    .local v12, "screen":Lcom/sun/glass/ui/Screen;
    :cond_5
    move-object/from16 v34, v12

    invoke-static/range {v34 .. v34}, Lcom/sun/scenario/effect/impl/prism/PrFilterContext;->getInstance(Lcom/sun/glass/ui/Screen;)Lcom/sun/scenario/effect/impl/prism/PrFilterContext;

    move-result-object v34

    move-object/from16 v13, v34

    .restart local v13    # "fctx":Lcom/sun/scenario/effect/FilterContext;
    goto/16 :goto_2

    .line 150
    :cond_6
    move-object/from16 v34, v4

    invoke-interface/range {v34 .. v34}, Lcom/sun/prism/Graphics;->isDepthBuffer()Z

    move-result v34

    if-eqz v34, :cond_7

    move-object/from16 v34, v4

    invoke-interface/range {v34 .. v34}, Lcom/sun/prism/Graphics;->isDepthTest()Z

    move-result v34

    if-eqz v34, :cond_7

    .line 155
    const/16 v34, 0x0

    move-object/from16 v14, v34

    .local v14, "prinfo":Lcom/sun/scenario/effect/impl/prism/PrRenderInfo;
    goto/16 :goto_3

    .line 160
    .end local v14    # "prinfo":Lcom/sun/scenario/effect/impl/prism/PrRenderInfo;
    :cond_7
    new-instance v34, Lcom/sun/scenario/effect/impl/prism/PrRenderInfo;

    move-object/from16 v45, v34

    move-object/from16 v34, v45

    move-object/from16 v35, v45

    move-object/from16 v36, v4

    invoke-direct/range {v35 .. v36}, Lcom/sun/scenario/effect/impl/prism/PrRenderInfo;-><init>(Lcom/sun/prism/Graphics;)V

    move-object/from16 v14, v34

    .restart local v14    # "prinfo":Lcom/sun/scenario/effect/impl/prism/PrRenderInfo;
    goto/16 :goto_3

    .line 168
    .local v16, "res":Lcom/sun/scenario/effect/ImageData;
    :cond_8
    move-object/from16 v34, v16

    move-object/from16 v35, v13

    invoke-virtual/range {v34 .. v35}, Lcom/sun/scenario/effect/ImageData;->validate(Lcom/sun/scenario/effect/FilterContext;)Z

    move-result v34

    move/from16 v45, v34

    move/from16 v34, v45

    move/from16 v35, v45

    move/from16 v15, v35

    .local v15, "valid":Z
    if-eqz v34, :cond_9

    .line 169
    move-object/from16 v34, v16

    invoke-virtual/range {v34 .. v34}, Lcom/sun/scenario/effect/ImageData;->getUntransformedBounds()Lcom/sun/javafx/geom/Rectangle;

    move-result-object v34

    move-object/from16 v17, v34

    .line 173
    .local v17, "r":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v34, v16

    invoke-virtual/range {v34 .. v34}, Lcom/sun/scenario/effect/ImageData;->getUntransformedImage()Lcom/sun/scenario/effect/Filterable;

    move-result-object v34

    check-cast v34, Lcom/sun/scenario/effect/impl/prism/PrTexture;

    invoke-virtual/range {v34 .. v34}, Lcom/sun/scenario/effect/impl/prism/PrTexture;->getTextureObject()Lcom/sun/prism/Texture;

    move-result-object v34

    move-object/from16 v18, v34

    .line 174
    .local v18, "tex":Lcom/sun/prism/Texture;
    move-object/from16 v34, v4

    move-object/from16 v35, v11

    invoke-interface/range {v34 .. v35}, Lcom/sun/prism/Graphics;->setTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 175
    move-object/from16 v34, v4

    move-object/from16 v35, v16

    invoke-virtual/range {v35 .. v35}, Lcom/sun/scenario/effect/ImageData;->getTransform()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v35

    invoke-interface/range {v34 .. v35}, Lcom/sun/prism/Graphics;->transform(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 176
    move-object/from16 v34, v4

    move-object/from16 v35, v18

    move-object/from16 v36, v17

    move-object/from16 v0, v36

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->x:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    move-object/from16 v37, v17

    move-object/from16 v0, v37

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->y:I

    move/from16 v37, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    move-object/from16 v38, v17

    move-object/from16 v0, v38

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->width:I

    move/from16 v38, v0

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    move-object/from16 v39, v17

    move-object/from16 v0, v39

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->height:I

    move/from16 v39, v0

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v39, v0

    invoke-interface/range {v34 .. v39}, Lcom/sun/prism/Graphics;->drawTexture(Lcom/sun/prism/Texture;FFFF)V

    .line 178
    .end local v17    # "r":Lcom/sun/javafx/geom/Rectangle;
    .end local v18    # "tex":Lcom/sun/prism/Texture;
    :cond_9
    move-object/from16 v34, v16

    invoke-virtual/range {v34 .. v34}, Lcom/sun/scenario/effect/ImageData;->unref()V

    .line 179
    move/from16 v34, v15

    if-eqz v34, :cond_1

    .line 180
    move-object/from16 v34, v4

    move-object/from16 v35, v10

    invoke-interface/range {v34 .. v35}, Lcom/sun/prism/Graphics;->setTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 181
    goto/16 :goto_4
.end method

.method public static renderImageData(Lcom/sun/prism/Graphics;Lcom/sun/scenario/effect/ImageData;Lcom/sun/javafx/geom/Rectangle;)V
    .locals 35

    .prologue
    .line 272
    move-object/from16 v2, p0

    .local v2, "gdst":Lcom/sun/prism/Graphics;
    move-object/from16 v3, p1

    .local v3, "srcData":Lcom/sun/scenario/effect/ImageData;
    move-object/from16 v4, p2

    .local v4, "dstBounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->width:I

    move/from16 v20, v0

    move/from16 v5, v20

    .line 273
    .local v5, "w":I
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->height:I

    move/from16 v20, v0

    move/from16 v6, v20

    .line 274
    .local v6, "h":I
    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Lcom/sun/scenario/effect/ImageData;->getUntransformedImage()Lcom/sun/scenario/effect/Filterable;

    move-result-object v20

    check-cast v20, Lcom/sun/scenario/effect/impl/prism/PrDrawable;

    move-object/from16 v7, v20

    .line 275
    .local v7, "src":Lcom/sun/scenario/effect/impl/prism/PrDrawable;
    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Lcom/sun/scenario/effect/ImageData;->getTransform()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v20

    move-object/from16 v8, v20

    .line 276
    .local v8, "srcTx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Lcom/sun/scenario/effect/ImageData;->getUntransformedBounds()Lcom/sun/javafx/geom/Rectangle;

    move-result-object v20

    move-object/from16 v9, v20

    .line 277
    .local v9, "srcBounds":Lcom/sun/javafx/geom/Rectangle;
    const/16 v20, 0x0

    move/from16 v10, v20

    .line 278
    .local v10, "dx1":F
    const/16 v20, 0x0

    move/from16 v11, v20

    .line 279
    .local v11, "dy1":F
    move/from16 v20, v10

    move/from16 v21, v5

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v20, v20, v21

    move/from16 v12, v20

    .line 280
    .local v12, "dx2":F
    move/from16 v20, v11

    move/from16 v21, v6

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v20, v20, v21

    move/from16 v13, v20

    .line 281
    .local v13, "dy2":F
    move-object/from16 v20, v8

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/transform/BaseTransform;->isTranslateOrIdentity()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 282
    move-object/from16 v20, v8

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxt()D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    move/from16 v14, v20

    .line 283
    .local v14, "tx":F
    move-object/from16 v20, v8

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyt()D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    move/from16 v15, v20

    .line 284
    .local v15, "ty":F
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->x:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v21, v9

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->x:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v22, v14

    add-float v21, v21, v22

    sub-float v20, v20, v21

    move/from16 v16, v20

    .line 285
    .local v16, "sx1":F
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->y:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v21, v9

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->y:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v22, v15

    add-float v21, v21, v22

    sub-float v20, v20, v21

    move/from16 v17, v20

    .line 286
    .local v17, "sy1":F
    move/from16 v20, v16

    move/from16 v21, v5

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v20, v20, v21

    move/from16 v18, v20

    .line 287
    .local v18, "sx2":F
    move/from16 v20, v17

    move/from16 v21, v6

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v20, v20, v21

    move/from16 v19, v20

    .line 288
    .local v19, "sy2":F
    move-object/from16 v20, v2

    move-object/from16 v21, v7

    invoke-virtual/range {v21 .. v21}, Lcom/sun/scenario/effect/impl/prism/PrDrawable;->getTextureObject()Lcom/sun/prism/Texture;

    move-result-object v21

    move/from16 v22, v10

    move/from16 v23, v11

    move/from16 v24, v12

    move/from16 v25, v13

    move/from16 v26, v16

    move/from16 v27, v17

    move/from16 v28, v18

    move/from16 v29, v19

    invoke-interface/range {v20 .. v29}, Lcom/sun/prism/Graphics;->drawTexture(Lcom/sun/prism/Texture;FFFFFFFF)V

    .line 291
    .line 313
    .end local v14    # "tx":F
    .end local v15    # "ty":F
    .end local v16    # "sx1":F
    .end local v17    # "sy1":F
    .end local v18    # "sx2":F
    .end local v19    # "sy2":F
    :goto_0
    return-void

    .line 292
    :cond_0
    const/16 v20, 0x8

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    move-object/from16 v14, v20

    .line 293
    .local v14, "srcRect":[F
    move-object/from16 v20, v14

    move-object/from16 v21, v9

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->x:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->y:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v23, v7

    .line 296
    invoke-virtual/range {v23 .. v23}, Lcom/sun/scenario/effect/impl/prism/PrDrawable;->getPhysicalWidth()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v24, v7

    .line 297
    invoke-virtual/range {v24 .. v24}, Lcom/sun/scenario/effect/impl/prism/PrDrawable;->getPhysicalHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v25, v4

    move-object/from16 v26, v8

    .line 294
    invoke-static/range {v20 .. v26}, Lcom/sun/scenario/effect/impl/EffectPeer;->getTextureCoordinates([FFFFFLcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/transform/BaseTransform;)I

    move-result v20

    move/from16 v15, v20

    .line 299
    .local v15, "srcCoords":I
    move/from16 v20, v15

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    .line 300
    move-object/from16 v20, v2

    move-object/from16 v21, v7

    invoke-virtual/range {v21 .. v21}, Lcom/sun/scenario/effect/impl/prism/PrDrawable;->getTextureObject()Lcom/sun/prism/Texture;

    move-result-object v21

    move/from16 v22, v10

    move/from16 v23, v11

    move/from16 v24, v12

    move/from16 v25, v13

    move-object/from16 v26, v14

    const/16 v27, 0x0

    aget v26, v26, v27

    move-object/from16 v27, v14

    const/16 v28, 0x1

    aget v27, v27, v28

    move-object/from16 v28, v14

    const/16 v29, 0x2

    aget v28, v28, v29

    move-object/from16 v29, v14

    const/16 v30, 0x3

    aget v29, v29, v30

    invoke-interface/range {v20 .. v29}, Lcom/sun/prism/Graphics;->drawTextureRaw(Lcom/sun/prism/Texture;FFFFFFFF)V

    goto :goto_0

    .line 305
    :cond_1
    move-object/from16 v20, v2

    move-object/from16 v21, v7

    invoke-virtual/range {v21 .. v21}, Lcom/sun/scenario/effect/impl/prism/PrDrawable;->getTextureObject()Lcom/sun/prism/Texture;

    move-result-object v21

    move/from16 v22, v10

    move/from16 v23, v11

    move/from16 v24, v12

    move/from16 v25, v13

    move-object/from16 v26, v14

    const/16 v27, 0x0

    aget v26, v26, v27

    move-object/from16 v27, v14

    const/16 v28, 0x1

    aget v27, v27, v28

    move-object/from16 v28, v14

    const/16 v29, 0x4

    aget v28, v28, v29

    move-object/from16 v29, v14

    const/16 v30, 0x5

    aget v29, v29, v30

    move-object/from16 v30, v14

    const/16 v31, 0x6

    aget v30, v30, v31

    move-object/from16 v31, v14

    const/16 v32, 0x7

    aget v31, v31, v32

    move-object/from16 v32, v14

    const/16 v33, 0x2

    aget v32, v32, v33

    move-object/from16 v33, v14

    const/16 v34, 0x3

    aget v33, v33, v34

    invoke-interface/range {v20 .. v33}, Lcom/sun/prism/Graphics;->drawMappedTextureRaw(Lcom/sun/prism/Texture;FFFFFFFFFFFF)V

    goto/16 :goto_0
.end method

.method private static unscale(Lcom/sun/javafx/geom/Vec3d;DD)V
    .locals 11

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "v":Lcom/sun/javafx/geom/Vec3d;
    move-wide v1, p1

    .local v1, "sx":D
    move-wide v3, p3

    .local v3, "sy":D
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget-wide v6, v6, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide v8, v1

    div-double/2addr v6, v8

    iput-wide v6, v5, Lcom/sun/javafx/geom/Vec3d;->x:D

    .line 204
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget-wide v6, v6, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide v8, v3

    div-double/2addr v6, v8

    iput-wide v6, v5, Lcom/sun/javafx/geom/Vec3d;->y:D

    .line 205
    return-void
.end method
