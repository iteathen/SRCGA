.class Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
.super Ljavafx/scene/transform/Transform;
.source "TransformUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/transform/TransformUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImmutableTransform"
.end annotation


# static fields
.field private static final APPLY_3D_COMPLEX:I = 0x4

.field private static final APPLY_IDENTITY:I = 0x0

.field private static final APPLY_NON_3D:I = 0x0

.field private static final APPLY_SCALE:I = 0x2

.field private static final APPLY_SHEAR:I = 0x4

.field private static final APPLY_TRANSLATE:I = 0x1


# instance fields
.field private transient state2d:I

.field private transient state3d:I

.field private xt:D

.field private xx:D

.field private xy:D

.field private xz:D

.field private yt:D

.field private yx:D

.field private yy:D

.field private yz:D

.field private zt:D

.field private zx:D

.field private zy:D

.field private zz:D


# direct methods
.method public constructor <init>()V
    .locals 12

    .prologue
    .line 171
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    move-object v2, v1

    invoke-direct {v2}, Ljavafx/scene/transform/Transform;-><init>()V

    .line 172
    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    move-object v9, v4

    move-wide v10, v5

    move-wide v4, v10

    move-object v6, v9

    move-wide v7, v10

    iput-wide v7, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zz:D

    move-object v9, v3

    move-wide v10, v4

    move-wide v3, v10

    move-object v5, v9

    move-wide v6, v10

    iput-wide v6, v5, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yy:D

    iput-wide v3, v2, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xx:D

    .line 173
    return-void
.end method

.method public constructor <init>(DDDDDDDDDDDD)V
    .locals 31

    .prologue
    .line 186
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    move-wide/from16 v4, p1

    .local v4, "mxx":D
    move-wide/from16 v6, p3

    .local v6, "mxy":D
    move-wide/from16 v8, p5

    .local v8, "mxz":D
    move-wide/from16 v10, p7

    .local v10, "tx":D
    move-wide/from16 v12, p9

    .local v12, "myx":D
    move-wide/from16 v14, p11

    .local v14, "myy":D
    move-wide/from16 v16, p13

    .local v16, "myz":D
    move-wide/from16 v18, p15

    .local v18, "ty":D
    move-wide/from16 v20, p17

    .local v20, "mzx":D
    move-wide/from16 v22, p19

    .local v22, "mzy":D
    move-wide/from16 v24, p21

    .local v24, "mzz":D
    move-wide/from16 v26, p23

    .local v26, "tz":D
    move-object/from16 v28, v3

    invoke-direct/range {v28 .. v28}, Ljavafx/scene/transform/Transform;-><init>()V

    .line 187
    move-object/from16 v28, v3

    move-wide/from16 v29, v4

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xx:D

    .line 188
    move-object/from16 v28, v3

    move-wide/from16 v29, v6

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xy:D

    .line 189
    move-object/from16 v28, v3

    move-wide/from16 v29, v8

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xz:D

    .line 190
    move-object/from16 v28, v3

    move-wide/from16 v29, v10

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xt:D

    .line 192
    move-object/from16 v28, v3

    move-wide/from16 v29, v12

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yx:D

    .line 193
    move-object/from16 v28, v3

    move-wide/from16 v29, v14

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yy:D

    .line 194
    move-object/from16 v28, v3

    move-wide/from16 v29, v16

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yz:D

    .line 195
    move-object/from16 v28, v3

    move-wide/from16 v29, v18

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yt:D

    .line 197
    move-object/from16 v28, v3

    move-wide/from16 v29, v20

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zx:D

    .line 198
    move-object/from16 v28, v3

    move-wide/from16 v29, v22

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zy:D

    .line 199
    move-object/from16 v28, v3

    move-wide/from16 v29, v24

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zz:D

    .line 200
    move-object/from16 v28, v3

    move-wide/from16 v29, v26

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zt:D

    .line 202
    move-object/from16 v28, v3

    invoke-direct/range {v28 .. v28}, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->updateState()V

    .line 203
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/transform/Transform;)V
    .locals 28

    .prologue
    .line 176
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    move-object/from16 v2, p1

    .local v2, "transform":Ljavafx/scene/transform/Transform;
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/transform/Transform;->getMxx()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/transform/Transform;->getMxy()D

    move-result-wide v6

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/scene/transform/Transform;->getMxz()D

    move-result-wide v8

    move-object v10, v2

    .line 177
    invoke-virtual {v10}, Ljavafx/scene/transform/Transform;->getTx()D

    move-result-wide v10

    move-object v12, v2

    .line 178
    invoke-virtual {v12}, Ljavafx/scene/transform/Transform;->getMyx()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/scene/transform/Transform;->getMyy()D

    move-result-wide v14

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/transform/Transform;->getMyz()D

    move-result-wide v16

    move-object/from16 v18, v2

    .line 179
    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/transform/Transform;->getTy()D

    move-result-wide v18

    move-object/from16 v20, v2

    .line 180
    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/transform/Transform;->getMzx()D

    move-result-wide v20

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/transform/Transform;->getMzy()D

    move-result-wide v22

    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Transform;->getMzz()D

    move-result-wide v24

    move-object/from16 v26, v2

    .line 181
    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/transform/Transform;->getTz()D

    move-result-wide v26

    .line 176
    invoke-direct/range {v3 .. v27}, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;-><init>(DDDDDDDDDDDD)V

    .line 182
    return-void
.end method

.method static synthetic access$000(Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;DDDDDDDDDDDD)V
    .locals 51

    .prologue
    .line 147
    move-object/from16 v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    move-wide/from16 v1, p1

    .local v1, "x1":D
    move-wide/from16 v3, p3

    .local v3, "x2":D
    move-wide/from16 v5, p5

    .local v5, "x3":D
    move-wide/from16 v7, p7

    .local v7, "x4":D
    move-wide/from16 v9, p9

    .local v9, "x5":D
    move-wide/from16 v11, p11

    .local v11, "x6":D
    move-wide/from16 v13, p13

    .local v13, "x7":D
    move-wide/from16 v15, p15

    .local v15, "x8":D
    move-wide/from16 v17, p17

    .local v17, "x9":D
    move-wide/from16 v19, p19

    .local v19, "x10":D
    move-wide/from16 v21, p21

    .local v21, "x11":D
    move-wide/from16 v23, p23

    .local v23, "x12":D
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

    invoke-direct/range {v25 .. v49}, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->setToTransform(DDDDDDDDDDDD)V

    return-void
.end method

.method static synthetic access$100(Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;)V
    .locals 6

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    move-object v2, p2

    .local v2, "x2":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->setToConcatenation(Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;)V

    return-void
.end method

.method private setToConcatenation(Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;)V
    .locals 15

    .prologue
    .line 231
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    move-object/from16 v1, p1

    .local v1, "left":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    move-object/from16 v2, p2

    .local v2, "right":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->state3d:I

    if-nez v3, :cond_1

    move-object v3, v2

    iget v3, v3, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->state3d:I

    if-nez v3, :cond_1

    .line 232
    move-object v3, v0

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xx:D

    move-object v6, v2

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xx:D

    mul-double/2addr v4, v6

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xy:D

    move-object v8, v2

    iget-wide v8, v8, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yx:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    iput-wide v4, v3, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xx:D

    .line 233
    move-object v3, v0

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xx:D

    move-object v6, v2

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xy:D

    mul-double/2addr v4, v6

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xy:D

    move-object v8, v2

    iget-wide v8, v8, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yy:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    iput-wide v4, v3, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xy:D

    .line 234
    move-object v3, v0

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xx:D

    move-object v6, v2

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xt:D

    mul-double/2addr v4, v6

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xy:D

    move-object v8, v2

    iget-wide v8, v8, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yt:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xt:D

    add-double/2addr v4, v6

    iput-wide v4, v3, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xt:D

    .line 235
    move-object v3, v0

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yx:D

    move-object v6, v2

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xx:D

    mul-double/2addr v4, v6

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yy:D

    move-object v8, v2

    iget-wide v8, v8, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yx:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    iput-wide v4, v3, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yx:D

    .line 236
    move-object v3, v0

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yx:D

    move-object v6, v2

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xy:D

    mul-double/2addr v4, v6

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yy:D

    move-object v8, v2

    iget-wide v8, v8, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yy:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    iput-wide v4, v3, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yy:D

    .line 237
    move-object v3, v0

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yx:D

    move-object v6, v2

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xt:D

    mul-double/2addr v4, v6

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yy:D

    move-object v8, v2

    iget-wide v8, v8, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yt:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yt:D

    add-double/2addr v4, v6

    iput-wide v4, v3, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yt:D

    .line 238
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->state3d:I

    if-eqz v3, :cond_0

    .line 239
    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    move-object v7, v0

    const-wide/16 v8, 0x0

    move-object v12, v7

    move-wide v13, v8

    move-wide v7, v13

    move-object v9, v12

    move-wide v10, v13

    iput-wide v10, v9, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zt:D

    move-object v12, v6

    move-wide v13, v7

    move-wide v6, v13

    move-object v8, v12

    move-wide v9, v13

    iput-wide v9, v8, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zy:D

    move-object v12, v5

    move-wide v13, v6

    move-wide v5, v13

    move-object v7, v12

    move-wide v8, v13

    iput-wide v8, v7, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zx:D

    move-object v12, v4

    move-wide v13, v5

    move-wide v4, v13

    move-object v6, v12

    move-wide v7, v13

    iput-wide v7, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yz:D

    iput-wide v4, v3, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xz:D

    .line 240
    move-object v3, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iput-wide v4, v3, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zz:D

    .line 241
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->state3d:I

    .line 243
    :cond_0
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->updateState2D()V

    .line 261
    :goto_0
    return-void

    .line 245
    :cond_1
    move-object v3, v0

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xx:D

    move-object v6, v2

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xx:D

    mul-double/2addr v4, v6

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xy:D

    move-object v8, v2

    iget-wide v8, v8, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yx:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xz:D

    move-object v8, v2

    iget-wide v8, v8, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zx:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    iput-wide v4, v3, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xx:D

    .line 246
    move-object v3, v0

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xx:D

    move-object v6, v2

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xy:D

    mul-double/2addr v4, v6

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xy:D

    move-object v8, v2

    iget-wide v8, v8, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yy:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xz:D

    move-object v8, v2

    iget-wide v8, v8, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zy:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    iput-wide v4, v3, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xy:D

    .line 247
    move-object v3, v0

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xx:D

    move-object v6, v2

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xz:D

    mul-double/2addr v4, v6

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xy:D

    move-object v8, v2

    iget-wide v8, v8, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yz:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xz:D

    move-object v8, v2

    iget-wide v8, v8, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zz:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    iput-wide v4, v3, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xz:D

    .line 248
    move-object v3, v0

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xx:D

    move-object v6, v2

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xt:D

    mul-double/2addr v4, v6

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xy:D

    move-object v8, v2

    iget-wide v8, v8, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yt:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xz:D

    move-object v8, v2

    iget-wide v8, v8, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zt:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xt:D

    add-double/2addr v4, v6

    iput-wide v4, v3, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xt:D

    .line 249
    move-object v3, v0

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yx:D

    move-object v6, v2

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xx:D

    mul-double/2addr v4, v6

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yy:D

    move-object v8, v2

    iget-wide v8, v8, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yx:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yz:D

    move-object v8, v2

    iget-wide v8, v8, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zx:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    iput-wide v4, v3, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yx:D

    .line 250
    move-object v3, v0

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yx:D

    move-object v6, v2

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xy:D

    mul-double/2addr v4, v6

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yy:D

    move-object v8, v2

    iget-wide v8, v8, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yy:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yz:D

    move-object v8, v2

    iget-wide v8, v8, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zy:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    iput-wide v4, v3, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yy:D

    .line 251
    move-object v3, v0

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yx:D

    move-object v6, v2

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xz:D

    mul-double/2addr v4, v6

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yy:D

    move-object v8, v2

    iget-wide v8, v8, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yz:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yz:D

    move-object v8, v2

    iget-wide v8, v8, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zz:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    iput-wide v4, v3, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yz:D

    .line 252
    move-object v3, v0

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yx:D

    move-object v6, v2

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xt:D

    mul-double/2addr v4, v6

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yy:D

    move-object v8, v2

    iget-wide v8, v8, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yt:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yz:D

    move-object v8, v2

    iget-wide v8, v8, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zt:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yt:D

    add-double/2addr v4, v6

    iput-wide v4, v3, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yt:D

    .line 253
    move-object v3, v0

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zx:D

    move-object v6, v2

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xx:D

    mul-double/2addr v4, v6

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zy:D

    move-object v8, v2

    iget-wide v8, v8, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yx:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zz:D

    move-object v8, v2

    iget-wide v8, v8, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zx:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    iput-wide v4, v3, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zx:D

    .line 254
    move-object v3, v0

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zx:D

    move-object v6, v2

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xy:D

    mul-double/2addr v4, v6

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zy:D

    move-object v8, v2

    iget-wide v8, v8, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yy:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zz:D

    move-object v8, v2

    iget-wide v8, v8, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zy:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    iput-wide v4, v3, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zy:D

    .line 255
    move-object v3, v0

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zx:D

    move-object v6, v2

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xz:D

    mul-double/2addr v4, v6

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zy:D

    move-object v8, v2

    iget-wide v8, v8, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yz:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zz:D

    move-object v8, v2

    iget-wide v8, v8, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zz:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    iput-wide v4, v3, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zz:D

    .line 256
    move-object v3, v0

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zx:D

    move-object v6, v2

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xt:D

    mul-double/2addr v4, v6

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zy:D

    move-object v8, v2

    iget-wide v8, v8, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yt:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zz:D

    move-object v8, v2

    iget-wide v8, v8, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zt:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zt:D

    add-double/2addr v4, v6

    iput-wide v4, v3, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zt:D

    .line 257
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->updateState()V

    goto/16 :goto_0
.end method

.method private setToTransform(DDDDDDDDDDDD)V
    .locals 31

    .prologue
    .line 212
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    move-wide/from16 v4, p1

    .local v4, "mxx":D
    move-wide/from16 v6, p3

    .local v6, "mxy":D
    move-wide/from16 v8, p5

    .local v8, "mxz":D
    move-wide/from16 v10, p7

    .local v10, "tx":D
    move-wide/from16 v12, p9

    .local v12, "myx":D
    move-wide/from16 v14, p11

    .local v14, "myy":D
    move-wide/from16 v16, p13

    .local v16, "myz":D
    move-wide/from16 v18, p15

    .local v18, "ty":D
    move-wide/from16 v20, p17

    .local v20, "mzx":D
    move-wide/from16 v22, p19

    .local v22, "mzy":D
    move-wide/from16 v24, p21

    .local v24, "mzz":D
    move-wide/from16 v26, p23

    .local v26, "tz":D
    move-object/from16 v28, v3

    move-wide/from16 v29, v4

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xx:D

    .line 213
    move-object/from16 v28, v3

    move-wide/from16 v29, v6

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xy:D

    .line 214
    move-object/from16 v28, v3

    move-wide/from16 v29, v8

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xz:D

    .line 215
    move-object/from16 v28, v3

    move-wide/from16 v29, v10

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xt:D

    .line 216
    move-object/from16 v28, v3

    move-wide/from16 v29, v12

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yx:D

    .line 217
    move-object/from16 v28, v3

    move-wide/from16 v29, v14

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yy:D

    .line 218
    move-object/from16 v28, v3

    move-wide/from16 v29, v16

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yz:D

    .line 219
    move-object/from16 v28, v3

    move-wide/from16 v29, v18

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yt:D

    .line 220
    move-object/from16 v28, v3

    move-wide/from16 v29, v20

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zx:D

    .line 221
    move-object/from16 v28, v3

    move-wide/from16 v29, v22

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zy:D

    .line 222
    move-object/from16 v28, v3

    move-wide/from16 v29, v24

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zz:D

    .line 223
    move-object/from16 v28, v3

    move-wide/from16 v29, v26

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zt:D

    .line 224
    move-object/from16 v28, v3

    invoke-direct/range {v28 .. v28}, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->updateState()V

    .line 225
    return-void
.end method

.method private static stateError()V
    .locals 4

    .prologue
    .line 830
    new-instance v0, Ljava/lang/InternalError;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string v2, "missing case in a switch"

    invoke-direct {v1, v2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateState()V
    .locals 7

    .prologue
    .line 761
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    move-object v2, v1

    invoke-direct {v2}, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->updateState2D()V

    .line 763
    move-object v2, v1

    const/4 v3, 0x0

    iput v3, v2, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->state3d:I

    .line 765
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xz:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yz:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zx:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zy:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_2

    .line 770
    :cond_0
    move-object v2, v1

    const/4 v3, 0x4

    iput v3, v2, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->state3d:I

    .line 788
    :cond_1
    :goto_0
    return-void

    .line 772
    :cond_2
    move-object v2, v1

    iget v2, v2, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->state2d:I

    const/4 v3, 0x4

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_5

    .line 773
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zt:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_3

    .line 774
    move-object v2, v1

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->state3d:I

    const/4 v4, 0x1

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->state3d:I

    .line 776
    :cond_3
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zz:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_4

    .line 777
    move-object v2, v1

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->state3d:I

    const/4 v4, 0x2

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->state3d:I

    .line 779
    :cond_4
    move-object v2, v1

    iget v2, v2, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->state3d:I

    if-eqz v2, :cond_1

    .line 780
    move-object v2, v1

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->state3d:I

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->state2d:I

    const/4 v5, 0x3

    and-int/lit8 v4, v4, 0x3

    or-int/2addr v3, v4

    iput v3, v2, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->state3d:I

    goto :goto_0

    .line 783
    :cond_5
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zz:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_6

    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zt:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_1

    .line 784
    :cond_6
    move-object v2, v1

    const/4 v3, 0x4

    iput v3, v2, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->state3d:I

    goto :goto_0
.end method

.method private updateState2D()V
    .locals 6

    .prologue
    .line 791
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xy:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_3

    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yx:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_3

    .line 792
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xx:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_1

    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yy:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_1

    .line 793
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xt:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yt:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    .line 794
    move-object v2, v1

    const/4 v3, 0x0

    iput v3, v2, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->state2d:I

    .line 820
    :goto_0
    return-void

    .line 796
    :cond_0
    move-object v2, v1

    const/4 v3, 0x1

    iput v3, v2, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->state2d:I

    goto :goto_0

    .line 799
    :cond_1
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xt:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yt:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    .line 800
    move-object v2, v1

    const/4 v3, 0x2

    iput v3, v2, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->state2d:I

    goto :goto_0

    .line 802
    :cond_2
    move-object v2, v1

    const/4 v3, 0x3

    iput v3, v2, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->state2d:I

    goto :goto_0

    .line 806
    :cond_3
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xx:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_5

    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yy:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_5

    .line 807
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xt:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_4

    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yt:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_4

    .line 808
    move-object v2, v1

    const/4 v3, 0x4

    iput v3, v2, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->state2d:I

    goto :goto_0

    .line 810
    :cond_4
    move-object v2, v1

    const/4 v3, 0x5

    iput v3, v2, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->state2d:I

    goto :goto_0

    .line 813
    :cond_5
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xt:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_6

    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yt:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_6

    .line 814
    move-object v2, v1

    const/4 v3, 0x6

    iput v3, v2, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->state2d:I

    goto :goto_0

    .line 816
    :cond_6
    move-object v2, v1

    const/4 v3, 0x7

    iput v3, v2, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->state2d:I

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->clone()Ljavafx/scene/transform/Transform;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    return-object v0
.end method

.method public clone()Ljavafx/scene/transform/Transform;
    .locals 5

    .prologue
    .line 381
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    new-instance v1, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;-><init>(Ljavafx/scene/transform/Transform;)V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    return-object v0
.end method

.method public createConcatenation(Ljavafx/scene/transform/Transform;)Ljavafx/scene/transform/Transform;
    .locals 7

    .prologue
    .line 367
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    move-object v1, p1

    .local v1, "transform":Ljavafx/scene/transform/Transform;
    new-instance v3, Ljavafx/scene/transform/Affine;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Ljavafx/scene/transform/Affine;-><init>(Ljavafx/scene/transform/Transform;)V

    move-object v2, v3

    .line 368
    .local v2, "a":Ljavafx/scene/transform/Affine;
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/transform/Affine;->append(Ljavafx/scene/transform/Transform;)V

    .line 369
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    return-object v0
.end method

.method public createInverse()Ljavafx/scene/transform/Affine;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/scene/transform/NonInvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 374
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    new-instance v2, Ljavafx/scene/transform/Affine;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/transform/Affine;-><init>(Ljavafx/scene/transform/Transform;)V

    move-object v1, v2

    .line 375
    .local v1, "t":Ljavafx/scene/transform/Affine;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Affine;->invert()V

    .line 376
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    return-object v0
.end method

.method public bridge synthetic createInverse()Ljavafx/scene/transform/Transform;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/scene/transform/NonInvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->createInverse()Ljavafx/scene/transform/Affine;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    return-object v0
.end method

.method public deltaTransform(DD)Ljavafx/geometry/Point2D;
    .locals 17

    .prologue
    .line 480
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->ensureCanTransform2DPoint()V

    .line 482
    move-object v6, v1

    iget v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->state2d:I

    packed-switch v6, :pswitch_data_0

    .line 484
    invoke-static {}, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->stateError()V

    .line 488
    :pswitch_0
    new-instance v6, Ljavafx/geometry/Point2D;

    move-object/from16 v16, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v16

    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xx:D

    move-wide v10, v2

    mul-double/2addr v8, v10

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xy:D

    move-wide v12, v4

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yx:D

    move-wide v12, v2

    mul-double/2addr v10, v12

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yy:D

    move-wide v14, v4

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v1, v6

    .line 499
    .end local v1    # "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    :goto_0
    return-object v1

    .line 493
    .restart local v1    # "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    :pswitch_1
    new-instance v6, Ljavafx/geometry/Point2D;

    move-object/from16 v16, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v16

    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xy:D

    move-wide v10, v4

    mul-double/2addr v8, v10

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yx:D

    move-wide v12, v2

    mul-double/2addr v10, v12

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v1, v6

    goto :goto_0

    .line 496
    :pswitch_2
    new-instance v6, Ljavafx/geometry/Point2D;

    move-object/from16 v16, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v16

    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xx:D

    move-wide v10, v2

    mul-double/2addr v8, v10

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yy:D

    move-wide v12, v4

    mul-double/2addr v10, v12

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v1, v6

    goto :goto_0

    .line 499
    :pswitch_3
    new-instance v6, Ljavafx/geometry/Point2D;

    move-object/from16 v16, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v16

    move-wide v8, v2

    move-wide v10, v4

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v1, v6

    goto :goto_0

    .line 482
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public deltaTransform(DDD)Ljavafx/geometry/Point3D;
    .locals 23

    .prologue
    .line 505
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    move-wide/from16 v4, p1

    .local v4, "x":D
    move-wide/from16 v6, p3

    .local v6, "y":D
    move-wide/from16 v8, p5

    .local v8, "z":D
    move-object v10, v3

    iget v10, v10, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->state3d:I

    packed-switch v10, :pswitch_data_0

    .line 507
    invoke-static {}, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->stateError()V

    .line 510
    :pswitch_0
    move-object v10, v3

    iget v10, v10, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->state2d:I

    packed-switch v10, :pswitch_data_1

    .line 512
    invoke-static {}, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->stateError()V

    .line 516
    :pswitch_1
    new-instance v10, Ljavafx/geometry/Point3D;

    move-object/from16 v22, v10

    move-object/from16 v10, v22

    move-object/from16 v11, v22

    move-object v12, v3

    iget-wide v12, v12, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xx:D

    move-wide v14, v4

    mul-double/2addr v12, v14

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xy:D

    move-wide/from16 v16, v6

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yx:D

    move-wide/from16 v16, v4

    mul-double v14, v14, v16

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yy:D

    move-wide/from16 v16, v0

    move-wide/from16 v18, v6

    mul-double v16, v16, v18

    add-double v14, v14, v16

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v17}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v3, v10

    .line 535
    .end local v3    # "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    :goto_0
    return-object v3

    .line 521
    .restart local v3    # "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    :pswitch_2
    new-instance v10, Ljavafx/geometry/Point3D;

    move-object/from16 v22, v10

    move-object/from16 v10, v22

    move-object/from16 v11, v22

    move-object v12, v3

    iget-wide v12, v12, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xy:D

    move-wide v14, v6

    mul-double/2addr v12, v14

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yx:D

    move-wide/from16 v16, v4

    mul-double v14, v14, v16

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v17}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v3, v10

    goto :goto_0

    .line 524
    :pswitch_3
    new-instance v10, Ljavafx/geometry/Point3D;

    move-object/from16 v22, v10

    move-object/from16 v10, v22

    move-object/from16 v11, v22

    move-object v12, v3

    iget-wide v12, v12, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xx:D

    move-wide v14, v4

    mul-double/2addr v12, v14

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yy:D

    move-wide/from16 v16, v6

    mul-double v14, v14, v16

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v17}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v3, v10

    goto :goto_0

    .line 527
    :pswitch_4
    new-instance v10, Ljavafx/geometry/Point3D;

    move-object/from16 v22, v10

    move-object/from16 v10, v22

    move-object/from16 v11, v22

    move-wide v12, v4

    move-wide v14, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v17}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v3, v10

    goto :goto_0

    .line 530
    :pswitch_5
    new-instance v10, Ljavafx/geometry/Point3D;

    move-object/from16 v22, v10

    move-object/from16 v10, v22

    move-object/from16 v11, v22

    move-wide v12, v4

    move-wide v14, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v17}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v3, v10

    goto :goto_0

    .line 533
    :pswitch_6
    new-instance v10, Ljavafx/geometry/Point3D;

    move-object/from16 v22, v10

    move-object/from16 v10, v22

    move-object/from16 v11, v22

    move-object v12, v3

    iget-wide v12, v12, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xx:D

    move-wide v14, v4

    mul-double/2addr v12, v14

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yy:D

    move-wide/from16 v16, v6

    mul-double v14, v14, v16

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zz:D

    move-wide/from16 v16, v0

    move-wide/from16 v18, v8

    mul-double v16, v16, v18

    invoke-direct/range {v11 .. v17}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v3, v10

    goto :goto_0

    .line 535
    :pswitch_7
    new-instance v10, Ljavafx/geometry/Point3D;

    move-object/from16 v22, v10

    move-object/from16 v10, v22

    move-object/from16 v11, v22

    move-object v12, v3

    iget-wide v12, v12, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xx:D

    move-wide v14, v4

    mul-double/2addr v12, v14

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xy:D

    move-wide/from16 v16, v6

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xz:D

    move-wide/from16 v16, v8

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yx:D

    move-wide/from16 v16, v4

    mul-double v14, v14, v16

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yy:D

    move-wide/from16 v16, v0

    move-wide/from16 v18, v6

    mul-double v16, v16, v18

    add-double v14, v14, v16

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yz:D

    move-wide/from16 v16, v0

    move-wide/from16 v18, v8

    mul-double v16, v16, v18

    add-double v14, v14, v16

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zx:D

    move-wide/from16 v16, v0

    move-wide/from16 v18, v4

    mul-double v16, v16, v18

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zy:D

    move-wide/from16 v18, v0

    move-wide/from16 v20, v6

    mul-double v18, v18, v20

    add-double v16, v16, v18

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zz:D

    move-wide/from16 v18, v0

    move-wide/from16 v20, v8

    mul-double v18, v18, v20

    add-double v16, v16, v18

    invoke-direct/range {v11 .. v17}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v3, v10

    goto/16 :goto_0

    .line 505
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 510
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public determinant()D
    .locals 12

    .prologue
    .line 331
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    move-object v2, v1

    iget v2, v2, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->state3d:I

    packed-switch v2, :pswitch_data_0

    .line 333
    invoke-static {}, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->stateError()V

    .line 336
    :pswitch_0
    move-object v2, v1

    iget v2, v2, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->state2d:I

    packed-switch v2, :pswitch_data_1

    .line 338
    invoke-static {}, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->stateError()V

    .line 342
    :pswitch_1
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xx:D

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yy:D

    mul-double/2addr v2, v4

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xy:D

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yx:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    move-wide v1, v2

    .line 359
    .end local v1    # "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    :goto_0
    return-wide v1

    .line 345
    .restart local v1    # "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    :pswitch_2
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xy:D

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yx:D

    mul-double/2addr v2, v4

    neg-double v2, v2

    move-wide v1, v2

    goto :goto_0

    .line 348
    :pswitch_3
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xx:D

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yy:D

    mul-double/2addr v2, v4

    move-wide v1, v2

    goto :goto_0

    .line 351
    :pswitch_4
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    move-wide v1, v2

    goto :goto_0

    .line 354
    :pswitch_5
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    move-wide v1, v2

    goto :goto_0

    .line 357
    :pswitch_6
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xx:D

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yy:D

    mul-double/2addr v2, v4

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zz:D

    mul-double/2addr v2, v4

    move-wide v1, v2

    goto :goto_0

    .line 359
    :pswitch_7
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xx:D

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yy:D

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zz:D

    mul-double/2addr v4, v6

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zy:D

    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yz:D

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xy:D

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yz:D

    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zx:D

    mul-double/2addr v6, v8

    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zz:D

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yx:D

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xz:D

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yx:D

    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zy:D

    mul-double/2addr v6, v8

    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zx:D

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yy:D

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    move-wide v1, v2

    goto :goto_0

    .line 331
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 336
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method ensureCanTransform2DPoint()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 823
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->state3d:I

    if-eqz v1, :cond_0

    .line 824
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Cannot transform 2D point with a 3D transform"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 827
    :cond_0
    return-void
.end method

.method public getMxx()D
    .locals 3

    .prologue
    .line 265
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xx:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    return-wide v0
.end method

.method public getMxy()D
    .locals 3

    .prologue
    .line 270
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xy:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    return-wide v0
.end method

.method public getMxz()D
    .locals 3

    .prologue
    .line 275
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xz:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    return-wide v0
.end method

.method public getMyx()D
    .locals 3

    .prologue
    .line 285
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yx:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    return-wide v0
.end method

.method public getMyy()D
    .locals 3

    .prologue
    .line 290
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yy:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    return-wide v0
.end method

.method public getMyz()D
    .locals 3

    .prologue
    .line 295
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yz:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    return-wide v0
.end method

.method public getMzx()D
    .locals 3

    .prologue
    .line 305
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zx:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    return-wide v0
.end method

.method public getMzy()D
    .locals 3

    .prologue
    .line 310
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zy:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    return-wide v0
.end method

.method public getMzz()D
    .locals 3

    .prologue
    .line 315
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zz:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    return-wide v0
.end method

.method getState2d()I
    .locals 2

    .prologue
    .line 861
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->state2d:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    return v0
.end method

.method getState3d()I
    .locals 2

    .prologue
    .line 868
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->state3d:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    return v0
.end method

.method public getTx()D
    .locals 3

    .prologue
    .line 280
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xt:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    return-wide v0
.end method

.method public getTy()D
    .locals 3

    .prologue
    .line 300
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yt:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    return-wide v0
.end method

.method public getTz()D
    .locals 3

    .prologue
    .line 320
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zt:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    return-wide v0
.end method

.method public impl_apply(Lcom/sun/javafx/geom/transform/Affine3D;)V
    .locals 30
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 840
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    move-object/from16 v4, p1

    .local v4, "trans":Lcom/sun/javafx/geom/transform/Affine3D;
    move-object v5, v4

    move-object v6, v3

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xx:D

    move-object v8, v3

    iget-wide v8, v8, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xy:D

    move-object v10, v3

    iget-wide v10, v10, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xz:D

    move-object v12, v3

    iget-wide v12, v12, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xt:D

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yx:D

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yy:D

    move-wide/from16 v16, v0

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yz:D

    move-wide/from16 v18, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yt:D

    move-wide/from16 v20, v0

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zx:D

    move-wide/from16 v22, v0

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zy:D

    move-wide/from16 v24, v0

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zz:D

    move-wide/from16 v26, v0

    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zt:D

    move-wide/from16 v28, v0

    invoke-virtual/range {v5 .. v29}, Lcom/sun/javafx/geom/transform/Affine3D;->concatenate(DDDDDDDDDDDD)V

    .line 843
    return-void
.end method

.method public impl_derive(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 30
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 852
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    move-object/from16 v4, p1

    .local v4, "trans":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v5, v4

    move-object v6, v3

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xx:D

    move-object v8, v3

    iget-wide v8, v8, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xy:D

    move-object v10, v3

    iget-wide v10, v10, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xz:D

    move-object v12, v3

    iget-wide v12, v12, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xt:D

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yx:D

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yy:D

    move-wide/from16 v16, v0

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yz:D

    move-wide/from16 v18, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yt:D

    move-wide/from16 v20, v0

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zx:D

    move-wide/from16 v22, v0

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zy:D

    move-wide/from16 v24, v0

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zz:D

    move-wide/from16 v26, v0

    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zt:D

    move-wide/from16 v28, v0

    invoke-virtual/range {v5 .. v29}, Lcom/sun/javafx/geom/transform/BaseTransform;->deriveWithConcatenation(DDDDDDDDDDDD)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v5

    move-object v3, v5

    .end local v3    # "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    return-object v3
.end method

.method public inverseDeltaTransform(DD)Ljavafx/geometry/Point2D;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/scene/transform/NonInvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 653
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->ensureCanTransform2DPoint()V

    .line 655
    move-object v6, v1

    iget v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->state2d:I

    packed-switch v6, :pswitch_data_0

    .line 657
    move-object v6, v1

    move-wide v7, v2

    move-wide v9, v4

    invoke-super {v6, v7, v8, v9, v10}, Ljavafx/scene/transform/Transform;->inverseDeltaTransform(DD)Ljavafx/geometry/Point2D;

    move-result-object v6

    move-object v1, v6

    .line 672
    .end local v1    # "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    :goto_0
    return-object v1

    .line 660
    .restart local v1    # "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    :pswitch_0
    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xy:D

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-eqz v6, :cond_0

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yx:D

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_1

    .line 661
    :cond_0
    new-instance v6, Ljavafx/scene/transform/NonInvertibleTransformException;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    const-string v8, "Determinant is 0"

    invoke-direct {v7, v8}, Ljavafx/scene/transform/NonInvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 663
    :cond_1
    new-instance v6, Ljavafx/geometry/Point2D;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yx:D

    div-double/2addr v8, v10

    move-wide v10, v4

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xy:D

    div-double/2addr v10, v12

    move-wide v12, v2

    mul-double/2addr v10, v12

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v1, v6

    goto :goto_0

    .line 666
    :pswitch_1
    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xx:D

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-eqz v6, :cond_2

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yy:D

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_3

    .line 667
    :cond_2
    new-instance v6, Ljavafx/scene/transform/NonInvertibleTransformException;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    const-string v8, "Determinant is 0"

    invoke-direct {v7, v8}, Ljavafx/scene/transform/NonInvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 669
    :cond_3
    new-instance v6, Ljavafx/geometry/Point2D;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xx:D

    div-double/2addr v8, v10

    move-wide v10, v2

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yy:D

    div-double/2addr v10, v12

    move-wide v12, v4

    mul-double/2addr v10, v12

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v1, v6

    goto :goto_0

    .line 672
    :pswitch_2
    new-instance v6, Ljavafx/geometry/Point2D;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    move-wide v8, v2

    move-wide v10, v4

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v1, v6

    goto :goto_0

    .line 655
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public inverseDeltaTransform(DDD)Ljavafx/geometry/Point3D;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/scene/transform/NonInvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 679
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    move-wide/from16 v4, p1

    .local v4, "x":D
    move-wide/from16 v6, p3

    .local v6, "y":D
    move-wide/from16 v8, p5

    .local v8, "z":D
    move-object v10, v3

    iget v10, v10, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->state3d:I

    packed-switch v10, :pswitch_data_0

    .line 681
    invoke-static {}, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->stateError()V

    .line 684
    :pswitch_0
    move-object v10, v3

    iget v10, v10, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->state2d:I

    packed-switch v10, :pswitch_data_1

    .line 686
    move-object v10, v3

    move-wide v11, v4

    move-wide v13, v6

    move-wide v15, v8

    invoke-super/range {v10 .. v16}, Ljavafx/scene/transform/Transform;->inverseDeltaTransform(DDD)Ljavafx/geometry/Point3D;

    move-result-object v10

    move-object v3, v10

    .line 722
    .end local v3    # "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    :goto_0
    return-object v3

    .line 689
    .restart local v3    # "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    :pswitch_1
    move-object v10, v3

    iget-wide v10, v10, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xy:D

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-eqz v10, :cond_0

    move-object v10, v3

    iget-wide v10, v10, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yx:D

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-nez v10, :cond_1

    .line 690
    :cond_0
    new-instance v10, Ljavafx/scene/transform/NonInvertibleTransformException;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const-string v12, "Determinant is 0"

    invoke-direct {v11, v12}, Ljavafx/scene/transform/NonInvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 693
    :cond_1
    new-instance v10, Ljavafx/geometry/Point3D;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yx:D

    div-double/2addr v12, v14

    move-wide v14, v6

    mul-double/2addr v12, v14

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xy:D

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    move-wide/from16 v16, v4

    mul-double v14, v14, v16

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v17}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v3, v10

    goto :goto_0

    .line 698
    :pswitch_2
    move-object v10, v3

    iget-wide v10, v10, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xx:D

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-eqz v10, :cond_2

    move-object v10, v3

    iget-wide v10, v10, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yy:D

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-nez v10, :cond_3

    .line 699
    :cond_2
    new-instance v10, Ljavafx/scene/transform/NonInvertibleTransformException;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const-string v12, "Determinant is 0"

    invoke-direct {v11, v12}, Ljavafx/scene/transform/NonInvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 702
    :cond_3
    new-instance v10, Ljavafx/geometry/Point3D;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xx:D

    div-double/2addr v12, v14

    move-wide v14, v4

    mul-double/2addr v12, v14

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yy:D

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    move-wide/from16 v16, v6

    mul-double v14, v14, v16

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v17}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v3, v10

    goto/16 :goto_0

    .line 707
    :pswitch_3
    new-instance v10, Ljavafx/geometry/Point3D;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    move-wide v12, v4

    move-wide v14, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v17}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v3, v10

    goto/16 :goto_0

    .line 711
    :pswitch_4
    new-instance v10, Ljavafx/geometry/Point3D;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    move-wide v12, v4

    move-wide v14, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v17}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v3, v10

    goto/16 :goto_0

    .line 714
    :pswitch_5
    move-object v10, v3

    iget-wide v10, v10, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xx:D

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-eqz v10, :cond_4

    move-object v10, v3

    iget-wide v10, v10, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yy:D

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-eqz v10, :cond_4

    move-object v10, v3

    iget-wide v10, v10, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zz:D

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-nez v10, :cond_5

    .line 715
    :cond_4
    new-instance v10, Ljavafx/scene/transform/NonInvertibleTransformException;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const-string v12, "Determinant is 0"

    invoke-direct {v11, v12}, Ljavafx/scene/transform/NonInvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 717
    :cond_5
    new-instance v10, Ljavafx/geometry/Point3D;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xx:D

    div-double/2addr v12, v14

    move-wide v14, v4

    mul-double/2addr v12, v14

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yy:D

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    move-wide/from16 v16, v6

    mul-double v14, v14, v16

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zz:D

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    move-wide/from16 v18, v8

    mul-double v16, v16, v18

    invoke-direct/range {v11 .. v17}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v3, v10

    goto/16 :goto_0

    .line 722
    :pswitch_6
    move-object v10, v3

    move-wide v11, v4

    move-wide v13, v6

    move-wide v15, v8

    invoke-super/range {v10 .. v16}, Ljavafx/scene/transform/Transform;->inverseDeltaTransform(DDD)Ljavafx/geometry/Point3D;

    move-result-object v10

    move-object v3, v10

    goto/16 :goto_0

    .line 679
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 684
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public inverseTransform(DD)Ljavafx/geometry/Point2D;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/scene/transform/NonInvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 545
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->ensureCanTransform2DPoint()V

    .line 547
    move-object v6, v1

    iget v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->state2d:I

    packed-switch v6, :pswitch_data_0

    .line 549
    move-object v6, v1

    move-wide v7, v2

    move-wide v9, v4

    invoke-super {v6, v7, v8, v9, v10}, Ljavafx/scene/transform/Transform;->inverseTransform(DD)Ljavafx/geometry/Point2D;

    move-result-object v6

    move-object v1, v6

    .line 577
    .end local v1    # "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    :goto_0
    return-object v1

    .line 551
    .restart local v1    # "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    :pswitch_0
    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xy:D

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-eqz v6, :cond_0

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yx:D

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_1

    .line 552
    :cond_0
    new-instance v6, Ljavafx/scene/transform/NonInvertibleTransformException;

    move-object/from16 v16, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v16

    const-string v8, "Determinant is 0"

    invoke-direct {v7, v8}, Ljavafx/scene/transform/NonInvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 554
    :cond_1
    new-instance v6, Ljavafx/geometry/Point2D;

    move-object/from16 v16, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v16

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yx:D

    div-double/2addr v8, v10

    move-wide v10, v4

    mul-double/2addr v8, v10

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yt:D

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yx:D

    div-double/2addr v10, v12

    sub-double/2addr v8, v10

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xy:D

    div-double/2addr v10, v12

    move-wide v12, v2

    mul-double/2addr v10, v12

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xt:D

    move-object v14, v1

    iget-wide v14, v14, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xy:D

    div-double/2addr v12, v14

    sub-double/2addr v10, v12

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v1, v6

    goto :goto_0

    .line 558
    :pswitch_1
    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xy:D

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-eqz v6, :cond_2

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yx:D

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_3

    .line 559
    :cond_2
    new-instance v6, Ljavafx/scene/transform/NonInvertibleTransformException;

    move-object/from16 v16, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v16

    const-string v8, "Determinant is 0"

    invoke-direct {v7, v8}, Ljavafx/scene/transform/NonInvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 561
    :cond_3
    new-instance v6, Ljavafx/geometry/Point2D;

    move-object/from16 v16, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v16

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yx:D

    div-double/2addr v8, v10

    move-wide v10, v4

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xy:D

    div-double/2addr v10, v12

    move-wide v12, v2

    mul-double/2addr v10, v12

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v1, v6

    goto/16 :goto_0

    .line 563
    :pswitch_2
    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xx:D

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-eqz v6, :cond_4

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yy:D

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_5

    .line 564
    :cond_4
    new-instance v6, Ljavafx/scene/transform/NonInvertibleTransformException;

    move-object/from16 v16, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v16

    const-string v8, "Determinant is 0"

    invoke-direct {v7, v8}, Ljavafx/scene/transform/NonInvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 566
    :cond_5
    new-instance v6, Ljavafx/geometry/Point2D;

    move-object/from16 v16, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v16

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xx:D

    div-double/2addr v8, v10

    move-wide v10, v2

    mul-double/2addr v8, v10

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xt:D

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xx:D

    div-double/2addr v10, v12

    sub-double/2addr v8, v10

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yy:D

    div-double/2addr v10, v12

    move-wide v12, v4

    mul-double/2addr v10, v12

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yt:D

    move-object v14, v1

    iget-wide v14, v14, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yy:D

    div-double/2addr v12, v14

    sub-double/2addr v10, v12

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v1, v6

    goto/16 :goto_0

    .line 570
    :pswitch_3
    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xx:D

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-eqz v6, :cond_6

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yy:D

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_7

    .line 571
    :cond_6
    new-instance v6, Ljavafx/scene/transform/NonInvertibleTransformException;

    move-object/from16 v16, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v16

    const-string v8, "Determinant is 0"

    invoke-direct {v7, v8}, Ljavafx/scene/transform/NonInvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 573
    :cond_7
    new-instance v6, Ljavafx/geometry/Point2D;

    move-object/from16 v16, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v16

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xx:D

    div-double/2addr v8, v10

    move-wide v10, v2

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yy:D

    div-double/2addr v10, v12

    move-wide v12, v4

    mul-double/2addr v10, v12

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v1, v6

    goto/16 :goto_0

    .line 575
    :pswitch_4
    new-instance v6, Ljavafx/geometry/Point2D;

    move-object/from16 v16, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v16

    move-wide v8, v2

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xt:D

    sub-double/2addr v8, v10

    move-wide v10, v4

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yt:D

    sub-double/2addr v10, v12

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v1, v6

    goto/16 :goto_0

    .line 577
    :pswitch_5
    new-instance v6, Ljavafx/geometry/Point2D;

    move-object/from16 v16, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v16

    move-wide v8, v2

    move-wide v10, v4

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v1, v6

    goto/16 :goto_0

    .line 547
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public inverseTransform(DDD)Ljavafx/geometry/Point3D;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/scene/transform/NonInvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 584
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    move-wide/from16 v4, p1

    .local v4, "x":D
    move-wide/from16 v6, p3

    .local v6, "y":D
    move-wide/from16 v8, p5

    .local v8, "z":D
    move-object v10, v3

    iget v10, v10, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->state3d:I

    packed-switch v10, :pswitch_data_0

    .line 586
    invoke-static {}, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->stateError()V

    .line 589
    :pswitch_0
    move-object v10, v3

    iget v10, v10, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->state2d:I

    packed-switch v10, :pswitch_data_1

    .line 591
    move-object v10, v3

    move-wide v11, v4

    move-wide v13, v6

    move-wide v15, v8

    invoke-super/range {v10 .. v16}, Ljavafx/scene/transform/Transform;->inverseTransform(DDD)Ljavafx/geometry/Point3D;

    move-result-object v10

    move-object v3, v10

    .line 646
    .end local v3    # "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    :goto_0
    return-object v3

    .line 593
    .restart local v3    # "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    :pswitch_1
    move-object v10, v3

    iget-wide v10, v10, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xy:D

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-eqz v10, :cond_0

    move-object v10, v3

    iget-wide v10, v10, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yx:D

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-nez v10, :cond_1

    .line 594
    :cond_0
    new-instance v10, Ljavafx/scene/transform/NonInvertibleTransformException;

    move-object/from16 v22, v10

    move-object/from16 v10, v22

    move-object/from16 v11, v22

    const-string v12, "Determinant is 0"

    invoke-direct {v11, v12}, Ljavafx/scene/transform/NonInvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 597
    :cond_1
    new-instance v10, Ljavafx/geometry/Point3D;

    move-object/from16 v22, v10

    move-object/from16 v10, v22

    move-object/from16 v11, v22

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yx:D

    div-double/2addr v12, v14

    move-wide v14, v6

    mul-double/2addr v12, v14

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yt:D

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yx:D

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    sub-double/2addr v12, v14

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xy:D

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    move-wide/from16 v16, v4

    mul-double v14, v14, v16

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xt:D

    move-wide/from16 v16, v0

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xy:D

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    sub-double v14, v14, v16

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v17}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v3, v10

    goto :goto_0

    .line 601
    :pswitch_2
    move-object v10, v3

    iget-wide v10, v10, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xy:D

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-eqz v10, :cond_2

    move-object v10, v3

    iget-wide v10, v10, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yx:D

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-nez v10, :cond_3

    .line 602
    :cond_2
    new-instance v10, Ljavafx/scene/transform/NonInvertibleTransformException;

    move-object/from16 v22, v10

    move-object/from16 v10, v22

    move-object/from16 v11, v22

    const-string v12, "Determinant is 0"

    invoke-direct {v11, v12}, Ljavafx/scene/transform/NonInvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 605
    :cond_3
    new-instance v10, Ljavafx/geometry/Point3D;

    move-object/from16 v22, v10

    move-object/from16 v10, v22

    move-object/from16 v11, v22

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yx:D

    div-double/2addr v12, v14

    move-wide v14, v6

    mul-double/2addr v12, v14

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xy:D

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    move-wide/from16 v16, v4

    mul-double v14, v14, v16

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v17}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v3, v10

    goto/16 :goto_0

    .line 609
    :pswitch_3
    move-object v10, v3

    iget-wide v10, v10, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xx:D

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-eqz v10, :cond_4

    move-object v10, v3

    iget-wide v10, v10, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yy:D

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-nez v10, :cond_5

    .line 610
    :cond_4
    new-instance v10, Ljavafx/scene/transform/NonInvertibleTransformException;

    move-object/from16 v22, v10

    move-object/from16 v10, v22

    move-object/from16 v11, v22

    const-string v12, "Determinant is 0"

    invoke-direct {v11, v12}, Ljavafx/scene/transform/NonInvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 613
    :cond_5
    new-instance v10, Ljavafx/geometry/Point3D;

    move-object/from16 v22, v10

    move-object/from16 v10, v22

    move-object/from16 v11, v22

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xx:D

    div-double/2addr v12, v14

    move-wide v14, v4

    mul-double/2addr v12, v14

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xt:D

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xx:D

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    sub-double/2addr v12, v14

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yy:D

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    move-wide/from16 v16, v6

    mul-double v14, v14, v16

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yt:D

    move-wide/from16 v16, v0

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yy:D

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    sub-double v14, v14, v16

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v17}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v3, v10

    goto/16 :goto_0

    .line 617
    :pswitch_4
    move-object v10, v3

    iget-wide v10, v10, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xx:D

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-eqz v10, :cond_6

    move-object v10, v3

    iget-wide v10, v10, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yy:D

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-nez v10, :cond_7

    .line 618
    :cond_6
    new-instance v10, Ljavafx/scene/transform/NonInvertibleTransformException;

    move-object/from16 v22, v10

    move-object/from16 v10, v22

    move-object/from16 v11, v22

    const-string v12, "Determinant is 0"

    invoke-direct {v11, v12}, Ljavafx/scene/transform/NonInvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 621
    :cond_7
    new-instance v10, Ljavafx/geometry/Point3D;

    move-object/from16 v22, v10

    move-object/from16 v10, v22

    move-object/from16 v11, v22

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xx:D

    div-double/2addr v12, v14

    move-wide v14, v4

    mul-double/2addr v12, v14

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yy:D

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    move-wide/from16 v16, v6

    mul-double v14, v14, v16

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v17}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v3, v10

    goto/16 :goto_0

    .line 623
    :pswitch_5
    new-instance v10, Ljavafx/geometry/Point3D;

    move-object/from16 v22, v10

    move-object/from16 v10, v22

    move-object/from16 v11, v22

    move-wide v12, v4

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xt:D

    sub-double/2addr v12, v14

    move-wide v14, v6

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yt:D

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v17}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v3, v10

    goto/16 :goto_0

    .line 625
    :pswitch_6
    new-instance v10, Ljavafx/geometry/Point3D;

    move-object/from16 v22, v10

    move-object/from16 v10, v22

    move-object/from16 v11, v22

    move-wide v12, v4

    move-wide v14, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v17}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v3, v10

    goto/16 :goto_0

    .line 628
    :pswitch_7
    new-instance v10, Ljavafx/geometry/Point3D;

    move-object/from16 v22, v10

    move-object/from16 v10, v22

    move-object/from16 v11, v22

    move-wide v12, v4

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xt:D

    sub-double/2addr v12, v14

    move-wide v14, v6

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yt:D

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    move-wide/from16 v16, v8

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zt:D

    move-wide/from16 v18, v0

    sub-double v16, v16, v18

    invoke-direct/range {v11 .. v17}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v3, v10

    goto/16 :goto_0

    .line 630
    :pswitch_8
    move-object v10, v3

    iget-wide v10, v10, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xx:D

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-eqz v10, :cond_8

    move-object v10, v3

    iget-wide v10, v10, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yy:D

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-eqz v10, :cond_8

    move-object v10, v3

    iget-wide v10, v10, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zz:D

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-nez v10, :cond_9

    .line 631
    :cond_8
    new-instance v10, Ljavafx/scene/transform/NonInvertibleTransformException;

    move-object/from16 v22, v10

    move-object/from16 v10, v22

    move-object/from16 v11, v22

    const-string v12, "Determinant is 0"

    invoke-direct {v11, v12}, Ljavafx/scene/transform/NonInvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 633
    :cond_9
    new-instance v10, Ljavafx/geometry/Point3D;

    move-object/from16 v22, v10

    move-object/from16 v10, v22

    move-object/from16 v11, v22

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xx:D

    div-double/2addr v12, v14

    move-wide v14, v4

    mul-double/2addr v12, v14

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yy:D

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    move-wide/from16 v16, v6

    mul-double v14, v14, v16

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zz:D

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    move-wide/from16 v18, v8

    mul-double v16, v16, v18

    invoke-direct/range {v11 .. v17}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v3, v10

    goto/16 :goto_0

    .line 638
    :pswitch_9
    move-object v10, v3

    iget-wide v10, v10, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xx:D

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-eqz v10, :cond_a

    move-object v10, v3

    iget-wide v10, v10, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yy:D

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-eqz v10, :cond_a

    move-object v10, v3

    iget-wide v10, v10, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zz:D

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-nez v10, :cond_b

    .line 639
    :cond_a
    new-instance v10, Ljavafx/scene/transform/NonInvertibleTransformException;

    move-object/from16 v22, v10

    move-object/from16 v10, v22

    move-object/from16 v11, v22

    const-string v12, "Determinant is 0"

    invoke-direct {v11, v12}, Ljavafx/scene/transform/NonInvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 641
    :cond_b
    new-instance v10, Ljavafx/geometry/Point3D;

    move-object/from16 v22, v10

    move-object/from16 v10, v22

    move-object/from16 v11, v22

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xx:D

    div-double/2addr v12, v14

    move-wide v14, v4

    mul-double/2addr v12, v14

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xt:D

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xx:D

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    sub-double/2addr v12, v14

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yy:D

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    move-wide/from16 v16, v6

    mul-double v14, v14, v16

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yt:D

    move-wide/from16 v16, v0

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yy:D

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    sub-double v14, v14, v16

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zz:D

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    move-wide/from16 v18, v8

    mul-double v16, v16, v18

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zt:D

    move-wide/from16 v18, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zz:D

    move-wide/from16 v20, v0

    div-double v18, v18, v20

    sub-double v16, v16, v18

    invoke-direct/range {v11 .. v17}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v3, v10

    goto/16 :goto_0

    .line 646
    :pswitch_a
    move-object v10, v3

    move-wide v11, v4

    move-wide v13, v6

    move-wide v15, v8

    invoke-super/range {v10 .. v16}, Ljavafx/scene/transform/Transform;->inverseTransform(DDD)Ljavafx/geometry/Point3D;

    move-result-object v10

    move-object v3, v10

    goto/16 :goto_0

    .line 584
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 589
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 734
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Transform [\n"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 736
    .local v2, "sb":Ljava/lang/StringBuilder;
    move-object v3, v2

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xx:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 737
    move-object v3, v2

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xy:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 738
    move-object v3, v2

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xz:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 739
    move-object v3, v2

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xt:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 740
    move-object v3, v2

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 741
    move-object v3, v2

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yx:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 742
    move-object v3, v2

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yy:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 743
    move-object v3, v2

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yz:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 744
    move-object v3, v2

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yt:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 745
    move-object v3, v2

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 746
    move-object v3, v2

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zx:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 747
    move-object v3, v2

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zy:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 748
    move-object v3, v2

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zz:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 749
    move-object v3, v2

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zt:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 751
    move-object v3, v2

    const-string v4, "\n]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .end local v1    # "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    return-object v1
.end method

.method public transform(DD)Ljavafx/geometry/Point2D;
    .locals 17

    .prologue
    .line 392
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->ensureCanTransform2DPoint()V

    .line 394
    move-object v6, v1

    iget v6, v6, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->state2d:I

    packed-switch v6, :pswitch_data_0

    .line 396
    invoke-static {}, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->stateError()V

    .line 399
    :pswitch_0
    new-instance v6, Ljavafx/geometry/Point2D;

    move-object/from16 v16, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v16

    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xx:D

    move-wide v10, v2

    mul-double/2addr v8, v10

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xy:D

    move-wide v12, v4

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xt:D

    add-double/2addr v8, v10

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yx:D

    move-wide v12, v2

    mul-double/2addr v10, v12

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yy:D

    move-wide v14, v4

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yt:D

    add-double/2addr v10, v12

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v1, v6

    .line 421
    .end local v1    # "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    :goto_0
    return-object v1

    .line 403
    .restart local v1    # "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    :pswitch_1
    new-instance v6, Ljavafx/geometry/Point2D;

    move-object/from16 v16, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v16

    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xx:D

    move-wide v10, v2

    mul-double/2addr v8, v10

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xy:D

    move-wide v12, v4

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yx:D

    move-wide v12, v2

    mul-double/2addr v10, v12

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yy:D

    move-wide v14, v4

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v1, v6

    goto :goto_0

    .line 407
    :pswitch_2
    new-instance v6, Ljavafx/geometry/Point2D;

    move-object/from16 v16, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v16

    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xy:D

    move-wide v10, v4

    mul-double/2addr v8, v10

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xt:D

    add-double/2addr v8, v10

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yx:D

    move-wide v12, v2

    mul-double/2addr v10, v12

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yt:D

    add-double/2addr v10, v12

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v1, v6

    goto :goto_0

    .line 411
    :pswitch_3
    new-instance v6, Ljavafx/geometry/Point2D;

    move-object/from16 v16, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v16

    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xy:D

    move-wide v10, v4

    mul-double/2addr v8, v10

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yx:D

    move-wide v12, v2

    mul-double/2addr v10, v12

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v1, v6

    goto :goto_0

    .line 413
    :pswitch_4
    new-instance v6, Ljavafx/geometry/Point2D;

    move-object/from16 v16, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v16

    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xx:D

    move-wide v10, v2

    mul-double/2addr v8, v10

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xt:D

    add-double/2addr v8, v10

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yy:D

    move-wide v12, v4

    mul-double/2addr v10, v12

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yt:D

    add-double/2addr v10, v12

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v1, v6

    goto :goto_0

    .line 417
    :pswitch_5
    new-instance v6, Ljavafx/geometry/Point2D;

    move-object/from16 v16, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v16

    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xx:D

    move-wide v10, v2

    mul-double/2addr v8, v10

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yy:D

    move-wide v12, v4

    mul-double/2addr v10, v12

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v1, v6

    goto/16 :goto_0

    .line 419
    :pswitch_6
    new-instance v6, Ljavafx/geometry/Point2D;

    move-object/from16 v16, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v16

    move-wide v8, v2

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xt:D

    add-double/2addr v8, v10

    move-wide v10, v4

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yt:D

    add-double/2addr v10, v12

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v1, v6

    goto/16 :goto_0

    .line 421
    :pswitch_7
    new-instance v6, Ljavafx/geometry/Point2D;

    move-object/from16 v16, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v16

    move-wide v8, v2

    move-wide v10, v4

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v1, v6

    goto/16 :goto_0

    .line 394
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public transform(DDD)Ljavafx/geometry/Point3D;
    .locals 23

    .prologue
    .line 427
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    move-wide/from16 v4, p1

    .local v4, "x":D
    move-wide/from16 v6, p3

    .local v6, "y":D
    move-wide/from16 v8, p5

    .local v8, "z":D
    move-object v10, v3

    iget v10, v10, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->state3d:I

    packed-switch v10, :pswitch_data_0

    .line 429
    invoke-static {}, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->stateError()V

    .line 432
    :pswitch_0
    move-object v10, v3

    iget v10, v10, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->state2d:I

    packed-switch v10, :pswitch_data_1

    .line 434
    invoke-static {}, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->stateError()V

    .line 437
    :pswitch_1
    new-instance v10, Ljavafx/geometry/Point3D;

    move-object/from16 v22, v10

    move-object/from16 v10, v22

    move-object/from16 v11, v22

    move-object v12, v3

    iget-wide v12, v12, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xx:D

    move-wide v14, v4

    mul-double/2addr v12, v14

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xy:D

    move-wide/from16 v16, v6

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xt:D

    add-double/2addr v12, v14

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yx:D

    move-wide/from16 v16, v4

    mul-double v14, v14, v16

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yy:D

    move-wide/from16 v16, v0

    move-wide/from16 v18, v6

    mul-double v16, v16, v18

    add-double v14, v14, v16

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yt:D

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v17}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v3, v10

    .line 471
    .end local v3    # "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    :goto_0
    return-object v3

    .line 441
    .restart local v3    # "this":Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;
    :pswitch_2
    new-instance v10, Ljavafx/geometry/Point3D;

    move-object/from16 v22, v10

    move-object/from16 v10, v22

    move-object/from16 v11, v22

    move-object v12, v3

    iget-wide v12, v12, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xx:D

    move-wide v14, v4

    mul-double/2addr v12, v14

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xy:D

    move-wide/from16 v16, v6

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yx:D

    move-wide/from16 v16, v4

    mul-double v14, v14, v16

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yy:D

    move-wide/from16 v16, v0

    move-wide/from16 v18, v6

    mul-double v16, v16, v18

    add-double v14, v14, v16

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v17}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v3, v10

    goto :goto_0

    .line 445
    :pswitch_3
    new-instance v10, Ljavafx/geometry/Point3D;

    move-object/from16 v22, v10

    move-object/from16 v10, v22

    move-object/from16 v11, v22

    move-object v12, v3

    iget-wide v12, v12, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xy:D

    move-wide v14, v6

    mul-double/2addr v12, v14

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xt:D

    add-double/2addr v12, v14

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yx:D

    move-wide/from16 v16, v4

    mul-double v14, v14, v16

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yt:D

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v17}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v3, v10

    goto :goto_0

    .line 449
    :pswitch_4
    new-instance v10, Ljavafx/geometry/Point3D;

    move-object/from16 v22, v10

    move-object/from16 v10, v22

    move-object/from16 v11, v22

    move-object v12, v3

    iget-wide v12, v12, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xy:D

    move-wide v14, v6

    mul-double/2addr v12, v14

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yx:D

    move-wide/from16 v16, v4

    mul-double v14, v14, v16

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v17}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v3, v10

    goto :goto_0

    .line 451
    :pswitch_5
    new-instance v10, Ljavafx/geometry/Point3D;

    move-object/from16 v22, v10

    move-object/from16 v10, v22

    move-object/from16 v11, v22

    move-object v12, v3

    iget-wide v12, v12, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xx:D

    move-wide v14, v4

    mul-double/2addr v12, v14

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xt:D

    add-double/2addr v12, v14

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yy:D

    move-wide/from16 v16, v6

    mul-double v14, v14, v16

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yt:D

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v17}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v3, v10

    goto/16 :goto_0

    .line 455
    :pswitch_6
    new-instance v10, Ljavafx/geometry/Point3D;

    move-object/from16 v22, v10

    move-object/from16 v10, v22

    move-object/from16 v11, v22

    move-object v12, v3

    iget-wide v12, v12, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xx:D

    move-wide v14, v4

    mul-double/2addr v12, v14

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yy:D

    move-wide/from16 v16, v6

    mul-double v14, v14, v16

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v17}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v3, v10

    goto/16 :goto_0

    .line 457
    :pswitch_7
    new-instance v10, Ljavafx/geometry/Point3D;

    move-object/from16 v22, v10

    move-object/from16 v10, v22

    move-object/from16 v11, v22

    move-wide v12, v4

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xt:D

    add-double/2addr v12, v14

    move-wide v14, v6

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yt:D

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v17}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v3, v10

    goto/16 :goto_0

    .line 459
    :pswitch_8
    new-instance v10, Ljavafx/geometry/Point3D;

    move-object/from16 v22, v10

    move-object/from16 v10, v22

    move-object/from16 v11, v22

    move-wide v12, v4

    move-wide v14, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v17}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v3, v10

    goto/16 :goto_0

    .line 462
    :pswitch_9
    new-instance v10, Ljavafx/geometry/Point3D;

    move-object/from16 v22, v10

    move-object/from16 v10, v22

    move-object/from16 v11, v22

    move-wide v12, v4

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xt:D

    add-double/2addr v12, v14

    move-wide v14, v6

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yt:D

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    move-wide/from16 v16, v8

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zt:D

    move-wide/from16 v18, v0

    add-double v16, v16, v18

    invoke-direct/range {v11 .. v17}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v3, v10

    goto/16 :goto_0

    .line 464
    :pswitch_a
    new-instance v10, Ljavafx/geometry/Point3D;

    move-object/from16 v22, v10

    move-object/from16 v10, v22

    move-object/from16 v11, v22

    move-object v12, v3

    iget-wide v12, v12, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xx:D

    move-wide v14, v4

    mul-double/2addr v12, v14

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yy:D

    move-wide/from16 v16, v6

    mul-double v14, v14, v16

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zz:D

    move-wide/from16 v16, v0

    move-wide/from16 v18, v8

    mul-double v16, v16, v18

    invoke-direct/range {v11 .. v17}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v3, v10

    goto/16 :goto_0

    .line 466
    :pswitch_b
    new-instance v10, Ljavafx/geometry/Point3D;

    move-object/from16 v22, v10

    move-object/from16 v10, v22

    move-object/from16 v11, v22

    move-object v12, v3

    iget-wide v12, v12, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xx:D

    move-wide v14, v4

    mul-double/2addr v12, v14

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xt:D

    add-double/2addr v12, v14

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yy:D

    move-wide/from16 v16, v6

    mul-double v14, v14, v16

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yt:D

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zz:D

    move-wide/from16 v16, v0

    move-wide/from16 v18, v8

    mul-double v16, v16, v18

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zt:D

    move-wide/from16 v18, v0

    add-double v16, v16, v18

    invoke-direct/range {v11 .. v17}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v3, v10

    goto/16 :goto_0

    .line 471
    :pswitch_c
    new-instance v10, Ljavafx/geometry/Point3D;

    move-object/from16 v22, v10

    move-object/from16 v10, v22

    move-object/from16 v11, v22

    move-object v12, v3

    iget-wide v12, v12, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xx:D

    move-wide v14, v4

    mul-double/2addr v12, v14

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xy:D

    move-wide/from16 v16, v6

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xz:D

    move-wide/from16 v16, v8

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->xt:D

    add-double/2addr v12, v14

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yx:D

    move-wide/from16 v16, v4

    mul-double v14, v14, v16

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yy:D

    move-wide/from16 v16, v0

    move-wide/from16 v18, v6

    mul-double v16, v16, v18

    add-double v14, v14, v16

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yz:D

    move-wide/from16 v16, v0

    move-wide/from16 v18, v8

    mul-double v16, v16, v18

    add-double v14, v14, v16

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->yt:D

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zx:D

    move-wide/from16 v16, v0

    move-wide/from16 v18, v4

    mul-double v16, v16, v18

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zy:D

    move-wide/from16 v18, v0

    move-wide/from16 v20, v6

    mul-double v18, v18, v20

    add-double v16, v16, v18

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zz:D

    move-wide/from16 v18, v0

    move-wide/from16 v20, v8

    mul-double v18, v18, v20

    add-double v16, v16, v18

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/scene/transform/TransformUtils$ImmutableTransform;->zt:D

    move-wide/from16 v18, v0

    add-double v16, v16, v18

    invoke-direct/range {v11 .. v17}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v3, v10

    goto/16 :goto_0

    .line 427
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 432
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
