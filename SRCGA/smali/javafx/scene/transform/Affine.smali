.class public Ljavafx/scene/transform/Affine;
.super Ljavafx/scene/transform/Transform;
.source "Affine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/transform/Affine$AffineAtomicChange;,
        Ljavafx/scene/transform/Affine$AffineElementProperty;
    }
.end annotation


# static fields
.field private static final APPLY_3D_COMPLEX:I = 0x4

.field private static final APPLY_IDENTITY:I = 0x0

.field private static final APPLY_NON_3D:I = 0x0

.field private static final APPLY_SCALE:I = 0x2

.field private static final APPLY_SHEAR:I = 0x4

.field private static final APPLY_TRANSLATE:I = 0x1

.field private static final rot90conversion:[I


# instance fields
.field atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

.field private mxx:Ljavafx/scene/transform/Affine$AffineElementProperty;

.field private mxy:Ljavafx/scene/transform/Affine$AffineElementProperty;

.field private mxz:Ljavafx/scene/transform/Affine$AffineElementProperty;

.field private myx:Ljavafx/scene/transform/Affine$AffineElementProperty;

.field private myy:Ljavafx/scene/transform/Affine$AffineElementProperty;

.field private myz:Ljavafx/scene/transform/Affine$AffineElementProperty;

.field private mzx:Ljavafx/scene/transform/Affine$AffineElementProperty;

.field private mzy:Ljavafx/scene/transform/Affine$AffineElementProperty;

.field private mzz:Ljavafx/scene/transform/Affine$AffineElementProperty;

.field private transient state2d:I

.field private transient state3d:I

.field private tx:Ljavafx/scene/transform/Affine$AffineElementProperty;

.field private ty:Ljavafx/scene/transform/Affine$AffineElementProperty;

.field private tz:Ljavafx/scene/transform/Affine$AffineElementProperty;

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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3726
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Ljavafx/scene/transform/Affine;->rot90conversion:[I

    return-void

    :array_0
    .array-data 4
        0x4
        0x5
        0x4
        0x5
        0x2
        0x3
        0x6
        0x7
    .end array-data
.end method

.method public constructor <init>()V
    .locals 12

    .prologue
    .line 189
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-object v2, v1

    invoke-direct {v2}, Ljavafx/scene/transform/Transform;-><init>()V

    .line 75
    move-object v2, v1

    new-instance v3, Ljavafx/scene/transform/Affine$AffineAtomicChange;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v1

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Ljavafx/scene/transform/Affine$AffineAtomicChange;-><init>(Ljavafx/scene/transform/Affine;Ljavafx/scene/transform/Affine$1;)V

    iput-object v3, v2, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    .line 190
    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    move-object v9, v4

    move-wide v10, v5

    move-wide v4, v10

    move-object v6, v9

    move-wide v7, v10

    iput-wide v7, v6, Ljavafx/scene/transform/Affine;->zz:D

    move-object v9, v3

    move-wide v10, v4

    move-wide v3, v10

    move-object v5, v9

    move-wide v6, v10

    iput-wide v6, v5, Ljavafx/scene/transform/Affine;->yy:D

    iput-wide v3, v2, Ljavafx/scene/transform/Affine;->xx:D

    .line 191
    return-void
.end method

.method public constructor <init>(DDDDDD)V
    .locals 19

    .prologue
    .line 222
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/transform/Affine;
    move-wide/from16 v1, p1

    .local v1, "mxx":D
    move-wide/from16 v3, p3

    .local v3, "mxy":D
    move-wide/from16 v5, p5

    .local v5, "tx":D
    move-wide/from16 v7, p7

    .local v7, "myx":D
    move-wide/from16 v9, p9

    .local v9, "myy":D
    move-wide/from16 v11, p11

    .local v11, "ty":D
    move-object v13, v0

    invoke-direct {v13}, Ljavafx/scene/transform/Transform;-><init>()V

    .line 75
    move-object v13, v0

    new-instance v14, Ljavafx/scene/transform/Affine$AffineAtomicChange;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-direct/range {v15 .. v17}, Ljavafx/scene/transform/Affine$AffineAtomicChange;-><init>(Ljavafx/scene/transform/Affine;Ljavafx/scene/transform/Affine$1;)V

    iput-object v14, v13, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    .line 223
    move-object v13, v0

    move-wide v14, v1

    iput-wide v14, v13, Ljavafx/scene/transform/Affine;->xx:D

    .line 224
    move-object v13, v0

    move-wide v14, v3

    iput-wide v14, v13, Ljavafx/scene/transform/Affine;->xy:D

    .line 225
    move-object v13, v0

    move-wide v14, v5

    iput-wide v14, v13, Ljavafx/scene/transform/Affine;->xt:D

    .line 227
    move-object v13, v0

    move-wide v14, v7

    iput-wide v14, v13, Ljavafx/scene/transform/Affine;->yx:D

    .line 228
    move-object v13, v0

    move-wide v14, v9

    iput-wide v14, v13, Ljavafx/scene/transform/Affine;->yy:D

    .line 229
    move-object v13, v0

    move-wide v14, v11

    iput-wide v14, v13, Ljavafx/scene/transform/Affine;->yt:D

    .line 231
    move-object v13, v0

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    iput-wide v14, v13, Ljavafx/scene/transform/Affine;->zz:D

    .line 233
    move-object v13, v0

    invoke-direct {v13}, Ljavafx/scene/transform/Affine;->updateState2D()V

    .line 234
    return-void
.end method

.method public constructor <init>(DDDDDDDDDDDD)V
    .locals 35

    .prologue
    .line 255
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/transform/Affine;
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

    .line 75
    move-object/from16 v28, v3

    new-instance v29, Ljavafx/scene/transform/Affine$AffineAtomicChange;

    move-object/from16 v33, v29

    move-object/from16 v29, v33

    move-object/from16 v30, v33

    move-object/from16 v31, v3

    const/16 v32, 0x0

    invoke-direct/range {v30 .. v32}, Ljavafx/scene/transform/Affine$AffineAtomicChange;-><init>(Ljavafx/scene/transform/Affine;Ljavafx/scene/transform/Affine$1;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    .line 256
    move-object/from16 v28, v3

    move-wide/from16 v29, v4

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Ljavafx/scene/transform/Affine;->xx:D

    .line 257
    move-object/from16 v28, v3

    move-wide/from16 v29, v6

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Ljavafx/scene/transform/Affine;->xy:D

    .line 258
    move-object/from16 v28, v3

    move-wide/from16 v29, v8

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Ljavafx/scene/transform/Affine;->xz:D

    .line 259
    move-object/from16 v28, v3

    move-wide/from16 v29, v10

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Ljavafx/scene/transform/Affine;->xt:D

    .line 261
    move-object/from16 v28, v3

    move-wide/from16 v29, v12

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Ljavafx/scene/transform/Affine;->yx:D

    .line 262
    move-object/from16 v28, v3

    move-wide/from16 v29, v14

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Ljavafx/scene/transform/Affine;->yy:D

    .line 263
    move-object/from16 v28, v3

    move-wide/from16 v29, v16

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Ljavafx/scene/transform/Affine;->yz:D

    .line 264
    move-object/from16 v28, v3

    move-wide/from16 v29, v18

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Ljavafx/scene/transform/Affine;->yt:D

    .line 266
    move-object/from16 v28, v3

    move-wide/from16 v29, v20

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Ljavafx/scene/transform/Affine;->zx:D

    .line 267
    move-object/from16 v28, v3

    move-wide/from16 v29, v22

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Ljavafx/scene/transform/Affine;->zy:D

    .line 268
    move-object/from16 v28, v3

    move-wide/from16 v29, v24

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Ljavafx/scene/transform/Affine;->zz:D

    .line 269
    move-object/from16 v28, v3

    move-wide/from16 v29, v26

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Ljavafx/scene/transform/Affine;->zt:D

    .line 271
    move-object/from16 v28, v3

    invoke-direct/range {v28 .. v28}, Ljavafx/scene/transform/Affine;->updateState()V

    .line 272
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/transform/Transform;)V
    .locals 28

    .prologue
    .line 202
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
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

    .line 203
    invoke-virtual {v10}, Ljavafx/scene/transform/Transform;->getTx()D

    move-result-wide v10

    move-object v12, v2

    .line 204
    invoke-virtual {v12}, Ljavafx/scene/transform/Transform;->getMyx()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/scene/transform/Transform;->getMyy()D

    move-result-wide v14

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/transform/Transform;->getMyz()D

    move-result-wide v16

    move-object/from16 v18, v2

    .line 205
    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/transform/Transform;->getTy()D

    move-result-wide v18

    move-object/from16 v20, v2

    .line 206
    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/transform/Transform;->getMzx()D

    move-result-wide v20

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/transform/Transform;->getMzy()D

    move-result-wide v22

    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Transform;->getMzz()D

    move-result-wide v24

    move-object/from16 v26, v2

    .line 207
    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/transform/Transform;->getTz()D

    move-result-wide v26

    .line 202
    invoke-direct/range {v3 .. v27}, Ljavafx/scene/transform/Affine;-><init>(DDDDDDDDDDDD)V

    .line 208
    return-void
.end method

.method public constructor <init>([DLjavafx/scene/transform/MatrixType;I)V
    .locals 11

    .prologue
    .line 289
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-object v2, p1

    .local v2, "matrix":[D
    move-object v3, p2

    .local v3, "type":Ljavafx/scene/transform/MatrixType;
    move v4, p3

    .local v4, "offset":I
    move-object v5, v1

    invoke-direct {v5}, Ljavafx/scene/transform/Transform;-><init>()V

    .line 75
    move-object v5, v1

    new-instance v6, Ljavafx/scene/transform/Affine$AffineAtomicChange;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v1

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Ljavafx/scene/transform/Affine$AffineAtomicChange;-><init>(Ljavafx/scene/transform/Affine;Ljavafx/scene/transform/Affine$1;)V

    iput-object v6, v5, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    .line 290
    move-object v5, v2

    array-length v5, v5

    move v6, v4

    move-object v7, v3

    invoke-virtual {v7}, Ljavafx/scene/transform/MatrixType;->elements()I

    move-result v7

    add-int/2addr v6, v7

    if-ge v5, v6, :cond_0

    .line 291
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string v7, "The array is too short."

    invoke-direct {v6, v7}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 294
    :cond_0
    sget-object v5, Ljavafx/scene/transform/Affine$13;->$SwitchMap$javafx$scene$transform$MatrixType:[I

    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/scene/transform/MatrixType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 296
    invoke-static {}, Ljavafx/scene/transform/Affine;->stateError()V

    .line 299
    :pswitch_0
    move-object v5, v2

    move v6, v4

    const/4 v7, 0x6

    add-int/lit8 v6, v6, 0x6

    aget-wide v5, v5, v6

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_1

    move-object v5, v2

    move v6, v4

    const/4 v7, 0x7

    add-int/lit8 v6, v6, 0x7

    aget-wide v5, v5, v6

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_1

    move-object v5, v2

    move v6, v4

    const/16 v7, 0x8

    add-int/lit8 v6, v6, 0x8

    aget-wide v5, v5, v6

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v5, v7

    if-eqz v5, :cond_2

    .line 302
    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string v7, "The matrix is not affine"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 307
    :cond_2
    :pswitch_1
    move-object v5, v1

    move-object v6, v2

    move v7, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v6, v6, v7

    iput-wide v6, v5, Ljavafx/scene/transform/Affine;->xx:D

    .line 308
    move-object v5, v1

    move-object v6, v2

    move v7, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v6, v6, v7

    iput-wide v6, v5, Ljavafx/scene/transform/Affine;->xy:D

    .line 309
    move-object v5, v1

    move-object v6, v2

    move v7, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v6, v6, v7

    iput-wide v6, v5, Ljavafx/scene/transform/Affine;->xt:D

    .line 310
    move-object v5, v1

    move-object v6, v2

    move v7, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v6, v6, v7

    iput-wide v6, v5, Ljavafx/scene/transform/Affine;->yx:D

    .line 311
    move-object v5, v1

    move-object v6, v2

    move v7, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v6, v6, v7

    iput-wide v6, v5, Ljavafx/scene/transform/Affine;->yy:D

    .line 312
    move-object v5, v1

    move-object v6, v2

    move v7, v4

    aget-wide v6, v6, v7

    iput-wide v6, v5, Ljavafx/scene/transform/Affine;->yt:D

    .line 313
    move-object v5, v1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    iput-wide v6, v5, Ljavafx/scene/transform/Affine;->zz:D

    .line 314
    move-object v5, v1

    invoke-direct {v5}, Ljavafx/scene/transform/Affine;->updateState2D()V

    .line 315
    .line 339
    :goto_0
    return-void

    .line 317
    :pswitch_2
    move-object v5, v2

    move v6, v4

    const/16 v7, 0xc

    add-int/lit8 v6, v6, 0xc

    aget-wide v5, v5, v6

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_3

    move-object v5, v2

    move v6, v4

    const/16 v7, 0xd

    add-int/lit8 v6, v6, 0xd

    aget-wide v5, v5, v6

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_3

    move-object v5, v2

    move v6, v4

    const/16 v7, 0xe

    add-int/lit8 v6, v6, 0xe

    aget-wide v5, v5, v6

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_3

    move-object v5, v2

    move v6, v4

    const/16 v7, 0xf

    add-int/lit8 v6, v6, 0xf

    aget-wide v5, v5, v6

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v5, v7

    if-eqz v5, :cond_4

    .line 321
    :cond_3
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string v7, "The matrix is not affine"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 326
    :cond_4
    :pswitch_3
    move-object v5, v1

    move-object v6, v2

    move v7, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v6, v6, v7

    iput-wide v6, v5, Ljavafx/scene/transform/Affine;->xx:D

    .line 327
    move-object v5, v1

    move-object v6, v2

    move v7, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v6, v6, v7

    iput-wide v6, v5, Ljavafx/scene/transform/Affine;->xy:D

    .line 328
    move-object v5, v1

    move-object v6, v2

    move v7, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v6, v6, v7

    iput-wide v6, v5, Ljavafx/scene/transform/Affine;->xz:D

    .line 329
    move-object v5, v1

    move-object v6, v2

    move v7, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v6, v6, v7

    iput-wide v6, v5, Ljavafx/scene/transform/Affine;->xt:D

    .line 330
    move-object v5, v1

    move-object v6, v2

    move v7, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v6, v6, v7

    iput-wide v6, v5, Ljavafx/scene/transform/Affine;->yx:D

    .line 331
    move-object v5, v1

    move-object v6, v2

    move v7, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v6, v6, v7

    iput-wide v6, v5, Ljavafx/scene/transform/Affine;->yy:D

    .line 332
    move-object v5, v1

    move-object v6, v2

    move v7, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v6, v6, v7

    iput-wide v6, v5, Ljavafx/scene/transform/Affine;->yz:D

    .line 333
    move-object v5, v1

    move-object v6, v2

    move v7, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v6, v6, v7

    iput-wide v6, v5, Ljavafx/scene/transform/Affine;->yt:D

    .line 334
    move-object v5, v1

    move-object v6, v2

    move v7, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v6, v6, v7

    iput-wide v6, v5, Ljavafx/scene/transform/Affine;->zx:D

    .line 335
    move-object v5, v1

    move-object v6, v2

    move v7, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v6, v6, v7

    iput-wide v6, v5, Ljavafx/scene/transform/Affine;->zy:D

    .line 336
    move-object v5, v1

    move-object v6, v2

    move v7, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v6, v6, v7

    iput-wide v6, v5, Ljavafx/scene/transform/Affine;->zz:D

    .line 337
    move-object v5, v1

    move-object v6, v2

    move v7, v4

    aget-wide v6, v6, v7

    iput-wide v6, v5, Ljavafx/scene/transform/Affine;->zt:D

    .line 338
    move-object v5, v1

    invoke-direct {v5}, Ljavafx/scene/transform/Affine;->updateState()V

    .line 339
    goto/16 :goto_0

    .line 294
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic access$1000(Ljavafx/scene/transform/Affine;)Ljavafx/scene/transform/Affine$AffineElementProperty;
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/transform/Affine;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine;->tx:Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/transform/Affine;
    return-object v0
.end method

.method static synthetic access$1100(Ljavafx/scene/transform/Affine;)Ljavafx/scene/transform/Affine$AffineElementProperty;
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/transform/Affine;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine;->myx:Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/transform/Affine;
    return-object v0
.end method

.method static synthetic access$1200(Ljavafx/scene/transform/Affine;)Ljavafx/scene/transform/Affine$AffineElementProperty;
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/transform/Affine;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine;->myy:Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/transform/Affine;
    return-object v0
.end method

.method static synthetic access$1300(Ljavafx/scene/transform/Affine;)Ljavafx/scene/transform/Affine$AffineElementProperty;
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/transform/Affine;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine;->myz:Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/transform/Affine;
    return-object v0
.end method

.method static synthetic access$1400(Ljavafx/scene/transform/Affine;)Ljavafx/scene/transform/Affine$AffineElementProperty;
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/transform/Affine;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine;->ty:Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/transform/Affine;
    return-object v0
.end method

.method static synthetic access$1500(Ljavafx/scene/transform/Affine;)Ljavafx/scene/transform/Affine$AffineElementProperty;
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/transform/Affine;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine;->mzx:Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/transform/Affine;
    return-object v0
.end method

.method static synthetic access$1600(Ljavafx/scene/transform/Affine;)Ljavafx/scene/transform/Affine$AffineElementProperty;
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/transform/Affine;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine;->mzy:Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/transform/Affine;
    return-object v0
.end method

.method static synthetic access$1700(Ljavafx/scene/transform/Affine;)Ljavafx/scene/transform/Affine$AffineElementProperty;
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/transform/Affine;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine;->mzz:Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/transform/Affine;
    return-object v0
.end method

.method static synthetic access$1800(Ljavafx/scene/transform/Affine;)Ljavafx/scene/transform/Affine$AffineElementProperty;
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/transform/Affine;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine;->tz:Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/transform/Affine;
    return-object v0
.end method

.method static synthetic access$200(Ljavafx/scene/transform/Affine;)V
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/transform/Affine;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/transform/Affine;->updateState()V

    return-void
.end method

.method static synthetic access$600(Ljavafx/scene/transform/Affine;)Ljavafx/scene/transform/Affine$AffineElementProperty;
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/transform/Affine;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine;->mxx:Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/transform/Affine;
    return-object v0
.end method

.method static synthetic access$800(Ljavafx/scene/transform/Affine;)Ljavafx/scene/transform/Affine$AffineElementProperty;
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/transform/Affine;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine;->mxy:Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/transform/Affine;
    return-object v0
.end method

.method static synthetic access$900(Ljavafx/scene/transform/Affine;)Ljavafx/scene/transform/Affine$AffineElementProperty;
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/transform/Affine;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine;->mxz:Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/transform/Affine;
    return-object v0
.end method

.method private getDeterminant2D()D
    .locals 8

    .prologue
    .line 1007
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-object v2, v1

    iget v2, v2, Ljavafx/scene/transform/Affine;->state2d:I

    packed-switch v2, :pswitch_data_0

    .line 1009
    invoke-static {}, Ljavafx/scene/transform/Affine;->stateError()V

    .line 1013
    :pswitch_0
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v4

    mul-double/2addr v2, v4

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v6

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    move-wide v1, v2

    .line 1022
    .end local v1    # "this":Ljavafx/scene/transform/Affine;
    :goto_0
    return-wide v1

    .line 1016
    .restart local v1    # "this":Ljavafx/scene/transform/Affine;
    :pswitch_1
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v4

    mul-double/2addr v2, v4

    neg-double v2, v2

    move-wide v1, v2

    goto :goto_0

    .line 1019
    :pswitch_2
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v4

    mul-double/2addr v2, v4

    move-wide v1, v2

    goto :goto_0

    .line 1022
    :pswitch_3
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    move-wide v1, v2

    goto :goto_0

    .line 1007
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

.method private getDeterminant3D()D
    .locals 24

    .prologue
    .line 1033
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-object v14, v1

    iget v14, v14, Ljavafx/scene/transform/Affine;->state3d:I

    packed-switch v14, :pswitch_data_0

    .line 1035
    invoke-static {}, Ljavafx/scene/transform/Affine;->stateError()V

    .line 1038
    :pswitch_0
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    move-wide v1, v14

    .line 1052
    .end local v1    # "this":Ljavafx/scene/transform/Affine;
    .local v2, "myx":D
    .local v4, "myy":D
    .local v6, "myz":D
    .local v8, "mzx":D
    .local v10, "mzy":D
    .local v12, "mzz":D
    :goto_0
    return-wide v1

    .line 1041
    .end local v2    # "myx":D
    .end local v4    # "myy":D
    .end local v6    # "myz":D
    .end local v8    # "mzx":D
    .end local v10    # "mzy":D
    .end local v12    # "mzz":D
    .restart local v1    # "this":Ljavafx/scene/transform/Affine;
    :pswitch_1
    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v14

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v16

    mul-double v14, v14, v16

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/transform/Affine;->getMzz()D

    move-result-wide v16

    mul-double v14, v14, v16

    move-wide v1, v14

    goto :goto_0

    .line 1043
    :pswitch_2
    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v14

    move-wide v2, v14

    .line 1044
    .restart local v2    # "myx":D
    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v14

    move-wide v4, v14

    .line 1045
    .restart local v4    # "myy":D
    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/transform/Affine;->getMyz()D

    move-result-wide v14

    move-wide v6, v14

    .line 1046
    .restart local v6    # "myz":D
    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/transform/Affine;->getMzx()D

    move-result-wide v14

    move-wide v8, v14

    .line 1047
    .restart local v8    # "mzx":D
    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/transform/Affine;->getMzy()D

    move-result-wide v14

    move-wide v10, v14

    .line 1048
    .restart local v10    # "mzy":D
    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/transform/Affine;->getMzz()D

    move-result-wide v14

    move-wide v12, v14

    .line 1050
    .restart local v12    # "mzz":D
    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v14

    move-wide/from16 v16, v4

    move-wide/from16 v18, v12

    mul-double v16, v16, v18

    move-wide/from16 v18, v10

    move-wide/from16 v20, v6

    mul-double v18, v18, v20

    sub-double v16, v16, v18

    mul-double v14, v14, v16

    move-object/from16 v16, v1

    .line 1051
    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v16

    move-wide/from16 v18, v6

    move-wide/from16 v20, v8

    mul-double v18, v18, v20

    move-wide/from16 v20, v12

    move-wide/from16 v22, v2

    mul-double v20, v20, v22

    sub-double v18, v18, v20

    mul-double v16, v16, v18

    add-double v14, v14, v16

    move-object/from16 v16, v1

    .line 1052
    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/transform/Affine;->getMxz()D

    move-result-wide v16

    move-wide/from16 v18, v2

    move-wide/from16 v20, v10

    mul-double v18, v18, v20

    move-wide/from16 v20, v8

    move-wide/from16 v22, v4

    mul-double v20, v20, v22

    sub-double v18, v18, v20

    mul-double v16, v16, v18

    add-double v14, v14, v16

    move-wide v1, v14

    goto/16 :goto_0

    .line 1033
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private invert2D()V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/scene/transform/NonInvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 1283
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/transform/Affine;
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Ljavafx/scene/transform/Affine;->state2d:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 1285
    invoke-static {}, Ljavafx/scene/transform/Affine;->stateError()V

    .line 1288
    :pswitch_0
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v17

    move-wide/from16 v3, v17

    .local v3, "Mxx":D
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v17

    move-wide/from16 v5, v17

    .local v5, "Mxy":D
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v17

    move-wide/from16 v7, v17

    .line 1289
    .local v7, "Mxt":D
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v17

    move-wide/from16 v9, v17

    .local v9, "Myx":D
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v17

    move-wide/from16 v11, v17

    .local v11, "Myy":D
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v17

    move-wide/from16 v13, v17

    .line 1290
    .local v13, "Myt":D
    move-object/from16 v17, v2

    invoke-direct/range {v17 .. v17}, Ljavafx/scene/transform/Affine;->getDeterminant2D()D

    move-result-wide v17

    move-wide/from16 v15, v17

    .line 1291
    .local v15, "det":D
    move-wide/from16 v17, v15

    const-wide/16 v19, 0x0

    cmpl-double v17, v17, v19

    if-nez v17, :cond_0

    .line 1292
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->access$500(Ljavafx/scene/transform/Affine$AffineAtomicChange;)V

    .line 1293
    new-instance v17, Ljavafx/scene/transform/NonInvertibleTransformException;

    move-object/from16 v24, v17

    move-object/from16 v17, v24

    move-object/from16 v18, v24

    const-string v19, "Determinant is 0"

    invoke-direct/range {v18 .. v19}, Ljavafx/scene/transform/NonInvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 1295
    :cond_0
    move-object/from16 v17, v2

    move-wide/from16 v18, v11

    move-wide/from16 v20, v15

    div-double v18, v18, v20

    invoke-virtual/range {v17 .. v19}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    .line 1296
    move-object/from16 v17, v2

    move-wide/from16 v18, v9

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v20, v15

    div-double v18, v18, v20

    invoke-virtual/range {v17 .. v19}, Ljavafx/scene/transform/Affine;->setMyx(D)V

    .line 1297
    move-object/from16 v17, v2

    move-wide/from16 v18, v5

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v20, v15

    div-double v18, v18, v20

    invoke-virtual/range {v17 .. v19}, Ljavafx/scene/transform/Affine;->setMxy(D)V

    .line 1298
    move-object/from16 v17, v2

    move-wide/from16 v18, v3

    move-wide/from16 v20, v15

    div-double v18, v18, v20

    invoke-virtual/range {v17 .. v19}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    .line 1299
    move-object/from16 v17, v2

    move-wide/from16 v18, v5

    move-wide/from16 v20, v13

    mul-double v18, v18, v20

    move-wide/from16 v20, v11

    move-wide/from16 v22, v7

    mul-double v20, v20, v22

    sub-double v18, v18, v20

    move-wide/from16 v20, v15

    div-double v18, v18, v20

    invoke-virtual/range {v17 .. v19}, Ljavafx/scene/transform/Affine;->setTx(D)V

    .line 1300
    move-object/from16 v17, v2

    move-wide/from16 v18, v9

    move-wide/from16 v20, v7

    mul-double v18, v18, v20

    move-wide/from16 v20, v3

    move-wide/from16 v22, v13

    mul-double v20, v20, v22

    sub-double v18, v18, v20

    move-wide/from16 v20, v15

    div-double v18, v18, v20

    invoke-virtual/range {v17 .. v19}, Ljavafx/scene/transform/Affine;->setTy(D)V

    .line 1301
    .line 1364
    .end local v3    # "Mxx":D
    .end local v5    # "Mxy":D
    .end local v7    # "Mxt":D
    .end local v9    # "Myx":D
    .end local v11    # "Myy":D
    .end local v13    # "Myt":D
    .end local v15    # "det":D
    :goto_0
    return-void

    .line 1303
    :pswitch_1
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v17

    move-wide/from16 v3, v17

    .restart local v3    # "Mxx":D
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v17

    move-wide/from16 v5, v17

    .line 1304
    .restart local v5    # "Mxy":D
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v17

    move-wide/from16 v9, v17

    .restart local v9    # "Myx":D
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v17

    move-wide/from16 v11, v17

    .line 1305
    .restart local v11    # "Myy":D
    move-object/from16 v17, v2

    invoke-direct/range {v17 .. v17}, Ljavafx/scene/transform/Affine;->getDeterminant2D()D

    move-result-wide v17

    move-wide/from16 v15, v17

    .line 1306
    .restart local v15    # "det":D
    move-wide/from16 v17, v15

    const-wide/16 v19, 0x0

    cmpl-double v17, v17, v19

    if-nez v17, :cond_1

    .line 1307
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->access$500(Ljavafx/scene/transform/Affine$AffineAtomicChange;)V

    .line 1308
    new-instance v17, Ljavafx/scene/transform/NonInvertibleTransformException;

    move-object/from16 v24, v17

    move-object/from16 v17, v24

    move-object/from16 v18, v24

    const-string v19, "Determinant is 0"

    invoke-direct/range {v18 .. v19}, Ljavafx/scene/transform/NonInvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 1310
    :cond_1
    move-object/from16 v17, v2

    move-wide/from16 v18, v11

    move-wide/from16 v20, v15

    div-double v18, v18, v20

    invoke-virtual/range {v17 .. v19}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    .line 1311
    move-object/from16 v17, v2

    move-wide/from16 v18, v9

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v20, v15

    div-double v18, v18, v20

    invoke-virtual/range {v17 .. v19}, Ljavafx/scene/transform/Affine;->setMyx(D)V

    .line 1312
    move-object/from16 v17, v2

    move-wide/from16 v18, v5

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v20, v15

    div-double v18, v18, v20

    invoke-virtual/range {v17 .. v19}, Ljavafx/scene/transform/Affine;->setMxy(D)V

    .line 1313
    move-object/from16 v17, v2

    move-wide/from16 v18, v3

    move-wide/from16 v20, v15

    div-double v18, v18, v20

    invoke-virtual/range {v17 .. v19}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    .line 1314
    goto :goto_0

    .line 1316
    .end local v3    # "Mxx":D
    .end local v5    # "Mxy":D
    .end local v9    # "Myx":D
    .end local v11    # "Myy":D
    .end local v15    # "det":D
    :pswitch_2
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v17

    move-wide/from16 v5, v17

    .restart local v5    # "Mxy":D
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v17

    move-wide/from16 v7, v17

    .line 1317
    .restart local v7    # "Mxt":D
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v17

    move-wide/from16 v9, v17

    .restart local v9    # "Myx":D
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v17

    move-wide/from16 v13, v17

    .line 1318
    .restart local v13    # "Myt":D
    move-wide/from16 v17, v5

    const-wide/16 v19, 0x0

    cmpl-double v17, v17, v19

    if-eqz v17, :cond_2

    move-wide/from16 v17, v9

    const-wide/16 v19, 0x0

    cmpl-double v17, v17, v19

    if-nez v17, :cond_3

    .line 1319
    :cond_2
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->access$500(Ljavafx/scene/transform/Affine$AffineAtomicChange;)V

    .line 1320
    new-instance v17, Ljavafx/scene/transform/NonInvertibleTransformException;

    move-object/from16 v24, v17

    move-object/from16 v17, v24

    move-object/from16 v18, v24

    const-string v19, "Determinant is 0"

    invoke-direct/range {v18 .. v19}, Ljavafx/scene/transform/NonInvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 1322
    :cond_3
    move-object/from16 v17, v2

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v20, v5

    div-double v18, v18, v20

    invoke-virtual/range {v17 .. v19}, Ljavafx/scene/transform/Affine;->setMyx(D)V

    .line 1323
    move-object/from16 v17, v2

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v20, v9

    div-double v18, v18, v20

    invoke-virtual/range {v17 .. v19}, Ljavafx/scene/transform/Affine;->setMxy(D)V

    .line 1324
    move-object/from16 v17, v2

    move-wide/from16 v18, v13

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v20, v9

    div-double v18, v18, v20

    invoke-virtual/range {v17 .. v19}, Ljavafx/scene/transform/Affine;->setTx(D)V

    .line 1325
    move-object/from16 v17, v2

    move-wide/from16 v18, v7

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v20, v5

    div-double v18, v18, v20

    invoke-virtual/range {v17 .. v19}, Ljavafx/scene/transform/Affine;->setTy(D)V

    .line 1326
    goto/16 :goto_0

    .line 1328
    .end local v5    # "Mxy":D
    .end local v7    # "Mxt":D
    .end local v9    # "Myx":D
    .end local v13    # "Myt":D
    :pswitch_3
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v17

    move-wide/from16 v5, v17

    .line 1329
    .restart local v5    # "Mxy":D
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v17

    move-wide/from16 v9, v17

    .line 1330
    .restart local v9    # "Myx":D
    move-wide/from16 v17, v5

    const-wide/16 v19, 0x0

    cmpl-double v17, v17, v19

    if-eqz v17, :cond_4

    move-wide/from16 v17, v9

    const-wide/16 v19, 0x0

    cmpl-double v17, v17, v19

    if-nez v17, :cond_5

    .line 1331
    :cond_4
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->access$500(Ljavafx/scene/transform/Affine$AffineAtomicChange;)V

    .line 1332
    new-instance v17, Ljavafx/scene/transform/NonInvertibleTransformException;

    move-object/from16 v24, v17

    move-object/from16 v17, v24

    move-object/from16 v18, v24

    const-string v19, "Determinant is 0"

    invoke-direct/range {v18 .. v19}, Ljavafx/scene/transform/NonInvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 1334
    :cond_5
    move-object/from16 v17, v2

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v20, v5

    div-double v18, v18, v20

    invoke-virtual/range {v17 .. v19}, Ljavafx/scene/transform/Affine;->setMyx(D)V

    .line 1335
    move-object/from16 v17, v2

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v20, v9

    div-double v18, v18, v20

    invoke-virtual/range {v17 .. v19}, Ljavafx/scene/transform/Affine;->setMxy(D)V

    .line 1336
    goto/16 :goto_0

    .line 1338
    .end local v5    # "Mxy":D
    .end local v9    # "Myx":D
    :pswitch_4
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v17

    move-wide/from16 v3, v17

    .restart local v3    # "Mxx":D
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v17

    move-wide/from16 v7, v17

    .line 1339
    .restart local v7    # "Mxt":D
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v17

    move-wide/from16 v11, v17

    .restart local v11    # "Myy":D
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v17

    move-wide/from16 v13, v17

    .line 1340
    .restart local v13    # "Myt":D
    move-wide/from16 v17, v3

    const-wide/16 v19, 0x0

    cmpl-double v17, v17, v19

    if-eqz v17, :cond_6

    move-wide/from16 v17, v11

    const-wide/16 v19, 0x0

    cmpl-double v17, v17, v19

    if-nez v17, :cond_7

    .line 1341
    :cond_6
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->access$500(Ljavafx/scene/transform/Affine$AffineAtomicChange;)V

    .line 1342
    new-instance v17, Ljavafx/scene/transform/NonInvertibleTransformException;

    move-object/from16 v24, v17

    move-object/from16 v17, v24

    move-object/from16 v18, v24

    const-string v19, "Determinant is 0"

    invoke-direct/range {v18 .. v19}, Ljavafx/scene/transform/NonInvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 1344
    :cond_7
    move-object/from16 v17, v2

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v20, v3

    div-double v18, v18, v20

    invoke-virtual/range {v17 .. v19}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    .line 1345
    move-object/from16 v17, v2

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v20, v11

    div-double v18, v18, v20

    invoke-virtual/range {v17 .. v19}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    .line 1346
    move-object/from16 v17, v2

    move-wide/from16 v18, v7

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v20, v3

    div-double v18, v18, v20

    invoke-virtual/range {v17 .. v19}, Ljavafx/scene/transform/Affine;->setTx(D)V

    .line 1347
    move-object/from16 v17, v2

    move-wide/from16 v18, v13

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v20, v11

    div-double v18, v18, v20

    invoke-virtual/range {v17 .. v19}, Ljavafx/scene/transform/Affine;->setTy(D)V

    .line 1348
    goto/16 :goto_0

    .line 1350
    .end local v3    # "Mxx":D
    .end local v7    # "Mxt":D
    .end local v11    # "Myy":D
    .end local v13    # "Myt":D
    :pswitch_5
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v17

    move-wide/from16 v3, v17

    .line 1351
    .restart local v3    # "Mxx":D
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v17

    move-wide/from16 v11, v17

    .line 1352
    .restart local v11    # "Myy":D
    move-wide/from16 v17, v3

    const-wide/16 v19, 0x0

    cmpl-double v17, v17, v19

    if-eqz v17, :cond_8

    move-wide/from16 v17, v11

    const-wide/16 v19, 0x0

    cmpl-double v17, v17, v19

    if-nez v17, :cond_9

    .line 1353
    :cond_8
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->access$500(Ljavafx/scene/transform/Affine$AffineAtomicChange;)V

    .line 1354
    new-instance v17, Ljavafx/scene/transform/NonInvertibleTransformException;

    move-object/from16 v24, v17

    move-object/from16 v17, v24

    move-object/from16 v18, v24

    const-string v19, "Determinant is 0"

    invoke-direct/range {v18 .. v19}, Ljavafx/scene/transform/NonInvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 1356
    :cond_9
    move-object/from16 v17, v2

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v20, v3

    div-double v18, v18, v20

    invoke-virtual/range {v17 .. v19}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    .line 1357
    move-object/from16 v17, v2

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v20, v11

    div-double v18, v18, v20

    invoke-virtual/range {v17 .. v19}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    .line 1358
    goto/16 :goto_0

    .line 1360
    .end local v3    # "Mxx":D
    .end local v11    # "Myy":D
    :pswitch_6
    move-object/from16 v17, v2

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v18

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Ljavafx/scene/transform/Affine;->setTx(D)V

    .line 1361
    move-object/from16 v17, v2

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v18

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Ljavafx/scene/transform/Affine;->setTy(D)V

    .line 1362
    goto/16 :goto_0

    .line 1364
    :pswitch_7
    goto/16 :goto_0

    .line 1283
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

.method private invert3D()V
    .locals 83
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/scene/transform/NonInvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 1374
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/transform/Affine;
    move-object/from16 v72, v3

    move-object/from16 v0, v72

    iget v0, v0, Ljavafx/scene/transform/Affine;->state3d:I

    move/from16 v72, v0

    packed-switch v72, :pswitch_data_0

    .line 1376
    invoke-static {}, Ljavafx/scene/transform/Affine;->stateError()V

    .line 1379
    :pswitch_0
    move-object/from16 v72, v3

    move-object/from16 v73, v3

    invoke-virtual/range {v73 .. v73}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v73

    move-wide/from16 v0, v73

    neg-double v0, v0

    move-wide/from16 v73, v0

    invoke-virtual/range {v72 .. v74}, Ljavafx/scene/transform/Affine;->setTx(D)V

    .line 1380
    move-object/from16 v72, v3

    move-object/from16 v73, v3

    invoke-virtual/range {v73 .. v73}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v73

    move-wide/from16 v0, v73

    neg-double v0, v0

    move-wide/from16 v73, v0

    invoke-virtual/range {v72 .. v74}, Ljavafx/scene/transform/Affine;->setTy(D)V

    .line 1381
    move-object/from16 v72, v3

    move-object/from16 v73, v3

    invoke-virtual/range {v73 .. v73}, Ljavafx/scene/transform/Affine;->getTz()D

    move-result-wide v73

    move-wide/from16 v0, v73

    neg-double v0, v0

    move-wide/from16 v73, v0

    invoke-virtual/range {v72 .. v74}, Ljavafx/scene/transform/Affine;->setTz(D)V

    .line 1382
    .line 1476
    :goto_0
    return-void

    .line 1384
    :pswitch_1
    move-object/from16 v72, v3

    invoke-virtual/range {v72 .. v72}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v72

    move-wide/from16 v4, v72

    .line 1385
    .local v4, "mxx_s":D
    move-object/from16 v72, v3

    invoke-virtual/range {v72 .. v72}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v72

    move-wide/from16 v6, v72

    .line 1386
    .local v6, "myy_s":D
    move-object/from16 v72, v3

    invoke-virtual/range {v72 .. v72}, Ljavafx/scene/transform/Affine;->getMzz()D

    move-result-wide v72

    move-wide/from16 v8, v72

    .line 1387
    .local v8, "mzz_s":D
    move-wide/from16 v72, v4

    const-wide/16 v74, 0x0

    cmpl-double v72, v72, v74

    if-eqz v72, :cond_0

    move-wide/from16 v72, v6

    const-wide/16 v74, 0x0

    cmpl-double v72, v72, v74

    if-eqz v72, :cond_0

    move-wide/from16 v72, v8

    const-wide/16 v74, 0x0

    cmpl-double v72, v72, v74

    if-nez v72, :cond_1

    .line 1388
    :cond_0
    move-object/from16 v72, v3

    move-object/from16 v0, v72

    iget-object v0, v0, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    move-object/from16 v72, v0

    invoke-static/range {v72 .. v72}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->access$500(Ljavafx/scene/transform/Affine$AffineAtomicChange;)V

    .line 1389
    new-instance v72, Ljavafx/scene/transform/NonInvertibleTransformException;

    move-object/from16 v82, v72

    move-object/from16 v72, v82

    move-object/from16 v73, v82

    const-string v74, "Determinant is 0"

    invoke-direct/range {v73 .. v74}, Ljavafx/scene/transform/NonInvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v72

    .line 1391
    :cond_1
    move-object/from16 v72, v3

    const-wide/high16 v73, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v75, v4

    div-double v73, v73, v75

    invoke-virtual/range {v72 .. v74}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    .line 1392
    move-object/from16 v72, v3

    const-wide/high16 v73, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v75, v6

    div-double v73, v73, v75

    invoke-virtual/range {v72 .. v74}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    .line 1393
    move-object/from16 v72, v3

    const-wide/high16 v73, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v75, v8

    div-double v73, v73, v75

    invoke-virtual/range {v72 .. v74}, Ljavafx/scene/transform/Affine;->setMzz(D)V

    .line 1394
    goto :goto_0

    .line 1396
    .end local v4    # "mxx_s":D
    .end local v6    # "myy_s":D
    .end local v8    # "mzz_s":D
    :pswitch_2
    move-object/from16 v72, v3

    invoke-virtual/range {v72 .. v72}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v72

    move-wide/from16 v10, v72

    .line 1397
    .local v10, "mxx_st":D
    move-object/from16 v72, v3

    invoke-virtual/range {v72 .. v72}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v72

    move-wide/from16 v12, v72

    .line 1398
    .local v12, "tx_st":D
    move-object/from16 v72, v3

    invoke-virtual/range {v72 .. v72}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v72

    move-wide/from16 v14, v72

    .line 1399
    .local v14, "myy_st":D
    move-object/from16 v72, v3

    invoke-virtual/range {v72 .. v72}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v72

    move-wide/from16 v16, v72

    .line 1400
    .local v16, "ty_st":D
    move-object/from16 v72, v3

    invoke-virtual/range {v72 .. v72}, Ljavafx/scene/transform/Affine;->getMzz()D

    move-result-wide v72

    move-wide/from16 v18, v72

    .line 1401
    .local v18, "mzz_st":D
    move-object/from16 v72, v3

    invoke-virtual/range {v72 .. v72}, Ljavafx/scene/transform/Affine;->getTz()D

    move-result-wide v72

    move-wide/from16 v20, v72

    .line 1402
    .local v20, "tz_st":D
    move-wide/from16 v72, v10

    const-wide/16 v74, 0x0

    cmpl-double v72, v72, v74

    if-eqz v72, :cond_2

    move-wide/from16 v72, v14

    const-wide/16 v74, 0x0

    cmpl-double v72, v72, v74

    if-eqz v72, :cond_2

    move-wide/from16 v72, v18

    const-wide/16 v74, 0x0

    cmpl-double v72, v72, v74

    if-nez v72, :cond_3

    .line 1403
    :cond_2
    move-object/from16 v72, v3

    move-object/from16 v0, v72

    iget-object v0, v0, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    move-object/from16 v72, v0

    invoke-static/range {v72 .. v72}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->access$500(Ljavafx/scene/transform/Affine$AffineAtomicChange;)V

    .line 1404
    new-instance v72, Ljavafx/scene/transform/NonInvertibleTransformException;

    move-object/from16 v82, v72

    move-object/from16 v72, v82

    move-object/from16 v73, v82

    const-string v74, "Determinant is 0"

    invoke-direct/range {v73 .. v74}, Ljavafx/scene/transform/NonInvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v72

    .line 1406
    :cond_3
    move-object/from16 v72, v3

    const-wide/high16 v73, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v75, v10

    div-double v73, v73, v75

    invoke-virtual/range {v72 .. v74}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    .line 1407
    move-object/from16 v72, v3

    const-wide/high16 v73, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v75, v14

    div-double v73, v73, v75

    invoke-virtual/range {v72 .. v74}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    .line 1408
    move-object/from16 v72, v3

    const-wide/high16 v73, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v75, v18

    div-double v73, v73, v75

    invoke-virtual/range {v72 .. v74}, Ljavafx/scene/transform/Affine;->setMzz(D)V

    .line 1409
    move-object/from16 v72, v3

    move-wide/from16 v73, v12

    move-wide/from16 v0, v73

    neg-double v0, v0

    move-wide/from16 v73, v0

    move-wide/from16 v75, v10

    div-double v73, v73, v75

    invoke-virtual/range {v72 .. v74}, Ljavafx/scene/transform/Affine;->setTx(D)V

    .line 1410
    move-object/from16 v72, v3

    move-wide/from16 v73, v16

    move-wide/from16 v0, v73

    neg-double v0, v0

    move-wide/from16 v73, v0

    move-wide/from16 v75, v14

    div-double v73, v73, v75

    invoke-virtual/range {v72 .. v74}, Ljavafx/scene/transform/Affine;->setTy(D)V

    .line 1411
    move-object/from16 v72, v3

    move-wide/from16 v73, v20

    move-wide/from16 v0, v73

    neg-double v0, v0

    move-wide/from16 v73, v0

    move-wide/from16 v75, v18

    div-double v73, v73, v75

    invoke-virtual/range {v72 .. v74}, Ljavafx/scene/transform/Affine;->setTz(D)V

    .line 1412
    goto/16 :goto_0

    .line 1422
    .end local v10    # "mxx_st":D
    .end local v12    # "tx_st":D
    .end local v14    # "myy_st":D
    .end local v16    # "ty_st":D
    .end local v18    # "mzz_st":D
    .end local v20    # "tz_st":D
    :pswitch_3
    move-object/from16 v72, v3

    invoke-virtual/range {v72 .. v72}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v72

    move-wide/from16 v22, v72

    .line 1423
    .local v22, "mxx":D
    move-object/from16 v72, v3

    invoke-virtual/range {v72 .. v72}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v72

    move-wide/from16 v24, v72

    .line 1424
    .local v24, "mxy":D
    move-object/from16 v72, v3

    invoke-virtual/range {v72 .. v72}, Ljavafx/scene/transform/Affine;->getMxz()D

    move-result-wide v72

    move-wide/from16 v26, v72

    .line 1425
    .local v26, "mxz":D
    move-object/from16 v72, v3

    invoke-virtual/range {v72 .. v72}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v72

    move-wide/from16 v28, v72

    .line 1426
    .local v28, "tx":D
    move-object/from16 v72, v3

    invoke-virtual/range {v72 .. v72}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v72

    move-wide/from16 v30, v72

    .line 1427
    .local v30, "myx":D
    move-object/from16 v72, v3

    invoke-virtual/range {v72 .. v72}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v72

    move-wide/from16 v32, v72

    .line 1428
    .local v32, "myy":D
    move-object/from16 v72, v3

    invoke-virtual/range {v72 .. v72}, Ljavafx/scene/transform/Affine;->getMyz()D

    move-result-wide v72

    move-wide/from16 v34, v72

    .line 1429
    .local v34, "myz":D
    move-object/from16 v72, v3

    invoke-virtual/range {v72 .. v72}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v72

    move-wide/from16 v36, v72

    .line 1430
    .local v36, "ty":D
    move-object/from16 v72, v3

    invoke-virtual/range {v72 .. v72}, Ljavafx/scene/transform/Affine;->getMzy()D

    move-result-wide v72

    move-wide/from16 v38, v72

    .line 1431
    .local v38, "mzy":D
    move-object/from16 v72, v3

    invoke-virtual/range {v72 .. v72}, Ljavafx/scene/transform/Affine;->getMzx()D

    move-result-wide v72

    move-wide/from16 v40, v72

    .line 1432
    .local v40, "mzx":D
    move-object/from16 v72, v3

    invoke-virtual/range {v72 .. v72}, Ljavafx/scene/transform/Affine;->getMzz()D

    move-result-wide v72

    move-wide/from16 v42, v72

    .line 1433
    .local v42, "mzz":D
    move-object/from16 v72, v3

    invoke-virtual/range {v72 .. v72}, Ljavafx/scene/transform/Affine;->getTz()D

    move-result-wide v72

    move-wide/from16 v44, v72

    .line 1435
    .local v44, "tz":D
    move-wide/from16 v72, v22

    move-wide/from16 v74, v32

    move-wide/from16 v76, v42

    mul-double v74, v74, v76

    move-wide/from16 v76, v38

    move-wide/from16 v78, v34

    mul-double v76, v76, v78

    sub-double v74, v74, v76

    mul-double v72, v72, v74

    move-wide/from16 v74, v24

    move-wide/from16 v76, v34

    move-wide/from16 v78, v40

    mul-double v76, v76, v78

    move-wide/from16 v78, v42

    move-wide/from16 v80, v30

    mul-double v78, v78, v80

    sub-double v76, v76, v78

    mul-double v74, v74, v76

    add-double v72, v72, v74

    move-wide/from16 v74, v26

    move-wide/from16 v76, v30

    move-wide/from16 v78, v38

    mul-double v76, v76, v78

    move-wide/from16 v78, v40

    move-wide/from16 v80, v32

    mul-double v78, v78, v80

    sub-double v76, v76, v78

    mul-double v74, v74, v76

    add-double v72, v72, v74

    move-wide/from16 v46, v72

    .line 1440
    .local v46, "det":D
    move-wide/from16 v72, v46

    const-wide/16 v74, 0x0

    cmpl-double v72, v72, v74

    if-nez v72, :cond_4

    .line 1441
    move-object/from16 v72, v3

    move-object/from16 v0, v72

    iget-object v0, v0, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    move-object/from16 v72, v0

    invoke-static/range {v72 .. v72}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->access$500(Ljavafx/scene/transform/Affine$AffineAtomicChange;)V

    .line 1442
    new-instance v72, Ljavafx/scene/transform/NonInvertibleTransformException;

    move-object/from16 v82, v72

    move-object/from16 v72, v82

    move-object/from16 v73, v82

    const-string v74, "Determinant is 0"

    invoke-direct/range {v73 .. v74}, Ljavafx/scene/transform/NonInvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v72

    .line 1445
    :cond_4
    move-wide/from16 v72, v32

    move-wide/from16 v74, v42

    mul-double v72, v72, v74

    move-wide/from16 v74, v34

    move-wide/from16 v76, v38

    mul-double v74, v74, v76

    sub-double v72, v72, v74

    move-wide/from16 v48, v72

    .line 1446
    .local v48, "cxx":D
    move-wide/from16 v72, v30

    move-wide/from16 v0, v72

    neg-double v0, v0

    move-wide/from16 v72, v0

    move-wide/from16 v74, v42

    mul-double v72, v72, v74

    move-wide/from16 v74, v34

    move-wide/from16 v76, v40

    mul-double v74, v74, v76

    add-double v72, v72, v74

    move-wide/from16 v50, v72

    .line 1447
    .local v50, "cyx":D
    move-wide/from16 v72, v30

    move-wide/from16 v74, v38

    mul-double v72, v72, v74

    move-wide/from16 v74, v32

    move-wide/from16 v76, v40

    mul-double v74, v74, v76

    sub-double v72, v72, v74

    move-wide/from16 v52, v72

    .line 1448
    .local v52, "czx":D
    move-wide/from16 v72, v24

    move-wide/from16 v0, v72

    neg-double v0, v0

    move-wide/from16 v72, v0

    move-wide/from16 v74, v34

    move-wide/from16 v76, v44

    mul-double v74, v74, v76

    move-wide/from16 v76, v42

    move-wide/from16 v78, v36

    mul-double v76, v76, v78

    sub-double v74, v74, v76

    mul-double v72, v72, v74

    move-wide/from16 v74, v26

    move-wide/from16 v76, v36

    move-wide/from16 v78, v38

    mul-double v76, v76, v78

    move-wide/from16 v78, v44

    move-wide/from16 v80, v32

    mul-double v78, v78, v80

    sub-double v76, v76, v78

    mul-double v74, v74, v76

    sub-double v72, v72, v74

    move-wide/from16 v74, v28

    move-wide/from16 v76, v32

    move-wide/from16 v78, v42

    mul-double v76, v76, v78

    move-wide/from16 v78, v38

    move-wide/from16 v80, v34

    mul-double v78, v78, v80

    sub-double v76, v76, v78

    mul-double v74, v74, v76

    sub-double v72, v72, v74

    move-wide/from16 v54, v72

    .line 1451
    .local v54, "cxt":D
    move-wide/from16 v72, v24

    move-wide/from16 v0, v72

    neg-double v0, v0

    move-wide/from16 v72, v0

    move-wide/from16 v74, v42

    mul-double v72, v72, v74

    move-wide/from16 v74, v26

    move-wide/from16 v76, v38

    mul-double v74, v74, v76

    add-double v72, v72, v74

    move-wide/from16 v56, v72

    .line 1452
    .local v56, "cxy":D
    move-wide/from16 v72, v22

    move-wide/from16 v74, v42

    mul-double v72, v72, v74

    move-wide/from16 v74, v26

    move-wide/from16 v76, v40

    mul-double v74, v74, v76

    sub-double v72, v72, v74

    move-wide/from16 v58, v72

    .line 1453
    .local v58, "cyy":D
    move-wide/from16 v72, v22

    move-wide/from16 v0, v72

    neg-double v0, v0

    move-wide/from16 v72, v0

    move-wide/from16 v74, v38

    mul-double v72, v72, v74

    move-wide/from16 v74, v24

    move-wide/from16 v76, v40

    mul-double v74, v74, v76

    add-double v72, v72, v74

    move-wide/from16 v60, v72

    .line 1454
    .local v60, "czy":D
    move-wide/from16 v72, v22

    move-wide/from16 v74, v34

    move-wide/from16 v76, v44

    mul-double v74, v74, v76

    move-wide/from16 v76, v42

    move-wide/from16 v78, v36

    mul-double v76, v76, v78

    sub-double v74, v74, v76

    mul-double v72, v72, v74

    move-wide/from16 v74, v26

    move-wide/from16 v76, v36

    move-wide/from16 v78, v40

    mul-double v76, v76, v78

    move-wide/from16 v78, v44

    move-wide/from16 v80, v30

    mul-double v78, v78, v80

    sub-double v76, v76, v78

    mul-double v74, v74, v76

    add-double v72, v72, v74

    move-wide/from16 v74, v28

    move-wide/from16 v76, v30

    move-wide/from16 v78, v42

    mul-double v76, v76, v78

    move-wide/from16 v78, v40

    move-wide/from16 v80, v34

    mul-double v78, v78, v80

    sub-double v76, v76, v78

    mul-double v74, v74, v76

    add-double v72, v72, v74

    move-wide/from16 v62, v72

    .line 1457
    .local v62, "cyt":D
    move-wide/from16 v72, v24

    move-wide/from16 v74, v34

    mul-double v72, v72, v74

    move-wide/from16 v74, v26

    move-wide/from16 v76, v32

    mul-double v74, v74, v76

    sub-double v72, v72, v74

    move-wide/from16 v64, v72

    .line 1458
    .local v64, "cxz":D
    move-wide/from16 v72, v22

    move-wide/from16 v0, v72

    neg-double v0, v0

    move-wide/from16 v72, v0

    move-wide/from16 v74, v34

    mul-double v72, v72, v74

    move-wide/from16 v74, v26

    move-wide/from16 v76, v30

    mul-double v74, v74, v76

    add-double v72, v72, v74

    move-wide/from16 v66, v72

    .line 1459
    .local v66, "cyz":D
    move-wide/from16 v72, v22

    move-wide/from16 v74, v32

    mul-double v72, v72, v74

    move-wide/from16 v74, v24

    move-wide/from16 v76, v30

    mul-double v74, v74, v76

    sub-double v72, v72, v74

    move-wide/from16 v68, v72

    .line 1460
    .local v68, "czz":D
    move-wide/from16 v72, v22

    move-wide/from16 v0, v72

    neg-double v0, v0

    move-wide/from16 v72, v0

    move-wide/from16 v74, v32

    move-wide/from16 v76, v44

    mul-double v74, v74, v76

    move-wide/from16 v76, v38

    move-wide/from16 v78, v36

    mul-double v76, v76, v78

    sub-double v74, v74, v76

    mul-double v72, v72, v74

    move-wide/from16 v74, v24

    move-wide/from16 v76, v36

    move-wide/from16 v78, v40

    mul-double v76, v76, v78

    move-wide/from16 v78, v44

    move-wide/from16 v80, v30

    mul-double v78, v78, v80

    sub-double v76, v76, v78

    mul-double v74, v74, v76

    sub-double v72, v72, v74

    move-wide/from16 v74, v28

    move-wide/from16 v76, v30

    move-wide/from16 v78, v38

    mul-double v76, v76, v78

    move-wide/from16 v78, v40

    move-wide/from16 v80, v32

    mul-double v78, v78, v80

    sub-double v76, v76, v78

    mul-double v74, v74, v76

    sub-double v72, v72, v74

    move-wide/from16 v70, v72

    .line 1464
    .local v70, "czt":D
    move-object/from16 v72, v3

    move-wide/from16 v73, v48

    move-wide/from16 v75, v46

    div-double v73, v73, v75

    invoke-virtual/range {v72 .. v74}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    .line 1465
    move-object/from16 v72, v3

    move-wide/from16 v73, v56

    move-wide/from16 v75, v46

    div-double v73, v73, v75

    invoke-virtual/range {v72 .. v74}, Ljavafx/scene/transform/Affine;->setMxy(D)V

    .line 1466
    move-object/from16 v72, v3

    move-wide/from16 v73, v64

    move-wide/from16 v75, v46

    div-double v73, v73, v75

    invoke-virtual/range {v72 .. v74}, Ljavafx/scene/transform/Affine;->setMxz(D)V

    .line 1467
    move-object/from16 v72, v3

    move-wide/from16 v73, v54

    move-wide/from16 v75, v46

    div-double v73, v73, v75

    invoke-virtual/range {v72 .. v74}, Ljavafx/scene/transform/Affine;->setTx(D)V

    .line 1468
    move-object/from16 v72, v3

    move-wide/from16 v73, v50

    move-wide/from16 v75, v46

    div-double v73, v73, v75

    invoke-virtual/range {v72 .. v74}, Ljavafx/scene/transform/Affine;->setMyx(D)V

    .line 1469
    move-object/from16 v72, v3

    move-wide/from16 v73, v58

    move-wide/from16 v75, v46

    div-double v73, v73, v75

    invoke-virtual/range {v72 .. v74}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    .line 1470
    move-object/from16 v72, v3

    move-wide/from16 v73, v66

    move-wide/from16 v75, v46

    div-double v73, v73, v75

    invoke-virtual/range {v72 .. v74}, Ljavafx/scene/transform/Affine;->setMyz(D)V

    .line 1471
    move-object/from16 v72, v3

    move-wide/from16 v73, v62

    move-wide/from16 v75, v46

    div-double v73, v73, v75

    invoke-virtual/range {v72 .. v74}, Ljavafx/scene/transform/Affine;->setTy(D)V

    .line 1472
    move-object/from16 v72, v3

    move-wide/from16 v73, v52

    move-wide/from16 v75, v46

    div-double v73, v73, v75

    invoke-virtual/range {v72 .. v74}, Ljavafx/scene/transform/Affine;->setMzx(D)V

    .line 1473
    move-object/from16 v72, v3

    move-wide/from16 v73, v60

    move-wide/from16 v75, v46

    div-double v73, v73, v75

    invoke-virtual/range {v72 .. v74}, Ljavafx/scene/transform/Affine;->setMzy(D)V

    .line 1474
    move-object/from16 v72, v3

    move-wide/from16 v73, v68

    move-wide/from16 v75, v46

    div-double v73, v73, v75

    invoke-virtual/range {v72 .. v74}, Ljavafx/scene/transform/Affine;->setMzz(D)V

    .line 1475
    move-object/from16 v72, v3

    move-wide/from16 v73, v70

    move-wide/from16 v75, v46

    div-double v73, v73, v75

    invoke-virtual/range {v72 .. v74}, Ljavafx/scene/transform/Affine;->setTz(D)V

    .line 1476
    goto/16 :goto_0

    .line 1374
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private postProcessChange()V
    .locals 2

    .prologue
    .line 969
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Affine;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    invoke-static {v1}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->access$100(Ljavafx/scene/transform/Affine$AffineAtomicChange;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 970
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/transform/Affine;->updateState()V

    .line 971
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/transform/Affine;->transformChanged()V

    .line 973
    :cond_0
    return-void
.end method

.method private preRotate2D(D)V
    .locals 19

    .prologue
    .line 4417
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/transform/Affine;
    move-wide/from16 v1, p1

    .local v1, "theta":D
    move-object v11, v0

    iget v11, v11, Ljavafx/scene/transform/Affine;->state3d:I

    if-eqz v11, :cond_0

    .line 4418
    move-object v11, v0

    move-wide v12, v1

    invoke-direct {v11, v12, v13}, Ljavafx/scene/transform/Affine;->preRotate3D(D)V

    .line 4419
    .line 4448
    :goto_0
    return-void

    .line 4422
    :cond_0
    move-wide v11, v1

    invoke-static {v11, v12}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    move-wide v3, v11

    .line 4423
    .local v3, "sin":D
    move-wide v11, v3

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    cmpl-double v11, v11, v13

    if-nez v11, :cond_2

    .line 4424
    move-object v11, v0

    invoke-direct {v11}, Ljavafx/scene/transform/Affine;->preRotate2D_90()V

    .line 4448
    :cond_1
    :goto_1
    goto :goto_0

    .line 4425
    :cond_2
    move-wide v11, v3

    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    cmpl-double v11, v11, v13

    if-nez v11, :cond_3

    .line 4426
    move-object v11, v0

    invoke-direct {v11}, Ljavafx/scene/transform/Affine;->preRotate2D_270()V

    goto :goto_1

    .line 4428
    :cond_3
    move-wide v11, v1

    invoke-static {v11, v12}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    move-wide v5, v11

    .line 4429
    .local v5, "cos":D
    move-wide v11, v5

    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    cmpl-double v11, v11, v13

    if-nez v11, :cond_4

    .line 4430
    move-object v11, v0

    invoke-direct {v11}, Ljavafx/scene/transform/Affine;->preRotate2D_180()V

    goto :goto_1

    .line 4431
    :cond_4
    move-wide v11, v5

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    cmpl-double v11, v11, v13

    if-eqz v11, :cond_1

    .line 4433
    move-object v11, v0

    invoke-virtual {v11}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v11

    move-wide v7, v11

    .line 4434
    .local v7, "M0":D
    move-object v11, v0

    invoke-virtual {v11}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v11

    move-wide v9, v11

    .line 4435
    .local v9, "M1":D
    move-object v11, v0

    move-wide v12, v5

    move-wide v14, v7

    mul-double/2addr v12, v14

    move-wide v14, v3

    move-wide/from16 v16, v9

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    .line 4436
    move-object v11, v0

    move-wide v12, v3

    move-wide v14, v7

    mul-double/2addr v12, v14

    move-wide v14, v5

    move-wide/from16 v16, v9

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/transform/Affine;->setMyx(D)V

    .line 4437
    move-object v11, v0

    invoke-virtual {v11}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v11

    move-wide v7, v11

    .line 4438
    move-object v11, v0

    invoke-virtual {v11}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v11

    move-wide v9, v11

    .line 4439
    move-object v11, v0

    move-wide v12, v5

    move-wide v14, v7

    mul-double/2addr v12, v14

    move-wide v14, v3

    move-wide/from16 v16, v9

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/transform/Affine;->setMxy(D)V

    .line 4440
    move-object v11, v0

    move-wide v12, v3

    move-wide v14, v7

    mul-double/2addr v12, v14

    move-wide v14, v5

    move-wide/from16 v16, v9

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    .line 4441
    move-object v11, v0

    invoke-virtual {v11}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v11

    move-wide v7, v11

    .line 4442
    move-object v11, v0

    invoke-virtual {v11}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v11

    move-wide v9, v11

    .line 4443
    move-object v11, v0

    move-wide v12, v5

    move-wide v14, v7

    mul-double/2addr v12, v14

    move-wide v14, v3

    move-wide/from16 v16, v9

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/transform/Affine;->setTx(D)V

    .line 4444
    move-object v11, v0

    move-wide v12, v3

    move-wide v14, v7

    mul-double/2addr v12, v14

    move-wide v14, v5

    move-wide/from16 v16, v9

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/transform/Affine;->setTy(D)V

    .line 4445
    move-object v11, v0

    invoke-direct {v11}, Ljavafx/scene/transform/Affine;->updateState2D()V

    goto/16 :goto_1
.end method

.method private preRotate2D_180()V
    .locals 6

    .prologue
    .line 4483
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Affine;
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v2

    neg-double v2, v2

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    .line 4484
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v2

    neg-double v2, v2

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/transform/Affine;->setMxy(D)V

    .line 4485
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v2

    neg-double v2, v2

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/transform/Affine;->setTx(D)V

    .line 4486
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v2

    neg-double v2, v2

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/transform/Affine;->setMyx(D)V

    .line 4487
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v2

    neg-double v2, v2

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    .line 4488
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v2

    neg-double v2, v2

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/transform/Affine;->setTy(D)V

    .line 4490
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/transform/Affine;->state2d:I

    const/4 v2, 0x4

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    .line 4491
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    .line 4492
    move-object v1, v0

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    iget v2, v2, Ljavafx/scene/transform/Affine;->state2d:I

    const/4 v3, -0x3

    and-int/lit8 v2, v2, -0x3

    iput v2, v1, Ljavafx/scene/transform/Affine;->state2d:I

    .line 4503
    :goto_0
    return-void

    .line 4494
    :cond_0
    move-object v1, v0

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    iget v2, v2, Ljavafx/scene/transform/Affine;->state2d:I

    const/4 v3, 0x2

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Ljavafx/scene/transform/Affine;->state2d:I

    goto :goto_0

    .line 4497
    :cond_1
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_2

    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_2

    .line 4498
    move-object v1, v0

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    iget v2, v2, Ljavafx/scene/transform/Affine;->state2d:I

    const/4 v3, -0x3

    and-int/lit8 v2, v2, -0x3

    iput v2, v1, Ljavafx/scene/transform/Affine;->state2d:I

    goto :goto_0

    .line 4500
    :cond_2
    move-object v1, v0

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    iget v2, v2, Ljavafx/scene/transform/Affine;->state2d:I

    const/4 v3, 0x2

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Ljavafx/scene/transform/Affine;->state2d:I

    goto :goto_0
.end method

.method private preRotate2D_270()V
    .locals 9

    .prologue
    .line 4511
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v5

    move-wide v2, v5

    .line 4512
    .local v2, "M0":D
    move-object v5, v1

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    .line 4513
    move-object v5, v1

    move-wide v6, v2

    neg-double v6, v6

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/transform/Affine;->setMyx(D)V

    .line 4514
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v5

    move-wide v2, v5

    .line 4515
    move-object v5, v1

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/transform/Affine;->setMxy(D)V

    .line 4516
    move-object v5, v1

    move-wide v6, v2

    neg-double v6, v6

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    .line 4517
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v5

    move-wide v2, v5

    .line 4518
    move-object v5, v1

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/transform/Affine;->setTx(D)V

    .line 4519
    move-object v5, v1

    move-wide v6, v2

    neg-double v6, v6

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/transform/Affine;->setTy(D)V

    .line 4521
    sget-object v5, Ljavafx/scene/transform/Affine;->rot90conversion:[I

    move-object v6, v1

    iget v6, v6, Ljavafx/scene/transform/Affine;->state2d:I

    aget v5, v5, v6

    move v4, v5

    .line 4522
    .local v4, "newstate":I
    move v5, v4

    const/4 v6, 0x6

    and-int/lit8 v5, v5, 0x6

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    move-object v5, v1

    .line 4523
    invoke-virtual {v5}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_1

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_1

    .line 4524
    add-int/lit8 v4, v4, -0x2

    .line 4529
    :cond_0
    :goto_0
    move-object v5, v1

    move v6, v4

    iput v6, v5, Ljavafx/scene/transform/Affine;->state2d:I

    .line 4530
    return-void

    .line 4525
    :cond_1
    move v5, v4

    const/4 v6, 0x6

    and-int/lit8 v5, v5, 0x6

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    move-object v5, v1

    .line 4526
    invoke-virtual {v5}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_0

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_0

    .line 4527
    move v5, v4

    const/4 v6, -0x5

    and-int/lit8 v5, v5, -0x5

    const/4 v6, 0x2

    or-int/lit8 v5, v5, 0x2

    move v4, v5

    goto :goto_0
.end method

.method private preRotate2D_90()V
    .locals 9

    .prologue
    .line 4456
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v5

    move-wide v2, v5

    .line 4457
    .local v2, "M0":D
    move-object v5, v1

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v6

    neg-double v6, v6

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    .line 4458
    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/transform/Affine;->setMyx(D)V

    .line 4459
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v5

    move-wide v2, v5

    .line 4460
    move-object v5, v1

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v6

    neg-double v6, v6

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/transform/Affine;->setMxy(D)V

    .line 4461
    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    .line 4462
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v5

    move-wide v2, v5

    .line 4463
    move-object v5, v1

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v6

    neg-double v6, v6

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/transform/Affine;->setTx(D)V

    .line 4464
    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/transform/Affine;->setTy(D)V

    .line 4466
    sget-object v5, Ljavafx/scene/transform/Affine;->rot90conversion:[I

    move-object v6, v1

    iget v6, v6, Ljavafx/scene/transform/Affine;->state2d:I

    aget v5, v5, v6

    move v4, v5

    .line 4467
    .local v4, "newstate":I
    move v5, v4

    const/4 v6, 0x6

    and-int/lit8 v5, v5, 0x6

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    move-object v5, v1

    .line 4468
    invoke-virtual {v5}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_1

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_1

    .line 4469
    add-int/lit8 v4, v4, -0x2

    .line 4474
    :cond_0
    :goto_0
    move-object v5, v1

    move v6, v4

    iput v6, v5, Ljavafx/scene/transform/Affine;->state2d:I

    .line 4475
    return-void

    .line 4470
    :cond_1
    move v5, v4

    const/4 v6, 0x6

    and-int/lit8 v5, v5, 0x6

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    move-object v5, v1

    .line 4471
    invoke-virtual {v5}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_0

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_0

    .line 4472
    move v5, v4

    const/4 v6, -0x5

    and-int/lit8 v5, v5, -0x5

    const/4 v6, 0x2

    or-int/lit8 v5, v5, 0x2

    move v4, v5

    goto :goto_0
.end method

.method private preRotate3D(D)V
    .locals 19

    .prologue
    .line 4537
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/transform/Affine;
    move-wide/from16 v1, p1

    .local v1, "theta":D
    move-object v11, v0

    iget v11, v11, Ljavafx/scene/transform/Affine;->state3d:I

    if-nez v11, :cond_0

    .line 4538
    move-object v11, v0

    move-wide v12, v1

    invoke-direct {v11, v12, v13}, Ljavafx/scene/transform/Affine;->preRotate2D(D)V

    .line 4539
    .line 4572
    :goto_0
    return-void

    .line 4542
    :cond_0
    move-wide v11, v1

    invoke-static {v11, v12}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    move-wide v3, v11

    .line 4543
    .local v3, "sin":D
    move-wide v11, v3

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    cmpl-double v11, v11, v13

    if-nez v11, :cond_2

    .line 4544
    move-object v11, v0

    invoke-direct {v11}, Ljavafx/scene/transform/Affine;->preRotate3D_90()V

    .line 4572
    :cond_1
    :goto_1
    goto :goto_0

    .line 4545
    :cond_2
    move-wide v11, v3

    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    cmpl-double v11, v11, v13

    if-nez v11, :cond_3

    .line 4546
    move-object v11, v0

    invoke-direct {v11}, Ljavafx/scene/transform/Affine;->preRotate3D_270()V

    goto :goto_1

    .line 4548
    :cond_3
    move-wide v11, v1

    invoke-static {v11, v12}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    move-wide v5, v11

    .line 4549
    .local v5, "cos":D
    move-wide v11, v5

    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    cmpl-double v11, v11, v13

    if-nez v11, :cond_4

    .line 4550
    move-object v11, v0

    invoke-direct {v11}, Ljavafx/scene/transform/Affine;->preRotate3D_180()V

    goto :goto_1

    .line 4551
    :cond_4
    move-wide v11, v5

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    cmpl-double v11, v11, v13

    if-eqz v11, :cond_1

    .line 4553
    move-object v11, v0

    invoke-virtual {v11}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v11

    move-wide v7, v11

    .line 4554
    .local v7, "M0":D
    move-object v11, v0

    invoke-virtual {v11}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v11

    move-wide v9, v11

    .line 4555
    .local v9, "M1":D
    move-object v11, v0

    move-wide v12, v5

    move-wide v14, v7

    mul-double/2addr v12, v14

    move-wide v14, v3

    move-wide/from16 v16, v9

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    .line 4556
    move-object v11, v0

    move-wide v12, v3

    move-wide v14, v7

    mul-double/2addr v12, v14

    move-wide v14, v5

    move-wide/from16 v16, v9

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/transform/Affine;->setMyx(D)V

    .line 4557
    move-object v11, v0

    invoke-virtual {v11}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v11

    move-wide v7, v11

    .line 4558
    move-object v11, v0

    invoke-virtual {v11}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v11

    move-wide v9, v11

    .line 4559
    move-object v11, v0

    move-wide v12, v5

    move-wide v14, v7

    mul-double/2addr v12, v14

    move-wide v14, v3

    move-wide/from16 v16, v9

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/transform/Affine;->setMxy(D)V

    .line 4560
    move-object v11, v0

    move-wide v12, v3

    move-wide v14, v7

    mul-double/2addr v12, v14

    move-wide v14, v5

    move-wide/from16 v16, v9

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    .line 4561
    move-object v11, v0

    invoke-virtual {v11}, Ljavafx/scene/transform/Affine;->getMxz()D

    move-result-wide v11

    move-wide v7, v11

    .line 4562
    move-object v11, v0

    invoke-virtual {v11}, Ljavafx/scene/transform/Affine;->getMyz()D

    move-result-wide v11

    move-wide v9, v11

    .line 4563
    move-object v11, v0

    move-wide v12, v5

    move-wide v14, v7

    mul-double/2addr v12, v14

    move-wide v14, v3

    move-wide/from16 v16, v9

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/transform/Affine;->setMxz(D)V

    .line 4564
    move-object v11, v0

    move-wide v12, v3

    move-wide v14, v7

    mul-double/2addr v12, v14

    move-wide v14, v5

    move-wide/from16 v16, v9

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/transform/Affine;->setMyz(D)V

    .line 4565
    move-object v11, v0

    invoke-virtual {v11}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v11

    move-wide v7, v11

    .line 4566
    move-object v11, v0

    invoke-virtual {v11}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v11

    move-wide v9, v11

    .line 4567
    move-object v11, v0

    move-wide v12, v5

    move-wide v14, v7

    mul-double/2addr v12, v14

    move-wide v14, v3

    move-wide/from16 v16, v9

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/transform/Affine;->setTx(D)V

    .line 4568
    move-object v11, v0

    move-wide v12, v3

    move-wide v14, v7

    mul-double/2addr v12, v14

    move-wide v14, v5

    move-wide/from16 v16, v9

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/transform/Affine;->setTy(D)V

    .line 4569
    move-object v11, v0

    invoke-direct {v11}, Ljavafx/scene/transform/Affine;->updateState()V

    goto/16 :goto_1
.end method

.method private preRotate3D(DDDD)V
    .locals 105

    .prologue
    .line 4154
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/transform/Affine;
    move-wide/from16 v3, p1

    .local v3, "angle":D
    move-wide/from16 v5, p3

    .local v5, "axisX":D
    move-wide/from16 v7, p5

    .local v7, "axisY":D
    move-wide/from16 v9, p7

    .local v9, "axisZ":D
    move-wide/from16 v97, v5

    const-wide/16 v99, 0x0

    cmpl-double v97, v97, v99

    if-nez v97, :cond_2

    move-wide/from16 v97, v7

    const-wide/16 v99, 0x0

    cmpl-double v97, v97, v99

    if-nez v97, :cond_2

    .line 4155
    move-wide/from16 v97, v9

    const-wide/16 v99, 0x0

    cmpl-double v97, v97, v99

    if-lez v97, :cond_1

    .line 4156
    move-object/from16 v97, v2

    move-wide/from16 v98, v3

    invoke-direct/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->preRotate3D(D)V

    .line 4160
    .line 4409
    :cond_0
    :goto_0
    return-void

    .line 4157
    :cond_1
    move-wide/from16 v97, v9

    const-wide/16 v99, 0x0

    cmpg-double v97, v97, v99

    if-gez v97, :cond_0

    .line 4158
    move-object/from16 v97, v2

    move-wide/from16 v98, v3

    move-wide/from16 v0, v98

    neg-double v0, v0

    move-wide/from16 v98, v0

    invoke-direct/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->preRotate3D(D)V

    goto :goto_0

    .line 4163
    :cond_2
    move-wide/from16 v97, v5

    move-wide/from16 v99, v5

    mul-double v97, v97, v99

    move-wide/from16 v99, v7

    move-wide/from16 v101, v7

    mul-double v99, v99, v101

    add-double v97, v97, v99

    move-wide/from16 v99, v9

    move-wide/from16 v101, v9

    mul-double v99, v99, v101

    add-double v97, v97, v99

    invoke-static/range {v97 .. v98}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v97

    move-wide/from16 v11, v97

    .line 4165
    .local v11, "mag":D
    move-wide/from16 v97, v11

    const-wide/16 v99, 0x0

    cmpl-double v97, v97, v99

    if-nez v97, :cond_3

    .line 4166
    goto :goto_0

    .line 4169
    :cond_3
    const-wide/high16 v97, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v99, v11

    div-double v97, v97, v99

    move-wide/from16 v11, v97

    .line 4170
    move-wide/from16 v97, v5

    move-wide/from16 v99, v11

    mul-double v97, v97, v99

    move-wide/from16 v13, v97

    .line 4171
    .local v13, "ax":D
    move-wide/from16 v97, v7

    move-wide/from16 v99, v11

    mul-double v97, v97, v99

    move-wide/from16 v15, v97

    .line 4172
    .local v15, "ay":D
    move-wide/from16 v97, v9

    move-wide/from16 v99, v11

    mul-double v97, v97, v99

    move-wide/from16 v17, v97

    .line 4174
    .local v17, "az":D
    move-wide/from16 v97, v3

    invoke-static/range {v97 .. v98}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v97

    invoke-static/range {v97 .. v98}, Ljava/lang/Math;->sin(D)D

    move-result-wide v97

    move-wide/from16 v19, v97

    .line 4175
    .local v19, "sinTheta":D
    move-wide/from16 v97, v3

    invoke-static/range {v97 .. v98}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v97

    invoke-static/range {v97 .. v98}, Ljava/lang/Math;->cos(D)D

    move-result-wide v97

    move-wide/from16 v21, v97

    .line 4176
    .local v21, "cosTheta":D
    const-wide/high16 v97, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v99, v21

    sub-double v97, v97, v99

    move-wide/from16 v23, v97

    .line 4178
    .local v23, "t":D
    move-wide/from16 v97, v13

    move-wide/from16 v99, v17

    mul-double v97, v97, v99

    move-wide/from16 v25, v97

    .line 4179
    .local v25, "xz":D
    move-wide/from16 v97, v13

    move-wide/from16 v99, v15

    mul-double v97, v97, v99

    move-wide/from16 v27, v97

    .line 4180
    .local v27, "xy":D
    move-wide/from16 v97, v15

    move-wide/from16 v99, v17

    mul-double v97, v97, v99

    move-wide/from16 v29, v97

    .line 4182
    .local v29, "yz":D
    move-wide/from16 v97, v23

    move-wide/from16 v99, v13

    mul-double v97, v97, v99

    move-wide/from16 v99, v13

    mul-double v97, v97, v99

    move-wide/from16 v99, v21

    add-double v97, v97, v99

    move-wide/from16 v31, v97

    .line 4183
    .local v31, "Txx":D
    move-wide/from16 v97, v23

    move-wide/from16 v99, v27

    mul-double v97, v97, v99

    move-wide/from16 v99, v19

    move-wide/from16 v101, v17

    mul-double v99, v99, v101

    sub-double v97, v97, v99

    move-wide/from16 v33, v97

    .line 4184
    .local v33, "Txy":D
    move-wide/from16 v97, v23

    move-wide/from16 v99, v25

    mul-double v97, v97, v99

    move-wide/from16 v99, v19

    move-wide/from16 v101, v15

    mul-double v99, v99, v101

    add-double v97, v97, v99

    move-wide/from16 v35, v97

    .line 4186
    .local v35, "Txz":D
    move-wide/from16 v97, v23

    move-wide/from16 v99, v27

    mul-double v97, v97, v99

    move-wide/from16 v99, v19

    move-wide/from16 v101, v17

    mul-double v99, v99, v101

    add-double v97, v97, v99

    move-wide/from16 v37, v97

    .line 4187
    .local v37, "Tyx":D
    move-wide/from16 v97, v23

    move-wide/from16 v99, v15

    mul-double v97, v97, v99

    move-wide/from16 v99, v15

    mul-double v97, v97, v99

    move-wide/from16 v99, v21

    add-double v97, v97, v99

    move-wide/from16 v39, v97

    .line 4188
    .local v39, "Tyy":D
    move-wide/from16 v97, v23

    move-wide/from16 v99, v29

    mul-double v97, v97, v99

    move-wide/from16 v99, v19

    move-wide/from16 v101, v13

    mul-double v99, v99, v101

    sub-double v97, v97, v99

    move-wide/from16 v41, v97

    .line 4190
    .local v41, "Tyz":D
    move-wide/from16 v97, v23

    move-wide/from16 v99, v25

    mul-double v97, v97, v99

    move-wide/from16 v99, v19

    move-wide/from16 v101, v15

    mul-double v99, v99, v101

    sub-double v97, v97, v99

    move-wide/from16 v43, v97

    .line 4191
    .local v43, "Tzx":D
    move-wide/from16 v97, v23

    move-wide/from16 v99, v29

    mul-double v97, v97, v99

    move-wide/from16 v99, v19

    move-wide/from16 v101, v13

    mul-double v99, v99, v101

    add-double v97, v97, v99

    move-wide/from16 v45, v97

    .line 4192
    .local v45, "Tzy":D
    move-wide/from16 v97, v23

    move-wide/from16 v99, v17

    mul-double v97, v97, v99

    move-wide/from16 v99, v17

    mul-double v97, v97, v99

    move-wide/from16 v99, v21

    add-double v97, v97, v99

    move-wide/from16 v47, v97

    .line 4194
    .local v47, "Tzz":D
    move-object/from16 v97, v2

    move-object/from16 v0, v97

    iget v0, v0, Ljavafx/scene/transform/Affine;->state3d:I

    move/from16 v97, v0

    packed-switch v97, :pswitch_data_0

    .line 4196
    invoke-static {}, Ljavafx/scene/transform/Affine;->stateError()V

    .line 4199
    :pswitch_0
    move-object/from16 v97, v2

    move-object/from16 v0, v97

    iget v0, v0, Ljavafx/scene/transform/Affine;->state2d:I

    move/from16 v97, v0

    packed-switch v97, :pswitch_data_1

    .line 4201
    invoke-static {}, Ljavafx/scene/transform/Affine;->stateError()V

    .line 4204
    :pswitch_1
    move-object/from16 v97, v2

    invoke-virtual/range {v97 .. v97}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v97

    move-wide/from16 v49, v97

    .line 4205
    .local v49, "xx_sst":D
    move-object/from16 v97, v2

    invoke-virtual/range {v97 .. v97}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v97

    move-wide/from16 v51, v97

    .line 4206
    .local v51, "xy_sst":D
    move-object/from16 v97, v2

    invoke-virtual/range {v97 .. v97}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v97

    move-wide/from16 v53, v97

    .line 4207
    .local v53, "tx_sst":D
    move-object/from16 v97, v2

    invoke-virtual/range {v97 .. v97}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v97

    move-wide/from16 v55, v97

    .line 4208
    .local v55, "yx_sst":D
    move-object/from16 v97, v2

    invoke-virtual/range {v97 .. v97}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v97

    move-wide/from16 v57, v97

    .line 4209
    .local v57, "yy_sst":D
    move-object/from16 v97, v2

    invoke-virtual/range {v97 .. v97}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v97

    move-wide/from16 v59, v97

    .line 4210
    .local v59, "ty_sst":D
    move-object/from16 v97, v2

    move-wide/from16 v98, v31

    move-wide/from16 v100, v49

    mul-double v98, v98, v100

    move-wide/from16 v100, v33

    move-wide/from16 v102, v55

    mul-double v100, v100, v102

    add-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    .line 4211
    move-object/from16 v97, v2

    move-wide/from16 v98, v31

    move-wide/from16 v100, v51

    mul-double v98, v98, v100

    move-wide/from16 v100, v33

    move-wide/from16 v102, v57

    mul-double v100, v100, v102

    add-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMxy(D)V

    .line 4212
    move-object/from16 v97, v2

    move-wide/from16 v98, v35

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMxz(D)V

    .line 4213
    move-object/from16 v97, v2

    move-wide/from16 v98, v31

    move-wide/from16 v100, v53

    mul-double v98, v98, v100

    move-wide/from16 v100, v33

    move-wide/from16 v102, v59

    mul-double v100, v100, v102

    add-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setTx(D)V

    .line 4214
    move-object/from16 v97, v2

    move-wide/from16 v98, v37

    move-wide/from16 v100, v49

    mul-double v98, v98, v100

    move-wide/from16 v100, v39

    move-wide/from16 v102, v55

    mul-double v100, v100, v102

    add-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMyx(D)V

    .line 4215
    move-object/from16 v97, v2

    move-wide/from16 v98, v37

    move-wide/from16 v100, v51

    mul-double v98, v98, v100

    move-wide/from16 v100, v39

    move-wide/from16 v102, v57

    mul-double v100, v100, v102

    add-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    .line 4216
    move-object/from16 v97, v2

    move-wide/from16 v98, v41

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMyz(D)V

    .line 4217
    move-object/from16 v97, v2

    move-wide/from16 v98, v37

    move-wide/from16 v100, v53

    mul-double v98, v98, v100

    move-wide/from16 v100, v39

    move-wide/from16 v102, v59

    mul-double v100, v100, v102

    add-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setTy(D)V

    .line 4218
    move-object/from16 v97, v2

    move-wide/from16 v98, v43

    move-wide/from16 v100, v49

    mul-double v98, v98, v100

    move-wide/from16 v100, v45

    move-wide/from16 v102, v55

    mul-double v100, v100, v102

    add-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMzx(D)V

    .line 4219
    move-object/from16 v97, v2

    move-wide/from16 v98, v43

    move-wide/from16 v100, v51

    mul-double v98, v98, v100

    move-wide/from16 v100, v45

    move-wide/from16 v102, v57

    mul-double v100, v100, v102

    add-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMzy(D)V

    .line 4220
    move-object/from16 v97, v2

    move-wide/from16 v98, v47

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMzz(D)V

    .line 4221
    move-object/from16 v97, v2

    move-wide/from16 v98, v43

    move-wide/from16 v100, v53

    mul-double v98, v98, v100

    move-wide/from16 v100, v45

    move-wide/from16 v102, v59

    mul-double v100, v100, v102

    add-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setTz(D)V

    .line 4222
    .line 4408
    .end local v49    # "xx_sst":D
    .end local v51    # "xy_sst":D
    .end local v53    # "tx_sst":D
    .end local v55    # "yx_sst":D
    .end local v57    # "yy_sst":D
    .end local v59    # "ty_sst":D
    :goto_1
    move-object/from16 v97, v2

    invoke-direct/range {v97 .. v97}, Ljavafx/scene/transform/Affine;->updateState()V

    .line 4409
    goto/16 :goto_0

    .line 4224
    :pswitch_2
    move-object/from16 v97, v2

    invoke-virtual/range {v97 .. v97}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v97

    move-wide/from16 v61, v97

    .line 4225
    .local v61, "xx_ss":D
    move-object/from16 v97, v2

    invoke-virtual/range {v97 .. v97}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v97

    move-wide/from16 v63, v97

    .line 4226
    .local v63, "xy_ss":D
    move-object/from16 v97, v2

    invoke-virtual/range {v97 .. v97}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v97

    move-wide/from16 v65, v97

    .line 4227
    .local v65, "yx_ss":D
    move-object/from16 v97, v2

    invoke-virtual/range {v97 .. v97}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v97

    move-wide/from16 v67, v97

    .line 4228
    .local v67, "yy_ss":D
    move-object/from16 v97, v2

    move-wide/from16 v98, v31

    move-wide/from16 v100, v61

    mul-double v98, v98, v100

    move-wide/from16 v100, v33

    move-wide/from16 v102, v65

    mul-double v100, v100, v102

    add-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    .line 4229
    move-object/from16 v97, v2

    move-wide/from16 v98, v31

    move-wide/from16 v100, v63

    mul-double v98, v98, v100

    move-wide/from16 v100, v33

    move-wide/from16 v102, v67

    mul-double v100, v100, v102

    add-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMxy(D)V

    .line 4230
    move-object/from16 v97, v2

    move-wide/from16 v98, v35

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMxz(D)V

    .line 4231
    move-object/from16 v97, v2

    move-wide/from16 v98, v37

    move-wide/from16 v100, v61

    mul-double v98, v98, v100

    move-wide/from16 v100, v39

    move-wide/from16 v102, v65

    mul-double v100, v100, v102

    add-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMyx(D)V

    .line 4232
    move-object/from16 v97, v2

    move-wide/from16 v98, v37

    move-wide/from16 v100, v63

    mul-double v98, v98, v100

    move-wide/from16 v100, v39

    move-wide/from16 v102, v67

    mul-double v100, v100, v102

    add-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    .line 4233
    move-object/from16 v97, v2

    move-wide/from16 v98, v41

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMyz(D)V

    .line 4234
    move-object/from16 v97, v2

    move-wide/from16 v98, v43

    move-wide/from16 v100, v61

    mul-double v98, v98, v100

    move-wide/from16 v100, v45

    move-wide/from16 v102, v65

    mul-double v100, v100, v102

    add-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMzx(D)V

    .line 4235
    move-object/from16 v97, v2

    move-wide/from16 v98, v43

    move-wide/from16 v100, v63

    mul-double v98, v98, v100

    move-wide/from16 v100, v45

    move-wide/from16 v102, v67

    mul-double v100, v100, v102

    add-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMzy(D)V

    .line 4236
    move-object/from16 v97, v2

    move-wide/from16 v98, v47

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMzz(D)V

    .line 4237
    goto/16 :goto_1

    .line 4239
    .end local v61    # "xx_ss":D
    .end local v63    # "xy_ss":D
    .end local v65    # "yx_ss":D
    .end local v67    # "yy_ss":D
    :pswitch_3
    move-object/from16 v97, v2

    invoke-virtual/range {v97 .. v97}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v97

    move-wide/from16 v69, v97

    .line 4240
    .local v69, "xy_sht":D
    move-object/from16 v97, v2

    invoke-virtual/range {v97 .. v97}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v97

    move-wide/from16 v71, v97

    .line 4241
    .local v71, "tx_sht":D
    move-object/from16 v97, v2

    invoke-virtual/range {v97 .. v97}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v97

    move-wide/from16 v73, v97

    .line 4242
    .local v73, "yx_sht":D
    move-object/from16 v97, v2

    invoke-virtual/range {v97 .. v97}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v97

    move-wide/from16 v75, v97

    .line 4243
    .local v75, "ty_sht":D
    move-object/from16 v97, v2

    move-wide/from16 v98, v33

    move-wide/from16 v100, v73

    mul-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    .line 4244
    move-object/from16 v97, v2

    move-wide/from16 v98, v31

    move-wide/from16 v100, v69

    mul-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMxy(D)V

    .line 4245
    move-object/from16 v97, v2

    move-wide/from16 v98, v35

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMxz(D)V

    .line 4246
    move-object/from16 v97, v2

    move-wide/from16 v98, v31

    move-wide/from16 v100, v71

    mul-double v98, v98, v100

    move-wide/from16 v100, v33

    move-wide/from16 v102, v75

    mul-double v100, v100, v102

    add-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setTx(D)V

    .line 4247
    move-object/from16 v97, v2

    move-wide/from16 v98, v39

    move-wide/from16 v100, v73

    mul-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMyx(D)V

    .line 4248
    move-object/from16 v97, v2

    move-wide/from16 v98, v37

    move-wide/from16 v100, v69

    mul-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    .line 4249
    move-object/from16 v97, v2

    move-wide/from16 v98, v41

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMyz(D)V

    .line 4250
    move-object/from16 v97, v2

    move-wide/from16 v98, v37

    move-wide/from16 v100, v71

    mul-double v98, v98, v100

    move-wide/from16 v100, v39

    move-wide/from16 v102, v75

    mul-double v100, v100, v102

    add-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setTy(D)V

    .line 4251
    move-object/from16 v97, v2

    move-wide/from16 v98, v45

    move-wide/from16 v100, v73

    mul-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMzx(D)V

    .line 4252
    move-object/from16 v97, v2

    move-wide/from16 v98, v43

    move-wide/from16 v100, v69

    mul-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMzy(D)V

    .line 4253
    move-object/from16 v97, v2

    move-wide/from16 v98, v47

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMzz(D)V

    .line 4254
    move-object/from16 v97, v2

    move-wide/from16 v98, v43

    move-wide/from16 v100, v71

    mul-double v98, v98, v100

    move-wide/from16 v100, v45

    move-wide/from16 v102, v75

    mul-double v100, v100, v102

    add-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setTz(D)V

    .line 4255
    goto/16 :goto_1

    .line 4257
    .end local v69    # "xy_sht":D
    .end local v71    # "tx_sht":D
    .end local v73    # "yx_sht":D
    .end local v75    # "ty_sht":D
    :pswitch_4
    move-object/from16 v97, v2

    invoke-virtual/range {v97 .. v97}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v97

    move-wide/from16 v77, v97

    .line 4258
    .local v77, "xy_sh":D
    move-object/from16 v97, v2

    invoke-virtual/range {v97 .. v97}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v97

    move-wide/from16 v79, v97

    .line 4259
    .local v79, "yx_sh":D
    move-object/from16 v97, v2

    move-wide/from16 v98, v33

    move-wide/from16 v100, v79

    mul-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    .line 4260
    move-object/from16 v97, v2

    move-wide/from16 v98, v31

    move-wide/from16 v100, v77

    mul-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMxy(D)V

    .line 4261
    move-object/from16 v97, v2

    move-wide/from16 v98, v35

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMxz(D)V

    .line 4262
    move-object/from16 v97, v2

    move-wide/from16 v98, v39

    move-wide/from16 v100, v79

    mul-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMyx(D)V

    .line 4263
    move-object/from16 v97, v2

    move-wide/from16 v98, v37

    move-wide/from16 v100, v77

    mul-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    .line 4264
    move-object/from16 v97, v2

    move-wide/from16 v98, v41

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMyz(D)V

    .line 4265
    move-object/from16 v97, v2

    move-wide/from16 v98, v45

    move-wide/from16 v100, v79

    mul-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMzx(D)V

    .line 4266
    move-object/from16 v97, v2

    move-wide/from16 v98, v43

    move-wide/from16 v100, v77

    mul-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMzy(D)V

    .line 4267
    move-object/from16 v97, v2

    move-wide/from16 v98, v47

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMzz(D)V

    .line 4268
    goto/16 :goto_1

    .line 4270
    .end local v77    # "xy_sh":D
    .end local v79    # "yx_sh":D
    :pswitch_5
    move-object/from16 v97, v2

    invoke-virtual/range {v97 .. v97}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v97

    move-wide/from16 v81, v97

    .line 4271
    .local v81, "xx_st":D
    move-object/from16 v97, v2

    invoke-virtual/range {v97 .. v97}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v97

    move-wide/from16 v83, v97

    .line 4272
    .local v83, "tx_st":D
    move-object/from16 v97, v2

    invoke-virtual/range {v97 .. v97}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v97

    move-wide/from16 v85, v97

    .line 4273
    .local v85, "yy_st":D
    move-object/from16 v97, v2

    invoke-virtual/range {v97 .. v97}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v97

    move-wide/from16 v87, v97

    .line 4274
    .local v87, "ty_st":D
    move-object/from16 v97, v2

    move-wide/from16 v98, v31

    move-wide/from16 v100, v81

    mul-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    .line 4275
    move-object/from16 v97, v2

    move-wide/from16 v98, v33

    move-wide/from16 v100, v85

    mul-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMxy(D)V

    .line 4276
    move-object/from16 v97, v2

    move-wide/from16 v98, v35

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMxz(D)V

    .line 4277
    move-object/from16 v97, v2

    move-wide/from16 v98, v31

    move-wide/from16 v100, v83

    mul-double v98, v98, v100

    move-wide/from16 v100, v33

    move-wide/from16 v102, v87

    mul-double v100, v100, v102

    add-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setTx(D)V

    .line 4278
    move-object/from16 v97, v2

    move-wide/from16 v98, v37

    move-wide/from16 v100, v81

    mul-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMyx(D)V

    .line 4279
    move-object/from16 v97, v2

    move-wide/from16 v98, v39

    move-wide/from16 v100, v85

    mul-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    .line 4280
    move-object/from16 v97, v2

    move-wide/from16 v98, v41

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMyz(D)V

    .line 4281
    move-object/from16 v97, v2

    move-wide/from16 v98, v37

    move-wide/from16 v100, v83

    mul-double v98, v98, v100

    move-wide/from16 v100, v39

    move-wide/from16 v102, v87

    mul-double v100, v100, v102

    add-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setTy(D)V

    .line 4282
    move-object/from16 v97, v2

    move-wide/from16 v98, v43

    move-wide/from16 v100, v81

    mul-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMzx(D)V

    .line 4283
    move-object/from16 v97, v2

    move-wide/from16 v98, v45

    move-wide/from16 v100, v85

    mul-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMzy(D)V

    .line 4284
    move-object/from16 v97, v2

    move-wide/from16 v98, v47

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMzz(D)V

    .line 4285
    move-object/from16 v97, v2

    move-wide/from16 v98, v43

    move-wide/from16 v100, v83

    mul-double v98, v98, v100

    move-wide/from16 v100, v45

    move-wide/from16 v102, v87

    mul-double v100, v100, v102

    add-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setTz(D)V

    .line 4286
    goto/16 :goto_1

    .line 4288
    .end local v81    # "xx_st":D
    .end local v83    # "tx_st":D
    .end local v85    # "yy_st":D
    .end local v87    # "ty_st":D
    :pswitch_6
    move-object/from16 v97, v2

    invoke-virtual/range {v97 .. v97}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v97

    move-wide/from16 v89, v97

    .line 4289
    .local v89, "xx_s":D
    move-object/from16 v97, v2

    invoke-virtual/range {v97 .. v97}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v97

    move-wide/from16 v91, v97

    .line 4290
    .local v91, "yy_s":D
    move-object/from16 v97, v2

    move-wide/from16 v98, v31

    move-wide/from16 v100, v89

    mul-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    .line 4291
    move-object/from16 v97, v2

    move-wide/from16 v98, v33

    move-wide/from16 v100, v91

    mul-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMxy(D)V

    .line 4292
    move-object/from16 v97, v2

    move-wide/from16 v98, v35

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMxz(D)V

    .line 4293
    move-object/from16 v97, v2

    move-wide/from16 v98, v37

    move-wide/from16 v100, v89

    mul-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMyx(D)V

    .line 4294
    move-object/from16 v97, v2

    move-wide/from16 v98, v39

    move-wide/from16 v100, v91

    mul-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    .line 4295
    move-object/from16 v97, v2

    move-wide/from16 v98, v41

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMyz(D)V

    .line 4296
    move-object/from16 v97, v2

    move-wide/from16 v98, v43

    move-wide/from16 v100, v89

    mul-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMzx(D)V

    .line 4297
    move-object/from16 v97, v2

    move-wide/from16 v98, v45

    move-wide/from16 v100, v91

    mul-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMzy(D)V

    .line 4298
    move-object/from16 v97, v2

    move-wide/from16 v98, v47

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMzz(D)V

    .line 4299
    goto/16 :goto_1

    .line 4301
    .end local v89    # "xx_s":D
    .end local v91    # "yy_s":D
    :pswitch_7
    move-object/from16 v97, v2

    invoke-virtual/range {v97 .. v97}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v97

    move-wide/from16 v93, v97

    .line 4302
    .local v93, "tx_t":D
    move-object/from16 v97, v2

    invoke-virtual/range {v97 .. v97}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v97

    move-wide/from16 v95, v97

    .line 4303
    .local v95, "ty_t":D
    move-object/from16 v97, v2

    move-wide/from16 v98, v31

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    .line 4304
    move-object/from16 v97, v2

    move-wide/from16 v98, v33

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMxy(D)V

    .line 4305
    move-object/from16 v97, v2

    move-wide/from16 v98, v35

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMxz(D)V

    .line 4306
    move-object/from16 v97, v2

    move-wide/from16 v98, v31

    move-wide/from16 v100, v93

    mul-double v98, v98, v100

    move-wide/from16 v100, v33

    move-wide/from16 v102, v95

    mul-double v100, v100, v102

    add-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setTx(D)V

    .line 4307
    move-object/from16 v97, v2

    move-wide/from16 v98, v37

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMyx(D)V

    .line 4308
    move-object/from16 v97, v2

    move-wide/from16 v98, v39

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    .line 4309
    move-object/from16 v97, v2

    move-wide/from16 v98, v41

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMyz(D)V

    .line 4310
    move-object/from16 v97, v2

    move-wide/from16 v98, v37

    move-wide/from16 v100, v93

    mul-double v98, v98, v100

    move-wide/from16 v100, v39

    move-wide/from16 v102, v95

    mul-double v100, v100, v102

    add-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setTy(D)V

    .line 4311
    move-object/from16 v97, v2

    move-wide/from16 v98, v43

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMzx(D)V

    .line 4312
    move-object/from16 v97, v2

    move-wide/from16 v98, v45

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMzy(D)V

    .line 4313
    move-object/from16 v97, v2

    move-wide/from16 v98, v47

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMzz(D)V

    .line 4314
    move-object/from16 v97, v2

    move-wide/from16 v98, v43

    move-wide/from16 v100, v93

    mul-double v98, v98, v100

    move-wide/from16 v100, v45

    move-wide/from16 v102, v95

    mul-double v100, v100, v102

    add-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setTz(D)V

    .line 4315
    goto/16 :goto_1

    .line 4317
    .end local v93    # "tx_t":D
    .end local v95    # "ty_t":D
    :pswitch_8
    move-object/from16 v97, v2

    move-wide/from16 v98, v31

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    .line 4318
    move-object/from16 v97, v2

    move-wide/from16 v98, v33

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMxy(D)V

    .line 4319
    move-object/from16 v97, v2

    move-wide/from16 v98, v35

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMxz(D)V

    .line 4320
    move-object/from16 v97, v2

    move-wide/from16 v98, v37

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMyx(D)V

    .line 4321
    move-object/from16 v97, v2

    move-wide/from16 v98, v39

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    .line 4322
    move-object/from16 v97, v2

    move-wide/from16 v98, v41

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMyz(D)V

    .line 4323
    move-object/from16 v97, v2

    move-wide/from16 v98, v43

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMzx(D)V

    .line 4324
    move-object/from16 v97, v2

    move-wide/from16 v98, v45

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMzy(D)V

    .line 4325
    move-object/from16 v97, v2

    move-wide/from16 v98, v47

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMzz(D)V

    .line 4326
    goto/16 :goto_1

    .line 4330
    :pswitch_9
    move-object/from16 v97, v2

    invoke-virtual/range {v97 .. v97}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v97

    move-wide/from16 v49, v97

    .line 4331
    .local v49, "tx_t":D
    move-object/from16 v97, v2

    invoke-virtual/range {v97 .. v97}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v97

    move-wide/from16 v51, v97

    .line 4332
    .local v51, "ty_t":D
    move-object/from16 v97, v2

    invoke-virtual/range {v97 .. v97}, Ljavafx/scene/transform/Affine;->getTz()D

    move-result-wide v97

    move-wide/from16 v53, v97

    .line 4333
    .local v53, "tz_t":D
    move-object/from16 v97, v2

    move-wide/from16 v98, v31

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    .line 4334
    move-object/from16 v97, v2

    move-wide/from16 v98, v33

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMxy(D)V

    .line 4335
    move-object/from16 v97, v2

    move-wide/from16 v98, v35

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMxz(D)V

    .line 4336
    move-object/from16 v97, v2

    move-wide/from16 v98, v37

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMyx(D)V

    .line 4337
    move-object/from16 v97, v2

    move-wide/from16 v98, v39

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    .line 4338
    move-object/from16 v97, v2

    move-wide/from16 v98, v41

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMyz(D)V

    .line 4339
    move-object/from16 v97, v2

    move-wide/from16 v98, v43

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMzx(D)V

    .line 4340
    move-object/from16 v97, v2

    move-wide/from16 v98, v45

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMzy(D)V

    .line 4341
    move-object/from16 v97, v2

    move-wide/from16 v98, v47

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMzz(D)V

    .line 4342
    move-object/from16 v97, v2

    move-wide/from16 v98, v31

    move-wide/from16 v100, v49

    mul-double v98, v98, v100

    move-wide/from16 v100, v33

    move-wide/from16 v102, v51

    mul-double v100, v100, v102

    add-double v98, v98, v100

    move-wide/from16 v100, v35

    move-wide/from16 v102, v53

    mul-double v100, v100, v102

    add-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setTx(D)V

    .line 4343
    move-object/from16 v97, v2

    move-wide/from16 v98, v37

    move-wide/from16 v100, v49

    mul-double v98, v98, v100

    move-wide/from16 v100, v39

    move-wide/from16 v102, v51

    mul-double v100, v100, v102

    add-double v98, v98, v100

    move-wide/from16 v100, v41

    move-wide/from16 v102, v53

    mul-double v100, v100, v102

    add-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setTy(D)V

    .line 4344
    move-object/from16 v97, v2

    move-wide/from16 v98, v43

    move-wide/from16 v100, v49

    mul-double v98, v98, v100

    move-wide/from16 v100, v45

    move-wide/from16 v102, v51

    mul-double v100, v100, v102

    add-double v98, v98, v100

    move-wide/from16 v100, v47

    move-wide/from16 v102, v53

    mul-double v100, v100, v102

    add-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setTz(D)V

    .line 4345
    goto/16 :goto_1

    .line 4347
    .end local v49    # "tx_t":D
    .end local v51    # "ty_t":D
    .end local v53    # "tz_t":D
    :pswitch_a
    move-object/from16 v97, v2

    invoke-virtual/range {v97 .. v97}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v97

    move-wide/from16 v55, v97

    .line 4348
    .local v55, "xx_s":D
    move-object/from16 v97, v2

    invoke-virtual/range {v97 .. v97}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v97

    move-wide/from16 v57, v97

    .line 4349
    .local v57, "yy_s":D
    move-object/from16 v97, v2

    invoke-virtual/range {v97 .. v97}, Ljavafx/scene/transform/Affine;->getMzz()D

    move-result-wide v97

    move-wide/from16 v59, v97

    .line 4350
    .local v59, "zz_s":D
    move-object/from16 v97, v2

    move-wide/from16 v98, v31

    move-wide/from16 v100, v55

    mul-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    .line 4351
    move-object/from16 v97, v2

    move-wide/from16 v98, v33

    move-wide/from16 v100, v57

    mul-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMxy(D)V

    .line 4352
    move-object/from16 v97, v2

    move-wide/from16 v98, v35

    move-wide/from16 v100, v59

    mul-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMxz(D)V

    .line 4353
    move-object/from16 v97, v2

    move-wide/from16 v98, v37

    move-wide/from16 v100, v55

    mul-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMyx(D)V

    .line 4354
    move-object/from16 v97, v2

    move-wide/from16 v98, v39

    move-wide/from16 v100, v57

    mul-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    .line 4355
    move-object/from16 v97, v2

    move-wide/from16 v98, v41

    move-wide/from16 v100, v59

    mul-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMyz(D)V

    .line 4356
    move-object/from16 v97, v2

    move-wide/from16 v98, v43

    move-wide/from16 v100, v55

    mul-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMzx(D)V

    .line 4357
    move-object/from16 v97, v2

    move-wide/from16 v98, v45

    move-wide/from16 v100, v57

    mul-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMzy(D)V

    .line 4358
    move-object/from16 v97, v2

    move-wide/from16 v98, v47

    move-wide/from16 v100, v59

    mul-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMzz(D)V

    .line 4359
    goto/16 :goto_1

    .line 4361
    .end local v55    # "xx_s":D
    .end local v57    # "yy_s":D
    .end local v59    # "zz_s":D
    :pswitch_b
    move-object/from16 v97, v2

    invoke-virtual/range {v97 .. v97}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v97

    move-wide/from16 v61, v97

    .line 4362
    .local v61, "xx_st":D
    move-object/from16 v97, v2

    invoke-virtual/range {v97 .. v97}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v97

    move-wide/from16 v63, v97

    .line 4363
    .local v63, "tx_st":D
    move-object/from16 v97, v2

    invoke-virtual/range {v97 .. v97}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v97

    move-wide/from16 v65, v97

    .line 4364
    .local v65, "yy_st":D
    move-object/from16 v97, v2

    invoke-virtual/range {v97 .. v97}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v97

    move-wide/from16 v67, v97

    .line 4365
    .local v67, "ty_st":D
    move-object/from16 v97, v2

    invoke-virtual/range {v97 .. v97}, Ljavafx/scene/transform/Affine;->getMzz()D

    move-result-wide v97

    move-wide/from16 v69, v97

    .line 4366
    .local v69, "zz_st":D
    move-object/from16 v97, v2

    invoke-virtual/range {v97 .. v97}, Ljavafx/scene/transform/Affine;->getTz()D

    move-result-wide v97

    move-wide/from16 v71, v97

    .line 4367
    .local v71, "tz_st":D
    move-object/from16 v97, v2

    move-wide/from16 v98, v31

    move-wide/from16 v100, v61

    mul-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    .line 4368
    move-object/from16 v97, v2

    move-wide/from16 v98, v33

    move-wide/from16 v100, v65

    mul-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMxy(D)V

    .line 4369
    move-object/from16 v97, v2

    move-wide/from16 v98, v35

    move-wide/from16 v100, v69

    mul-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMxz(D)V

    .line 4370
    move-object/from16 v97, v2

    move-wide/from16 v98, v31

    move-wide/from16 v100, v63

    mul-double v98, v98, v100

    move-wide/from16 v100, v33

    move-wide/from16 v102, v67

    mul-double v100, v100, v102

    add-double v98, v98, v100

    move-wide/from16 v100, v35

    move-wide/from16 v102, v71

    mul-double v100, v100, v102

    add-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setTx(D)V

    .line 4371
    move-object/from16 v97, v2

    move-wide/from16 v98, v37

    move-wide/from16 v100, v61

    mul-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMyx(D)V

    .line 4372
    move-object/from16 v97, v2

    move-wide/from16 v98, v39

    move-wide/from16 v100, v65

    mul-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    .line 4373
    move-object/from16 v97, v2

    move-wide/from16 v98, v41

    move-wide/from16 v100, v69

    mul-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMyz(D)V

    .line 4374
    move-object/from16 v97, v2

    move-wide/from16 v98, v37

    move-wide/from16 v100, v63

    mul-double v98, v98, v100

    move-wide/from16 v100, v39

    move-wide/from16 v102, v67

    mul-double v100, v100, v102

    add-double v98, v98, v100

    move-wide/from16 v100, v41

    move-wide/from16 v102, v71

    mul-double v100, v100, v102

    add-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setTy(D)V

    .line 4375
    move-object/from16 v97, v2

    move-wide/from16 v98, v43

    move-wide/from16 v100, v61

    mul-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMzx(D)V

    .line 4376
    move-object/from16 v97, v2

    move-wide/from16 v98, v45

    move-wide/from16 v100, v65

    mul-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMzy(D)V

    .line 4377
    move-object/from16 v97, v2

    move-wide/from16 v98, v47

    move-wide/from16 v100, v69

    mul-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMzz(D)V

    .line 4378
    move-object/from16 v97, v2

    move-wide/from16 v98, v43

    move-wide/from16 v100, v63

    mul-double v98, v98, v100

    move-wide/from16 v100, v45

    move-wide/from16 v102, v67

    mul-double v100, v100, v102

    add-double v98, v98, v100

    move-wide/from16 v100, v47

    move-wide/from16 v102, v71

    mul-double v100, v100, v102

    add-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setTz(D)V

    .line 4379
    goto/16 :goto_1

    .line 4381
    .end local v61    # "xx_st":D
    .end local v63    # "tx_st":D
    .end local v65    # "yy_st":D
    .end local v67    # "ty_st":D
    .end local v69    # "zz_st":D
    .end local v71    # "tz_st":D
    :pswitch_c
    move-object/from16 v97, v2

    invoke-virtual/range {v97 .. v97}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v97

    move-wide/from16 v73, v97

    .line 4382
    .local v73, "m_xx":D
    move-object/from16 v97, v2

    invoke-virtual/range {v97 .. v97}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v97

    move-wide/from16 v75, v97

    .line 4383
    .local v75, "m_xy":D
    move-object/from16 v97, v2

    invoke-virtual/range {v97 .. v97}, Ljavafx/scene/transform/Affine;->getMxz()D

    move-result-wide v97

    move-wide/from16 v77, v97

    .line 4384
    .local v77, "m_xz":D
    move-object/from16 v97, v2

    invoke-virtual/range {v97 .. v97}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v97

    move-wide/from16 v79, v97

    .line 4385
    .local v79, "t_x":D
    move-object/from16 v97, v2

    invoke-virtual/range {v97 .. v97}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v97

    move-wide/from16 v81, v97

    .line 4386
    .local v81, "m_yx":D
    move-object/from16 v97, v2

    invoke-virtual/range {v97 .. v97}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v97

    move-wide/from16 v83, v97

    .line 4387
    .local v83, "m_yy":D
    move-object/from16 v97, v2

    invoke-virtual/range {v97 .. v97}, Ljavafx/scene/transform/Affine;->getMyz()D

    move-result-wide v97

    move-wide/from16 v85, v97

    .line 4388
    .local v85, "m_yz":D
    move-object/from16 v97, v2

    invoke-virtual/range {v97 .. v97}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v97

    move-wide/from16 v87, v97

    .line 4389
    .local v87, "t_y":D
    move-object/from16 v97, v2

    invoke-virtual/range {v97 .. v97}, Ljavafx/scene/transform/Affine;->getMzx()D

    move-result-wide v97

    move-wide/from16 v89, v97

    .line 4390
    .local v89, "m_zx":D
    move-object/from16 v97, v2

    invoke-virtual/range {v97 .. v97}, Ljavafx/scene/transform/Affine;->getMzy()D

    move-result-wide v97

    move-wide/from16 v91, v97

    .line 4391
    .local v91, "m_zy":D
    move-object/from16 v97, v2

    invoke-virtual/range {v97 .. v97}, Ljavafx/scene/transform/Affine;->getMzz()D

    move-result-wide v97

    move-wide/from16 v93, v97

    .line 4392
    .local v93, "m_zz":D
    move-object/from16 v97, v2

    invoke-virtual/range {v97 .. v97}, Ljavafx/scene/transform/Affine;->getTz()D

    move-result-wide v97

    move-wide/from16 v95, v97

    .line 4393
    .local v95, "t_z":D
    move-object/from16 v97, v2

    move-wide/from16 v98, v31

    move-wide/from16 v100, v73

    mul-double v98, v98, v100

    move-wide/from16 v100, v33

    move-wide/from16 v102, v81

    mul-double v100, v100, v102

    add-double v98, v98, v100

    move-wide/from16 v100, v35

    move-wide/from16 v102, v89

    mul-double v100, v100, v102

    add-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    .line 4394
    move-object/from16 v97, v2

    move-wide/from16 v98, v31

    move-wide/from16 v100, v75

    mul-double v98, v98, v100

    move-wide/from16 v100, v33

    move-wide/from16 v102, v83

    mul-double v100, v100, v102

    add-double v98, v98, v100

    move-wide/from16 v100, v35

    move-wide/from16 v102, v91

    mul-double v100, v100, v102

    add-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMxy(D)V

    .line 4395
    move-object/from16 v97, v2

    move-wide/from16 v98, v31

    move-wide/from16 v100, v77

    mul-double v98, v98, v100

    move-wide/from16 v100, v33

    move-wide/from16 v102, v85

    mul-double v100, v100, v102

    add-double v98, v98, v100

    move-wide/from16 v100, v35

    move-wide/from16 v102, v93

    mul-double v100, v100, v102

    add-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMxz(D)V

    .line 4396
    move-object/from16 v97, v2

    move-wide/from16 v98, v31

    move-wide/from16 v100, v79

    mul-double v98, v98, v100

    move-wide/from16 v100, v33

    move-wide/from16 v102, v87

    mul-double v100, v100, v102

    add-double v98, v98, v100

    move-wide/from16 v100, v35

    move-wide/from16 v102, v95

    mul-double v100, v100, v102

    add-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setTx(D)V

    .line 4397
    move-object/from16 v97, v2

    move-wide/from16 v98, v37

    move-wide/from16 v100, v73

    mul-double v98, v98, v100

    move-wide/from16 v100, v39

    move-wide/from16 v102, v81

    mul-double v100, v100, v102

    add-double v98, v98, v100

    move-wide/from16 v100, v41

    move-wide/from16 v102, v89

    mul-double v100, v100, v102

    add-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMyx(D)V

    .line 4398
    move-object/from16 v97, v2

    move-wide/from16 v98, v37

    move-wide/from16 v100, v75

    mul-double v98, v98, v100

    move-wide/from16 v100, v39

    move-wide/from16 v102, v83

    mul-double v100, v100, v102

    add-double v98, v98, v100

    move-wide/from16 v100, v41

    move-wide/from16 v102, v91

    mul-double v100, v100, v102

    add-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    .line 4399
    move-object/from16 v97, v2

    move-wide/from16 v98, v37

    move-wide/from16 v100, v77

    mul-double v98, v98, v100

    move-wide/from16 v100, v39

    move-wide/from16 v102, v85

    mul-double v100, v100, v102

    add-double v98, v98, v100

    move-wide/from16 v100, v41

    move-wide/from16 v102, v93

    mul-double v100, v100, v102

    add-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMyz(D)V

    .line 4400
    move-object/from16 v97, v2

    move-wide/from16 v98, v37

    move-wide/from16 v100, v79

    mul-double v98, v98, v100

    move-wide/from16 v100, v39

    move-wide/from16 v102, v87

    mul-double v100, v100, v102

    add-double v98, v98, v100

    move-wide/from16 v100, v41

    move-wide/from16 v102, v95

    mul-double v100, v100, v102

    add-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setTy(D)V

    .line 4401
    move-object/from16 v97, v2

    move-wide/from16 v98, v43

    move-wide/from16 v100, v73

    mul-double v98, v98, v100

    move-wide/from16 v100, v45

    move-wide/from16 v102, v81

    mul-double v100, v100, v102

    add-double v98, v98, v100

    move-wide/from16 v100, v47

    move-wide/from16 v102, v89

    mul-double v100, v100, v102

    add-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMzx(D)V

    .line 4402
    move-object/from16 v97, v2

    move-wide/from16 v98, v43

    move-wide/from16 v100, v75

    mul-double v98, v98, v100

    move-wide/from16 v100, v45

    move-wide/from16 v102, v83

    mul-double v100, v100, v102

    add-double v98, v98, v100

    move-wide/from16 v100, v47

    move-wide/from16 v102, v91

    mul-double v100, v100, v102

    add-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMzy(D)V

    .line 4403
    move-object/from16 v97, v2

    move-wide/from16 v98, v43

    move-wide/from16 v100, v77

    mul-double v98, v98, v100

    move-wide/from16 v100, v45

    move-wide/from16 v102, v85

    mul-double v100, v100, v102

    add-double v98, v98, v100

    move-wide/from16 v100, v47

    move-wide/from16 v102, v93

    mul-double v100, v100, v102

    add-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setMzz(D)V

    .line 4404
    move-object/from16 v97, v2

    move-wide/from16 v98, v43

    move-wide/from16 v100, v79

    mul-double v98, v98, v100

    move-wide/from16 v100, v45

    move-wide/from16 v102, v87

    mul-double v100, v100, v102

    add-double v98, v98, v100

    move-wide/from16 v100, v47

    move-wide/from16 v102, v95

    mul-double v100, v100, v102

    add-double v98, v98, v100

    invoke-virtual/range {v97 .. v99}, Ljavafx/scene/transform/Affine;->setTz(D)V

    goto/16 :goto_1

    .line 4194
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 4199
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

.method private preRotate3D_180()V
    .locals 10

    .prologue
    .line 4618
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Affine;
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v5

    move-wide v1, v5

    .line 4619
    .local v1, "mxx":D
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v5

    move-wide v3, v5

    .line 4620
    .local v3, "myy":D
    move-object v5, v0

    move-wide v6, v1

    neg-double v6, v6

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    .line 4621
    move-object v5, v0

    move-wide v6, v3

    neg-double v6, v6

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    .line 4622
    move-object v5, v0

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v6

    neg-double v6, v6

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/transform/Affine;->setTx(D)V

    .line 4623
    move-object v5, v0

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v6

    neg-double v6, v6

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/transform/Affine;->setTy(D)V

    .line 4625
    move-object v5, v0

    iget v5, v5, Ljavafx/scene/transform/Affine;->state3d:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    .line 4626
    move-object v5, v0

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v6

    neg-double v6, v6

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/transform/Affine;->setMxy(D)V

    .line 4627
    move-object v5, v0

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Affine;->getMxz()D

    move-result-wide v6

    neg-double v6, v6

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/transform/Affine;->setMxz(D)V

    .line 4628
    move-object v5, v0

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v6

    neg-double v6, v6

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/transform/Affine;->setMyx(D)V

    .line 4629
    move-object v5, v0

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Affine;->getMyz()D

    move-result-wide v6

    neg-double v6, v6

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/transform/Affine;->setMyz(D)V

    .line 4630
    move-object v5, v0

    invoke-direct {v5}, Ljavafx/scene/transform/Affine;->updateState()V

    .line 4631
    .line 4640
    :goto_0
    return-void

    .line 4634
    :cond_0
    move-wide v5, v1

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_1

    move-wide v5, v3

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_1

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/transform/Affine;->getMzz()D

    move-result-wide v5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_1

    .line 4636
    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Ljavafx/scene/transform/Affine;->state3d:I

    const/4 v7, -0x3

    and-int/lit8 v6, v6, -0x3

    iput v6, v5, Ljavafx/scene/transform/Affine;->state3d:I

    .line 4640
    :goto_1
    goto :goto_0

    .line 4638
    :cond_1
    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Ljavafx/scene/transform/Affine;->state3d:I

    const/4 v7, 0x2

    or-int/lit8 v6, v6, 0x2

    iput v6, v5, Ljavafx/scene/transform/Affine;->state3d:I

    goto :goto_1
.end method

.method private preRotate3D_270()V
    .locals 7

    .prologue
    .line 4648
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Affine;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v3

    move-wide v1, v3

    .line 4649
    .local v1, "M0":D
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    .line 4650
    move-object v3, v0

    move-wide v4, v1

    neg-double v4, v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/transform/Affine;->setMyx(D)V

    .line 4651
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v3

    move-wide v1, v3

    .line 4652
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/transform/Affine;->setMxy(D)V

    .line 4653
    move-object v3, v0

    move-wide v4, v1

    neg-double v4, v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    .line 4654
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/transform/Affine;->getMxz()D

    move-result-wide v3

    move-wide v1, v3

    .line 4655
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getMyz()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/transform/Affine;->setMxz(D)V

    .line 4656
    move-object v3, v0

    move-wide v4, v1

    neg-double v4, v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/transform/Affine;->setMyz(D)V

    .line 4657
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v3

    move-wide v1, v3

    .line 4658
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/transform/Affine;->setTx(D)V

    .line 4659
    move-object v3, v0

    move-wide v4, v1

    neg-double v4, v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/transform/Affine;->setTy(D)V

    .line 4661
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/transform/Affine;->state3d:I

    packed-switch v3, :pswitch_data_0

    .line 4663
    invoke-static {}, Ljavafx/scene/transform/Affine;->stateError()V

    .line 4666
    :pswitch_0
    move-object v3, v0

    const/4 v4, 0x4

    iput v4, v3, Ljavafx/scene/transform/Affine;->state3d:I

    .line 4667
    .line 4676
    :goto_0
    return-void

    .line 4670
    :pswitch_1
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-nez v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_1

    .line 4671
    :cond_0
    move-object v3, v0

    const/4 v4, 0x4

    iput v4, v3, Ljavafx/scene/transform/Affine;->state3d:I

    .line 4673
    :cond_1
    goto :goto_0

    .line 4675
    :pswitch_2
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/transform/Affine;->updateState()V

    .line 4676
    goto :goto_0

    .line 4661
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private preRotate3D_90()V
    .locals 7

    .prologue
    .line 4580
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Affine;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v3

    move-wide v1, v3

    .line 4581
    .local v1, "M0":D
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v4

    neg-double v4, v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    .line 4582
    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/transform/Affine;->setMyx(D)V

    .line 4583
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v3

    move-wide v1, v3

    .line 4584
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v4

    neg-double v4, v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/transform/Affine;->setMxy(D)V

    .line 4585
    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    .line 4586
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/transform/Affine;->getMxz()D

    move-result-wide v3

    move-wide v1, v3

    .line 4587
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getMyz()D

    move-result-wide v4

    neg-double v4, v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/transform/Affine;->setMxz(D)V

    .line 4588
    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/transform/Affine;->setMyz(D)V

    .line 4589
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v3

    move-wide v1, v3

    .line 4590
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v4

    neg-double v4, v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/transform/Affine;->setTx(D)V

    .line 4591
    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/transform/Affine;->setTy(D)V

    .line 4593
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/transform/Affine;->state3d:I

    packed-switch v3, :pswitch_data_0

    .line 4595
    invoke-static {}, Ljavafx/scene/transform/Affine;->stateError()V

    .line 4598
    :pswitch_0
    move-object v3, v0

    const/4 v4, 0x4

    iput v4, v3, Ljavafx/scene/transform/Affine;->state3d:I

    .line 4599
    .line 4608
    :goto_0
    return-void

    .line 4602
    :pswitch_1
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-nez v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_1

    .line 4603
    :cond_0
    move-object v3, v0

    const/4 v4, 0x4

    iput v4, v3, Ljavafx/scene/transform/Affine;->state3d:I

    .line 4605
    :cond_1
    goto :goto_0

    .line 4607
    :pswitch_2
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/transform/Affine;->updateState()V

    .line 4608
    goto :goto_0

    .line 4593
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private preScale2D(DD)V
    .locals 15

    .prologue
    .line 2797
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-wide/from16 v2, p1

    .local v2, "sx":D
    move-wide/from16 v4, p3

    .local v4, "sy":D
    move-object v7, v1

    iget v7, v7, Ljavafx/scene/transform/Affine;->state3d:I

    if-eqz v7, :cond_0

    .line 2798
    move-object v7, v1

    move-wide v8, v2

    move-wide v10, v4

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v7 .. v13}, Ljavafx/scene/transform/Affine;->preScale3D(DDD)V

    .line 2799
    .line 2874
    :goto_0
    return-void

    .line 2802
    :cond_0
    move-object v7, v1

    iget v7, v7, Ljavafx/scene/transform/Affine;->state2d:I

    move v6, v7

    .line 2803
    .local v6, "mystate":I
    move v7, v6

    packed-switch v7, :pswitch_data_0

    .line 2805
    invoke-static {}, Ljavafx/scene/transform/Affine;->stateError()V

    .line 2808
    :pswitch_0
    move-object v7, v1

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v8

    move-wide v10, v2

    mul-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setTx(D)V

    .line 2809
    move-object v7, v1

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v8

    move-wide v10, v4

    mul-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setTy(D)V

    .line 2810
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_1

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_1

    .line 2811
    move v7, v6

    const/4 v8, -0x2

    and-int/lit8 v7, v7, -0x2

    move v6, v7

    .line 2812
    move-object v7, v1

    move v8, v6

    iput v8, v7, Ljavafx/scene/transform/Affine;->state2d:I

    .line 2816
    :cond_1
    :pswitch_1
    move-object v7, v1

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v8

    move-wide v10, v2

    mul-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    .line 2817
    move-object v7, v1

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v8

    move-wide v10, v4

    mul-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    .line 2820
    :pswitch_2
    move-object v7, v1

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v8

    move-wide v10, v2

    mul-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setMxy(D)V

    .line 2821
    move-object v7, v1

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v8

    move-wide v10, v4

    mul-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setMyx(D)V

    .line 2822
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_4

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_4

    .line 2823
    move v7, v6

    const/4 v8, 0x1

    and-int/lit8 v7, v7, 0x1

    move v6, v7

    .line 2824
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v7

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_2

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v7

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, v7, v9

    if-eqz v7, :cond_3

    .line 2825
    :cond_2
    move v7, v6

    const/4 v8, 0x2

    or-int/lit8 v7, v7, 0x2

    move v6, v7

    .line 2827
    :cond_3
    move-object v7, v1

    move v8, v6

    iput v8, v7, Ljavafx/scene/transform/Affine;->state2d:I

    .line 2829
    :cond_4
    goto/16 :goto_0

    .line 2831
    :pswitch_3
    move-object v7, v1

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v8

    move-wide v10, v2

    mul-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setTx(D)V

    .line 2832
    move-object v7, v1

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v8

    move-wide v10, v4

    mul-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setTy(D)V

    .line 2833
    move-object v7, v1

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v8

    move-wide v10, v2

    mul-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setMxy(D)V

    .line 2834
    move-object v7, v1

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v8

    move-wide v10, v4

    mul-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setMyx(D)V

    .line 2835
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_7

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_7

    .line 2836
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_6

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_6

    .line 2837
    move-object v7, v1

    const/4 v8, 0x2

    iput v8, v7, Ljavafx/scene/transform/Affine;->state2d:I

    .line 2844
    :cond_5
    :goto_1
    goto/16 :goto_0

    .line 2839
    :cond_6
    move-object v7, v1

    const/4 v8, 0x3

    iput v8, v7, Ljavafx/scene/transform/Affine;->state2d:I

    goto :goto_1

    .line 2841
    :cond_7
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_5

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_5

    .line 2842
    move-object v7, v1

    const/4 v8, 0x4

    iput v8, v7, Ljavafx/scene/transform/Affine;->state2d:I

    goto :goto_1

    .line 2846
    :pswitch_4
    move-object v7, v1

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v8

    move-wide v10, v2

    mul-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setTx(D)V

    .line 2847
    move-object v7, v1

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v8

    move-wide v10, v4

    mul-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setTy(D)V

    .line 2848
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_8

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_8

    .line 2849
    move v7, v6

    const/4 v8, -0x2

    and-int/lit8 v7, v7, -0x2

    move v6, v7

    .line 2850
    move-object v7, v1

    move v8, v6

    iput v8, v7, Ljavafx/scene/transform/Affine;->state2d:I

    .line 2854
    :cond_8
    :pswitch_5
    move-object v7, v1

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v8

    move-wide v10, v2

    mul-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    .line 2855
    move-object v7, v1

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v8

    move-wide v10, v4

    mul-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    .line 2856
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v7

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_9

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v7

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_9

    .line 2857
    move-object v7, v1

    move v8, v6

    const/4 v9, 0x1

    and-int/lit8 v8, v8, 0x1

    move v14, v8

    move v8, v14

    move v9, v14

    move v6, v9

    iput v8, v7, Ljavafx/scene/transform/Affine;->state2d:I

    .line 2859
    :cond_9
    goto/16 :goto_0

    .line 2861
    :pswitch_6
    move-object v7, v1

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v8

    move-wide v10, v2

    mul-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setTx(D)V

    .line 2862
    move-object v7, v1

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v8

    move-wide v10, v4

    mul-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setTy(D)V

    .line 2863
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_a

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_a

    .line 2864
    move v7, v6

    const/4 v8, -0x2

    and-int/lit8 v7, v7, -0x2

    move v6, v7

    .line 2865
    move-object v7, v1

    move v8, v6

    iput v8, v7, Ljavafx/scene/transform/Affine;->state2d:I

    .line 2869
    :cond_a
    :pswitch_7
    move-object v7, v1

    move-wide v8, v2

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    .line 2870
    move-object v7, v1

    move-wide v8, v4

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    .line 2871
    move-wide v7, v2

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_b

    move-wide v7, v4

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, v7, v9

    if-eqz v7, :cond_c

    .line 2872
    :cond_b
    move-object v7, v1

    move v8, v6

    const/4 v9, 0x2

    or-int/lit8 v8, v8, 0x2

    iput v8, v7, Ljavafx/scene/transform/Affine;->state2d:I

    .line 2874
    :cond_c
    goto/16 :goto_0

    .line 2803
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private preScale3D(DDD)V
    .locals 13

    .prologue
    .line 2883
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Affine;
    move-wide v1, p1

    .local v1, "sx":D
    move-wide/from16 v3, p3

    .local v3, "sy":D
    move-wide/from16 v5, p5

    .local v5, "sz":D
    move-object v7, v0

    iget v7, v7, Ljavafx/scene/transform/Affine;->state3d:I

    packed-switch v7, :pswitch_data_0

    .line 2885
    invoke-static {}, Ljavafx/scene/transform/Affine;->stateError()V

    .line 2888
    :pswitch_0
    move-object v7, v0

    move-wide v8, v1

    move-wide v10, v3

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/scene/transform/Affine;->preScale2D(DD)V

    .line 2889
    move-wide v7, v5

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, v7, v9

    if-eqz v7, :cond_0

    .line 2890
    move-object v7, v0

    move-wide v8, v5

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setMzz(D)V

    .line 2891
    move-object v7, v0

    iget v7, v7, Ljavafx/scene/transform/Affine;->state2d:I

    const/4 v8, 0x4

    and-int/lit8 v7, v7, 0x4

    if-nez v7, :cond_1

    .line 2892
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Ljavafx/scene/transform/Affine;->state2d:I

    const/4 v9, 0x1

    and-int/lit8 v8, v8, 0x1

    const/4 v9, 0x2

    or-int/lit8 v8, v8, 0x2

    iput v8, v7, Ljavafx/scene/transform/Affine;->state3d:I

    .line 2897
    .line 2962
    :cond_0
    :goto_0
    return-void

    .line 2894
    :cond_1
    move-object v7, v0

    const/4 v8, 0x4

    iput v8, v7, Ljavafx/scene/transform/Affine;->state3d:I

    goto :goto_0

    .line 2899
    :pswitch_1
    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v8

    move-wide v10, v1

    mul-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setTx(D)V

    .line 2900
    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v8

    move-wide v10, v3

    mul-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setTy(D)V

    .line 2901
    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getTz()D

    move-result-wide v8

    move-wide v10, v5

    mul-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setTz(D)V

    .line 2902
    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v8

    move-wide v10, v1

    mul-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    .line 2903
    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v8

    move-wide v10, v3

    mul-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    .line 2904
    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMzz()D

    move-result-wide v8

    move-wide v10, v5

    mul-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setMzz(D)V

    .line 2905
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_2

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_2

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/transform/Affine;->getTz()D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_2

    .line 2906
    move-object v7, v0

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget v8, v8, Ljavafx/scene/transform/Affine;->state3d:I

    const/4 v9, -0x2

    and-int/lit8 v8, v8, -0x2

    iput v8, v7, Ljavafx/scene/transform/Affine;->state3d:I

    .line 2908
    :cond_2
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v7

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_3

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v7

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_3

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/transform/Affine;->getMzz()D

    move-result-wide v7

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_3

    .line 2909
    move-object v7, v0

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget v8, v8, Ljavafx/scene/transform/Affine;->state3d:I

    const/4 v9, -0x3

    and-int/lit8 v8, v8, -0x3

    iput v8, v7, Ljavafx/scene/transform/Affine;->state3d:I

    .line 2911
    :cond_3
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/transform/Affine;->getTz()D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_4

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/transform/Affine;->getMzz()D

    move-result-wide v7

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_4

    .line 2912
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Ljavafx/scene/transform/Affine;->state3d:I

    iput v8, v7, Ljavafx/scene/transform/Affine;->state2d:I

    .line 2913
    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Ljavafx/scene/transform/Affine;->state3d:I

    .line 2915
    :cond_4
    goto/16 :goto_0

    .line 2917
    :pswitch_2
    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v8

    move-wide v10, v1

    mul-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    .line 2918
    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v8

    move-wide v10, v3

    mul-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    .line 2919
    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMzz()D

    move-result-wide v8

    move-wide v10, v5

    mul-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setMzz(D)V

    .line 2920
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/transform/Affine;->getMzz()D

    move-result-wide v7

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_5

    .line 2921
    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Ljavafx/scene/transform/Affine;->state3d:I

    .line 2922
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v7

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_6

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v7

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_6

    .line 2923
    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Ljavafx/scene/transform/Affine;->state2d:I

    .line 2928
    :cond_5
    :goto_1
    goto/16 :goto_0

    .line 2925
    :cond_6
    move-object v7, v0

    const/4 v8, 0x2

    iput v8, v7, Ljavafx/scene/transform/Affine;->state2d:I

    goto :goto_1

    .line 2930
    :pswitch_3
    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v8

    move-wide v10, v1

    mul-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setTx(D)V

    .line 2931
    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v8

    move-wide v10, v3

    mul-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setTy(D)V

    .line 2932
    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getTz()D

    move-result-wide v8

    move-wide v10, v5

    mul-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setTz(D)V

    .line 2933
    move-object v7, v0

    move-wide v8, v1

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    .line 2934
    move-object v7, v0

    move-wide v8, v3

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    .line 2935
    move-object v7, v0

    move-wide v8, v5

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setMzz(D)V

    .line 2936
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_7

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_7

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/transform/Affine;->getTz()D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_7

    .line 2937
    move-object v7, v0

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget v8, v8, Ljavafx/scene/transform/Affine;->state3d:I

    const/4 v9, -0x2

    and-int/lit8 v8, v8, -0x2

    iput v8, v7, Ljavafx/scene/transform/Affine;->state3d:I

    .line 2939
    :cond_7
    move-wide v7, v1

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_8

    move-wide v7, v3

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_8

    move-wide v7, v5

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, v7, v9

    if-eqz v7, :cond_9

    .line 2940
    :cond_8
    move-object v7, v0

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget v8, v8, Ljavafx/scene/transform/Affine;->state3d:I

    const/4 v9, 0x2

    or-int/lit8 v8, v8, 0x2

    iput v8, v7, Ljavafx/scene/transform/Affine;->state3d:I

    .line 2942
    :cond_9
    goto/16 :goto_0

    .line 2944
    :pswitch_4
    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v8

    move-wide v10, v1

    mul-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    .line 2945
    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v8

    move-wide v10, v1

    mul-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setMxy(D)V

    .line 2946
    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMxz()D

    move-result-wide v8

    move-wide v10, v1

    mul-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setMxz(D)V

    .line 2947
    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v8

    move-wide v10, v1

    mul-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setTx(D)V

    .line 2949
    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v8

    move-wide v10, v3

    mul-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setMyx(D)V

    .line 2950
    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v8

    move-wide v10, v3

    mul-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    .line 2951
    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMyz()D

    move-result-wide v8

    move-wide v10, v3

    mul-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setMyz(D)V

    .line 2952
    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v8

    move-wide v10, v3

    mul-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setTy(D)V

    .line 2954
    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMzx()D

    move-result-wide v8

    move-wide v10, v5

    mul-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setMzx(D)V

    .line 2955
    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMzy()D

    move-result-wide v8

    move-wide v10, v5

    mul-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setMzy(D)V

    .line 2956
    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMzz()D

    move-result-wide v8

    move-wide v10, v5

    mul-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setMzz(D)V

    .line 2957
    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getTz()D

    move-result-wide v8

    move-wide v10, v5

    mul-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setTz(D)V

    .line 2959
    move-wide v7, v1

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-eqz v7, :cond_a

    move-wide v7, v3

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-eqz v7, :cond_a

    move-wide v7, v5

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_b

    .line 2960
    :cond_a
    move-object v7, v0

    invoke-direct {v7}, Ljavafx/scene/transform/Affine;->updateState()V

    .line 2962
    :cond_b
    goto/16 :goto_0

    .line 2883
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method private preShear2D(DD)V
    .locals 37

    .prologue
    .line 3245
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/transform/Affine;
    move-wide/from16 v4, p1

    .local v4, "shx":D
    move-wide/from16 v6, p3

    .local v6, "shy":D
    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget v0, v0, Ljavafx/scene/transform/Affine;->state3d:I

    move/from16 v29, v0

    if-eqz v29, :cond_0

    .line 3246
    move-object/from16 v29, v3

    move-wide/from16 v30, v4

    move-wide/from16 v32, v6

    invoke-direct/range {v29 .. v33}, Ljavafx/scene/transform/Affine;->preShear3D(DD)V

    .line 3247
    .line 3309
    :goto_0
    return-void

    .line 3250
    :cond_0
    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget v0, v0, Ljavafx/scene/transform/Affine;->state2d:I

    move/from16 v29, v0

    move/from16 v8, v29

    .line 3252
    .local v8, "mystate":I
    move/from16 v29, v8

    packed-switch v29, :pswitch_data_0

    .line 3254
    invoke-static {}, Ljavafx/scene/transform/Affine;->stateError()V

    .line 3258
    :pswitch_0
    move-object/from16 v29, v3

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v29

    move-wide/from16 v9, v29

    .line 3259
    .local v9, "t_x_1":D
    move-object/from16 v29, v3

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v29

    move-wide/from16 v11, v29

    .line 3260
    .local v11, "t_y_1":D
    move-object/from16 v29, v3

    move-wide/from16 v30, v9

    move-wide/from16 v32, v4

    move-wide/from16 v34, v11

    mul-double v32, v32, v34

    add-double v30, v30, v32

    invoke-virtual/range {v29 .. v31}, Ljavafx/scene/transform/Affine;->setTx(D)V

    .line 3261
    move-object/from16 v29, v3

    move-wide/from16 v30, v11

    move-wide/from16 v32, v6

    move-wide/from16 v34, v9

    mul-double v32, v32, v34

    add-double v30, v30, v32

    invoke-virtual/range {v29 .. v31}, Ljavafx/scene/transform/Affine;->setTy(D)V

    .line 3265
    .end local v9    # "t_x_1":D
    .end local v11    # "t_y_1":D
    :pswitch_1
    move-object/from16 v29, v3

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v29

    move-wide/from16 v13, v29

    .line 3266
    .local v13, "m_xx":D
    move-object/from16 v29, v3

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v29

    move-wide/from16 v15, v29

    .line 3267
    .local v15, "m_xy":D
    move-object/from16 v29, v3

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v29

    move-wide/from16 v17, v29

    .line 3268
    .local v17, "m_yx":D
    move-object/from16 v29, v3

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v29

    move-wide/from16 v19, v29

    .line 3270
    .local v19, "m_yy":D
    move-object/from16 v29, v3

    move-wide/from16 v30, v13

    move-wide/from16 v32, v4

    move-wide/from16 v34, v17

    mul-double v32, v32, v34

    add-double v30, v30, v32

    invoke-virtual/range {v29 .. v31}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    .line 3271
    move-object/from16 v29, v3

    move-wide/from16 v30, v15

    move-wide/from16 v32, v4

    move-wide/from16 v34, v19

    mul-double v32, v32, v34

    add-double v30, v30, v32

    invoke-virtual/range {v29 .. v31}, Ljavafx/scene/transform/Affine;->setMxy(D)V

    .line 3272
    move-object/from16 v29, v3

    move-wide/from16 v30, v6

    move-wide/from16 v32, v13

    mul-double v30, v30, v32

    move-wide/from16 v32, v17

    add-double v30, v30, v32

    invoke-virtual/range {v29 .. v31}, Ljavafx/scene/transform/Affine;->setMyx(D)V

    .line 3273
    move-object/from16 v29, v3

    move-wide/from16 v30, v6

    move-wide/from16 v32, v15

    mul-double v30, v30, v32

    move-wide/from16 v32, v19

    add-double v30, v30, v32

    invoke-virtual/range {v29 .. v31}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    .line 3274
    move-object/from16 v29, v3

    invoke-direct/range {v29 .. v29}, Ljavafx/scene/transform/Affine;->updateState2D()V

    .line 3275
    goto/16 :goto_0

    .line 3277
    .end local v13    # "m_xx":D
    .end local v15    # "m_xy":D
    .end local v17    # "m_yx":D
    .end local v19    # "m_yy":D
    :pswitch_2
    move-object/from16 v29, v3

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v29

    move-wide/from16 v21, v29

    .line 3278
    .local v21, "t_x_2":D
    move-object/from16 v29, v3

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v29

    move-wide/from16 v23, v29

    .line 3279
    .local v23, "t_y_2":D
    move-object/from16 v29, v3

    move-wide/from16 v30, v21

    move-wide/from16 v32, v4

    move-wide/from16 v34, v23

    mul-double v32, v32, v34

    add-double v30, v30, v32

    invoke-virtual/range {v29 .. v31}, Ljavafx/scene/transform/Affine;->setTx(D)V

    .line 3280
    move-object/from16 v29, v3

    move-wide/from16 v30, v23

    move-wide/from16 v32, v6

    move-wide/from16 v34, v21

    mul-double v32, v32, v34

    add-double v30, v30, v32

    invoke-virtual/range {v29 .. v31}, Ljavafx/scene/transform/Affine;->setTy(D)V

    .line 3281
    move-object/from16 v29, v3

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v29

    const-wide/16 v31, 0x0

    cmpl-double v29, v29, v31

    if-nez v29, :cond_1

    move-object/from16 v29, v3

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v29

    const-wide/16 v31, 0x0

    cmpl-double v29, v29, v31

    if-nez v29, :cond_1

    .line 3282
    move/from16 v29, v8

    const/16 v30, -0x2

    and-int/lit8 v29, v29, -0x2

    move/from16 v8, v29

    .line 3283
    move-object/from16 v29, v3

    move/from16 v30, v8

    move/from16 v0, v30

    move-object/from16 v1, v29

    iput v0, v1, Ljavafx/scene/transform/Affine;->state2d:I

    .line 3287
    .end local v21    # "t_x_2":D
    .end local v23    # "t_y_2":D
    :cond_1
    :pswitch_3
    move-object/from16 v29, v3

    move-wide/from16 v30, v4

    move-object/from16 v32, v3

    invoke-virtual/range {v32 .. v32}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v32

    mul-double v30, v30, v32

    invoke-virtual/range {v29 .. v31}, Ljavafx/scene/transform/Affine;->setMxy(D)V

    .line 3288
    move-object/from16 v29, v3

    move-wide/from16 v30, v6

    move-object/from16 v32, v3

    invoke-virtual/range {v32 .. v32}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v32

    mul-double v30, v30, v32

    invoke-virtual/range {v29 .. v31}, Ljavafx/scene/transform/Affine;->setMyx(D)V

    .line 3289
    move-object/from16 v29, v3

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v29

    const-wide/16 v31, 0x0

    cmpl-double v29, v29, v31

    if-nez v29, :cond_2

    move-object/from16 v29, v3

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v29

    const-wide/16 v31, 0x0

    cmpl-double v29, v29, v31

    if-eqz v29, :cond_3

    .line 3290
    :cond_2
    move-object/from16 v29, v3

    move/from16 v30, v8

    const/16 v31, 0x4

    or-int/lit8 v30, v30, 0x4

    move/from16 v0, v30

    move-object/from16 v1, v29

    iput v0, v1, Ljavafx/scene/transform/Affine;->state2d:I

    .line 3292
    :cond_3
    goto/16 :goto_0

    .line 3294
    :pswitch_4
    move-object/from16 v29, v3

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v29

    move-wide/from16 v25, v29

    .line 3295
    .local v25, "t_x_3":D
    move-object/from16 v29, v3

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v29

    move-wide/from16 v27, v29

    .line 3296
    .local v27, "t_y_3":D
    move-object/from16 v29, v3

    move-wide/from16 v30, v25

    move-wide/from16 v32, v4

    move-wide/from16 v34, v27

    mul-double v32, v32, v34

    add-double v30, v30, v32

    invoke-virtual/range {v29 .. v31}, Ljavafx/scene/transform/Affine;->setTx(D)V

    .line 3297
    move-object/from16 v29, v3

    move-wide/from16 v30, v27

    move-wide/from16 v32, v6

    move-wide/from16 v34, v25

    mul-double v32, v32, v34

    add-double v30, v30, v32

    invoke-virtual/range {v29 .. v31}, Ljavafx/scene/transform/Affine;->setTy(D)V

    .line 3298
    move-object/from16 v29, v3

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v29

    const-wide/16 v31, 0x0

    cmpl-double v29, v29, v31

    if-nez v29, :cond_4

    move-object/from16 v29, v3

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v29

    const-wide/16 v31, 0x0

    cmpl-double v29, v29, v31

    if-nez v29, :cond_4

    .line 3299
    move/from16 v29, v8

    const/16 v30, -0x2

    and-int/lit8 v29, v29, -0x2

    move/from16 v8, v29

    .line 3300
    move-object/from16 v29, v3

    move/from16 v30, v8

    move/from16 v0, v30

    move-object/from16 v1, v29

    iput v0, v1, Ljavafx/scene/transform/Affine;->state2d:I

    .line 3304
    .end local v25    # "t_x_3":D
    .end local v27    # "t_y_3":D
    :cond_4
    :pswitch_5
    move-object/from16 v29, v3

    move-wide/from16 v30, v4

    invoke-virtual/range {v29 .. v31}, Ljavafx/scene/transform/Affine;->setMxy(D)V

    .line 3305
    move-object/from16 v29, v3

    move-wide/from16 v30, v6

    invoke-virtual/range {v29 .. v31}, Ljavafx/scene/transform/Affine;->setMyx(D)V

    .line 3306
    move-object/from16 v29, v3

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v29

    const-wide/16 v31, 0x0

    cmpl-double v29, v29, v31

    if-nez v29, :cond_5

    move-object/from16 v29, v3

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v29

    const-wide/16 v31, 0x0

    cmpl-double v29, v29, v31

    if-eqz v29, :cond_6

    .line 3307
    :cond_5
    move-object/from16 v29, v3

    move/from16 v30, v8

    const/16 v31, 0x2

    or-int/lit8 v30, v30, 0x2

    const/16 v31, 0x4

    or-int/lit8 v30, v30, 0x4

    move/from16 v0, v30

    move-object/from16 v1, v29

    iput v0, v1, Ljavafx/scene/transform/Affine;->state2d:I

    .line 3309
    :cond_6
    goto/16 :goto_0

    .line 3252
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private preShear3D(DD)V
    .locals 35

    .prologue
    .line 3319
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/transform/Affine;
    move-wide/from16 v3, p1

    .local v3, "shx":D
    move-wide/from16 v5, p3

    .local v5, "shy":D
    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget v0, v0, Ljavafx/scene/transform/Affine;->state3d:I

    move/from16 v27, v0

    packed-switch v27, :pswitch_data_0

    .line 3321
    invoke-static {}, Ljavafx/scene/transform/Affine;->stateError()V

    .line 3326
    :pswitch_0
    move-object/from16 v27, v2

    move-wide/from16 v28, v3

    move-wide/from16 v30, v5

    invoke-direct/range {v27 .. v31}, Ljavafx/scene/transform/Affine;->preShear2D(DD)V

    .line 3327
    .line 3379
    :goto_0
    return-void

    .line 3329
    :pswitch_1
    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v27

    move-wide/from16 v7, v27

    .line 3330
    .local v7, "tx_t":D
    move-object/from16 v27, v2

    move-wide/from16 v28, v3

    invoke-virtual/range {v27 .. v29}, Ljavafx/scene/transform/Affine;->setMxy(D)V

    .line 3331
    move-object/from16 v27, v2

    move-wide/from16 v28, v7

    move-object/from16 v30, v2

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v30

    move-wide/from16 v32, v3

    mul-double v30, v30, v32

    add-double v28, v28, v30

    invoke-virtual/range {v27 .. v29}, Ljavafx/scene/transform/Affine;->setTx(D)V

    .line 3332
    move-object/from16 v27, v2

    move-wide/from16 v28, v5

    invoke-virtual/range {v27 .. v29}, Ljavafx/scene/transform/Affine;->setMyx(D)V

    .line 3333
    move-object/from16 v27, v2

    move-wide/from16 v28, v7

    move-wide/from16 v30, v5

    mul-double v28, v28, v30

    move-object/from16 v30, v2

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v30

    add-double v28, v28, v30

    invoke-virtual/range {v27 .. v29}, Ljavafx/scene/transform/Affine;->setTy(D)V

    .line 3335
    move-wide/from16 v27, v3

    const-wide/16 v29, 0x0

    cmpl-double v27, v27, v29

    if-nez v27, :cond_0

    move-wide/from16 v27, v5

    const-wide/16 v29, 0x0

    cmpl-double v27, v27, v29

    if-eqz v27, :cond_1

    .line 3336
    :cond_0
    move-object/from16 v27, v2

    const/16 v28, 0x4

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Ljavafx/scene/transform/Affine;->state3d:I

    .line 3338
    :cond_1
    goto :goto_0

    .line 3340
    .end local v7    # "tx_t":D
    :pswitch_2
    move-object/from16 v27, v2

    move-object/from16 v28, v2

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v28

    move-wide/from16 v30, v3

    mul-double v28, v28, v30

    invoke-virtual/range {v27 .. v29}, Ljavafx/scene/transform/Affine;->setMxy(D)V

    .line 3341
    move-object/from16 v27, v2

    move-object/from16 v28, v2

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v28

    move-wide/from16 v30, v5

    mul-double v28, v28, v30

    invoke-virtual/range {v27 .. v29}, Ljavafx/scene/transform/Affine;->setMyx(D)V

    .line 3343
    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v27

    const-wide/16 v29, 0x0

    cmpl-double v27, v27, v29

    if-nez v27, :cond_2

    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v27

    const-wide/16 v29, 0x0

    cmpl-double v27, v27, v29

    if-eqz v27, :cond_3

    .line 3344
    :cond_2
    move-object/from16 v27, v2

    const/16 v28, 0x4

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Ljavafx/scene/transform/Affine;->state3d:I

    .line 3346
    :cond_3
    goto/16 :goto_0

    .line 3348
    :pswitch_3
    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v27

    move-wide/from16 v9, v27

    .line 3349
    .local v9, "tx_st":D
    move-object/from16 v27, v2

    move-object/from16 v28, v2

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v28

    move-wide/from16 v30, v3

    mul-double v28, v28, v30

    invoke-virtual/range {v27 .. v29}, Ljavafx/scene/transform/Affine;->setMxy(D)V

    .line 3350
    move-object/from16 v27, v2

    move-wide/from16 v28, v9

    move-object/from16 v30, v2

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v30

    move-wide/from16 v32, v3

    mul-double v30, v30, v32

    add-double v28, v28, v30

    invoke-virtual/range {v27 .. v29}, Ljavafx/scene/transform/Affine;->setTx(D)V

    .line 3351
    move-object/from16 v27, v2

    move-object/from16 v28, v2

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v28

    move-wide/from16 v30, v5

    mul-double v28, v28, v30

    invoke-virtual/range {v27 .. v29}, Ljavafx/scene/transform/Affine;->setMyx(D)V

    .line 3352
    move-object/from16 v27, v2

    move-wide/from16 v28, v9

    move-wide/from16 v30, v5

    mul-double v28, v28, v30

    move-object/from16 v30, v2

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v30

    add-double v28, v28, v30

    invoke-virtual/range {v27 .. v29}, Ljavafx/scene/transform/Affine;->setTy(D)V

    .line 3354
    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v27

    const-wide/16 v29, 0x0

    cmpl-double v27, v27, v29

    if-nez v27, :cond_4

    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v27

    const-wide/16 v29, 0x0

    cmpl-double v27, v27, v29

    if-eqz v27, :cond_5

    .line 3355
    :cond_4
    move-object/from16 v27, v2

    const/16 v28, 0x4

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Ljavafx/scene/transform/Affine;->state3d:I

    .line 3357
    :cond_5
    goto/16 :goto_0

    .line 3360
    .end local v9    # "tx_st":D
    :pswitch_4
    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v27

    move-wide/from16 v11, v27

    .line 3361
    .local v11, "m_xx":D
    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v27

    move-wide/from16 v13, v27

    .line 3362
    .local v13, "m_xy":D
    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v27

    move-wide/from16 v15, v27

    .line 3363
    .local v15, "m_yx":D
    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v27

    move-wide/from16 v17, v27

    .line 3364
    .local v17, "t_x":D
    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v27

    move-wide/from16 v19, v27

    .line 3365
    .local v19, "m_yy":D
    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/transform/Affine;->getMxz()D

    move-result-wide v27

    move-wide/from16 v21, v27

    .line 3366
    .local v21, "m_xz":D
    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/transform/Affine;->getMyz()D

    move-result-wide v27

    move-wide/from16 v23, v27

    .line 3367
    .local v23, "m_yz":D
    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v27

    move-wide/from16 v25, v27

    .line 3369
    .local v25, "t_y":D
    move-object/from16 v27, v2

    move-wide/from16 v28, v11

    move-wide/from16 v30, v15

    move-wide/from16 v32, v3

    mul-double v30, v30, v32

    add-double v28, v28, v30

    invoke-virtual/range {v27 .. v29}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    .line 3370
    move-object/from16 v27, v2

    move-wide/from16 v28, v13

    move-wide/from16 v30, v19

    move-wide/from16 v32, v3

    mul-double v30, v30, v32

    add-double v28, v28, v30

    invoke-virtual/range {v27 .. v29}, Ljavafx/scene/transform/Affine;->setMxy(D)V

    .line 3371
    move-object/from16 v27, v2

    move-wide/from16 v28, v21

    move-wide/from16 v30, v23

    move-wide/from16 v32, v3

    mul-double v30, v30, v32

    add-double v28, v28, v30

    invoke-virtual/range {v27 .. v29}, Ljavafx/scene/transform/Affine;->setMxz(D)V

    .line 3372
    move-object/from16 v27, v2

    move-wide/from16 v28, v17

    move-wide/from16 v30, v25

    move-wide/from16 v32, v3

    mul-double v30, v30, v32

    add-double v28, v28, v30

    invoke-virtual/range {v27 .. v29}, Ljavafx/scene/transform/Affine;->setTx(D)V

    .line 3373
    move-object/from16 v27, v2

    move-wide/from16 v28, v11

    move-wide/from16 v30, v5

    mul-double v28, v28, v30

    move-wide/from16 v30, v15

    add-double v28, v28, v30

    invoke-virtual/range {v27 .. v29}, Ljavafx/scene/transform/Affine;->setMyx(D)V

    .line 3374
    move-object/from16 v27, v2

    move-wide/from16 v28, v13

    move-wide/from16 v30, v5

    mul-double v28, v28, v30

    move-wide/from16 v30, v19

    add-double v28, v28, v30

    invoke-virtual/range {v27 .. v29}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    .line 3375
    move-object/from16 v27, v2

    move-wide/from16 v28, v21

    move-wide/from16 v30, v5

    mul-double v28, v28, v30

    move-wide/from16 v30, v23

    add-double v28, v28, v30

    invoke-virtual/range {v27 .. v29}, Ljavafx/scene/transform/Affine;->setMyz(D)V

    .line 3376
    move-object/from16 v27, v2

    move-wide/from16 v28, v17

    move-wide/from16 v30, v5

    mul-double v28, v28, v30

    move-wide/from16 v30, v25

    add-double v28, v28, v30

    invoke-virtual/range {v27 .. v29}, Ljavafx/scene/transform/Affine;->setTy(D)V

    .line 3378
    move-object/from16 v27, v2

    invoke-direct/range {v27 .. v27}, Ljavafx/scene/transform/Affine;->updateState()V

    .line 3379
    goto/16 :goto_0

    .line 3319
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private preTranslate2D(DD)V
    .locals 13

    .prologue
    .line 2234
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Affine;
    move-wide v1, p1

    .local v1, "tx":D
    move-wide/from16 v3, p3

    .local v3, "ty":D
    move-object v5, v0

    iget v5, v5, Ljavafx/scene/transform/Affine;->state3d:I

    if-eqz v5, :cond_0

    .line 2235
    move-object v5, v0

    move-wide v6, v1

    move-wide v8, v3

    const-wide/16 v10, 0x0

    invoke-direct/range {v5 .. v11}, Ljavafx/scene/transform/Affine;->preTranslate3D(DDD)V

    .line 2236
    .line 2247
    :goto_0
    return-void

    .line 2239
    :cond_0
    move-object v5, v0

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v6

    move-wide v8, v1

    add-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/transform/Affine;->setTx(D)V

    .line 2240
    move-object v5, v0

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v6

    move-wide v8, v3

    add-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/transform/Affine;->setTy(D)V

    .line 2242
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_1

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_1

    .line 2243
    move-object v5, v0

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    iget v6, v6, Ljavafx/scene/transform/Affine;->state2d:I

    const/4 v7, -0x2

    and-int/lit8 v6, v6, -0x2

    iput v6, v5, Ljavafx/scene/transform/Affine;->state2d:I

    .line 2247
    :goto_1
    goto :goto_0

    .line 2245
    :cond_1
    move-object v5, v0

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    iget v6, v6, Ljavafx/scene/transform/Affine;->state2d:I

    const/4 v7, 0x1

    or-int/lit8 v6, v6, 0x1

    iput v6, v5, Ljavafx/scene/transform/Affine;->state2d:I

    goto :goto_1
.end method

.method private preTranslate3D(DDD)V
    .locals 15

    .prologue
    .line 2254
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-wide/from16 v2, p1

    .local v2, "tx":D
    move-wide/from16 v4, p3

    .local v4, "ty":D
    move-wide/from16 v6, p5

    .local v6, "tz":D
    move-object v8, v1

    iget v8, v8, Ljavafx/scene/transform/Affine;->state3d:I

    packed-switch v8, :pswitch_data_0

    .line 2256
    invoke-static {}, Ljavafx/scene/transform/Affine;->stateError()V

    .line 2259
    :pswitch_0
    move-object v8, v1

    move-wide v9, v2

    move-wide v11, v4

    invoke-direct {v8, v9, v10, v11, v12}, Ljavafx/scene/transform/Affine;->preTranslate2D(DD)V

    .line 2261
    move-wide v8, v6

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-eqz v8, :cond_0

    .line 2262
    move-object v8, v1

    move-wide v9, v6

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/transform/Affine;->setTz(D)V

    .line 2264
    move-object v8, v1

    iget v8, v8, Ljavafx/scene/transform/Affine;->state2d:I

    const/4 v9, 0x4

    and-int/lit8 v8, v8, 0x4

    if-nez v8, :cond_1

    .line 2265
    move-object v8, v1

    move-object v9, v1

    iget v9, v9, Ljavafx/scene/transform/Affine;->state2d:I

    const/4 v10, 0x2

    and-int/lit8 v9, v9, 0x2

    const/4 v10, 0x1

    or-int/lit8 v9, v9, 0x1

    iput v9, v8, Ljavafx/scene/transform/Affine;->state3d:I

    .line 2270
    .line 2316
    :cond_0
    :goto_0
    return-void

    .line 2267
    :cond_1
    move-object v8, v1

    const/4 v9, 0x4

    iput v9, v8, Ljavafx/scene/transform/Affine;->state3d:I

    goto :goto_0

    .line 2272
    :pswitch_1
    move-object v8, v1

    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v9

    move-wide v11, v2

    add-double/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/transform/Affine;->setTx(D)V

    .line 2273
    move-object v8, v1

    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v9

    move-wide v11, v4

    add-double/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/transform/Affine;->setTy(D)V

    .line 2274
    move-object v8, v1

    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/scene/transform/Affine;->getTz()D

    move-result-wide v9

    move-wide v11, v6

    add-double/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/transform/Affine;->setTz(D)V

    .line 2275
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getTz()D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-nez v8, :cond_2

    .line 2276
    move-object v8, v1

    const/4 v9, 0x0

    iput v9, v8, Ljavafx/scene/transform/Affine;->state3d:I

    .line 2277
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-nez v8, :cond_3

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-nez v8, :cond_3

    .line 2278
    move-object v8, v1

    const/4 v9, 0x0

    iput v9, v8, Ljavafx/scene/transform/Affine;->state2d:I

    .line 2283
    :cond_2
    :goto_1
    goto :goto_0

    .line 2280
    :cond_3
    move-object v8, v1

    const/4 v9, 0x1

    iput v9, v8, Ljavafx/scene/transform/Affine;->state2d:I

    goto :goto_1

    .line 2285
    :pswitch_2
    move-object v8, v1

    move-wide v9, v2

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/transform/Affine;->setTx(D)V

    .line 2286
    move-object v8, v1

    move-wide v9, v4

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/transform/Affine;->setTy(D)V

    .line 2287
    move-object v8, v1

    move-wide v9, v6

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/transform/Affine;->setTz(D)V

    .line 2288
    move-wide v8, v2

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-nez v8, :cond_4

    move-wide v8, v4

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-nez v8, :cond_4

    move-wide v8, v6

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-eqz v8, :cond_5

    .line 2289
    :cond_4
    move-object v8, v1

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    iget v9, v9, Ljavafx/scene/transform/Affine;->state3d:I

    const/4 v10, 0x1

    or-int/lit8 v9, v9, 0x1

    iput v9, v8, Ljavafx/scene/transform/Affine;->state3d:I

    .line 2291
    :cond_5
    goto/16 :goto_0

    .line 2293
    :pswitch_3
    move-object v8, v1

    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v9

    move-wide v11, v2

    add-double/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/transform/Affine;->setTx(D)V

    .line 2294
    move-object v8, v1

    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v9

    move-wide v11, v4

    add-double/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/transform/Affine;->setTy(D)V

    .line 2295
    move-object v8, v1

    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/scene/transform/Affine;->getTz()D

    move-result-wide v9

    move-wide v11, v6

    add-double/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/transform/Affine;->setTz(D)V

    .line 2297
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getTz()D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-nez v8, :cond_7

    .line 2298
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-nez v8, :cond_6

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-nez v8, :cond_6

    .line 2299
    move-object v8, v1

    const/4 v9, 0x2

    iput v9, v8, Ljavafx/scene/transform/Affine;->state3d:I

    .line 2301
    :cond_6
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMzz()D

    move-result-wide v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpl-double v8, v8, v10

    if-nez v8, :cond_7

    .line 2302
    move-object v8, v1

    move-object v9, v1

    iget v9, v9, Ljavafx/scene/transform/Affine;->state3d:I

    iput v9, v8, Ljavafx/scene/transform/Affine;->state2d:I

    .line 2303
    move-object v8, v1

    const/4 v9, 0x0

    iput v9, v8, Ljavafx/scene/transform/Affine;->state3d:I

    .line 2306
    :cond_7
    goto/16 :goto_0

    .line 2308
    :pswitch_4
    move-object v8, v1

    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v9

    move-wide v11, v2

    add-double/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/transform/Affine;->setTx(D)V

    .line 2309
    move-object v8, v1

    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v9

    move-wide v11, v4

    add-double/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/transform/Affine;->setTy(D)V

    .line 2310
    move-object v8, v1

    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/scene/transform/Affine;->getTz()D

    move-result-wide v9

    move-wide v11, v6

    add-double/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/transform/Affine;->setTz(D)V

    .line 2311
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getTz()D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-nez v8, :cond_8

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMxz()D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-nez v8, :cond_8

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMyz()D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-nez v8, :cond_8

    move-object v8, v1

    .line 2312
    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMzx()D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-nez v8, :cond_8

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMzy()D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-nez v8, :cond_8

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMzz()D

    move-result-wide v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpl-double v8, v8, v10

    if-nez v8, :cond_8

    .line 2313
    move-object v8, v1

    const/4 v9, 0x0

    iput v9, v8, Ljavafx/scene/transform/Affine;->state3d:I

    .line 2314
    move-object v8, v1

    invoke-direct {v8}, Ljavafx/scene/transform/Affine;->updateState2D()V

    .line 2316
    :cond_8
    goto/16 :goto_0

    .line 2254
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private rotate2D(D)V
    .locals 19

    .prologue
    .line 3742
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-wide/from16 v2, p1

    .local v2, "theta":D
    move-object v12, v1

    iget v12, v12, Ljavafx/scene/transform/Affine;->state3d:I

    if-eqz v12, :cond_0

    .line 3743
    move-object v12, v1

    move-wide v13, v2

    invoke-direct {v12, v13, v14}, Ljavafx/scene/transform/Affine;->rotate3D(D)V

    .line 3744
    .line 3769
    :goto_0
    return-void

    .line 3747
    :cond_0
    move-wide v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    move-wide v4, v12

    .line 3748
    .local v4, "sin":D
    move-wide v12, v4

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpl-double v12, v12, v14

    if-nez v12, :cond_2

    .line 3749
    move-object v12, v1

    invoke-direct {v12}, Ljavafx/scene/transform/Affine;->rotate2D_90()V

    .line 3769
    :cond_1
    :goto_1
    goto :goto_0

    .line 3750
    :cond_2
    move-wide v12, v4

    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    cmpl-double v12, v12, v14

    if-nez v12, :cond_3

    .line 3751
    move-object v12, v1

    invoke-direct {v12}, Ljavafx/scene/transform/Affine;->rotate2D_270()V

    goto :goto_1

    .line 3753
    :cond_3
    move-wide v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    move-wide v6, v12

    .line 3754
    .local v6, "cos":D
    move-wide v12, v6

    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    cmpl-double v12, v12, v14

    if-nez v12, :cond_4

    .line 3755
    move-object v12, v1

    invoke-direct {v12}, Ljavafx/scene/transform/Affine;->rotate2D_180()V

    goto :goto_1

    .line 3756
    :cond_4
    move-wide v12, v6

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpl-double v12, v12, v14

    if-eqz v12, :cond_1

    .line 3758
    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v12

    move-wide v8, v12

    .line 3759
    .local v8, "M0":D
    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v12

    move-wide v10, v12

    .line 3760
    .local v10, "M1":D
    move-object v12, v1

    move-wide v13, v6

    move-wide v15, v8

    mul-double/2addr v13, v15

    move-wide v15, v4

    move-wide/from16 v17, v10

    mul-double v15, v15, v17

    add-double/2addr v13, v15

    invoke-virtual {v12, v13, v14}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    .line 3761
    move-object v12, v1

    move-wide v13, v4

    neg-double v13, v13

    move-wide v15, v8

    mul-double/2addr v13, v15

    move-wide v15, v6

    move-wide/from16 v17, v10

    mul-double v15, v15, v17

    add-double/2addr v13, v15

    invoke-virtual {v12, v13, v14}, Ljavafx/scene/transform/Affine;->setMxy(D)V

    .line 3762
    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v12

    move-wide v8, v12

    .line 3763
    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v12

    move-wide v10, v12

    .line 3764
    move-object v12, v1

    move-wide v13, v6

    move-wide v15, v8

    mul-double/2addr v13, v15

    move-wide v15, v4

    move-wide/from16 v17, v10

    mul-double v15, v15, v17

    add-double/2addr v13, v15

    invoke-virtual {v12, v13, v14}, Ljavafx/scene/transform/Affine;->setMyx(D)V

    .line 3765
    move-object v12, v1

    move-wide v13, v4

    neg-double v13, v13

    move-wide v15, v8

    mul-double/2addr v13, v15

    move-wide v15, v6

    move-wide/from16 v17, v10

    mul-double v15, v15, v17

    add-double/2addr v13, v15

    invoke-virtual {v12, v13, v14}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    .line 3766
    move-object v12, v1

    invoke-direct {v12}, Ljavafx/scene/transform/Affine;->updateState2D()V

    goto :goto_1
.end method

.method private rotate2D_180()V
    .locals 7

    .prologue
    .line 3800
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-object v3, v1

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v4

    neg-double v4, v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    .line 3801
    move-object v3, v1

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v4

    neg-double v4, v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    .line 3802
    move-object v3, v1

    iget v3, v3, Ljavafx/scene/transform/Affine;->state2d:I

    move v2, v3

    .line 3803
    .local v2, "oldstate":I
    move v3, v2

    const/4 v4, 0x4

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_0

    .line 3806
    move-object v3, v1

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v4

    neg-double v4, v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/transform/Affine;->setMxy(D)V

    .line 3807
    move-object v3, v1

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v4

    neg-double v4, v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/transform/Affine;->setMyx(D)V

    .line 3817
    :goto_0
    return-void

    .line 3811
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, v3, v5

    if-nez v3, :cond_1

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, v3, v5

    if-nez v3, :cond_1

    .line 3812
    move-object v3, v1

    move v4, v2

    const/4 v5, -0x3

    and-int/lit8 v4, v4, -0x3

    iput v4, v3, Ljavafx/scene/transform/Affine;->state2d:I

    goto :goto_0

    .line 3814
    :cond_1
    move-object v3, v1

    move v4, v2

    const/4 v5, 0x2

    or-int/lit8 v4, v4, 0x2

    iput v4, v3, Ljavafx/scene/transform/Affine;->state2d:I

    goto :goto_0
.end method

.method private rotate2D_270()V
    .locals 8

    .prologue
    .line 3825
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Affine;
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v4

    move-wide v1, v4

    .line 3826
    .local v1, "M0":D
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v5

    neg-double v5, v5

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    .line 3827
    move-object v4, v0

    move-wide v5, v1

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/transform/Affine;->setMxy(D)V

    .line 3828
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v4

    move-wide v1, v4

    .line 3829
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v5

    neg-double v5, v5

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/transform/Affine;->setMyx(D)V

    .line 3830
    move-object v4, v0

    move-wide v5, v1

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    .line 3831
    sget-object v4, Ljavafx/scene/transform/Affine;->rot90conversion:[I

    move-object v5, v0

    iget v5, v5, Ljavafx/scene/transform/Affine;->state2d:I

    aget v4, v4, v5

    move v3, v4

    .line 3832
    .local v3, "newstate":I
    move v4, v3

    const/4 v5, 0x6

    and-int/lit8 v4, v4, 0x6

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    move-object v4, v0

    .line 3833
    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    .line 3834
    add-int/lit8 v3, v3, -0x2

    .line 3839
    :cond_0
    :goto_0
    move-object v4, v0

    move v5, v3

    iput v5, v4, Ljavafx/scene/transform/Affine;->state2d:I

    .line 3840
    return-void

    .line 3835
    :cond_1
    move v4, v3

    const/4 v5, 0x6

    and-int/lit8 v4, v4, 0x6

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    move-object v4, v0

    .line 3836
    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_0

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_0

    .line 3837
    move v4, v3

    const/4 v5, -0x5

    and-int/lit8 v4, v4, -0x5

    const/4 v5, 0x2

    or-int/lit8 v4, v4, 0x2

    move v3, v4

    goto :goto_0
.end method

.method private rotate2D_90()V
    .locals 8

    .prologue
    .line 3777
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Affine;
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v4

    move-wide v1, v4

    .line 3778
    .local v1, "M0":D
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    .line 3779
    move-object v4, v0

    move-wide v5, v1

    neg-double v5, v5

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/transform/Affine;->setMxy(D)V

    .line 3780
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v4

    move-wide v1, v4

    .line 3781
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/transform/Affine;->setMyx(D)V

    .line 3782
    move-object v4, v0

    move-wide v5, v1

    neg-double v5, v5

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    .line 3783
    sget-object v4, Ljavafx/scene/transform/Affine;->rot90conversion:[I

    move-object v5, v0

    iget v5, v5, Ljavafx/scene/transform/Affine;->state2d:I

    aget v4, v4, v5

    move v3, v4

    .line 3784
    .local v3, "newstate":I
    move v4, v3

    const/4 v5, 0x6

    and-int/lit8 v4, v4, 0x6

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    move-object v4, v0

    .line 3785
    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    .line 3786
    add-int/lit8 v3, v3, -0x2

    .line 3791
    :cond_0
    :goto_0
    move-object v4, v0

    move v5, v3

    iput v5, v4, Ljavafx/scene/transform/Affine;->state2d:I

    .line 3792
    return-void

    .line 3787
    :cond_1
    move v4, v3

    const/4 v5, 0x6

    and-int/lit8 v4, v4, 0x6

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    move-object v4, v0

    .line 3788
    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_0

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_0

    .line 3789
    move v4, v3

    const/4 v5, -0x5

    and-int/lit8 v4, v4, -0x5

    const/4 v5, 0x2

    or-int/lit8 v4, v4, 0x2

    move v3, v4

    goto :goto_0
.end method

.method private rotate3D(D)V
    .locals 19

    .prologue
    .line 3847
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/transform/Affine;
    move-wide/from16 v1, p1

    .local v1, "theta":D
    move-object v11, v0

    iget v11, v11, Ljavafx/scene/transform/Affine;->state3d:I

    if-nez v11, :cond_0

    .line 3848
    move-object v11, v0

    move-wide v12, v1

    invoke-direct {v11, v12, v13}, Ljavafx/scene/transform/Affine;->rotate2D(D)V

    .line 3849
    .line 3878
    :goto_0
    return-void

    .line 3852
    :cond_0
    move-wide v11, v1

    invoke-static {v11, v12}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    move-wide v3, v11

    .line 3853
    .local v3, "sin":D
    move-wide v11, v3

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    cmpl-double v11, v11, v13

    if-nez v11, :cond_2

    .line 3854
    move-object v11, v0

    invoke-direct {v11}, Ljavafx/scene/transform/Affine;->rotate3D_90()V

    .line 3878
    :cond_1
    :goto_1
    goto :goto_0

    .line 3855
    :cond_2
    move-wide v11, v3

    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    cmpl-double v11, v11, v13

    if-nez v11, :cond_3

    .line 3856
    move-object v11, v0

    invoke-direct {v11}, Ljavafx/scene/transform/Affine;->rotate3D_270()V

    goto :goto_1

    .line 3858
    :cond_3
    move-wide v11, v1

    invoke-static {v11, v12}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    move-wide v5, v11

    .line 3859
    .local v5, "cos":D
    move-wide v11, v5

    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    cmpl-double v11, v11, v13

    if-nez v11, :cond_4

    .line 3860
    move-object v11, v0

    invoke-direct {v11}, Ljavafx/scene/transform/Affine;->rotate3D_180()V

    goto :goto_1

    .line 3861
    :cond_4
    move-wide v11, v5

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    cmpl-double v11, v11, v13

    if-eqz v11, :cond_1

    .line 3863
    move-object v11, v0

    invoke-virtual {v11}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v11

    move-wide v7, v11

    .line 3864
    .local v7, "M0":D
    move-object v11, v0

    invoke-virtual {v11}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v11

    move-wide v9, v11

    .line 3865
    .local v9, "M1":D
    move-object v11, v0

    move-wide v12, v5

    move-wide v14, v7

    mul-double/2addr v12, v14

    move-wide v14, v3

    move-wide/from16 v16, v9

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    .line 3866
    move-object v11, v0

    move-wide v12, v3

    neg-double v12, v12

    move-wide v14, v7

    mul-double/2addr v12, v14

    move-wide v14, v5

    move-wide/from16 v16, v9

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/transform/Affine;->setMxy(D)V

    .line 3867
    move-object v11, v0

    invoke-virtual {v11}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v11

    move-wide v7, v11

    .line 3868
    move-object v11, v0

    invoke-virtual {v11}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v11

    move-wide v9, v11

    .line 3869
    move-object v11, v0

    move-wide v12, v5

    move-wide v14, v7

    mul-double/2addr v12, v14

    move-wide v14, v3

    move-wide/from16 v16, v9

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/transform/Affine;->setMyx(D)V

    .line 3870
    move-object v11, v0

    move-wide v12, v3

    neg-double v12, v12

    move-wide v14, v7

    mul-double/2addr v12, v14

    move-wide v14, v5

    move-wide/from16 v16, v9

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    .line 3871
    move-object v11, v0

    invoke-virtual {v11}, Ljavafx/scene/transform/Affine;->getMzx()D

    move-result-wide v11

    move-wide v7, v11

    .line 3872
    move-object v11, v0

    invoke-virtual {v11}, Ljavafx/scene/transform/Affine;->getMzy()D

    move-result-wide v11

    move-wide v9, v11

    .line 3873
    move-object v11, v0

    move-wide v12, v5

    move-wide v14, v7

    mul-double/2addr v12, v14

    move-wide v14, v3

    move-wide/from16 v16, v9

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/transform/Affine;->setMzx(D)V

    .line 3874
    move-object v11, v0

    move-wide v12, v3

    neg-double v12, v12

    move-wide v14, v7

    mul-double/2addr v12, v14

    move-wide v14, v5

    move-wide/from16 v16, v9

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/transform/Affine;->setMzy(D)V

    .line 3875
    move-object v11, v0

    invoke-direct {v11}, Ljavafx/scene/transform/Affine;->updateState()V

    goto/16 :goto_1
.end method

.method private rotate3D(DDDD)V
    .locals 81

    .prologue
    .line 3565
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/transform/Affine;
    move-wide/from16 v4, p1

    .local v4, "angle":D
    move-wide/from16 v6, p3

    .local v6, "axisX":D
    move-wide/from16 v8, p5

    .local v8, "axisY":D
    move-wide/from16 v10, p7

    .local v10, "axisZ":D
    move-wide/from16 v74, v6

    const-wide/16 v76, 0x0

    cmpl-double v74, v74, v76

    if-nez v74, :cond_2

    move-wide/from16 v74, v8

    const-wide/16 v76, 0x0

    cmpl-double v74, v74, v76

    if-nez v74, :cond_2

    .line 3566
    move-wide/from16 v74, v10

    const-wide/16 v76, 0x0

    cmpl-double v74, v74, v76

    if-lez v74, :cond_1

    .line 3567
    move-object/from16 v74, v3

    move-wide/from16 v75, v4

    invoke-direct/range {v74 .. v76}, Ljavafx/scene/transform/Affine;->rotate3D(D)V

    .line 3571
    .line 3720
    :cond_0
    :goto_0
    return-void

    .line 3568
    :cond_1
    move-wide/from16 v74, v10

    const-wide/16 v76, 0x0

    cmpg-double v74, v74, v76

    if-gez v74, :cond_0

    .line 3569
    move-object/from16 v74, v3

    move-wide/from16 v75, v4

    move-wide/from16 v0, v75

    neg-double v0, v0

    move-wide/from16 v75, v0

    invoke-direct/range {v74 .. v76}, Ljavafx/scene/transform/Affine;->rotate3D(D)V

    goto :goto_0

    .line 3574
    :cond_2
    move-wide/from16 v74, v6

    move-wide/from16 v76, v6

    mul-double v74, v74, v76

    move-wide/from16 v76, v8

    move-wide/from16 v78, v8

    mul-double v76, v76, v78

    add-double v74, v74, v76

    move-wide/from16 v76, v10

    move-wide/from16 v78, v10

    mul-double v76, v76, v78

    add-double v74, v74, v76

    invoke-static/range {v74 .. v75}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v74

    move-wide/from16 v12, v74

    .line 3576
    .local v12, "mag":D
    move-wide/from16 v74, v12

    const-wide/16 v76, 0x0

    cmpl-double v74, v74, v76

    if-nez v74, :cond_3

    .line 3577
    goto :goto_0

    .line 3580
    :cond_3
    const-wide/high16 v74, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v76, v12

    div-double v74, v74, v76

    move-wide/from16 v12, v74

    .line 3581
    move-wide/from16 v74, v6

    move-wide/from16 v76, v12

    mul-double v74, v74, v76

    move-wide/from16 v14, v74

    .line 3582
    .local v14, "ax":D
    move-wide/from16 v74, v8

    move-wide/from16 v76, v12

    mul-double v74, v74, v76

    move-wide/from16 v16, v74

    .line 3583
    .local v16, "ay":D
    move-wide/from16 v74, v10

    move-wide/from16 v76, v12

    mul-double v74, v74, v76

    move-wide/from16 v18, v74

    .line 3585
    .local v18, "az":D
    move-wide/from16 v74, v4

    invoke-static/range {v74 .. v75}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v74

    invoke-static/range {v74 .. v75}, Ljava/lang/Math;->sin(D)D

    move-result-wide v74

    move-wide/from16 v20, v74

    .line 3586
    .local v20, "sinTheta":D
    move-wide/from16 v74, v4

    invoke-static/range {v74 .. v75}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v74

    invoke-static/range {v74 .. v75}, Ljava/lang/Math;->cos(D)D

    move-result-wide v74

    move-wide/from16 v22, v74

    .line 3587
    .local v22, "cosTheta":D
    const-wide/high16 v74, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v76, v22

    sub-double v74, v74, v76

    move-wide/from16 v24, v74

    .line 3589
    .local v24, "t":D
    move-wide/from16 v74, v14

    move-wide/from16 v76, v18

    mul-double v74, v74, v76

    move-wide/from16 v26, v74

    .line 3590
    .local v26, "xz":D
    move-wide/from16 v74, v14

    move-wide/from16 v76, v16

    mul-double v74, v74, v76

    move-wide/from16 v28, v74

    .line 3591
    .local v28, "xy":D
    move-wide/from16 v74, v16

    move-wide/from16 v76, v18

    mul-double v74, v74, v76

    move-wide/from16 v30, v74

    .line 3593
    .local v30, "yz":D
    move-wide/from16 v74, v24

    move-wide/from16 v76, v14

    mul-double v74, v74, v76

    move-wide/from16 v76, v14

    mul-double v74, v74, v76

    move-wide/from16 v76, v22

    add-double v74, v74, v76

    move-wide/from16 v32, v74

    .line 3594
    .local v32, "Txx":D
    move-wide/from16 v74, v24

    move-wide/from16 v76, v28

    mul-double v74, v74, v76

    move-wide/from16 v76, v20

    move-wide/from16 v78, v18

    mul-double v76, v76, v78

    sub-double v74, v74, v76

    move-wide/from16 v34, v74

    .line 3595
    .local v34, "Txy":D
    move-wide/from16 v74, v24

    move-wide/from16 v76, v26

    mul-double v74, v74, v76

    move-wide/from16 v76, v20

    move-wide/from16 v78, v16

    mul-double v76, v76, v78

    add-double v74, v74, v76

    move-wide/from16 v36, v74

    .line 3597
    .local v36, "Txz":D
    move-wide/from16 v74, v24

    move-wide/from16 v76, v28

    mul-double v74, v74, v76

    move-wide/from16 v76, v20

    move-wide/from16 v78, v18

    mul-double v76, v76, v78

    add-double v74, v74, v76

    move-wide/from16 v38, v74

    .line 3598
    .local v38, "Tyx":D
    move-wide/from16 v74, v24

    move-wide/from16 v76, v16

    mul-double v74, v74, v76

    move-wide/from16 v76, v16

    mul-double v74, v74, v76

    move-wide/from16 v76, v22

    add-double v74, v74, v76

    move-wide/from16 v40, v74

    .line 3599
    .local v40, "Tyy":D
    move-wide/from16 v74, v24

    move-wide/from16 v76, v30

    mul-double v74, v74, v76

    move-wide/from16 v76, v20

    move-wide/from16 v78, v14

    mul-double v76, v76, v78

    sub-double v74, v74, v76

    move-wide/from16 v42, v74

    .line 3601
    .local v42, "Tyz":D
    move-wide/from16 v74, v24

    move-wide/from16 v76, v26

    mul-double v74, v74, v76

    move-wide/from16 v76, v20

    move-wide/from16 v78, v16

    mul-double v76, v76, v78

    sub-double v74, v74, v76

    move-wide/from16 v44, v74

    .line 3602
    .local v44, "Tzx":D
    move-wide/from16 v74, v24

    move-wide/from16 v76, v30

    mul-double v74, v74, v76

    move-wide/from16 v76, v20

    move-wide/from16 v78, v14

    mul-double v76, v76, v78

    add-double v74, v74, v76

    move-wide/from16 v46, v74

    .line 3603
    .local v46, "Tzy":D
    move-wide/from16 v74, v24

    move-wide/from16 v76, v18

    mul-double v74, v74, v76

    move-wide/from16 v76, v18

    mul-double v74, v74, v76

    move-wide/from16 v76, v22

    add-double v74, v74, v76

    move-wide/from16 v48, v74

    .line 3605
    .local v48, "Tzz":D
    move-object/from16 v74, v3

    move-object/from16 v0, v74

    iget v0, v0, Ljavafx/scene/transform/Affine;->state3d:I

    move/from16 v74, v0

    packed-switch v74, :pswitch_data_0

    .line 3607
    invoke-static {}, Ljavafx/scene/transform/Affine;->stateError()V

    .line 3610
    :pswitch_0
    move-object/from16 v74, v3

    move-object/from16 v0, v74

    iget v0, v0, Ljavafx/scene/transform/Affine;->state2d:I

    move/from16 v74, v0

    packed-switch v74, :pswitch_data_1

    .line 3612
    invoke-static {}, Ljavafx/scene/transform/Affine;->stateError()V

    .line 3616
    :pswitch_1
    move-object/from16 v74, v3

    invoke-virtual/range {v74 .. v74}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v74

    move-wide/from16 v50, v74

    .line 3617
    .local v50, "xx_sst":D
    move-object/from16 v74, v3

    invoke-virtual/range {v74 .. v74}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v74

    move-wide/from16 v52, v74

    .line 3618
    .local v52, "xy_sst":D
    move-object/from16 v74, v3

    invoke-virtual/range {v74 .. v74}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v74

    move-wide/from16 v54, v74

    .line 3619
    .local v54, "yx_sst":D
    move-object/from16 v74, v3

    invoke-virtual/range {v74 .. v74}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v74

    move-wide/from16 v56, v74

    .line 3620
    .local v56, "yy_sst":D
    move-object/from16 v74, v3

    move-wide/from16 v75, v50

    move-wide/from16 v77, v32

    mul-double v75, v75, v77

    move-wide/from16 v77, v52

    move-wide/from16 v79, v38

    mul-double v77, v77, v79

    add-double v75, v75, v77

    invoke-virtual/range {v74 .. v76}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    .line 3621
    move-object/from16 v74, v3

    move-wide/from16 v75, v50

    move-wide/from16 v77, v34

    mul-double v75, v75, v77

    move-wide/from16 v77, v52

    move-wide/from16 v79, v40

    mul-double v77, v77, v79

    add-double v75, v75, v77

    invoke-virtual/range {v74 .. v76}, Ljavafx/scene/transform/Affine;->setMxy(D)V

    .line 3622
    move-object/from16 v74, v3

    move-wide/from16 v75, v50

    move-wide/from16 v77, v36

    mul-double v75, v75, v77

    move-wide/from16 v77, v52

    move-wide/from16 v79, v42

    mul-double v77, v77, v79

    add-double v75, v75, v77

    invoke-virtual/range {v74 .. v76}, Ljavafx/scene/transform/Affine;->setMxz(D)V

    .line 3623
    move-object/from16 v74, v3

    move-wide/from16 v75, v54

    move-wide/from16 v77, v32

    mul-double v75, v75, v77

    move-wide/from16 v77, v56

    move-wide/from16 v79, v38

    mul-double v77, v77, v79

    add-double v75, v75, v77

    invoke-virtual/range {v74 .. v76}, Ljavafx/scene/transform/Affine;->setMyx(D)V

    .line 3624
    move-object/from16 v74, v3

    move-wide/from16 v75, v54

    move-wide/from16 v77, v34

    mul-double v75, v75, v77

    move-wide/from16 v77, v56

    move-wide/from16 v79, v40

    mul-double v77, v77, v79

    add-double v75, v75, v77

    invoke-virtual/range {v74 .. v76}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    .line 3625
    move-object/from16 v74, v3

    move-wide/from16 v75, v54

    move-wide/from16 v77, v36

    mul-double v75, v75, v77

    move-wide/from16 v77, v56

    move-wide/from16 v79, v42

    mul-double v77, v77, v79

    add-double v75, v75, v77

    invoke-virtual/range {v74 .. v76}, Ljavafx/scene/transform/Affine;->setMyz(D)V

    .line 3626
    move-object/from16 v74, v3

    move-wide/from16 v75, v44

    invoke-virtual/range {v74 .. v76}, Ljavafx/scene/transform/Affine;->setMzx(D)V

    .line 3627
    move-object/from16 v74, v3

    move-wide/from16 v75, v46

    invoke-virtual/range {v74 .. v76}, Ljavafx/scene/transform/Affine;->setMzy(D)V

    .line 3628
    move-object/from16 v74, v3

    move-wide/from16 v75, v48

    invoke-virtual/range {v74 .. v76}, Ljavafx/scene/transform/Affine;->setMzz(D)V

    .line 3629
    .line 3719
    .end local v50    # "xx_sst":D
    .end local v52    # "xy_sst":D
    .end local v54    # "yx_sst":D
    .end local v56    # "yy_sst":D
    :goto_1
    move-object/from16 v74, v3

    invoke-direct/range {v74 .. v74}, Ljavafx/scene/transform/Affine;->updateState()V

    .line 3720
    goto/16 :goto_0

    .line 3632
    :pswitch_2
    move-object/from16 v74, v3

    invoke-virtual/range {v74 .. v74}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v74

    move-wide/from16 v58, v74

    .line 3633
    .local v58, "xy_sht":D
    move-object/from16 v74, v3

    invoke-virtual/range {v74 .. v74}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v74

    move-wide/from16 v60, v74

    .line 3634
    .local v60, "yx_sht":D
    move-object/from16 v74, v3

    move-wide/from16 v75, v58

    move-wide/from16 v77, v38

    mul-double v75, v75, v77

    invoke-virtual/range {v74 .. v76}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    .line 3635
    move-object/from16 v74, v3

    move-wide/from16 v75, v58

    move-wide/from16 v77, v40

    mul-double v75, v75, v77

    invoke-virtual/range {v74 .. v76}, Ljavafx/scene/transform/Affine;->setMxy(D)V

    .line 3636
    move-object/from16 v74, v3

    move-wide/from16 v75, v58

    move-wide/from16 v77, v42

    mul-double v75, v75, v77

    invoke-virtual/range {v74 .. v76}, Ljavafx/scene/transform/Affine;->setMxz(D)V

    .line 3637
    move-object/from16 v74, v3

    move-wide/from16 v75, v60

    move-wide/from16 v77, v32

    mul-double v75, v75, v77

    invoke-virtual/range {v74 .. v76}, Ljavafx/scene/transform/Affine;->setMyx(D)V

    .line 3638
    move-object/from16 v74, v3

    move-wide/from16 v75, v60

    move-wide/from16 v77, v34

    mul-double v75, v75, v77

    invoke-virtual/range {v74 .. v76}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    .line 3639
    move-object/from16 v74, v3

    move-wide/from16 v75, v60

    move-wide/from16 v77, v36

    mul-double v75, v75, v77

    invoke-virtual/range {v74 .. v76}, Ljavafx/scene/transform/Affine;->setMyz(D)V

    .line 3640
    move-object/from16 v74, v3

    move-wide/from16 v75, v44

    invoke-virtual/range {v74 .. v76}, Ljavafx/scene/transform/Affine;->setMzx(D)V

    .line 3641
    move-object/from16 v74, v3

    move-wide/from16 v75, v46

    invoke-virtual/range {v74 .. v76}, Ljavafx/scene/transform/Affine;->setMzy(D)V

    .line 3642
    move-object/from16 v74, v3

    move-wide/from16 v75, v48

    invoke-virtual/range {v74 .. v76}, Ljavafx/scene/transform/Affine;->setMzz(D)V

    .line 3643
    goto :goto_1

    .line 3646
    .end local v58    # "xy_sht":D
    .end local v60    # "yx_sht":D
    :pswitch_3
    move-object/from16 v74, v3

    invoke-virtual/range {v74 .. v74}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v74

    move-wide/from16 v62, v74

    .line 3647
    .local v62, "xx_s":D
    move-object/from16 v74, v3

    invoke-virtual/range {v74 .. v74}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v74

    move-wide/from16 v64, v74

    .line 3648
    .local v64, "yy_s":D
    move-object/from16 v74, v3

    move-wide/from16 v75, v62

    move-wide/from16 v77, v32

    mul-double v75, v75, v77

    invoke-virtual/range {v74 .. v76}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    .line 3649
    move-object/from16 v74, v3

    move-wide/from16 v75, v62

    move-wide/from16 v77, v34

    mul-double v75, v75, v77

    invoke-virtual/range {v74 .. v76}, Ljavafx/scene/transform/Affine;->setMxy(D)V

    .line 3650
    move-object/from16 v74, v3

    move-wide/from16 v75, v62

    move-wide/from16 v77, v36

    mul-double v75, v75, v77

    invoke-virtual/range {v74 .. v76}, Ljavafx/scene/transform/Affine;->setMxz(D)V

    .line 3651
    move-object/from16 v74, v3

    move-wide/from16 v75, v64

    move-wide/from16 v77, v38

    mul-double v75, v75, v77

    invoke-virtual/range {v74 .. v76}, Ljavafx/scene/transform/Affine;->setMyx(D)V

    .line 3652
    move-object/from16 v74, v3

    move-wide/from16 v75, v64

    move-wide/from16 v77, v40

    mul-double v75, v75, v77

    invoke-virtual/range {v74 .. v76}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    .line 3653
    move-object/from16 v74, v3

    move-wide/from16 v75, v64

    move-wide/from16 v77, v42

    mul-double v75, v75, v77

    invoke-virtual/range {v74 .. v76}, Ljavafx/scene/transform/Affine;->setMyz(D)V

    .line 3654
    move-object/from16 v74, v3

    move-wide/from16 v75, v44

    invoke-virtual/range {v74 .. v76}, Ljavafx/scene/transform/Affine;->setMzx(D)V

    .line 3655
    move-object/from16 v74, v3

    move-wide/from16 v75, v46

    invoke-virtual/range {v74 .. v76}, Ljavafx/scene/transform/Affine;->setMzy(D)V

    .line 3656
    move-object/from16 v74, v3

    move-wide/from16 v75, v48

    invoke-virtual/range {v74 .. v76}, Ljavafx/scene/transform/Affine;->setMzz(D)V

    .line 3657
    goto/16 :goto_1

    .line 3660
    .end local v62    # "xx_s":D
    .end local v64    # "yy_s":D
    :pswitch_4
    move-object/from16 v74, v3

    move-wide/from16 v75, v32

    invoke-virtual/range {v74 .. v76}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    .line 3661
    move-object/from16 v74, v3

    move-wide/from16 v75, v34

    invoke-virtual/range {v74 .. v76}, Ljavafx/scene/transform/Affine;->setMxy(D)V

    .line 3662
    move-object/from16 v74, v3

    move-wide/from16 v75, v36

    invoke-virtual/range {v74 .. v76}, Ljavafx/scene/transform/Affine;->setMxz(D)V

    .line 3663
    move-object/from16 v74, v3

    move-wide/from16 v75, v38

    invoke-virtual/range {v74 .. v76}, Ljavafx/scene/transform/Affine;->setMyx(D)V

    .line 3664
    move-object/from16 v74, v3

    move-wide/from16 v75, v40

    invoke-virtual/range {v74 .. v76}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    .line 3665
    move-object/from16 v74, v3

    move-wide/from16 v75, v42

    invoke-virtual/range {v74 .. v76}, Ljavafx/scene/transform/Affine;->setMyz(D)V

    .line 3666
    move-object/from16 v74, v3

    move-wide/from16 v75, v44

    invoke-virtual/range {v74 .. v76}, Ljavafx/scene/transform/Affine;->setMzx(D)V

    .line 3667
    move-object/from16 v74, v3

    move-wide/from16 v75, v46

    invoke-virtual/range {v74 .. v76}, Ljavafx/scene/transform/Affine;->setMzy(D)V

    .line 3668
    move-object/from16 v74, v3

    move-wide/from16 v75, v48

    invoke-virtual/range {v74 .. v76}, Ljavafx/scene/transform/Affine;->setMzz(D)V

    .line 3669
    goto/16 :goto_1

    .line 3673
    :pswitch_5
    move-object/from16 v74, v3

    move-wide/from16 v75, v32

    invoke-virtual/range {v74 .. v76}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    .line 3674
    move-object/from16 v74, v3

    move-wide/from16 v75, v34

    invoke-virtual/range {v74 .. v76}, Ljavafx/scene/transform/Affine;->setMxy(D)V

    .line 3675
    move-object/from16 v74, v3

    move-wide/from16 v75, v36

    invoke-virtual/range {v74 .. v76}, Ljavafx/scene/transform/Affine;->setMxz(D)V

    .line 3676
    move-object/from16 v74, v3

    move-wide/from16 v75, v38

    invoke-virtual/range {v74 .. v76}, Ljavafx/scene/transform/Affine;->setMyx(D)V

    .line 3677
    move-object/from16 v74, v3

    move-wide/from16 v75, v40

    invoke-virtual/range {v74 .. v76}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    .line 3678
    move-object/from16 v74, v3

    move-wide/from16 v75, v42

    invoke-virtual/range {v74 .. v76}, Ljavafx/scene/transform/Affine;->setMyz(D)V

    .line 3679
    move-object/from16 v74, v3

    move-wide/from16 v75, v44

    invoke-virtual/range {v74 .. v76}, Ljavafx/scene/transform/Affine;->setMzx(D)V

    .line 3680
    move-object/from16 v74, v3

    move-wide/from16 v75, v46

    invoke-virtual/range {v74 .. v76}, Ljavafx/scene/transform/Affine;->setMzy(D)V

    .line 3681
    move-object/from16 v74, v3

    move-wide/from16 v75, v48

    invoke-virtual/range {v74 .. v76}, Ljavafx/scene/transform/Affine;->setMzz(D)V

    .line 3682
    goto/16 :goto_1

    .line 3685
    :pswitch_6
    move-object/from16 v74, v3

    invoke-virtual/range {v74 .. v74}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v74

    move-wide/from16 v50, v74

    .line 3686
    .local v50, "xx_st":D
    move-object/from16 v74, v3

    invoke-virtual/range {v74 .. v74}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v74

    move-wide/from16 v52, v74

    .line 3687
    .local v52, "yy_st":D
    move-object/from16 v74, v3

    invoke-virtual/range {v74 .. v74}, Ljavafx/scene/transform/Affine;->getMzz()D

    move-result-wide v74

    move-wide/from16 v54, v74

    .line 3688
    .local v54, "zz_st":D
    move-object/from16 v74, v3

    move-wide/from16 v75, v50

    move-wide/from16 v77, v32

    mul-double v75, v75, v77

    invoke-virtual/range {v74 .. v76}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    .line 3689
    move-object/from16 v74, v3

    move-wide/from16 v75, v50

    move-wide/from16 v77, v34

    mul-double v75, v75, v77

    invoke-virtual/range {v74 .. v76}, Ljavafx/scene/transform/Affine;->setMxy(D)V

    .line 3690
    move-object/from16 v74, v3

    move-wide/from16 v75, v50

    move-wide/from16 v77, v36

    mul-double v75, v75, v77

    invoke-virtual/range {v74 .. v76}, Ljavafx/scene/transform/Affine;->setMxz(D)V

    .line 3691
    move-object/from16 v74, v3

    move-wide/from16 v75, v52

    move-wide/from16 v77, v38

    mul-double v75, v75, v77

    invoke-virtual/range {v74 .. v76}, Ljavafx/scene/transform/Affine;->setMyx(D)V

    .line 3692
    move-object/from16 v74, v3

    move-wide/from16 v75, v52

    move-wide/from16 v77, v40

    mul-double v75, v75, v77

    invoke-virtual/range {v74 .. v76}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    .line 3693
    move-object/from16 v74, v3

    move-wide/from16 v75, v52

    move-wide/from16 v77, v42

    mul-double v75, v75, v77

    invoke-virtual/range {v74 .. v76}, Ljavafx/scene/transform/Affine;->setMyz(D)V

    .line 3694
    move-object/from16 v74, v3

    move-wide/from16 v75, v54

    move-wide/from16 v77, v44

    mul-double v75, v75, v77

    invoke-virtual/range {v74 .. v76}, Ljavafx/scene/transform/Affine;->setMzx(D)V

    .line 3695
    move-object/from16 v74, v3

    move-wide/from16 v75, v54

    move-wide/from16 v77, v46

    mul-double v75, v75, v77

    invoke-virtual/range {v74 .. v76}, Ljavafx/scene/transform/Affine;->setMzy(D)V

    .line 3696
    move-object/from16 v74, v3

    move-wide/from16 v75, v54

    move-wide/from16 v77, v48

    mul-double v75, v75, v77

    invoke-virtual/range {v74 .. v76}, Ljavafx/scene/transform/Affine;->setMzz(D)V

    .line 3697
    goto/16 :goto_1

    .line 3699
    .end local v50    # "xx_st":D
    .end local v52    # "yy_st":D
    .end local v54    # "zz_st":D
    :pswitch_7
    move-object/from16 v74, v3

    invoke-virtual/range {v74 .. v74}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v74

    move-wide/from16 v56, v74

    .line 3700
    .local v56, "m_xx":D
    move-object/from16 v74, v3

    invoke-virtual/range {v74 .. v74}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v74

    move-wide/from16 v58, v74

    .line 3701
    .local v58, "m_xy":D
    move-object/from16 v74, v3

    invoke-virtual/range {v74 .. v74}, Ljavafx/scene/transform/Affine;->getMxz()D

    move-result-wide v74

    move-wide/from16 v60, v74

    .line 3702
    .local v60, "m_xz":D
    move-object/from16 v74, v3

    invoke-virtual/range {v74 .. v74}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v74

    move-wide/from16 v62, v74

    .line 3703
    .local v62, "m_yx":D
    move-object/from16 v74, v3

    invoke-virtual/range {v74 .. v74}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v74

    move-wide/from16 v64, v74

    .line 3704
    .local v64, "m_yy":D
    move-object/from16 v74, v3

    invoke-virtual/range {v74 .. v74}, Ljavafx/scene/transform/Affine;->getMyz()D

    move-result-wide v74

    move-wide/from16 v66, v74

    .line 3705
    .local v66, "m_yz":D
    move-object/from16 v74, v3

    invoke-virtual/range {v74 .. v74}, Ljavafx/scene/transform/Affine;->getMzx()D

    move-result-wide v74

    move-wide/from16 v68, v74

    .line 3706
    .local v68, "m_zx":D
    move-object/from16 v74, v3

    invoke-virtual/range {v74 .. v74}, Ljavafx/scene/transform/Affine;->getMzy()D

    move-result-wide v74

    move-wide/from16 v70, v74

    .line 3707
    .local v70, "m_zy":D
    move-object/from16 v74, v3

    invoke-virtual/range {v74 .. v74}, Ljavafx/scene/transform/Affine;->getMzz()D

    move-result-wide v74

    move-wide/from16 v72, v74

    .line 3708
    .local v72, "m_zz":D
    move-object/from16 v74, v3

    move-wide/from16 v75, v56

    move-wide/from16 v77, v32

    mul-double v75, v75, v77

    move-wide/from16 v77, v58

    move-wide/from16 v79, v38

    mul-double v77, v77, v79

    add-double v75, v75, v77

    move-wide/from16 v77, v60

    move-wide/from16 v79, v44

    mul-double v77, v77, v79

    add-double v75, v75, v77

    invoke-virtual/range {v74 .. v76}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    .line 3709
    move-object/from16 v74, v3

    move-wide/from16 v75, v56

    move-wide/from16 v77, v34

    mul-double v75, v75, v77

    move-wide/from16 v77, v58

    move-wide/from16 v79, v40

    mul-double v77, v77, v79

    add-double v75, v75, v77

    move-wide/from16 v77, v60

    move-wide/from16 v79, v46

    mul-double v77, v77, v79

    add-double v75, v75, v77

    invoke-virtual/range {v74 .. v76}, Ljavafx/scene/transform/Affine;->setMxy(D)V

    .line 3710
    move-object/from16 v74, v3

    move-wide/from16 v75, v56

    move-wide/from16 v77, v36

    mul-double v75, v75, v77

    move-wide/from16 v77, v58

    move-wide/from16 v79, v42

    mul-double v77, v77, v79

    add-double v75, v75, v77

    move-wide/from16 v77, v60

    move-wide/from16 v79, v48

    mul-double v77, v77, v79

    add-double v75, v75, v77

    invoke-virtual/range {v74 .. v76}, Ljavafx/scene/transform/Affine;->setMxz(D)V

    .line 3711
    move-object/from16 v74, v3

    move-wide/from16 v75, v62

    move-wide/from16 v77, v32

    mul-double v75, v75, v77

    move-wide/from16 v77, v64

    move-wide/from16 v79, v38

    mul-double v77, v77, v79

    add-double v75, v75, v77

    move-wide/from16 v77, v66

    move-wide/from16 v79, v44

    mul-double v77, v77, v79

    add-double v75, v75, v77

    invoke-virtual/range {v74 .. v76}, Ljavafx/scene/transform/Affine;->setMyx(D)V

    .line 3712
    move-object/from16 v74, v3

    move-wide/from16 v75, v62

    move-wide/from16 v77, v34

    mul-double v75, v75, v77

    move-wide/from16 v77, v64

    move-wide/from16 v79, v40

    mul-double v77, v77, v79

    add-double v75, v75, v77

    move-wide/from16 v77, v66

    move-wide/from16 v79, v46

    mul-double v77, v77, v79

    add-double v75, v75, v77

    invoke-virtual/range {v74 .. v76}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    .line 3713
    move-object/from16 v74, v3

    move-wide/from16 v75, v62

    move-wide/from16 v77, v36

    mul-double v75, v75, v77

    move-wide/from16 v77, v64

    move-wide/from16 v79, v42

    mul-double v77, v77, v79

    add-double v75, v75, v77

    move-wide/from16 v77, v66

    move-wide/from16 v79, v48

    mul-double v77, v77, v79

    add-double v75, v75, v77

    invoke-virtual/range {v74 .. v76}, Ljavafx/scene/transform/Affine;->setMyz(D)V

    .line 3714
    move-object/from16 v74, v3

    move-wide/from16 v75, v68

    move-wide/from16 v77, v32

    mul-double v75, v75, v77

    move-wide/from16 v77, v70

    move-wide/from16 v79, v38

    mul-double v77, v77, v79

    add-double v75, v75, v77

    move-wide/from16 v77, v72

    move-wide/from16 v79, v44

    mul-double v77, v77, v79

    add-double v75, v75, v77

    invoke-virtual/range {v74 .. v76}, Ljavafx/scene/transform/Affine;->setMzx(D)V

    .line 3715
    move-object/from16 v74, v3

    move-wide/from16 v75, v68

    move-wide/from16 v77, v34

    mul-double v75, v75, v77

    move-wide/from16 v77, v70

    move-wide/from16 v79, v40

    mul-double v77, v77, v79

    add-double v75, v75, v77

    move-wide/from16 v77, v72

    move-wide/from16 v79, v46

    mul-double v77, v77, v79

    add-double v75, v75, v77

    invoke-virtual/range {v74 .. v76}, Ljavafx/scene/transform/Affine;->setMzy(D)V

    .line 3716
    move-object/from16 v74, v3

    move-wide/from16 v75, v68

    move-wide/from16 v77, v36

    mul-double v75, v75, v77

    move-wide/from16 v77, v70

    move-wide/from16 v79, v42

    mul-double v77, v77, v79

    add-double v75, v75, v77

    move-wide/from16 v77, v72

    move-wide/from16 v79, v48

    mul-double v77, v77, v79

    add-double v75, v75, v77

    invoke-virtual/range {v74 .. v76}, Ljavafx/scene/transform/Affine;->setMzz(D)V

    goto/16 :goto_1

    .line 3605
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 3610
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

.method private rotate3D_180()V
    .locals 10

    .prologue
    .line 3920
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Affine;
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v5

    move-wide v1, v5

    .line 3921
    .local v1, "mxx":D
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v5

    move-wide v3, v5

    .line 3922
    .local v3, "myy":D
    move-object v5, v0

    move-wide v6, v1

    neg-double v6, v6

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    .line 3923
    move-object v5, v0

    move-wide v6, v3

    neg-double v6, v6

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    .line 3924
    move-object v5, v0

    iget v5, v5, Ljavafx/scene/transform/Affine;->state3d:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    .line 3925
    move-object v5, v0

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v6

    neg-double v6, v6

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/transform/Affine;->setMxy(D)V

    .line 3926
    move-object v5, v0

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v6

    neg-double v6, v6

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/transform/Affine;->setMyx(D)V

    .line 3927
    move-object v5, v0

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Affine;->getMzx()D

    move-result-wide v6

    neg-double v6, v6

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/transform/Affine;->setMzx(D)V

    .line 3928
    move-object v5, v0

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Affine;->getMzy()D

    move-result-wide v6

    neg-double v6, v6

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/transform/Affine;->setMzy(D)V

    .line 3929
    move-object v5, v0

    invoke-direct {v5}, Ljavafx/scene/transform/Affine;->updateState()V

    .line 3930
    .line 3939
    :goto_0
    return-void

    .line 3933
    :cond_0
    move-wide v5, v1

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_1

    move-wide v5, v3

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_1

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/transform/Affine;->getMzz()D

    move-result-wide v5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_1

    .line 3935
    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Ljavafx/scene/transform/Affine;->state3d:I

    const/4 v7, -0x3

    and-int/lit8 v6, v6, -0x3

    iput v6, v5, Ljavafx/scene/transform/Affine;->state3d:I

    .line 3939
    :goto_1
    goto :goto_0

    .line 3937
    :cond_1
    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Ljavafx/scene/transform/Affine;->state3d:I

    const/4 v7, 0x2

    or-int/lit8 v6, v6, 0x2

    iput v6, v5, Ljavafx/scene/transform/Affine;->state3d:I

    goto :goto_1
.end method

.method private rotate3D_270()V
    .locals 8

    .prologue
    .line 3947
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v4

    move-wide v2, v4

    .line 3948
    .local v2, "M0":D
    move-object v4, v1

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v5

    neg-double v5, v5

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    .line 3949
    move-object v4, v1

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/transform/Affine;->setMxy(D)V

    .line 3950
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v4

    move-wide v2, v4

    .line 3951
    move-object v4, v1

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v5

    neg-double v5, v5

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/transform/Affine;->setMyx(D)V

    .line 3952
    move-object v4, v1

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    .line 3953
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getMzx()D

    move-result-wide v4

    move-wide v2, v4

    .line 3954
    move-object v4, v1

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/transform/Affine;->getMzy()D

    move-result-wide v5

    neg-double v5, v5

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/transform/Affine;->setMzx(D)V

    .line 3955
    move-object v4, v1

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/transform/Affine;->setMzy(D)V

    .line 3956
    move-object v4, v1

    iget v4, v4, Ljavafx/scene/transform/Affine;->state3d:I

    packed-switch v4, :pswitch_data_0

    .line 3958
    invoke-static {}, Ljavafx/scene/transform/Affine;->stateError()V

    .line 3961
    :pswitch_0
    move-object v4, v1

    const/4 v5, 0x4

    iput v5, v4, Ljavafx/scene/transform/Affine;->state3d:I

    .line 3962
    .line 3971
    :goto_0
    return-void

    .line 3965
    :pswitch_1
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_1

    .line 3966
    :cond_0
    move-object v4, v1

    const/4 v5, 0x4

    iput v5, v4, Ljavafx/scene/transform/Affine;->state3d:I

    .line 3968
    :cond_1
    goto :goto_0

    .line 3970
    :pswitch_2
    move-object v4, v1

    invoke-direct {v4}, Ljavafx/scene/transform/Affine;->updateState()V

    .line 3971
    goto :goto_0

    .line 3956
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private rotate3D_90()V
    .locals 8

    .prologue
    .line 3886
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v4

    move-wide v2, v4

    .line 3887
    .local v2, "M0":D
    move-object v4, v1

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    .line 3888
    move-object v4, v1

    move-wide v5, v2

    neg-double v5, v5

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/transform/Affine;->setMxy(D)V

    .line 3889
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v4

    move-wide v2, v4

    .line 3890
    move-object v4, v1

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/transform/Affine;->setMyx(D)V

    .line 3891
    move-object v4, v1

    move-wide v5, v2

    neg-double v5, v5

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    .line 3892
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getMzx()D

    move-result-wide v4

    move-wide v2, v4

    .line 3893
    move-object v4, v1

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/transform/Affine;->getMzy()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/transform/Affine;->setMzx(D)V

    .line 3894
    move-object v4, v1

    move-wide v5, v2

    neg-double v5, v5

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/transform/Affine;->setMzy(D)V

    .line 3895
    move-object v4, v1

    iget v4, v4, Ljavafx/scene/transform/Affine;->state3d:I

    packed-switch v4, :pswitch_data_0

    .line 3897
    invoke-static {}, Ljavafx/scene/transform/Affine;->stateError()V

    .line 3900
    :pswitch_0
    move-object v4, v1

    const/4 v5, 0x4

    iput v5, v4, Ljavafx/scene/transform/Affine;->state3d:I

    .line 3901
    .line 3910
    :goto_0
    return-void

    .line 3904
    :pswitch_1
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_1

    .line 3905
    :cond_0
    move-object v4, v1

    const/4 v5, 0x4

    iput v5, v4, Ljavafx/scene/transform/Affine;->state3d:I

    .line 3907
    :cond_1
    goto :goto_0

    .line 3909
    :pswitch_2
    move-object v4, v1

    invoke-direct {v4}, Ljavafx/scene/transform/Affine;->updateState()V

    .line 3910
    goto :goto_0

    .line 3895
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private scale2D(DD)V
    .locals 15

    .prologue
    .line 2498
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-wide/from16 v2, p1

    .local v2, "sx":D
    move-wide/from16 v4, p3

    .local v4, "sy":D
    move-object v7, v1

    iget v7, v7, Ljavafx/scene/transform/Affine;->state3d:I

    if-eqz v7, :cond_0

    .line 2499
    move-object v7, v1

    move-wide v8, v2

    move-wide v10, v4

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v7 .. v13}, Ljavafx/scene/transform/Affine;->scale3D(DDD)V

    .line 2500
    .line 2542
    :goto_0
    return-void

    .line 2503
    :cond_0
    move-object v7, v1

    iget v7, v7, Ljavafx/scene/transform/Affine;->state2d:I

    move v6, v7

    .line 2504
    .local v6, "mystate":I
    move v7, v6

    packed-switch v7, :pswitch_data_0

    .line 2506
    invoke-static {}, Ljavafx/scene/transform/Affine;->stateError()V

    .line 2510
    :pswitch_0
    move-object v7, v1

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v8

    move-wide v10, v2

    mul-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    .line 2511
    move-object v7, v1

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v8

    move-wide v10, v4

    mul-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    .line 2515
    :pswitch_1
    move-object v7, v1

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v8

    move-wide v10, v4

    mul-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setMxy(D)V

    .line 2516
    move-object v7, v1

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v8

    move-wide v10, v2

    mul-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setMyx(D)V

    .line 2517
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_4

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_4

    .line 2518
    move v7, v6

    const/4 v8, 0x1

    and-int/lit8 v7, v7, 0x1

    move v6, v7

    .line 2519
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v7

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_1

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v7

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, v7, v9

    if-eqz v7, :cond_2

    .line 2520
    :cond_1
    move v7, v6

    const/4 v8, 0x2

    or-int/lit8 v7, v7, 0x2

    move v6, v7

    .line 2522
    :cond_2
    move-object v7, v1

    move v8, v6

    iput v8, v7, Ljavafx/scene/transform/Affine;->state2d:I

    .line 2526
    :cond_3
    :goto_1
    goto :goto_0

    .line 2523
    :cond_4
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_3

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_3

    .line 2524
    move-object v7, v1

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    iget v8, v8, Ljavafx/scene/transform/Affine;->state2d:I

    const/4 v9, -0x3

    and-int/lit8 v8, v8, -0x3

    iput v8, v7, Ljavafx/scene/transform/Affine;->state2d:I

    goto :goto_1

    .line 2529
    :pswitch_2
    move-object v7, v1

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v8

    move-wide v10, v2

    mul-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    .line 2530
    move-object v7, v1

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v8

    move-wide v10, v4

    mul-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    .line 2531
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v7

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_5

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v7

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_5

    .line 2532
    move-object v7, v1

    move v8, v6

    const/4 v9, 0x1

    and-int/lit8 v8, v8, 0x1

    move v14, v8

    move v8, v14

    move v9, v14

    move v6, v9

    iput v8, v7, Ljavafx/scene/transform/Affine;->state2d:I

    .line 2534
    :cond_5
    goto/16 :goto_0

    .line 2537
    :pswitch_3
    move-object v7, v1

    move-wide v8, v2

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    .line 2538
    move-object v7, v1

    move-wide v8, v4

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    .line 2539
    move-wide v7, v2

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_6

    move-wide v7, v4

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, v7, v9

    if-eqz v7, :cond_7

    .line 2540
    :cond_6
    move-object v7, v1

    move v8, v6

    const/4 v9, 0x2

    or-int/lit8 v8, v8, 0x2

    iput v8, v7, Ljavafx/scene/transform/Affine;->state2d:I

    .line 2542
    :cond_7
    goto/16 :goto_0

    .line 2504
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

.method private scale3D(DDD)V
    .locals 13

    .prologue
    .line 2551
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Affine;
    move-wide v1, p1

    .local v1, "sx":D
    move-wide/from16 v3, p3

    .local v3, "sy":D
    move-wide/from16 v5, p5

    .local v5, "sz":D
    move-object v7, v0

    iget v7, v7, Ljavafx/scene/transform/Affine;->state3d:I

    packed-switch v7, :pswitch_data_0

    .line 2553
    invoke-static {}, Ljavafx/scene/transform/Affine;->stateError()V

    .line 2556
    :pswitch_0
    move-object v7, v0

    move-wide v8, v1

    move-wide v10, v3

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/scene/transform/Affine;->scale2D(DD)V

    .line 2557
    move-wide v7, v5

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, v7, v9

    if-eqz v7, :cond_0

    .line 2558
    move-object v7, v0

    move-wide v8, v5

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setMzz(D)V

    .line 2559
    move-object v7, v0

    iget v7, v7, Ljavafx/scene/transform/Affine;->state2d:I

    const/4 v8, 0x4

    and-int/lit8 v7, v7, 0x4

    if-nez v7, :cond_1

    .line 2560
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Ljavafx/scene/transform/Affine;->state2d:I

    const/4 v9, 0x1

    and-int/lit8 v8, v8, 0x1

    const/4 v9, 0x2

    or-int/lit8 v8, v8, 0x2

    iput v8, v7, Ljavafx/scene/transform/Affine;->state3d:I

    .line 2565
    .line 2616
    :cond_0
    :goto_0
    return-void

    .line 2562
    :cond_1
    move-object v7, v0

    const/4 v8, 0x4

    iput v8, v7, Ljavafx/scene/transform/Affine;->state3d:I

    goto :goto_0

    .line 2567
    :pswitch_1
    move-object v7, v0

    move-wide v8, v1

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    .line 2568
    move-object v7, v0

    move-wide v8, v3

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    .line 2569
    move-object v7, v0

    move-wide v8, v5

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setMzz(D)V

    .line 2570
    move-wide v7, v1

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_2

    move-wide v7, v3

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_2

    move-wide v7, v5

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, v7, v9

    if-eqz v7, :cond_3

    .line 2571
    :cond_2
    move-object v7, v0

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget v8, v8, Ljavafx/scene/transform/Affine;->state3d:I

    const/4 v9, 0x2

    or-int/lit8 v8, v8, 0x2

    iput v8, v7, Ljavafx/scene/transform/Affine;->state3d:I

    .line 2573
    :cond_3
    goto :goto_0

    .line 2575
    :pswitch_2
    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v8

    move-wide v10, v1

    mul-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    .line 2576
    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v8

    move-wide v10, v3

    mul-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    .line 2577
    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMzz()D

    move-result-wide v8

    move-wide v10, v5

    mul-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setMzz(D)V

    .line 2578
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/transform/Affine;->getMzz()D

    move-result-wide v7

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_4

    .line 2579
    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Ljavafx/scene/transform/Affine;->state3d:I

    .line 2580
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v7

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_5

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v7

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_5

    .line 2581
    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Ljavafx/scene/transform/Affine;->state2d:I

    .line 2586
    :cond_4
    :goto_1
    goto :goto_0

    .line 2583
    :cond_5
    move-object v7, v0

    const/4 v8, 0x2

    iput v8, v7, Ljavafx/scene/transform/Affine;->state2d:I

    goto :goto_1

    .line 2588
    :pswitch_3
    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v8

    move-wide v10, v1

    mul-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    .line 2589
    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v8

    move-wide v10, v3

    mul-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    .line 2590
    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMzz()D

    move-result-wide v8

    move-wide v10, v5

    mul-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setMzz(D)V

    .line 2592
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v7

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_6

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v7

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_6

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/transform/Affine;->getMzz()D

    move-result-wide v7

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_6

    .line 2593
    move-object v7, v0

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget v8, v8, Ljavafx/scene/transform/Affine;->state3d:I

    const/4 v9, -0x3

    and-int/lit8 v8, v8, -0x3

    iput v8, v7, Ljavafx/scene/transform/Affine;->state3d:I

    .line 2595
    :cond_6
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/transform/Affine;->getTz()D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_7

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/transform/Affine;->getMzz()D

    move-result-wide v7

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_7

    .line 2596
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Ljavafx/scene/transform/Affine;->state3d:I

    iput v8, v7, Ljavafx/scene/transform/Affine;->state2d:I

    .line 2597
    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Ljavafx/scene/transform/Affine;->state3d:I

    .line 2599
    :cond_7
    goto/16 :goto_0

    .line 2601
    :pswitch_4
    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v8

    move-wide v10, v1

    mul-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    .line 2602
    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v8

    move-wide v10, v3

    mul-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setMxy(D)V

    .line 2603
    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMxz()D

    move-result-wide v8

    move-wide v10, v5

    mul-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setMxz(D)V

    .line 2605
    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v8

    move-wide v10, v1

    mul-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setMyx(D)V

    .line 2606
    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v8

    move-wide v10, v3

    mul-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    .line 2607
    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMyz()D

    move-result-wide v8

    move-wide v10, v5

    mul-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setMyz(D)V

    .line 2609
    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMzx()D

    move-result-wide v8

    move-wide v10, v1

    mul-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setMzx(D)V

    .line 2610
    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMzy()D

    move-result-wide v8

    move-wide v10, v3

    mul-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setMzy(D)V

    .line 2611
    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMzz()D

    move-result-wide v8

    move-wide v10, v5

    mul-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setMzz(D)V

    .line 2613
    move-wide v7, v1

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-eqz v7, :cond_8

    move-wide v7, v3

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-eqz v7, :cond_8

    move-wide v7, v5

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_9

    .line 2614
    :cond_8
    move-object v7, v0

    invoke-direct {v7}, Ljavafx/scene/transform/Affine;->updateState()V

    .line 2616
    :cond_9
    goto/16 :goto_0

    .line 2551
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private shear2D(DD)V
    .locals 19

    .prologue
    .line 3058
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-wide/from16 v2, p1

    .local v2, "shx":D
    move-wide/from16 v4, p3

    .local v4, "shy":D
    move-object v11, v1

    iget v11, v11, Ljavafx/scene/transform/Affine;->state3d:I

    if-eqz v11, :cond_0

    .line 3059
    move-object v11, v1

    move-wide v12, v2

    move-wide v14, v4

    invoke-direct {v11, v12, v13, v14, v15}, Ljavafx/scene/transform/Affine;->shear3D(DD)V

    .line 3060
    .line 3105
    :goto_0
    return-void

    .line 3063
    :cond_0
    move-object v11, v1

    iget v11, v11, Ljavafx/scene/transform/Affine;->state2d:I

    move v6, v11

    .line 3064
    .local v6, "mystate":I
    move v11, v6

    packed-switch v11, :pswitch_data_0

    .line 3066
    invoke-static {}, Ljavafx/scene/transform/Affine;->stateError()V

    .line 3071
    :pswitch_0
    move-object v11, v1

    invoke-virtual {v11}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v11

    move-wide v7, v11

    .line 3072
    .local v7, "M0":D
    move-object v11, v1

    invoke-virtual {v11}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v11

    move-wide v9, v11

    .line 3073
    .local v9, "M1":D
    move-object v11, v1

    move-wide v12, v7

    move-wide v14, v9

    move-wide/from16 v16, v4

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    .line 3074
    move-object v11, v1

    move-wide v12, v7

    move-wide v14, v2

    mul-double/2addr v12, v14

    move-wide v14, v9

    add-double/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/transform/Affine;->setMxy(D)V

    .line 3076
    move-object v11, v1

    invoke-virtual {v11}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v11

    move-wide v7, v11

    .line 3077
    move-object v11, v1

    invoke-virtual {v11}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v11

    move-wide v9, v11

    .line 3078
    move-object v11, v1

    move-wide v12, v7

    move-wide v14, v9

    move-wide/from16 v16, v4

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/transform/Affine;->setMyx(D)V

    .line 3079
    move-object v11, v1

    move-wide v12, v7

    move-wide v14, v2

    mul-double/2addr v12, v14

    move-wide v14, v9

    add-double/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    .line 3080
    move-object v11, v1

    invoke-direct {v11}, Ljavafx/scene/transform/Affine;->updateState2D()V

    .line 3081
    goto :goto_0

    .line 3084
    .end local v7    # "M0":D
    .end local v9    # "M1":D
    :pswitch_1
    move-object v11, v1

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v12

    move-wide v14, v4

    mul-double/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    .line 3085
    move-object v11, v1

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v12

    move-wide v14, v2

    mul-double/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    .line 3086
    move-object v11, v1

    invoke-virtual {v11}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmpl-double v11, v11, v13

    if-nez v11, :cond_1

    move-object v11, v1

    invoke-virtual {v11}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmpl-double v11, v11, v13

    if-eqz v11, :cond_2

    .line 3087
    :cond_1
    move-object v11, v1

    move v12, v6

    const/4 v13, 0x2

    or-int/lit8 v12, v12, 0x2

    iput v12, v11, Ljavafx/scene/transform/Affine;->state2d:I

    .line 3089
    :cond_2
    goto/16 :goto_0

    .line 3092
    :pswitch_2
    move-object v11, v1

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v12

    move-wide v14, v2

    mul-double/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/transform/Affine;->setMxy(D)V

    .line 3093
    move-object v11, v1

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v12

    move-wide v14, v4

    mul-double/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/transform/Affine;->setMyx(D)V

    .line 3094
    move-object v11, v1

    invoke-virtual {v11}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmpl-double v11, v11, v13

    if-nez v11, :cond_3

    move-object v11, v1

    invoke-virtual {v11}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmpl-double v11, v11, v13

    if-eqz v11, :cond_4

    .line 3095
    :cond_3
    move-object v11, v1

    move v12, v6

    const/4 v13, 0x4

    or-int/lit8 v12, v12, 0x4

    iput v12, v11, Ljavafx/scene/transform/Affine;->state2d:I

    .line 3097
    :cond_4
    goto/16 :goto_0

    .line 3100
    :pswitch_3
    move-object v11, v1

    move-wide v12, v2

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/transform/Affine;->setMxy(D)V

    .line 3101
    move-object v11, v1

    move-wide v12, v4

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/transform/Affine;->setMyx(D)V

    .line 3102
    move-object v11, v1

    invoke-virtual {v11}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmpl-double v11, v11, v13

    if-nez v11, :cond_5

    move-object v11, v1

    invoke-virtual {v11}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmpl-double v11, v11, v13

    if-eqz v11, :cond_6

    .line 3103
    :cond_5
    move-object v11, v1

    move v12, v6

    const/4 v13, 0x2

    or-int/lit8 v12, v12, 0x2

    const/4 v13, 0x4

    or-int/lit8 v12, v12, 0x4

    iput v12, v11, Ljavafx/scene/transform/Affine;->state2d:I

    .line 3105
    :cond_6
    goto/16 :goto_0

    .line 3064
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

.method private shear3D(DD)V
    .locals 27

    .prologue
    .line 3114
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/transform/Affine;
    move-wide/from16 v3, p1

    .local v3, "shx":D
    move-wide/from16 v5, p3

    .local v5, "shy":D
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Ljavafx/scene/transform/Affine;->state3d:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_0

    .line 3116
    invoke-static {}, Ljavafx/scene/transform/Affine;->stateError()V

    .line 3121
    :pswitch_0
    move-object/from16 v19, v2

    move-wide/from16 v20, v3

    move-wide/from16 v22, v5

    invoke-direct/range {v19 .. v23}, Ljavafx/scene/transform/Affine;->shear2D(DD)V

    .line 3122
    .line 3153
    :goto_0
    return-void

    .line 3124
    :pswitch_1
    move-object/from16 v19, v2

    move-wide/from16 v20, v3

    invoke-virtual/range {v19 .. v21}, Ljavafx/scene/transform/Affine;->setMxy(D)V

    .line 3125
    move-object/from16 v19, v2

    move-wide/from16 v20, v5

    invoke-virtual/range {v19 .. v21}, Ljavafx/scene/transform/Affine;->setMyx(D)V

    .line 3126
    move-wide/from16 v19, v3

    const-wide/16 v21, 0x0

    cmpl-double v19, v19, v21

    if-nez v19, :cond_0

    move-wide/from16 v19, v5

    const-wide/16 v21, 0x0

    cmpl-double v19, v19, v21

    if-eqz v19, :cond_1

    .line 3127
    :cond_0
    move-object/from16 v19, v2

    const/16 v20, 0x4

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Ljavafx/scene/transform/Affine;->state3d:I

    .line 3129
    :cond_1
    goto :goto_0

    .line 3132
    :pswitch_2
    move-object/from16 v19, v2

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v20

    move-wide/from16 v22, v3

    mul-double v20, v20, v22

    invoke-virtual/range {v19 .. v21}, Ljavafx/scene/transform/Affine;->setMxy(D)V

    .line 3133
    move-object/from16 v19, v2

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v20

    move-wide/from16 v22, v5

    mul-double v20, v20, v22

    invoke-virtual/range {v19 .. v21}, Ljavafx/scene/transform/Affine;->setMyx(D)V

    .line 3134
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v19

    const-wide/16 v21, 0x0

    cmpl-double v19, v19, v21

    if-nez v19, :cond_2

    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v19

    const-wide/16 v21, 0x0

    cmpl-double v19, v19, v21

    if-eqz v19, :cond_3

    .line 3135
    :cond_2
    move-object/from16 v19, v2

    const/16 v20, 0x4

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Ljavafx/scene/transform/Affine;->state3d:I

    .line 3137
    :cond_3
    goto :goto_0

    .line 3139
    :pswitch_3
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v19

    move-wide/from16 v7, v19

    .line 3140
    .local v7, "m_xx":D
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v19

    move-wide/from16 v9, v19

    .line 3141
    .local v9, "m_xy":D
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v19

    move-wide/from16 v11, v19

    .line 3142
    .local v11, "m_yx":D
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v19

    move-wide/from16 v13, v19

    .line 3143
    .local v13, "m_yy":D
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/transform/Affine;->getMzx()D

    move-result-wide v19

    move-wide/from16 v15, v19

    .line 3144
    .local v15, "m_zx":D
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/transform/Affine;->getMzy()D

    move-result-wide v19

    move-wide/from16 v17, v19

    .line 3146
    .local v17, "m_zy":D
    move-object/from16 v19, v2

    move-wide/from16 v20, v7

    move-wide/from16 v22, v9

    move-wide/from16 v24, v5

    mul-double v22, v22, v24

    add-double v20, v20, v22

    invoke-virtual/range {v19 .. v21}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    .line 3147
    move-object/from16 v19, v2

    move-wide/from16 v20, v9

    move-wide/from16 v22, v7

    move-wide/from16 v24, v3

    mul-double v22, v22, v24

    add-double v20, v20, v22

    invoke-virtual/range {v19 .. v21}, Ljavafx/scene/transform/Affine;->setMxy(D)V

    .line 3148
    move-object/from16 v19, v2

    move-wide/from16 v20, v11

    move-wide/from16 v22, v13

    move-wide/from16 v24, v5

    mul-double v22, v22, v24

    add-double v20, v20, v22

    invoke-virtual/range {v19 .. v21}, Ljavafx/scene/transform/Affine;->setMyx(D)V

    .line 3149
    move-object/from16 v19, v2

    move-wide/from16 v20, v13

    move-wide/from16 v22, v11

    move-wide/from16 v24, v3

    mul-double v22, v22, v24

    add-double v20, v20, v22

    invoke-virtual/range {v19 .. v21}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    .line 3150
    move-object/from16 v19, v2

    move-wide/from16 v20, v15

    move-wide/from16 v22, v17

    move-wide/from16 v24, v5

    mul-double v22, v22, v24

    add-double v20, v20, v22

    invoke-virtual/range {v19 .. v21}, Ljavafx/scene/transform/Affine;->setMzx(D)V

    .line 3151
    move-object/from16 v19, v2

    move-wide/from16 v20, v17

    move-wide/from16 v22, v15

    move-wide/from16 v24, v3

    mul-double v22, v22, v24

    add-double v20, v20, v22

    invoke-virtual/range {v19 .. v21}, Ljavafx/scene/transform/Affine;->setMzy(D)V

    .line 3152
    move-object/from16 v19, v2

    invoke-direct/range {v19 .. v19}, Ljavafx/scene/transform/Affine;->updateState()V

    .line 3153
    goto/16 :goto_0

    .line 3114
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static stateError()V
    .locals 4

    .prologue
    .line 5702
    new-instance v0, Ljava/lang/InternalError;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string v2, "missing case in a switch"

    invoke-direct {v1, v2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private translate2D(DD)V
    .locals 13

    .prologue
    .line 2046
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Affine;
    move-wide v1, p1

    .local v1, "tx":D
    move-wide/from16 v3, p3

    .local v3, "ty":D
    move-object v5, v0

    iget v5, v5, Ljavafx/scene/transform/Affine;->state3d:I

    if-eqz v5, :cond_0

    .line 2047
    move-object v5, v0

    move-wide v6, v1

    move-wide v8, v3

    const-wide/16 v10, 0x0

    invoke-direct/range {v5 .. v11}, Ljavafx/scene/transform/Affine;->translate3D(DDD)V

    .line 2048
    .line 2110
    :goto_0
    return-void

    .line 2051
    :cond_0
    move-object v5, v0

    iget v5, v5, Ljavafx/scene/transform/Affine;->state2d:I

    packed-switch v5, :pswitch_data_0

    .line 2053
    invoke-static {}, Ljavafx/scene/transform/Affine;->stateError()V

    .line 2056
    :pswitch_0
    move-object v5, v0

    move-wide v6, v1

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v8

    mul-double/2addr v6, v8

    move-wide v8, v3

    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/transform/Affine;->setTx(D)V

    .line 2057
    move-object v5, v0

    move-wide v6, v1

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v8

    mul-double/2addr v6, v8

    move-wide v8, v3

    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/transform/Affine;->setTy(D)V

    .line 2058
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_1

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_1

    .line 2059
    move-object v5, v0

    const/4 v6, 0x6

    iput v6, v5, Ljavafx/scene/transform/Affine;->state2d:I

    .line 2061
    :cond_1
    goto :goto_0

    .line 2063
    :pswitch_1
    move-object v5, v0

    move-wide v6, v1

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v8

    mul-double/2addr v6, v8

    move-wide v8, v3

    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/transform/Affine;->setTx(D)V

    .line 2064
    move-object v5, v0

    move-wide v6, v1

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v8

    mul-double/2addr v6, v8

    move-wide v8, v3

    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/transform/Affine;->setTy(D)V

    .line 2065
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_2

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-eqz v5, :cond_3

    .line 2066
    :cond_2
    move-object v5, v0

    const/4 v6, 0x7

    iput v6, v5, Ljavafx/scene/transform/Affine;->state2d:I

    .line 2068
    :cond_3
    goto/16 :goto_0

    .line 2070
    :pswitch_2
    move-object v5, v0

    move-wide v6, v3

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v8

    mul-double/2addr v6, v8

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/transform/Affine;->setTx(D)V

    .line 2071
    move-object v5, v0

    move-wide v6, v1

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v8

    mul-double/2addr v6, v8

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/transform/Affine;->setTy(D)V

    .line 2072
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_4

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_4

    .line 2073
    move-object v5, v0

    const/4 v6, 0x4

    iput v6, v5, Ljavafx/scene/transform/Affine;->state2d:I

    .line 2075
    :cond_4
    goto/16 :goto_0

    .line 2077
    :pswitch_3
    move-object v5, v0

    move-wide v6, v3

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v8

    mul-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/transform/Affine;->setTx(D)V

    .line 2078
    move-object v5, v0

    move-wide v6, v1

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v8

    mul-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/transform/Affine;->setTy(D)V

    .line 2079
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_5

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-eqz v5, :cond_6

    .line 2080
    :cond_5
    move-object v5, v0

    const/4 v6, 0x5

    iput v6, v5, Ljavafx/scene/transform/Affine;->state2d:I

    .line 2082
    :cond_6
    goto/16 :goto_0

    .line 2084
    :pswitch_4
    move-object v5, v0

    move-wide v6, v1

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v8

    mul-double/2addr v6, v8

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/transform/Affine;->setTx(D)V

    .line 2085
    move-object v5, v0

    move-wide v6, v3

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v8

    mul-double/2addr v6, v8

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/transform/Affine;->setTy(D)V

    .line 2086
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_7

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_7

    .line 2087
    move-object v5, v0

    const/4 v6, 0x2

    iput v6, v5, Ljavafx/scene/transform/Affine;->state2d:I

    .line 2089
    :cond_7
    goto/16 :goto_0

    .line 2091
    :pswitch_5
    move-object v5, v0

    move-wide v6, v1

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v8

    mul-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/transform/Affine;->setTx(D)V

    .line 2092
    move-object v5, v0

    move-wide v6, v3

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v8

    mul-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/transform/Affine;->setTy(D)V

    .line 2093
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_8

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-eqz v5, :cond_9

    .line 2094
    :cond_8
    move-object v5, v0

    const/4 v6, 0x3

    iput v6, v5, Ljavafx/scene/transform/Affine;->state2d:I

    .line 2096
    :cond_9
    goto/16 :goto_0

    .line 2098
    :pswitch_6
    move-object v5, v0

    move-wide v6, v1

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/transform/Affine;->setTx(D)V

    .line 2099
    move-object v5, v0

    move-wide v6, v3

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/transform/Affine;->setTy(D)V

    .line 2100
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_a

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_a

    .line 2101
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Ljavafx/scene/transform/Affine;->state2d:I

    .line 2103
    :cond_a
    goto/16 :goto_0

    .line 2105
    :pswitch_7
    move-object v5, v0

    move-wide v6, v1

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/transform/Affine;->setTx(D)V

    .line 2106
    move-object v5, v0

    move-wide v6, v3

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/transform/Affine;->setTy(D)V

    .line 2107
    move-wide v5, v1

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_b

    move-wide v5, v3

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-eqz v5, :cond_c

    .line 2108
    :cond_b
    move-object v5, v0

    const/4 v6, 0x1

    iput v6, v5, Ljavafx/scene/transform/Affine;->state2d:I

    .line 2110
    :cond_c
    goto/16 :goto_0

    .line 2051
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

.method private translate3D(DDD)V
    .locals 15

    .prologue
    .line 2119
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Affine;
    move-wide/from16 v1, p1

    .local v1, "tx":D
    move-wide/from16 v3, p3

    .local v3, "ty":D
    move-wide/from16 v5, p5

    .local v5, "tz":D
    move-object v7, v0

    iget v7, v7, Ljavafx/scene/transform/Affine;->state3d:I

    packed-switch v7, :pswitch_data_0

    .line 2121
    invoke-static {}, Ljavafx/scene/transform/Affine;->stateError()V

    .line 2124
    :pswitch_0
    move-object v7, v0

    move-wide v8, v1

    move-wide v10, v3

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/scene/transform/Affine;->translate2D(DD)V

    .line 2125
    move-wide v7, v5

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-eqz v7, :cond_0

    .line 2126
    move-object v7, v0

    move-wide v8, v5

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setTz(D)V

    .line 2127
    move-object v7, v0

    iget v7, v7, Ljavafx/scene/transform/Affine;->state2d:I

    const/4 v8, 0x4

    and-int/lit8 v7, v7, 0x4

    if-nez v7, :cond_1

    .line 2128
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Ljavafx/scene/transform/Affine;->state2d:I

    const/4 v9, 0x2

    and-int/lit8 v8, v8, 0x2

    const/4 v9, 0x1

    or-int/lit8 v8, v8, 0x1

    iput v8, v7, Ljavafx/scene/transform/Affine;->state3d:I

    .line 2133
    .line 2174
    :cond_0
    :goto_0
    return-void

    .line 2130
    :cond_1
    move-object v7, v0

    const/4 v8, 0x4

    iput v8, v7, Ljavafx/scene/transform/Affine;->state3d:I

    goto :goto_0

    .line 2135
    :pswitch_1
    move-object v7, v0

    move-wide v8, v1

    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v10

    add-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setTx(D)V

    .line 2136
    move-object v7, v0

    move-wide v8, v3

    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v10

    add-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setTy(D)V

    .line 2137
    move-object v7, v0

    move-wide v8, v5

    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/transform/Affine;->getTz()D

    move-result-wide v10

    add-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setTz(D)V

    .line 2138
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/transform/Affine;->getTz()D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_2

    .line 2139
    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Ljavafx/scene/transform/Affine;->state3d:I

    .line 2140
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_3

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_3

    .line 2141
    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Ljavafx/scene/transform/Affine;->state2d:I

    .line 2146
    :cond_2
    :goto_1
    goto :goto_0

    .line 2143
    :cond_3
    move-object v7, v0

    const/4 v8, 0x1

    iput v8, v7, Ljavafx/scene/transform/Affine;->state2d:I

    goto :goto_1

    .line 2148
    :pswitch_2
    move-object v7, v0

    move-wide v8, v1

    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setTx(D)V

    .line 2149
    move-object v7, v0

    move-wide v8, v3

    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setTy(D)V

    .line 2150
    move-object v7, v0

    move-wide v8, v5

    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/transform/Affine;->getMzz()D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setTz(D)V

    .line 2151
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_4

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_4

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/transform/Affine;->getTz()D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-eqz v7, :cond_5

    .line 2152
    :cond_4
    move-object v7, v0

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    iget v8, v8, Ljavafx/scene/transform/Affine;->state3d:I

    const/4 v9, 0x1

    or-int/lit8 v8, v8, 0x1

    iput v8, v7, Ljavafx/scene/transform/Affine;->state3d:I

    .line 2154
    :cond_5
    goto/16 :goto_0

    .line 2156
    :pswitch_3
    move-object v7, v0

    move-wide v8, v1

    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v10

    mul-double/2addr v8, v10

    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v10

    add-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setTx(D)V

    .line 2157
    move-object v7, v0

    move-wide v8, v3

    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v10

    mul-double/2addr v8, v10

    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v10

    add-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setTy(D)V

    .line 2158
    move-object v7, v0

    move-wide v8, v5

    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/transform/Affine;->getMzz()D

    move-result-wide v10

    mul-double/2addr v8, v10

    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/transform/Affine;->getTz()D

    move-result-wide v10

    add-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setTz(D)V

    .line 2159
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/transform/Affine;->getTz()D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_7

    .line 2160
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_6

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_6

    .line 2161
    move-object v7, v0

    const/4 v8, 0x2

    iput v8, v7, Ljavafx/scene/transform/Affine;->state3d:I

    .line 2163
    :cond_6
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/transform/Affine;->getMzz()D

    move-result-wide v7

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_7

    .line 2164
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Ljavafx/scene/transform/Affine;->state3d:I

    iput v8, v7, Ljavafx/scene/transform/Affine;->state2d:I

    .line 2165
    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Ljavafx/scene/transform/Affine;->state3d:I

    .line 2168
    :cond_7
    goto/16 :goto_0

    .line 2170
    :pswitch_4
    move-object v7, v0

    move-wide v8, v1

    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v10

    mul-double/2addr v8, v10

    move-wide v10, v3

    move-object v12, v0

    invoke-virtual {v12}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v12

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    move-wide v10, v5

    move-object v12, v0

    invoke-virtual {v12}, Ljavafx/scene/transform/Affine;->getMxz()D

    move-result-wide v12

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v10

    add-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setTx(D)V

    .line 2171
    move-object v7, v0

    move-wide v8, v1

    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v10

    mul-double/2addr v8, v10

    move-wide v10, v3

    move-object v12, v0

    invoke-virtual {v12}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v12

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    move-wide v10, v5

    move-object v12, v0

    invoke-virtual {v12}, Ljavafx/scene/transform/Affine;->getMyz()D

    move-result-wide v12

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v10

    add-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setTy(D)V

    .line 2172
    move-object v7, v0

    move-wide v8, v1

    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/transform/Affine;->getMzx()D

    move-result-wide v10

    mul-double/2addr v8, v10

    move-wide v10, v3

    move-object v12, v0

    invoke-virtual {v12}, Ljavafx/scene/transform/Affine;->getMzy()D

    move-result-wide v12

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    move-wide v10, v5

    move-object v12, v0

    invoke-virtual {v12}, Ljavafx/scene/transform/Affine;->getMzz()D

    move-result-wide v12

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/transform/Affine;->getTz()D

    move-result-wide v10

    add-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Affine;->setTz(D)V

    .line 2173
    move-object v7, v0

    invoke-direct {v7}, Ljavafx/scene/transform/Affine;->updateState()V

    .line 2174
    goto/16 :goto_0

    .line 2119
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private updateState()V
    .locals 7

    .prologue
    .line 5631
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-object v2, v1

    invoke-direct {v2}, Ljavafx/scene/transform/Affine;->updateState2D()V

    .line 5633
    move-object v2, v1

    const/4 v3, 0x0

    iput v3, v2, Ljavafx/scene/transform/Affine;->state3d:I

    .line 5635
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Affine;->getMxz()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    move-object v2, v1

    .line 5636
    invoke-virtual {v2}, Ljavafx/scene/transform/Affine;->getMyz()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    move-object v2, v1

    .line 5637
    invoke-virtual {v2}, Ljavafx/scene/transform/Affine;->getMzx()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    move-object v2, v1

    .line 5638
    invoke-virtual {v2}, Ljavafx/scene/transform/Affine;->getMzy()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_2

    .line 5640
    :cond_0
    move-object v2, v1

    const/4 v3, 0x4

    iput v3, v2, Ljavafx/scene/transform/Affine;->state3d:I

    .line 5658
    :cond_1
    :goto_0
    return-void

    .line 5642
    :cond_2
    move-object v2, v1

    iget v2, v2, Ljavafx/scene/transform/Affine;->state2d:I

    const/4 v3, 0x4

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_5

    .line 5643
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Affine;->getTz()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_3

    .line 5644
    move-object v2, v1

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Ljavafx/scene/transform/Affine;->state3d:I

    const/4 v4, 0x1

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Ljavafx/scene/transform/Affine;->state3d:I

    .line 5646
    :cond_3
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Affine;->getMzz()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_4

    .line 5647
    move-object v2, v1

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Ljavafx/scene/transform/Affine;->state3d:I

    const/4 v4, 0x2

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Ljavafx/scene/transform/Affine;->state3d:I

    .line 5649
    :cond_4
    move-object v2, v1

    iget v2, v2, Ljavafx/scene/transform/Affine;->state3d:I

    if-eqz v2, :cond_1

    .line 5650
    move-object v2, v1

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Ljavafx/scene/transform/Affine;->state3d:I

    move-object v4, v1

    iget v4, v4, Ljavafx/scene/transform/Affine;->state2d:I

    const/4 v5, 0x3

    and-int/lit8 v4, v4, 0x3

    or-int/2addr v3, v4

    iput v3, v2, Ljavafx/scene/transform/Affine;->state3d:I

    goto :goto_0

    .line 5653
    :cond_5
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Affine;->getMzz()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_6

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Affine;->getTz()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_1

    .line 5654
    :cond_6
    move-object v2, v1

    const/4 v3, 0x4

    iput v3, v2, Ljavafx/scene/transform/Affine;->state3d:I

    goto :goto_0
.end method

.method private updateState2D()V
    .locals 6

    .prologue
    .line 5666
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_3

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_3

    .line 5667
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_1

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_1

    .line 5668
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    .line 5669
    move-object v2, v1

    const/4 v3, 0x0

    iput v3, v2, Ljavafx/scene/transform/Affine;->state2d:I

    .line 5695
    :goto_0
    return-void

    .line 5671
    :cond_0
    move-object v2, v1

    const/4 v3, 0x1

    iput v3, v2, Ljavafx/scene/transform/Affine;->state2d:I

    goto :goto_0

    .line 5674
    :cond_1
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    .line 5675
    move-object v2, v1

    const/4 v3, 0x2

    iput v3, v2, Ljavafx/scene/transform/Affine;->state2d:I

    goto :goto_0

    .line 5677
    :cond_2
    move-object v2, v1

    const/4 v3, 0x3

    iput v3, v2, Ljavafx/scene/transform/Affine;->state2d:I

    goto :goto_0

    .line 5681
    :cond_3
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_5

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_5

    .line 5682
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_4

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_4

    .line 5683
    move-object v2, v1

    const/4 v3, 0x4

    iput v3, v2, Ljavafx/scene/transform/Affine;->state2d:I

    goto :goto_0

    .line 5685
    :cond_4
    move-object v2, v1

    const/4 v3, 0x5

    iput v3, v2, Ljavafx/scene/transform/Affine;->state2d:I

    goto :goto_0

    .line 5688
    :cond_5
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_6

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_6

    .line 5689
    move-object v2, v1

    const/4 v3, 0x6

    iput v3, v2, Ljavafx/scene/transform/Affine;->state2d:I

    goto :goto_0

    .line 5691
    :cond_6
    move-object v2, v1

    const/4 v3, 0x7

    iput v3, v2, Ljavafx/scene/transform/Affine;->state2d:I

    goto :goto_0
.end method


# virtual methods
.method public append(DDDDDD)V
    .locals 49

    .prologue
    .line 1532
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/transform/Affine;
    move-wide/from16 v3, p1

    .local v3, "mxx":D
    move-wide/from16 v5, p3

    .local v5, "mxy":D
    move-wide/from16 v7, p5

    .local v7, "tx":D
    move-wide/from16 v9, p7

    .local v9, "myx":D
    move-wide/from16 v11, p9

    .local v11, "myy":D
    move-wide/from16 v13, p11

    .local v13, "ty":D
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Ljavafx/scene/transform/Affine;->state3d:I

    move/from16 v23, v0

    if-nez v23, :cond_0

    .line 1534
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->access$300(Ljavafx/scene/transform/Affine$AffineAtomicChange;)V

    .line 1536
    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v23

    move-wide/from16 v15, v23

    .line 1537
    .local v15, "m_xx":D
    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v23

    move-wide/from16 v17, v23

    .line 1538
    .local v17, "m_xy":D
    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v23

    move-wide/from16 v19, v23

    .line 1539
    .local v19, "m_yx":D
    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v23

    move-wide/from16 v21, v23

    .line 1541
    .local v21, "m_yy":D
    move-object/from16 v23, v2

    move-wide/from16 v24, v15

    move-wide/from16 v26, v3

    mul-double v24, v24, v26

    move-wide/from16 v26, v17

    move-wide/from16 v28, v9

    mul-double v26, v26, v28

    add-double v24, v24, v26

    invoke-virtual/range {v23 .. v25}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    .line 1542
    move-object/from16 v23, v2

    move-wide/from16 v24, v15

    move-wide/from16 v26, v5

    mul-double v24, v24, v26

    move-wide/from16 v26, v17

    move-wide/from16 v28, v11

    mul-double v26, v26, v28

    add-double v24, v24, v26

    invoke-virtual/range {v23 .. v25}, Ljavafx/scene/transform/Affine;->setMxy(D)V

    .line 1543
    move-object/from16 v23, v2

    move-wide/from16 v24, v15

    move-wide/from16 v26, v7

    mul-double v24, v24, v26

    move-wide/from16 v26, v17

    move-wide/from16 v28, v13

    mul-double v26, v26, v28

    add-double v24, v24, v26

    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v26

    add-double v24, v24, v26

    invoke-virtual/range {v23 .. v25}, Ljavafx/scene/transform/Affine;->setTx(D)V

    .line 1544
    move-object/from16 v23, v2

    move-wide/from16 v24, v19

    move-wide/from16 v26, v3

    mul-double v24, v24, v26

    move-wide/from16 v26, v21

    move-wide/from16 v28, v9

    mul-double v26, v26, v28

    add-double v24, v24, v26

    invoke-virtual/range {v23 .. v25}, Ljavafx/scene/transform/Affine;->setMyx(D)V

    .line 1545
    move-object/from16 v23, v2

    move-wide/from16 v24, v19

    move-wide/from16 v26, v5

    mul-double v24, v24, v26

    move-wide/from16 v26, v21

    move-wide/from16 v28, v11

    mul-double v26, v26, v28

    add-double v24, v24, v26

    invoke-virtual/range {v23 .. v25}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    .line 1546
    move-object/from16 v23, v2

    move-wide/from16 v24, v19

    move-wide/from16 v26, v7

    mul-double v24, v24, v26

    move-wide/from16 v26, v21

    move-wide/from16 v28, v13

    mul-double v26, v26, v28

    add-double v24, v24, v26

    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v26

    add-double v24, v24, v26

    invoke-virtual/range {v23 .. v25}, Ljavafx/scene/transform/Affine;->setTy(D)V

    .line 1548
    move-object/from16 v23, v2

    invoke-direct/range {v23 .. v23}, Ljavafx/scene/transform/Affine;->updateState()V

    .line 1549
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->access$400(Ljavafx/scene/transform/Affine$AffineAtomicChange;)V

    .line 1550
    .line 1555
    .end local v15    # "m_xx":D
    .end local v17    # "m_xy":D
    .end local v19    # "m_yx":D
    .end local v21    # "m_yy":D
    :goto_0
    return-void

    .line 1551
    :cond_0
    move-object/from16 v23, v2

    move-wide/from16 v24, v3

    move-wide/from16 v26, v5

    const-wide/16 v28, 0x0

    move-wide/from16 v30, v7

    move-wide/from16 v32, v9

    move-wide/from16 v34, v11

    const-wide/16 v36, 0x0

    move-wide/from16 v38, v13

    const-wide/16 v40, 0x0

    const-wide/16 v42, 0x0

    const-wide/high16 v44, 0x3ff0000000000000L    # 1.0

    const-wide/16 v46, 0x0

    invoke-virtual/range {v23 .. v47}, Ljavafx/scene/transform/Affine;->append(DDDDDDDDDDDD)V

    goto :goto_0
.end method

.method public append(DDDDDDDDDDDD)V
    .locals 59

    .prologue
    .line 1594
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/transform/Affine;
    move-wide/from16 v3, p1

    .local v3, "mxx":D
    move-wide/from16 v5, p3

    .local v5, "mxy":D
    move-wide/from16 v7, p5

    .local v7, "mxz":D
    move-wide/from16 v9, p7

    .local v9, "tx":D
    move-wide/from16 v11, p9

    .local v11, "myx":D
    move-wide/from16 v13, p11

    .local v13, "myy":D
    move-wide/from16 v15, p13

    .local v15, "myz":D
    move-wide/from16 v17, p15

    .local v17, "ty":D
    move-wide/from16 v19, p17

    .local v19, "mzx":D
    move-wide/from16 v21, p19

    .local v21, "mzy":D
    move-wide/from16 v23, p21

    .local v23, "mzz":D
    move-wide/from16 v25, p23

    .local v25, "tz":D
    move-object/from16 v51, v2

    move-object/from16 v0, v51

    iget-object v0, v0, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->access$300(Ljavafx/scene/transform/Affine$AffineAtomicChange;)V

    .line 1596
    move-object/from16 v51, v2

    invoke-virtual/range {v51 .. v51}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v51

    move-wide/from16 v27, v51

    .line 1597
    .local v27, "m_xx":D
    move-object/from16 v51, v2

    invoke-virtual/range {v51 .. v51}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v51

    move-wide/from16 v29, v51

    .line 1598
    .local v29, "m_xy":D
    move-object/from16 v51, v2

    invoke-virtual/range {v51 .. v51}, Ljavafx/scene/transform/Affine;->getMxz()D

    move-result-wide v51

    move-wide/from16 v31, v51

    .line 1599
    .local v31, "m_xz":D
    move-object/from16 v51, v2

    invoke-virtual/range {v51 .. v51}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v51

    move-wide/from16 v33, v51

    .line 1600
    .local v33, "t_x":D
    move-object/from16 v51, v2

    invoke-virtual/range {v51 .. v51}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v51

    move-wide/from16 v35, v51

    .line 1601
    .local v35, "m_yx":D
    move-object/from16 v51, v2

    invoke-virtual/range {v51 .. v51}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v51

    move-wide/from16 v37, v51

    .line 1602
    .local v37, "m_yy":D
    move-object/from16 v51, v2

    invoke-virtual/range {v51 .. v51}, Ljavafx/scene/transform/Affine;->getMyz()D

    move-result-wide v51

    move-wide/from16 v39, v51

    .line 1603
    .local v39, "m_yz":D
    move-object/from16 v51, v2

    invoke-virtual/range {v51 .. v51}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v51

    move-wide/from16 v41, v51

    .line 1604
    .local v41, "t_y":D
    move-object/from16 v51, v2

    invoke-virtual/range {v51 .. v51}, Ljavafx/scene/transform/Affine;->getMzx()D

    move-result-wide v51

    move-wide/from16 v43, v51

    .line 1605
    .local v43, "m_zx":D
    move-object/from16 v51, v2

    invoke-virtual/range {v51 .. v51}, Ljavafx/scene/transform/Affine;->getMzy()D

    move-result-wide v51

    move-wide/from16 v45, v51

    .line 1606
    .local v45, "m_zy":D
    move-object/from16 v51, v2

    invoke-virtual/range {v51 .. v51}, Ljavafx/scene/transform/Affine;->getMzz()D

    move-result-wide v51

    move-wide/from16 v47, v51

    .line 1607
    .local v47, "m_zz":D
    move-object/from16 v51, v2

    invoke-virtual/range {v51 .. v51}, Ljavafx/scene/transform/Affine;->getTz()D

    move-result-wide v51

    move-wide/from16 v49, v51

    .line 1609
    .local v49, "t_z":D
    move-object/from16 v51, v2

    move-wide/from16 v52, v27

    move-wide/from16 v54, v3

    mul-double v52, v52, v54

    move-wide/from16 v54, v29

    move-wide/from16 v56, v11

    mul-double v54, v54, v56

    add-double v52, v52, v54

    move-wide/from16 v54, v31

    move-wide/from16 v56, v19

    mul-double v54, v54, v56

    add-double v52, v52, v54

    invoke-virtual/range {v51 .. v53}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    .line 1610
    move-object/from16 v51, v2

    move-wide/from16 v52, v27

    move-wide/from16 v54, v5

    mul-double v52, v52, v54

    move-wide/from16 v54, v29

    move-wide/from16 v56, v13

    mul-double v54, v54, v56

    add-double v52, v52, v54

    move-wide/from16 v54, v31

    move-wide/from16 v56, v21

    mul-double v54, v54, v56

    add-double v52, v52, v54

    invoke-virtual/range {v51 .. v53}, Ljavafx/scene/transform/Affine;->setMxy(D)V

    .line 1611
    move-object/from16 v51, v2

    move-wide/from16 v52, v27

    move-wide/from16 v54, v7

    mul-double v52, v52, v54

    move-wide/from16 v54, v29

    move-wide/from16 v56, v15

    mul-double v54, v54, v56

    add-double v52, v52, v54

    move-wide/from16 v54, v31

    move-wide/from16 v56, v23

    mul-double v54, v54, v56

    add-double v52, v52, v54

    invoke-virtual/range {v51 .. v53}, Ljavafx/scene/transform/Affine;->setMxz(D)V

    .line 1612
    move-object/from16 v51, v2

    move-wide/from16 v52, v27

    move-wide/from16 v54, v9

    mul-double v52, v52, v54

    move-wide/from16 v54, v29

    move-wide/from16 v56, v17

    mul-double v54, v54, v56

    add-double v52, v52, v54

    move-wide/from16 v54, v31

    move-wide/from16 v56, v25

    mul-double v54, v54, v56

    add-double v52, v52, v54

    move-wide/from16 v54, v33

    add-double v52, v52, v54

    invoke-virtual/range {v51 .. v53}, Ljavafx/scene/transform/Affine;->setTx(D)V

    .line 1613
    move-object/from16 v51, v2

    move-wide/from16 v52, v35

    move-wide/from16 v54, v3

    mul-double v52, v52, v54

    move-wide/from16 v54, v37

    move-wide/from16 v56, v11

    mul-double v54, v54, v56

    add-double v52, v52, v54

    move-wide/from16 v54, v39

    move-wide/from16 v56, v19

    mul-double v54, v54, v56

    add-double v52, v52, v54

    invoke-virtual/range {v51 .. v53}, Ljavafx/scene/transform/Affine;->setMyx(D)V

    .line 1614
    move-object/from16 v51, v2

    move-wide/from16 v52, v35

    move-wide/from16 v54, v5

    mul-double v52, v52, v54

    move-wide/from16 v54, v37

    move-wide/from16 v56, v13

    mul-double v54, v54, v56

    add-double v52, v52, v54

    move-wide/from16 v54, v39

    move-wide/from16 v56, v21

    mul-double v54, v54, v56

    add-double v52, v52, v54

    invoke-virtual/range {v51 .. v53}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    .line 1615
    move-object/from16 v51, v2

    move-wide/from16 v52, v35

    move-wide/from16 v54, v7

    mul-double v52, v52, v54

    move-wide/from16 v54, v37

    move-wide/from16 v56, v15

    mul-double v54, v54, v56

    add-double v52, v52, v54

    move-wide/from16 v54, v39

    move-wide/from16 v56, v23

    mul-double v54, v54, v56

    add-double v52, v52, v54

    invoke-virtual/range {v51 .. v53}, Ljavafx/scene/transform/Affine;->setMyz(D)V

    .line 1616
    move-object/from16 v51, v2

    move-wide/from16 v52, v35

    move-wide/from16 v54, v9

    mul-double v52, v52, v54

    move-wide/from16 v54, v37

    move-wide/from16 v56, v17

    mul-double v54, v54, v56

    add-double v52, v52, v54

    move-wide/from16 v54, v39

    move-wide/from16 v56, v25

    mul-double v54, v54, v56

    add-double v52, v52, v54

    move-wide/from16 v54, v41

    add-double v52, v52, v54

    invoke-virtual/range {v51 .. v53}, Ljavafx/scene/transform/Affine;->setTy(D)V

    .line 1617
    move-object/from16 v51, v2

    move-wide/from16 v52, v43

    move-wide/from16 v54, v3

    mul-double v52, v52, v54

    move-wide/from16 v54, v45

    move-wide/from16 v56, v11

    mul-double v54, v54, v56

    add-double v52, v52, v54

    move-wide/from16 v54, v47

    move-wide/from16 v56, v19

    mul-double v54, v54, v56

    add-double v52, v52, v54

    invoke-virtual/range {v51 .. v53}, Ljavafx/scene/transform/Affine;->setMzx(D)V

    .line 1618
    move-object/from16 v51, v2

    move-wide/from16 v52, v43

    move-wide/from16 v54, v5

    mul-double v52, v52, v54

    move-wide/from16 v54, v45

    move-wide/from16 v56, v13

    mul-double v54, v54, v56

    add-double v52, v52, v54

    move-wide/from16 v54, v47

    move-wide/from16 v56, v21

    mul-double v54, v54, v56

    add-double v52, v52, v54

    invoke-virtual/range {v51 .. v53}, Ljavafx/scene/transform/Affine;->setMzy(D)V

    .line 1619
    move-object/from16 v51, v2

    move-wide/from16 v52, v43

    move-wide/from16 v54, v7

    mul-double v52, v52, v54

    move-wide/from16 v54, v45

    move-wide/from16 v56, v15

    mul-double v54, v54, v56

    add-double v52, v52, v54

    move-wide/from16 v54, v47

    move-wide/from16 v56, v23

    mul-double v54, v54, v56

    add-double v52, v52, v54

    invoke-virtual/range {v51 .. v53}, Ljavafx/scene/transform/Affine;->setMzz(D)V

    .line 1620
    move-object/from16 v51, v2

    move-wide/from16 v52, v43

    move-wide/from16 v54, v9

    mul-double v52, v52, v54

    move-wide/from16 v54, v45

    move-wide/from16 v56, v17

    mul-double v54, v54, v56

    add-double v52, v52, v54

    move-wide/from16 v54, v47

    move-wide/from16 v56, v25

    mul-double v54, v54, v56

    add-double v52, v52, v54

    move-wide/from16 v54, v49

    add-double v52, v52, v54

    invoke-virtual/range {v51 .. v53}, Ljavafx/scene/transform/Affine;->setTz(D)V

    .line 1622
    move-object/from16 v51, v2

    invoke-direct/range {v51 .. v51}, Ljavafx/scene/transform/Affine;->updateState()V

    .line 1623
    move-object/from16 v51, v2

    move-object/from16 v0, v51

    iget-object v0, v0, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->access$400(Ljavafx/scene/transform/Affine$AffineAtomicChange;)V

    .line 1624
    return-void
.end method

.method public append(Ljavafx/scene/transform/Transform;)V
    .locals 4

    .prologue
    .line 1502
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Affine;
    move-object v1, p1

    .local v1, "transform":Ljavafx/scene/transform/Transform;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljavafx/scene/transform/Transform;->appendTo(Ljavafx/scene/transform/Affine;)V

    .line 1503
    return-void
.end method

.method public append([DLjavafx/scene/transform/MatrixType;I)V
    .locals 31

    .prologue
    .line 1653
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-object/from16 v2, p1

    .local v2, "matrix":[D
    move-object/from16 v3, p2

    .local v3, "type":Ljavafx/scene/transform/MatrixType;
    move/from16 v4, p3

    .local v4, "offset":I
    move-object v5, v2

    array-length v5, v5

    move v6, v4

    move-object v7, v3

    invoke-virtual {v7}, Ljavafx/scene/transform/MatrixType;->elements()I

    move-result v7

    add-int/2addr v6, v7

    if-ge v5, v6, :cond_0

    .line 1654
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    move-object/from16 v30, v5

    move-object/from16 v5, v30

    move-object/from16 v6, v30

    const-string v7, "The array is too short."

    invoke-direct {v6, v7}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1657
    :cond_0
    sget-object v5, Ljavafx/scene/transform/Affine$13;->$SwitchMap$javafx$scene$transform$MatrixType:[I

    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/scene/transform/MatrixType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 1659
    invoke-static {}, Ljavafx/scene/transform/Affine;->stateError()V

    .line 1662
    :pswitch_0
    move-object v5, v2

    move v6, v4

    const/4 v7, 0x6

    add-int/lit8 v6, v6, 0x6

    aget-wide v5, v5, v6

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_1

    move-object v5, v2

    move v6, v4

    const/4 v7, 0x7

    add-int/lit8 v6, v6, 0x7

    aget-wide v5, v5, v6

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_1

    move-object v5, v2

    move v6, v4

    const/16 v7, 0x8

    add-int/lit8 v6, v6, 0x8

    aget-wide v5, v5, v6

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v5, v7

    if-eqz v5, :cond_2

    .line 1665
    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object/from16 v30, v5

    move-object/from16 v5, v30

    move-object/from16 v6, v30

    const-string v7, "The matrix is not affine"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1670
    :cond_2
    :pswitch_1
    move-object v5, v1

    move-object v6, v2

    move v7, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v6, v6, v7

    move-object v8, v2

    move v9, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v8, v8, v9

    move-object v10, v2

    move v11, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v10, v10, v11

    move-object v12, v2

    move v13, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v12, v12, v13

    move-object v14, v2

    move v15, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v14, v14, v15

    move-object/from16 v16, v2

    move/from16 v17, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v16, v16, v17

    invoke-virtual/range {v5 .. v17}, Ljavafx/scene/transform/Affine;->append(DDDDDD)V

    .line 1673
    .line 1688
    :goto_0
    return-void

    .line 1675
    :pswitch_2
    move-object v5, v2

    move v6, v4

    const/16 v7, 0xc

    add-int/lit8 v6, v6, 0xc

    aget-wide v5, v5, v6

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_3

    move-object v5, v2

    move v6, v4

    const/16 v7, 0xd

    add-int/lit8 v6, v6, 0xd

    aget-wide v5, v5, v6

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_3

    move-object v5, v2

    move v6, v4

    const/16 v7, 0xe

    add-int/lit8 v6, v6, 0xe

    aget-wide v5, v5, v6

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_3

    move-object v5, v2

    move v6, v4

    const/16 v7, 0xf

    add-int/lit8 v6, v6, 0xf

    aget-wide v5, v5, v6

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v5, v7

    if-eqz v5, :cond_4

    .line 1679
    :cond_3
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object/from16 v30, v5

    move-object/from16 v5, v30

    move-object/from16 v6, v30

    const-string v7, "The matrix is not affine"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1684
    :cond_4
    :pswitch_3
    move-object v5, v1

    move-object v6, v2

    move v7, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v6, v6, v7

    move-object v8, v2

    move v9, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v8, v8, v9

    move-object v10, v2

    move v11, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v10, v10, v11

    move-object v12, v2

    move v13, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v12, v12, v13

    move-object v14, v2

    move v15, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v14, v14, v15

    move-object/from16 v16, v2

    move/from16 v17, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v16, v16, v17

    move-object/from16 v18, v2

    move/from16 v19, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v18, v18, v19

    move-object/from16 v20, v2

    move/from16 v21, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v20, v20, v21

    move-object/from16 v22, v2

    move/from16 v23, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v22, v22, v23

    move-object/from16 v24, v2

    move/from16 v25, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v24, v24, v25

    move-object/from16 v26, v2

    move/from16 v27, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v26, v26, v27

    move-object/from16 v28, v2

    move/from16 v29, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v28, v28, v29

    invoke-virtual/range {v5 .. v29}, Ljavafx/scene/transform/Affine;->append(DDDDDDDDDDDD)V

    .line 1688
    goto/16 :goto_0

    .line 1657
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public appendRotation(D)V
    .locals 7

    .prologue
    .line 3405
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Affine;
    move-wide v1, p1

    .local v1, "angle":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    invoke-static {v3}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->access$300(Ljavafx/scene/transform/Affine$AffineAtomicChange;)V

    .line 3406
    move-object v3, v0

    move-wide v4, v1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/transform/Affine;->rotate2D(D)V

    .line 3407
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    invoke-static {v3}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->access$400(Ljavafx/scene/transform/Affine$AffineAtomicChange;)V

    .line 3408
    return-void
.end method

.method public appendRotation(DDD)V
    .locals 13

    .prologue
    .line 3431
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-wide v2, p1

    .local v2, "angle":D
    move-wide/from16 v4, p3

    .local v4, "pivotX":D
    move-wide/from16 v6, p5

    .local v6, "pivotY":D
    move-object v8, v1

    iget-object v8, v8, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    invoke-static {v8}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->access$300(Ljavafx/scene/transform/Affine$AffineAtomicChange;)V

    .line 3432
    move-wide v8, v4

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-nez v8, :cond_0

    move-wide v8, v6

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-eqz v8, :cond_1

    .line 3433
    :cond_0
    move-object v8, v1

    move-wide v9, v4

    move-wide v11, v6

    invoke-direct {v8, v9, v10, v11, v12}, Ljavafx/scene/transform/Affine;->translate2D(DD)V

    .line 3434
    move-object v8, v1

    move-wide v9, v2

    invoke-direct {v8, v9, v10}, Ljavafx/scene/transform/Affine;->rotate2D(D)V

    .line 3435
    move-object v8, v1

    move-wide v9, v4

    neg-double v9, v9

    move-wide v11, v6

    neg-double v11, v11

    invoke-direct {v8, v9, v10, v11, v12}, Ljavafx/scene/transform/Affine;->translate2D(DD)V

    .line 3439
    :goto_0
    move-object v8, v1

    iget-object v8, v8, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    invoke-static {v8}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->access$400(Ljavafx/scene/transform/Affine$AffineAtomicChange;)V

    .line 3440
    return-void

    .line 3437
    :cond_1
    move-object v8, v1

    move-wide v9, v2

    invoke-direct {v8, v9, v10}, Ljavafx/scene/transform/Affine;->rotate2D(D)V

    goto :goto_0
.end method

.method public appendRotation(DDDDDDD)V
    .locals 27

    .prologue
    .line 3493
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/transform/Affine;
    move-wide/from16 v4, p1

    .local v4, "angle":D
    move-wide/from16 v6, p3

    .local v6, "pivotX":D
    move-wide/from16 v8, p5

    .local v8, "pivotY":D
    move-wide/from16 v10, p7

    .local v10, "pivotZ":D
    move-wide/from16 v12, p9

    .local v12, "axisX":D
    move-wide/from16 v14, p11

    .local v14, "axisY":D
    move-wide/from16 v16, p13

    .local v16, "axisZ":D
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->access$300(Ljavafx/scene/transform/Affine$AffineAtomicChange;)V

    .line 3494
    move-wide/from16 v18, v6

    const-wide/16 v20, 0x0

    cmpl-double v18, v18, v20

    if-nez v18, :cond_0

    move-wide/from16 v18, v8

    const-wide/16 v20, 0x0

    cmpl-double v18, v18, v20

    if-nez v18, :cond_0

    move-wide/from16 v18, v10

    const-wide/16 v20, 0x0

    cmpl-double v18, v18, v20

    if-eqz v18, :cond_1

    .line 3495
    :cond_0
    move-object/from16 v18, v3

    move-wide/from16 v19, v6

    move-wide/from16 v21, v8

    move-wide/from16 v23, v10

    invoke-direct/range {v18 .. v24}, Ljavafx/scene/transform/Affine;->translate3D(DDD)V

    .line 3496
    move-object/from16 v18, v3

    move-wide/from16 v19, v4

    move-wide/from16 v21, v12

    move-wide/from16 v23, v14

    move-wide/from16 v25, v16

    invoke-direct/range {v18 .. v26}, Ljavafx/scene/transform/Affine;->rotate3D(DDDD)V

    .line 3497
    move-object/from16 v18, v3

    move-wide/from16 v19, v6

    move-wide/from16 v0, v19

    neg-double v0, v0

    move-wide/from16 v19, v0

    move-wide/from16 v21, v8

    move-wide/from16 v0, v21

    neg-double v0, v0

    move-wide/from16 v21, v0

    move-wide/from16 v23, v10

    move-wide/from16 v0, v23

    neg-double v0, v0

    move-wide/from16 v23, v0

    invoke-direct/range {v18 .. v24}, Ljavafx/scene/transform/Affine;->translate3D(DDD)V

    .line 3501
    :goto_0
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->access$400(Ljavafx/scene/transform/Affine$AffineAtomicChange;)V

    .line 3502
    return-void

    .line 3499
    :cond_1
    move-object/from16 v18, v3

    move-wide/from16 v19, v4

    move-wide/from16 v21, v12

    move-wide/from16 v23, v14

    move-wide/from16 v25, v16

    invoke-direct/range {v18 .. v26}, Ljavafx/scene/transform/Affine;->rotate3D(DDDD)V

    goto :goto_0
.end method

.method public appendRotation(DDDDLjavafx/geometry/Point3D;)V
    .locals 27

    .prologue
    .line 3530
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-wide/from16 v2, p1

    .local v2, "angle":D
    move-wide/from16 v4, p3

    .local v4, "pivotX":D
    move-wide/from16 v6, p5

    .local v6, "pivotY":D
    move-wide/from16 v8, p7

    .local v8, "pivotZ":D
    move-object/from16 v10, p9

    .local v10, "axis":Ljavafx/geometry/Point3D;
    move-object v11, v1

    move-wide v12, v2

    move-wide v14, v4

    move-wide/from16 v16, v6

    move-wide/from16 v18, v8

    move-object/from16 v20, v10

    .line 3531
    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v20

    move-object/from16 v22, v10

    invoke-virtual/range {v22 .. v22}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v22

    move-object/from16 v24, v10

    invoke-virtual/range {v24 .. v24}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v24

    .line 3530
    invoke-virtual/range {v11 .. v25}, Ljavafx/scene/transform/Affine;->appendRotation(DDDDDDD)V

    .line 3532
    return-void
.end method

.method public appendRotation(DLjavafx/geometry/Point2D;)V
    .locals 13

    .prologue
    .line 3463
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-wide v2, p1

    .local v2, "angle":D
    move-object/from16 v4, p3

    .local v4, "pivot":Ljavafx/geometry/Point2D;
    move-object v5, v1

    move-wide v6, v2

    move-object v8, v4

    invoke-virtual {v8}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v8

    move-object v10, v4

    invoke-virtual {v10}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v10

    invoke-virtual/range {v5 .. v11}, Ljavafx/scene/transform/Affine;->appendRotation(DDD)V

    .line 3464
    return-void
.end method

.method public appendRotation(DLjavafx/geometry/Point3D;Ljavafx/geometry/Point3D;)V
    .locals 21

    .prologue
    .line 3557
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/transform/Affine;
    move-wide/from16 v1, p1

    .local v1, "angle":D
    move-object/from16 v3, p3

    .local v3, "pivot":Ljavafx/geometry/Point3D;
    move-object/from16 v4, p4

    .local v4, "axis":Ljavafx/geometry/Point3D;
    move-object v5, v0

    move-wide v6, v1

    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v8

    move-object v10, v3

    invoke-virtual {v10}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v10

    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v12

    move-object v14, v4

    .line 3558
    invoke-virtual {v14}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v14

    move-object/from16 v16, v4

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v16

    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v18

    .line 3557
    invoke-virtual/range {v5 .. v19}, Ljavafx/scene/transform/Affine;->appendRotation(DDDDDDD)V

    .line 3559
    return-void
.end method

.method public appendScale(DD)V
    .locals 11

    .prologue
    .line 2343
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Affine;
    move-wide v1, p1

    .local v1, "sx":D
    move-wide v3, p3

    .local v3, "sy":D
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    invoke-static {v5}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->access$300(Ljavafx/scene/transform/Affine$AffineAtomicChange;)V

    .line 2344
    move-object v5, v0

    move-wide v6, v1

    move-wide v8, v3

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/scene/transform/Affine;->scale2D(DD)V

    .line 2345
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    invoke-static {v5}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->access$400(Ljavafx/scene/transform/Affine$AffineAtomicChange;)V

    .line 2346
    return-void
.end method

.method public appendScale(DDD)V
    .locals 15

    .prologue
    .line 2426
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Affine;
    move-wide/from16 v1, p1

    .local v1, "sx":D
    move-wide/from16 v3, p3

    .local v3, "sy":D
    move-wide/from16 v5, p5

    .local v5, "sz":D
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    invoke-static {v7}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->access$300(Ljavafx/scene/transform/Affine$AffineAtomicChange;)V

    .line 2427
    move-object v7, v0

    move-wide v8, v1

    move-wide v10, v3

    move-wide v12, v5

    invoke-direct/range {v7 .. v13}, Ljavafx/scene/transform/Affine;->scale3D(DDD)V

    .line 2428
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    invoke-static {v7}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->access$400(Ljavafx/scene/transform/Affine$AffineAtomicChange;)V

    .line 2429
    return-void
.end method

.method public appendScale(DDDD)V
    .locals 15

    .prologue
    .line 2370
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-wide/from16 v2, p1

    .local v2, "sx":D
    move-wide/from16 v4, p3

    .local v4, "sy":D
    move-wide/from16 v6, p5

    .local v6, "pivotX":D
    move-wide/from16 v8, p7

    .local v8, "pivotY":D
    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    invoke-static {v10}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->access$300(Ljavafx/scene/transform/Affine$AffineAtomicChange;)V

    .line 2371
    move-wide v10, v6

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-nez v10, :cond_0

    move-wide v10, v8

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-eqz v10, :cond_1

    .line 2372
    :cond_0
    move-object v10, v1

    move-wide v11, v6

    move-wide v13, v8

    invoke-direct {v10, v11, v12, v13, v14}, Ljavafx/scene/transform/Affine;->translate2D(DD)V

    .line 2373
    move-object v10, v1

    move-wide v11, v2

    move-wide v13, v4

    invoke-direct {v10, v11, v12, v13, v14}, Ljavafx/scene/transform/Affine;->scale2D(DD)V

    .line 2374
    move-object v10, v1

    move-wide v11, v6

    neg-double v11, v11

    move-wide v13, v8

    neg-double v13, v13

    invoke-direct {v10, v11, v12, v13, v14}, Ljavafx/scene/transform/Affine;->translate2D(DD)V

    .line 2378
    :goto_0
    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    invoke-static {v10}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->access$400(Ljavafx/scene/transform/Affine$AffineAtomicChange;)V

    .line 2379
    return-void

    .line 2376
    :cond_1
    move-object v10, v1

    move-wide v11, v2

    move-wide v13, v4

    invoke-direct {v10, v11, v12, v13, v14}, Ljavafx/scene/transform/Affine;->scale2D(DD)V

    goto :goto_0
.end method

.method public appendScale(DDDDDD)V
    .locals 23

    .prologue
    .line 2456
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/transform/Affine;
    move-wide/from16 v4, p1

    .local v4, "sx":D
    move-wide/from16 v6, p3

    .local v6, "sy":D
    move-wide/from16 v8, p5

    .local v8, "sz":D
    move-wide/from16 v10, p7

    .local v10, "pivotX":D
    move-wide/from16 v12, p9

    .local v12, "pivotY":D
    move-wide/from16 v14, p11

    .local v14, "pivotZ":D
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->access$300(Ljavafx/scene/transform/Affine$AffineAtomicChange;)V

    .line 2457
    move-wide/from16 v16, v10

    const-wide/16 v18, 0x0

    cmpl-double v16, v16, v18

    if-nez v16, :cond_0

    move-wide/from16 v16, v12

    const-wide/16 v18, 0x0

    cmpl-double v16, v16, v18

    if-nez v16, :cond_0

    move-wide/from16 v16, v14

    const-wide/16 v18, 0x0

    cmpl-double v16, v16, v18

    if-eqz v16, :cond_1

    .line 2458
    :cond_0
    move-object/from16 v16, v3

    move-wide/from16 v17, v10

    move-wide/from16 v19, v12

    move-wide/from16 v21, v14

    invoke-direct/range {v16 .. v22}, Ljavafx/scene/transform/Affine;->translate3D(DDD)V

    .line 2459
    move-object/from16 v16, v3

    move-wide/from16 v17, v4

    move-wide/from16 v19, v6

    move-wide/from16 v21, v8

    invoke-direct/range {v16 .. v22}, Ljavafx/scene/transform/Affine;->scale3D(DDD)V

    .line 2460
    move-object/from16 v16, v3

    move-wide/from16 v17, v10

    move-wide/from16 v0, v17

    neg-double v0, v0

    move-wide/from16 v17, v0

    move-wide/from16 v19, v12

    move-wide/from16 v0, v19

    neg-double v0, v0

    move-wide/from16 v19, v0

    move-wide/from16 v21, v14

    move-wide/from16 v0, v21

    neg-double v0, v0

    move-wide/from16 v21, v0

    invoke-direct/range {v16 .. v22}, Ljavafx/scene/transform/Affine;->translate3D(DDD)V

    .line 2464
    :goto_0
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->access$400(Ljavafx/scene/transform/Affine$AffineAtomicChange;)V

    .line 2465
    return-void

    .line 2462
    :cond_1
    move-object/from16 v16, v3

    move-wide/from16 v17, v4

    move-wide/from16 v19, v6

    move-wide/from16 v21, v8

    invoke-direct/range {v16 .. v22}, Ljavafx/scene/transform/Affine;->scale3D(DDD)V

    goto :goto_0
.end method

.method public appendScale(DDDLjavafx/geometry/Point3D;)V
    .locals 23

    .prologue
    .line 2490
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-wide/from16 v2, p1

    .local v2, "sx":D
    move-wide/from16 v4, p3

    .local v4, "sy":D
    move-wide/from16 v6, p5

    .local v6, "sz":D
    move-object/from16 v8, p7

    .local v8, "pivot":Ljavafx/geometry/Point3D;
    move-object v9, v1

    move-wide v10, v2

    move-wide v12, v4

    move-wide v14, v6

    move-object/from16 v16, v8

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v16

    move-object/from16 v18, v8

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v18

    move-object/from16 v20, v8

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v20

    invoke-virtual/range {v9 .. v21}, Ljavafx/scene/transform/Affine;->appendScale(DDDDDD)V

    .line 2491
    return-void
.end method

.method public appendScale(DDLjavafx/geometry/Point2D;)V
    .locals 17

    .prologue
    .line 2403
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-wide/from16 v2, p1

    .local v2, "sx":D
    move-wide/from16 v4, p3

    .local v4, "sy":D
    move-object/from16 v6, p5

    .local v6, "pivot":Ljavafx/geometry/Point2D;
    move-object v7, v1

    move-wide v8, v2

    move-wide v10, v4

    move-object v12, v6

    invoke-virtual {v12}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v12

    move-object v14, v6

    invoke-virtual {v14}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v14

    invoke-virtual/range {v7 .. v15}, Ljavafx/scene/transform/Affine;->appendScale(DDDD)V

    .line 2404
    return-void
.end method

.method public appendShear(DD)V
    .locals 11

    .prologue
    .line 2989
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Affine;
    move-wide v1, p1

    .local v1, "shx":D
    move-wide v3, p3

    .local v3, "shy":D
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    invoke-static {v5}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->access$300(Ljavafx/scene/transform/Affine$AffineAtomicChange;)V

    .line 2990
    move-object v5, v0

    move-wide v6, v1

    move-wide v8, v3

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/scene/transform/Affine;->shear2D(DD)V

    .line 2991
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    invoke-static {v5}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->access$400(Ljavafx/scene/transform/Affine$AffineAtomicChange;)V

    .line 2992
    return-void
.end method

.method public appendShear(DDDD)V
    .locals 15

    .prologue
    .line 3016
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-wide/from16 v2, p1

    .local v2, "shx":D
    move-wide/from16 v4, p3

    .local v4, "shy":D
    move-wide/from16 v6, p5

    .local v6, "pivotX":D
    move-wide/from16 v8, p7

    .local v8, "pivotY":D
    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    invoke-static {v10}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->access$300(Ljavafx/scene/transform/Affine$AffineAtomicChange;)V

    .line 3017
    move-wide v10, v6

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-nez v10, :cond_0

    move-wide v10, v8

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-eqz v10, :cond_1

    .line 3018
    :cond_0
    move-object v10, v1

    move-wide v11, v6

    move-wide v13, v8

    invoke-direct {v10, v11, v12, v13, v14}, Ljavafx/scene/transform/Affine;->translate2D(DD)V

    .line 3019
    move-object v10, v1

    move-wide v11, v2

    move-wide v13, v4

    invoke-direct {v10, v11, v12, v13, v14}, Ljavafx/scene/transform/Affine;->shear2D(DD)V

    .line 3020
    move-object v10, v1

    move-wide v11, v6

    neg-double v11, v11

    move-wide v13, v8

    neg-double v13, v13

    invoke-direct {v10, v11, v12, v13, v14}, Ljavafx/scene/transform/Affine;->translate2D(DD)V

    .line 3024
    :goto_0
    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    invoke-static {v10}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->access$400(Ljavafx/scene/transform/Affine$AffineAtomicChange;)V

    .line 3025
    return-void

    .line 3022
    :cond_1
    move-object v10, v1

    move-wide v11, v2

    move-wide v13, v4

    invoke-direct {v10, v11, v12, v13, v14}, Ljavafx/scene/transform/Affine;->shear2D(DD)V

    goto :goto_0
.end method

.method public appendShear(DDLjavafx/geometry/Point2D;)V
    .locals 17

    .prologue
    .line 3049
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-wide/from16 v2, p1

    .local v2, "shx":D
    move-wide/from16 v4, p3

    .local v4, "shy":D
    move-object/from16 v6, p5

    .local v6, "pivot":Ljavafx/geometry/Point2D;
    move-object v7, v1

    move-wide v8, v2

    move-wide v10, v4

    move-object v12, v6

    invoke-virtual {v12}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v12

    move-object v14, v6

    invoke-virtual {v14}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v14

    invoke-virtual/range {v7 .. v15}, Ljavafx/scene/transform/Affine;->appendShear(DDDD)V

    .line 3050
    return-void
.end method

.method appendTo(Ljavafx/scene/transform/Affine;)V
    .locals 28

    .prologue
    .line 1694
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-object/from16 v2, p1

    .local v2, "a":Ljavafx/scene/transform/Affine;
    move-object v3, v1

    iget v3, v3, Ljavafx/scene/transform/Affine;->state3d:I

    packed-switch v3, :pswitch_data_0

    .line 1696
    invoke-static {}, Ljavafx/scene/transform/Affine;->stateError()V

    .line 1699
    :pswitch_0
    move-object v3, v1

    iget v3, v3, Ljavafx/scene/transform/Affine;->state2d:I

    packed-switch v3, :pswitch_data_1

    .line 1713
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v6

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v8

    move-object v10, v1

    .line 1714
    invoke-virtual {v10}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v10

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v12

    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v14

    .line 1713
    invoke-virtual/range {v3 .. v15}, Ljavafx/scene/transform/Affine;->append(DDDDDD)V

    .line 1715
    .line 1731
    :goto_0
    return-void

    .line 1701
    :pswitch_1
    goto :goto_0

    .line 1703
    :pswitch_2
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Ljavafx/scene/transform/Affine;->appendTranslation(DD)V

    .line 1704
    goto :goto_0

    .line 1706
    :pswitch_3
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Ljavafx/scene/transform/Affine;->appendScale(DD)V

    .line 1707
    goto :goto_0

    .line 1709
    :pswitch_4
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Ljavafx/scene/transform/Affine;->appendTranslation(DD)V

    .line 1710
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Ljavafx/scene/transform/Affine;->appendScale(DD)V

    .line 1711
    goto :goto_0

    .line 1718
    :pswitch_5
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v6

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getTz()D

    move-result-wide v8

    invoke-virtual/range {v3 .. v9}, Ljavafx/scene/transform/Affine;->appendTranslation(DDD)V

    .line 1719
    goto :goto_0

    .line 1721
    :pswitch_6
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v6

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMzz()D

    move-result-wide v8

    invoke-virtual/range {v3 .. v9}, Ljavafx/scene/transform/Affine;->appendScale(DDD)V

    .line 1722
    goto :goto_0

    .line 1724
    :pswitch_7
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v6

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getTz()D

    move-result-wide v8

    invoke-virtual/range {v3 .. v9}, Ljavafx/scene/transform/Affine;->appendTranslation(DDD)V

    .line 1725
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v6

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMzz()D

    move-result-wide v8

    invoke-virtual/range {v3 .. v9}, Ljavafx/scene/transform/Affine;->appendScale(DDD)V

    .line 1726
    goto/16 :goto_0

    .line 1728
    :pswitch_8
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v6

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMxz()D

    move-result-wide v8

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v10

    move-object v12, v1

    .line 1729
    invoke-virtual {v12}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v12

    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v14

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/transform/Affine;->getMyz()D

    move-result-wide v16

    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v18

    move-object/from16 v20, v1

    .line 1730
    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/transform/Affine;->getMzx()D

    move-result-wide v20

    move-object/from16 v22, v1

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/transform/Affine;->getMzy()D

    move-result-wide v22

    move-object/from16 v24, v1

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Affine;->getMzz()D

    move-result-wide v24

    move-object/from16 v26, v1

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/transform/Affine;->getTz()D

    move-result-wide v26

    .line 1728
    invoke-virtual/range {v3 .. v27}, Ljavafx/scene/transform/Affine;->append(DDDDDDDDDDDD)V

    .line 1731
    goto/16 :goto_0

    .line 1694
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 1699
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public appendTranslation(DD)V
    .locals 11

    .prologue
    .line 2011
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Affine;
    move-wide v1, p1

    .local v1, "tx":D
    move-wide v3, p3

    .local v3, "ty":D
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    invoke-static {v5}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->access$300(Ljavafx/scene/transform/Affine$AffineAtomicChange;)V

    .line 2012
    move-object v5, v0

    move-wide v6, v1

    move-wide v8, v3

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/scene/transform/Affine;->translate2D(DD)V

    .line 2013
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    invoke-static {v5}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->access$400(Ljavafx/scene/transform/Affine$AffineAtomicChange;)V

    .line 2014
    return-void
.end method

.method public appendTranslation(DDD)V
    .locals 15

    .prologue
    .line 2036
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Affine;
    move-wide/from16 v1, p1

    .local v1, "tx":D
    move-wide/from16 v3, p3

    .local v3, "ty":D
    move-wide/from16 v5, p5

    .local v5, "tz":D
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    invoke-static {v7}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->access$300(Ljavafx/scene/transform/Affine$AffineAtomicChange;)V

    .line 2037
    move-object v7, v0

    move-wide v8, v1

    move-wide v10, v3

    move-wide v12, v5

    invoke-direct/range {v7 .. v13}, Ljavafx/scene/transform/Affine;->translate3D(DDD)V

    .line 2038
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    invoke-static {v7}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->access$400(Ljavafx/scene/transform/Affine$AffineAtomicChange;)V

    .line 2039
    return-void
.end method

.method atomicChangeRuns()Z
    .locals 2

    .prologue
    .line 5830
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Affine;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    invoke-static {v1}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->access$100(Ljavafx/scene/transform/Affine$AffineAtomicChange;)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Affine;
    return v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Affine;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/transform/Affine;->clone()Ljavafx/scene/transform/Affine;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Affine;
    return-object v0
.end method

.method public clone()Ljavafx/scene/transform/Affine;
    .locals 5

    .prologue
    .line 1078
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Affine;
    new-instance v1, Ljavafx/scene/transform/Affine;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/scene/transform/Affine;-><init>(Ljavafx/scene/transform/Transform;)V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Affine;
    return-object v0
.end method

.method public bridge synthetic clone()Ljavafx/scene/transform/Transform;
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Affine;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/transform/Affine;->clone()Ljavafx/scene/transform/Affine;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Affine;
    return-object v0
.end method

.method computeIs2D()Z
    .locals 2

    .prologue
    .line 983
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Affine;
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/transform/Affine;->state3d:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Affine;
    return v0

    .restart local v0    # "this":Ljavafx/scene/transform/Affine;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method computeIsIdentity()Z
    .locals 2

    .prologue
    .line 988
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Affine;
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/transform/Affine;->state3d:I

    if-nez v1, :cond_0

    move-object v1, v0

    iget v1, v1, Ljavafx/scene/transform/Affine;->state2d:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Affine;
    return v0

    .restart local v0    # "this":Ljavafx/scene/transform/Affine;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public createConcatenation(Ljavafx/scene/transform/Transform;)Ljavafx/scene/transform/Transform;
    .locals 5

    .prologue
    .line 1064
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Affine;
    move-object v1, p1

    .local v1, "transform":Ljavafx/scene/transform/Transform;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/transform/Affine;->clone()Ljavafx/scene/transform/Affine;

    move-result-object v3

    move-object v2, v3

    .line 1065
    .local v2, "a":Ljavafx/scene/transform/Affine;
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/transform/Affine;->append(Ljavafx/scene/transform/Transform;)V

    .line 1066
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/transform/Affine;
    return-object v0
.end method

.method public createInverse()Ljavafx/scene/transform/Affine;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/scene/transform/NonInvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 1071
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Affine;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/transform/Affine;->clone()Ljavafx/scene/transform/Affine;

    move-result-object v2

    move-object v1, v2

    .line 1072
    .local v1, "t":Ljavafx/scene/transform/Affine;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Affine;->invert()V

    .line 1073
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/transform/Affine;
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
    .line 70
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Affine;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/transform/Affine;->createInverse()Ljavafx/scene/transform/Affine;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Affine;
    return-object v0
.end method

.method public deltaTransform(DD)Ljavafx/geometry/Point2D;
    .locals 17

    .prologue
    .line 5006
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Affine;->ensureCanTransform2DPoint()V

    .line 5008
    move-object v6, v1

    iget v6, v6, Ljavafx/scene/transform/Affine;->state2d:I

    packed-switch v6, :pswitch_data_0

    .line 5010
    invoke-static {}, Ljavafx/scene/transform/Affine;->stateError()V

    .line 5014
    :pswitch_0
    new-instance v6, Ljavafx/geometry/Point2D;

    move-object/from16 v16, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v16

    move-object v8, v1

    .line 5015
    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v8

    move-wide v10, v2

    mul-double/2addr v8, v10

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v10

    move-wide v12, v4

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    move-object v10, v1

    .line 5016
    invoke-virtual {v10}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v10

    move-wide v12, v2

    mul-double/2addr v10, v12

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v12

    move-wide v14, v4

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v1, v6

    .line 5025
    .end local v1    # "this":Ljavafx/scene/transform/Affine;
    :goto_0
    return-object v1

    .line 5019
    .restart local v1    # "this":Ljavafx/scene/transform/Affine;
    :pswitch_1
    new-instance v6, Ljavafx/geometry/Point2D;

    move-object/from16 v16, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v16

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v8

    move-wide v10, v4

    mul-double/2addr v8, v10

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v10

    move-wide v12, v2

    mul-double/2addr v10, v12

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v1, v6

    goto :goto_0

    .line 5022
    :pswitch_2
    new-instance v6, Ljavafx/geometry/Point2D;

    move-object/from16 v16, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v16

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v8

    move-wide v10, v2

    mul-double/2addr v8, v10

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v10

    move-wide v12, v4

    mul-double/2addr v10, v12

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v1, v6

    goto :goto_0

    .line 5025
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

    .line 5008
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
    .locals 21

    .prologue
    .line 5031
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-wide/from16 v6, p5

    .local v6, "z":D
    move-object v8, v1

    iget v8, v8, Ljavafx/scene/transform/Affine;->state3d:I

    packed-switch v8, :pswitch_data_0

    .line 5033
    invoke-static {}, Ljavafx/scene/transform/Affine;->stateError()V

    .line 5036
    :pswitch_0
    move-object v8, v1

    iget v8, v8, Ljavafx/scene/transform/Affine;->state2d:I

    packed-switch v8, :pswitch_data_1

    .line 5038
    invoke-static {}, Ljavafx/scene/transform/Affine;->stateError()V

    .line 5042
    :pswitch_1
    new-instance v8, Ljavafx/geometry/Point3D;

    move-object/from16 v20, v8

    move-object/from16 v8, v20

    move-object/from16 v9, v20

    move-object v10, v1

    .line 5043
    invoke-virtual {v10}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v10

    move-wide v12, v2

    mul-double/2addr v10, v12

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v12

    move-wide v14, v4

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    move-object v12, v1

    .line 5044
    invoke-virtual {v12}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v12

    move-wide v14, v2

    mul-double/2addr v12, v14

    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v14

    move-wide/from16 v16, v4

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    move-wide v14, v6

    invoke-direct/range {v9 .. v15}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v1, v8

    .line 5064
    .end local v1    # "this":Ljavafx/scene/transform/Affine;
    :goto_0
    return-object v1

    .line 5047
    .restart local v1    # "this":Ljavafx/scene/transform/Affine;
    :pswitch_2
    new-instance v8, Ljavafx/geometry/Point3D;

    move-object/from16 v20, v8

    move-object/from16 v8, v20

    move-object/from16 v9, v20

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v10

    move-wide v12, v4

    mul-double/2addr v10, v12

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v12

    move-wide v14, v2

    mul-double/2addr v12, v14

    move-wide v14, v6

    invoke-direct/range {v9 .. v15}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v1, v8

    goto :goto_0

    .line 5050
    :pswitch_3
    new-instance v8, Ljavafx/geometry/Point3D;

    move-object/from16 v20, v8

    move-object/from16 v8, v20

    move-object/from16 v9, v20

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v10

    move-wide v12, v2

    mul-double/2addr v10, v12

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v12

    move-wide v14, v4

    mul-double/2addr v12, v14

    move-wide v14, v6

    invoke-direct/range {v9 .. v15}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v1, v8

    goto :goto_0

    .line 5053
    :pswitch_4
    new-instance v8, Ljavafx/geometry/Point3D;

    move-object/from16 v20, v8

    move-object/from16 v8, v20

    move-object/from16 v9, v20

    move-wide v10, v2

    move-wide v12, v4

    move-wide v14, v6

    invoke-direct/range {v9 .. v15}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v1, v8

    goto :goto_0

    .line 5056
    :pswitch_5
    new-instance v8, Ljavafx/geometry/Point3D;

    move-object/from16 v20, v8

    move-object/from16 v8, v20

    move-object/from16 v9, v20

    move-wide v10, v2

    move-wide v12, v4

    move-wide v14, v6

    invoke-direct/range {v9 .. v15}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v1, v8

    goto :goto_0

    .line 5059
    :pswitch_6
    new-instance v8, Ljavafx/geometry/Point3D;

    move-object/from16 v20, v8

    move-object/from16 v8, v20

    move-object/from16 v9, v20

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v10

    move-wide v12, v2

    mul-double/2addr v10, v12

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v12

    move-wide v14, v4

    mul-double/2addr v12, v14

    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/transform/Affine;->getMzz()D

    move-result-wide v14

    move-wide/from16 v16, v6

    mul-double v14, v14, v16

    invoke-direct/range {v9 .. v15}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v1, v8

    goto :goto_0

    .line 5061
    :pswitch_7
    new-instance v8, Ljavafx/geometry/Point3D;

    move-object/from16 v20, v8

    move-object/from16 v8, v20

    move-object/from16 v9, v20

    move-object v10, v1

    .line 5062
    invoke-virtual {v10}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v10

    move-wide v12, v2

    mul-double/2addr v10, v12

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v12

    move-wide v14, v4

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/transform/Affine;->getMxz()D

    move-result-wide v12

    move-wide v14, v6

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    move-object v12, v1

    .line 5063
    invoke-virtual {v12}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v12

    move-wide v14, v2

    mul-double/2addr v12, v14

    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v14

    move-wide/from16 v16, v4

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/transform/Affine;->getMyz()D

    move-result-wide v14

    move-wide/from16 v16, v6

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    move-object v14, v1

    .line 5064
    invoke-virtual {v14}, Ljavafx/scene/transform/Affine;->getMzx()D

    move-result-wide v14

    move-wide/from16 v16, v2

    mul-double v14, v14, v16

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/transform/Affine;->getMzy()D

    move-result-wide v16

    move-wide/from16 v18, v4

    mul-double v16, v16, v18

    add-double v14, v14, v16

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/transform/Affine;->getMzz()D

    move-result-wide v16

    move-wide/from16 v18, v6

    mul-double v16, v16, v18

    add-double v14, v14, v16

    invoke-direct/range {v9 .. v15}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v1, v8

    goto/16 :goto_0

    .line 5031
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 5036
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
    .locals 4

    .prologue
    .line 993
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-object v2, v1

    iget v2, v2, Ljavafx/scene/transform/Affine;->state3d:I

    if-nez v2, :cond_0

    .line 994
    move-object v2, v1

    invoke-direct {v2}, Ljavafx/scene/transform/Affine;->getDeterminant2D()D

    move-result-wide v2

    move-wide v1, v2

    .line 996
    .end local v1    # "this":Ljavafx/scene/transform/Affine;
    :goto_0
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/transform/Affine;
    :cond_0
    move-object v2, v1

    invoke-direct {v2}, Ljavafx/scene/transform/Affine;->getDeterminant3D()D

    move-result-wide v2

    move-wide v1, v2

    goto :goto_0
.end method

.method public final getMxx()D
    .locals 4

    .prologue
    .line 362
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Affine;->mxx:Ljavafx/scene/transform/Affine$AffineElementProperty;

    if-nez v2, :cond_0

    move-object v2, v1

    iget-wide v2, v2, Ljavafx/scene/transform/Affine;->xx:D

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/transform/Affine;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/transform/Affine;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Affine;->mxx:Ljavafx/scene/transform/Affine$AffineElementProperty;

    invoke-virtual {v2}, Ljavafx/scene/transform/Affine$AffineElementProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getMxy()D
    .locals 4

    .prologue
    .line 401
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Affine;->mxy:Ljavafx/scene/transform/Affine$AffineElementProperty;

    if-nez v2, :cond_0

    move-object v2, v1

    iget-wide v2, v2, Ljavafx/scene/transform/Affine;->xy:D

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/transform/Affine;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/transform/Affine;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Affine;->mxy:Ljavafx/scene/transform/Affine$AffineElementProperty;

    invoke-virtual {v2}, Ljavafx/scene/transform/Affine$AffineElementProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getMxz()D
    .locals 4

    .prologue
    .line 440
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Affine;->mxz:Ljavafx/scene/transform/Affine$AffineElementProperty;

    if-nez v2, :cond_0

    move-object v2, v1

    iget-wide v2, v2, Ljavafx/scene/transform/Affine;->xz:D

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/transform/Affine;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/transform/Affine;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Affine;->mxz:Ljavafx/scene/transform/Affine$AffineElementProperty;

    invoke-virtual {v2}, Ljavafx/scene/transform/Affine$AffineElementProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getMyx()D
    .locals 4

    .prologue
    .line 518
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Affine;->myx:Ljavafx/scene/transform/Affine$AffineElementProperty;

    if-nez v2, :cond_0

    move-object v2, v1

    iget-wide v2, v2, Ljavafx/scene/transform/Affine;->yx:D

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/transform/Affine;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/transform/Affine;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Affine;->myx:Ljavafx/scene/transform/Affine$AffineElementProperty;

    invoke-virtual {v2}, Ljavafx/scene/transform/Affine$AffineElementProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getMyy()D
    .locals 4

    .prologue
    .line 557
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Affine;->myy:Ljavafx/scene/transform/Affine$AffineElementProperty;

    if-nez v2, :cond_0

    move-object v2, v1

    iget-wide v2, v2, Ljavafx/scene/transform/Affine;->yy:D

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/transform/Affine;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/transform/Affine;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Affine;->myy:Ljavafx/scene/transform/Affine$AffineElementProperty;

    invoke-virtual {v2}, Ljavafx/scene/transform/Affine$AffineElementProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getMyz()D
    .locals 4

    .prologue
    .line 596
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Affine;->myz:Ljavafx/scene/transform/Affine$AffineElementProperty;

    if-nez v2, :cond_0

    move-object v2, v1

    iget-wide v2, v2, Ljavafx/scene/transform/Affine;->yz:D

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/transform/Affine;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/transform/Affine;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Affine;->myz:Ljavafx/scene/transform/Affine$AffineElementProperty;

    invoke-virtual {v2}, Ljavafx/scene/transform/Affine$AffineElementProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getMzx()D
    .locals 4

    .prologue
    .line 674
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Affine;->mzx:Ljavafx/scene/transform/Affine$AffineElementProperty;

    if-nez v2, :cond_0

    move-object v2, v1

    iget-wide v2, v2, Ljavafx/scene/transform/Affine;->zx:D

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/transform/Affine;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/transform/Affine;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Affine;->mzx:Ljavafx/scene/transform/Affine$AffineElementProperty;

    invoke-virtual {v2}, Ljavafx/scene/transform/Affine$AffineElementProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getMzy()D
    .locals 4

    .prologue
    .line 713
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Affine;->mzy:Ljavafx/scene/transform/Affine$AffineElementProperty;

    if-nez v2, :cond_0

    move-object v2, v1

    iget-wide v2, v2, Ljavafx/scene/transform/Affine;->zy:D

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/transform/Affine;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/transform/Affine;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Affine;->mzy:Ljavafx/scene/transform/Affine$AffineElementProperty;

    invoke-virtual {v2}, Ljavafx/scene/transform/Affine$AffineElementProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getMzz()D
    .locals 4

    .prologue
    .line 752
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Affine;->mzz:Ljavafx/scene/transform/Affine$AffineElementProperty;

    if-nez v2, :cond_0

    move-object v2, v1

    iget-wide v2, v2, Ljavafx/scene/transform/Affine;->zz:D

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/transform/Affine;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/transform/Affine;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Affine;->mzz:Ljavafx/scene/transform/Affine$AffineElementProperty;

    invoke-virtual {v2}, Ljavafx/scene/transform/Affine$AffineElementProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method getState2d()I
    .locals 2

    .prologue
    .line 5816
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Affine;
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/transform/Affine;->state2d:I

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Affine;
    return v0
.end method

.method getState3d()I
    .locals 2

    .prologue
    .line 5823
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Affine;
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/transform/Affine;->state3d:I

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Affine;
    return v0
.end method

.method public final getTx()D
    .locals 4

    .prologue
    .line 479
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Affine;->tx:Ljavafx/scene/transform/Affine$AffineElementProperty;

    if-nez v2, :cond_0

    move-object v2, v1

    iget-wide v2, v2, Ljavafx/scene/transform/Affine;->xt:D

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/transform/Affine;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/transform/Affine;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Affine;->tx:Ljavafx/scene/transform/Affine$AffineElementProperty;

    invoke-virtual {v2}, Ljavafx/scene/transform/Affine$AffineElementProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getTy()D
    .locals 4

    .prologue
    .line 635
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Affine;->ty:Ljavafx/scene/transform/Affine$AffineElementProperty;

    if-nez v2, :cond_0

    move-object v2, v1

    iget-wide v2, v2, Ljavafx/scene/transform/Affine;->yt:D

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/transform/Affine;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/transform/Affine;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Affine;->ty:Ljavafx/scene/transform/Affine$AffineElementProperty;

    invoke-virtual {v2}, Ljavafx/scene/transform/Affine$AffineElementProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getTz()D
    .locals 4

    .prologue
    .line 791
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Affine;->tz:Ljavafx/scene/transform/Affine$AffineElementProperty;

    if-nez v2, :cond_0

    move-object v2, v1

    iget-wide v2, v2, Ljavafx/scene/transform/Affine;->zt:D

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/transform/Affine;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/transform/Affine;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Affine;->tz:Ljavafx/scene/transform/Affine$AffineElementProperty;

    invoke-virtual {v2}, Ljavafx/scene/transform/Affine$AffineElementProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public impl_apply(Lcom/sun/javafx/geom/transform/Affine3D;)V
    .locals 28
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5712
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-object/from16 v2, p1

    .local v2, "trans":Lcom/sun/javafx/geom/transform/Affine3D;
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v6

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMxz()D

    move-result-wide v8

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v10

    move-object v12, v1

    .line 5713
    invoke-virtual {v12}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v12

    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v14

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/transform/Affine;->getMyz()D

    move-result-wide v16

    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v18

    move-object/from16 v20, v1

    .line 5714
    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/transform/Affine;->getMzx()D

    move-result-wide v20

    move-object/from16 v22, v1

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/transform/Affine;->getMzy()D

    move-result-wide v22

    move-object/from16 v24, v1

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Affine;->getMzz()D

    move-result-wide v24

    move-object/from16 v26, v1

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/transform/Affine;->getTz()D

    move-result-wide v26

    .line 5712
    invoke-virtual/range {v3 .. v27}, Lcom/sun/javafx/geom/transform/Affine3D;->concatenate(DDDDDDDDDDDD)V

    .line 5715
    return-void
.end method

.method public impl_derive(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 28
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5724
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-object/from16 v2, p1

    .local v2, "trans":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v3, v1

    iget v3, v3, Ljavafx/scene/transform/Affine;->state3d:I

    packed-switch v3, :pswitch_data_0

    .line 5726
    invoke-static {}, Ljavafx/scene/transform/Affine;->stateError()V

    .line 5729
    :pswitch_0
    move-object v3, v1

    iget v3, v3, Ljavafx/scene/transform/Affine;->state2d:I

    packed-switch v3, :pswitch_data_1

    .line 5739
    move-object v3, v2

    move-object v4, v1

    .line 5740
    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v6

    move-object v8, v1

    .line 5741
    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v8

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v10

    move-object v12, v1

    .line 5742
    invoke-virtual {v12}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v12

    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v14

    .line 5739
    invoke-virtual/range {v3 .. v15}, Lcom/sun/javafx/geom/transform/BaseTransform;->deriveWithConcatenation(DDDDDD)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v3

    move-object v1, v3

    .line 5751
    .end local v1    # "this":Ljavafx/scene/transform/Affine;
    :goto_0
    return-object v1

    .line 5731
    .restart local v1    # "this":Ljavafx/scene/transform/Affine;
    :pswitch_1
    move-object v3, v2

    move-object v1, v3

    goto :goto_0

    .line 5733
    :pswitch_2
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sun/javafx/geom/transform/BaseTransform;->deriveWithTranslation(DD)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v3

    move-object v1, v3

    goto :goto_0

    .line 5735
    :pswitch_3
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-virtual/range {v3 .. v9}, Lcom/sun/javafx/geom/transform/BaseTransform;->deriveWithScale(DDD)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v3

    move-object v1, v3

    goto :goto_0

    .line 5745
    :pswitch_4
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v6

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getTz()D

    move-result-wide v8

    invoke-virtual/range {v3 .. v9}, Lcom/sun/javafx/geom/transform/BaseTransform;->deriveWithTranslation(DDD)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v3

    move-object v1, v3

    goto :goto_0

    .line 5747
    :pswitch_5
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v6

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMzz()D

    move-result-wide v8

    invoke-virtual/range {v3 .. v9}, Lcom/sun/javafx/geom/transform/BaseTransform;->deriveWithScale(DDD)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v3

    move-object v1, v3

    goto :goto_0

    .line 5751
    :pswitch_6
    move-object v3, v2

    move-object v4, v1

    .line 5752
    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v6

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMxz()D

    move-result-wide v8

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v10

    move-object v12, v1

    .line 5753
    invoke-virtual {v12}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v12

    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v14

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/transform/Affine;->getMyz()D

    move-result-wide v16

    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v18

    move-object/from16 v20, v1

    .line 5754
    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/transform/Affine;->getMzx()D

    move-result-wide v20

    move-object/from16 v22, v1

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/transform/Affine;->getMzy()D

    move-result-wide v22

    move-object/from16 v24, v1

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Affine;->getMzz()D

    move-result-wide v24

    move-object/from16 v26, v1

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/transform/Affine;->getTz()D

    move-result-wide v26

    .line 5751
    invoke-virtual/range {v3 .. v27}, Lcom/sun/javafx/geom/transform/BaseTransform;->deriveWithConcatenation(DDDDDDDDDDDD)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v3

    move-object v1, v3

    goto/16 :goto_0

    .line 5724
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
    .end packed-switch

    .line 5729
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public inverseDeltaTransform(DD)Ljavafx/geometry/Point2D;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/scene/transform/NonInvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 5470
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/transform/Affine;->ensureCanTransform2DPoint()V

    .line 5472
    move-object v14, v1

    iget v14, v14, Ljavafx/scene/transform/Affine;->state2d:I

    packed-switch v14, :pswitch_data_0

    .line 5474
    move-object v14, v1

    move-wide v15, v2

    move-wide/from16 v17, v4

    invoke-super/range {v14 .. v18}, Ljavafx/scene/transform/Transform;->inverseDeltaTransform(DD)Ljavafx/geometry/Point2D;

    move-result-object v14

    move-object v1, v14

    .line 5493
    .end local v1    # "this":Ljavafx/scene/transform/Affine;
    :goto_0
    return-object v1

    .line 5477
    .restart local v1    # "this":Ljavafx/scene/transform/Affine;
    :pswitch_0
    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v14

    move-wide v6, v14

    .line 5478
    .local v6, "mxy_s":D
    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v14

    move-wide v8, v14

    .line 5479
    .local v8, "myx_s":D
    move-wide v14, v6

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-eqz v14, :cond_0

    move-wide v14, v8

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-nez v14, :cond_1

    .line 5480
    :cond_0
    new-instance v14, Ljavafx/scene/transform/NonInvertibleTransformException;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    const-string v16, "Determinant is 0"

    invoke-direct/range {v15 .. v16}, Ljavafx/scene/transform/NonInvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 5482
    :cond_1
    new-instance v14, Ljavafx/geometry/Point2D;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v18, v8

    div-double v16, v16, v18

    move-wide/from16 v18, v4

    mul-double v16, v16, v18

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v20, v6

    div-double v18, v18, v20

    move-wide/from16 v20, v2

    mul-double v18, v18, v20

    invoke-direct/range {v15 .. v19}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v1, v14

    goto :goto_0

    .line 5485
    .end local v6    # "mxy_s":D
    .end local v8    # "myx_s":D
    :pswitch_1
    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v14

    move-wide v10, v14

    .line 5486
    .local v10, "mxx_s":D
    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v14

    move-wide v12, v14

    .line 5487
    .local v12, "myy_s":D
    move-wide v14, v10

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-eqz v14, :cond_2

    move-wide v14, v12

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-nez v14, :cond_3

    .line 5488
    :cond_2
    new-instance v14, Ljavafx/scene/transform/NonInvertibleTransformException;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    const-string v16, "Determinant is 0"

    invoke-direct/range {v15 .. v16}, Ljavafx/scene/transform/NonInvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 5490
    :cond_3
    new-instance v14, Ljavafx/geometry/Point2D;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v18, v10

    div-double v16, v16, v18

    move-wide/from16 v18, v2

    mul-double v16, v16, v18

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v20, v12

    div-double v18, v18, v20

    move-wide/from16 v20, v4

    mul-double v18, v18, v20

    invoke-direct/range {v15 .. v19}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v1, v14

    goto/16 :goto_0

    .line 5493
    .end local v10    # "mxx_s":D
    .end local v12    # "myy_s":D
    :pswitch_2
    new-instance v14, Ljavafx/geometry/Point2D;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-wide/from16 v16, v2

    move-wide/from16 v18, v4

    invoke-direct/range {v15 .. v19}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v1, v14

    goto/16 :goto_0

    .line 5472
    nop

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
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/scene/transform/NonInvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 5500
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-wide/from16 v6, p5

    .local v6, "z":D
    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget v0, v0, Ljavafx/scene/transform/Affine;->state3d:I

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_0

    .line 5502
    invoke-static {}, Ljavafx/scene/transform/Affine;->stateError()V

    .line 5505
    :pswitch_0
    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget v0, v0, Ljavafx/scene/transform/Affine;->state2d:I

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_1

    .line 5507
    move-object/from16 v16, v1

    move-wide/from16 v17, v2

    move-wide/from16 v19, v4

    move-wide/from16 v21, v6

    invoke-super/range {v16 .. v22}, Ljavafx/scene/transform/Transform;->inverseDeltaTransform(DDD)Ljavafx/geometry/Point3D;

    move-result-object v16

    move-object/from16 v1, v16

    .line 5550
    .end local v1    # "this":Ljavafx/scene/transform/Affine;
    :goto_0
    return-object v1

    .line 5510
    .restart local v1    # "this":Ljavafx/scene/transform/Affine;
    :pswitch_1
    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v16

    move-wide/from16 v8, v16

    .line 5511
    .local v8, "mxy_s":D
    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v16

    move-wide/from16 v10, v16

    .line 5512
    .local v10, "myx_s":D
    move-wide/from16 v16, v8

    const-wide/16 v18, 0x0

    cmpl-double v16, v16, v18

    if-eqz v16, :cond_0

    move-wide/from16 v16, v10

    const-wide/16 v18, 0x0

    cmpl-double v16, v16, v18

    if-nez v16, :cond_1

    .line 5513
    :cond_0
    new-instance v16, Ljavafx/scene/transform/NonInvertibleTransformException;

    move-object/from16 v26, v16

    move-object/from16 v16, v26

    move-object/from16 v17, v26

    const-string v18, "Determinant is 0"

    invoke-direct/range {v17 .. v18}, Ljavafx/scene/transform/NonInvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 5516
    :cond_1
    new-instance v16, Ljavafx/geometry/Point3D;

    move-object/from16 v26, v16

    move-object/from16 v16, v26

    move-object/from16 v17, v26

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v20, v10

    div-double v18, v18, v20

    move-wide/from16 v20, v4

    mul-double v18, v18, v20

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v22, v8

    div-double v20, v20, v22

    move-wide/from16 v22, v2

    mul-double v20, v20, v22

    move-wide/from16 v22, v6

    invoke-direct/range {v17 .. v23}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object/from16 v1, v16

    goto :goto_0

    .line 5521
    .end local v8    # "mxy_s":D
    .end local v10    # "myx_s":D
    :pswitch_2
    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v16

    move-wide/from16 v12, v16

    .line 5522
    .local v12, "mxx_s":D
    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v16

    move-wide/from16 v14, v16

    .line 5523
    .local v14, "myy_s":D
    move-wide/from16 v16, v12

    const-wide/16 v18, 0x0

    cmpl-double v16, v16, v18

    if-eqz v16, :cond_2

    move-wide/from16 v16, v14

    const-wide/16 v18, 0x0

    cmpl-double v16, v16, v18

    if-nez v16, :cond_3

    .line 5524
    :cond_2
    new-instance v16, Ljavafx/scene/transform/NonInvertibleTransformException;

    move-object/from16 v26, v16

    move-object/from16 v16, v26

    move-object/from16 v17, v26

    const-string v18, "Determinant is 0"

    invoke-direct/range {v17 .. v18}, Ljavafx/scene/transform/NonInvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 5527
    :cond_3
    new-instance v16, Ljavafx/geometry/Point3D;

    move-object/from16 v26, v16

    move-object/from16 v16, v26

    move-object/from16 v17, v26

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v20, v12

    div-double v18, v18, v20

    move-wide/from16 v20, v2

    mul-double v18, v18, v20

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v22, v14

    div-double v20, v20, v22

    move-wide/from16 v22, v4

    mul-double v20, v20, v22

    move-wide/from16 v22, v6

    invoke-direct/range {v17 .. v23}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object/from16 v1, v16

    goto/16 :goto_0

    .line 5532
    .end local v12    # "mxx_s":D
    .end local v14    # "myy_s":D
    :pswitch_3
    new-instance v16, Ljavafx/geometry/Point3D;

    move-object/from16 v26, v16

    move-object/from16 v16, v26

    move-object/from16 v17, v26

    move-wide/from16 v18, v2

    move-wide/from16 v20, v4

    move-wide/from16 v22, v6

    invoke-direct/range {v17 .. v23}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object/from16 v1, v16

    goto/16 :goto_0

    .line 5536
    :pswitch_4
    new-instance v16, Ljavafx/geometry/Point3D;

    move-object/from16 v26, v16

    move-object/from16 v16, v26

    move-object/from16 v17, v26

    move-wide/from16 v18, v2

    move-wide/from16 v20, v4

    move-wide/from16 v22, v6

    invoke-direct/range {v17 .. v23}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object/from16 v1, v16

    goto/16 :goto_0

    .line 5539
    :pswitch_5
    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v16

    move-wide/from16 v8, v16

    .line 5540
    .local v8, "mxx_s":D
    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v16

    move-wide/from16 v10, v16

    .line 5541
    .local v10, "myy_s":D
    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/transform/Affine;->getMzz()D

    move-result-wide v16

    move-wide/from16 v12, v16

    .line 5542
    .local v12, "mzz_s":D
    move-wide/from16 v16, v8

    const-wide/16 v18, 0x0

    cmpl-double v16, v16, v18

    if-eqz v16, :cond_4

    move-wide/from16 v16, v10

    const-wide/16 v18, 0x0

    cmpl-double v16, v16, v18

    if-eqz v16, :cond_4

    move-wide/from16 v16, v12

    const-wide/16 v18, 0x0

    cmpl-double v16, v16, v18

    if-nez v16, :cond_5

    .line 5543
    :cond_4
    new-instance v16, Ljavafx/scene/transform/NonInvertibleTransformException;

    move-object/from16 v26, v16

    move-object/from16 v16, v26

    move-object/from16 v17, v26

    const-string v18, "Determinant is 0"

    invoke-direct/range {v17 .. v18}, Ljavafx/scene/transform/NonInvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 5545
    :cond_5
    new-instance v16, Ljavafx/geometry/Point3D;

    move-object/from16 v26, v16

    move-object/from16 v16, v26

    move-object/from16 v17, v26

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v20, v8

    div-double v18, v18, v20

    move-wide/from16 v20, v2

    mul-double v18, v18, v20

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v22, v10

    div-double v20, v20, v22

    move-wide/from16 v22, v4

    mul-double v20, v20, v22

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v24, v12

    div-double v22, v22, v24

    move-wide/from16 v24, v6

    mul-double v22, v22, v24

    invoke-direct/range {v17 .. v23}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object/from16 v1, v16

    goto/16 :goto_0

    .line 5550
    .end local v8    # "mxx_s":D
    .end local v10    # "myy_s":D
    .end local v12    # "mzz_s":D
    :pswitch_6
    move-object/from16 v16, v1

    move-wide/from16 v17, v2

    move-wide/from16 v19, v4

    move-wide/from16 v21, v6

    invoke-super/range {v16 .. v22}, Ljavafx/scene/transform/Transform;->inverseDeltaTransform(DDD)Ljavafx/geometry/Point3D;

    move-result-object v16

    move-object/from16 v1, v16

    goto/16 :goto_0

    .line 5500
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 5505
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
    .locals 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/scene/transform/NonInvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 5071
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-object/from16 v22, v1

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/transform/Affine;->ensureCanTransform2DPoint()V

    .line 5073
    move-object/from16 v22, v1

    move-object/from16 v0, v22

    iget v0, v0, Ljavafx/scene/transform/Affine;->state2d:I

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_0

    .line 5075
    move-object/from16 v22, v1

    move-wide/from16 v23, v2

    move-wide/from16 v25, v4

    invoke-super/range {v22 .. v26}, Ljavafx/scene/transform/Transform;->inverseTransform(DD)Ljavafx/geometry/Point2D;

    move-result-object v22

    move-object/from16 v1, v22

    .line 5111
    .end local v1    # "this":Ljavafx/scene/transform/Affine;
    :goto_0
    return-object v1

    .line 5077
    .restart local v1    # "this":Ljavafx/scene/transform/Affine;
    :pswitch_0
    move-object/from16 v22, v1

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v22

    move-wide/from16 v6, v22

    .line 5078
    .local v6, "mxy_st":D
    move-object/from16 v22, v1

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v22

    move-wide/from16 v8, v22

    .line 5079
    .local v8, "myx_st":D
    move-wide/from16 v22, v6

    const-wide/16 v24, 0x0

    cmpl-double v22, v22, v24

    if-eqz v22, :cond_0

    move-wide/from16 v22, v8

    const-wide/16 v24, 0x0

    cmpl-double v22, v22, v24

    if-nez v22, :cond_1

    .line 5080
    :cond_0
    new-instance v22, Ljavafx/scene/transform/NonInvertibleTransformException;

    move-object/from16 v32, v22

    move-object/from16 v22, v32

    move-object/from16 v23, v32

    const-string v24, "Determinant is 0"

    invoke-direct/range {v23 .. v24}, Ljavafx/scene/transform/NonInvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 5082
    :cond_1
    new-instance v22, Ljavafx/geometry/Point2D;

    move-object/from16 v32, v22

    move-object/from16 v22, v32

    move-object/from16 v23, v32

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v26, v8

    div-double v24, v24, v26

    move-wide/from16 v26, v4

    mul-double v24, v24, v26

    move-object/from16 v26, v1

    .line 5083
    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v26

    move-wide/from16 v28, v8

    div-double v26, v26, v28

    sub-double v24, v24, v26

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v28, v6

    div-double v26, v26, v28

    move-wide/from16 v28, v2

    mul-double v26, v26, v28

    move-object/from16 v28, v1

    .line 5084
    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v28

    move-wide/from16 v30, v6

    div-double v28, v28, v30

    sub-double v26, v26, v28

    invoke-direct/range {v23 .. v27}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object/from16 v1, v22

    goto :goto_0

    .line 5086
    .end local v6    # "mxy_st":D
    .end local v8    # "myx_st":D
    :pswitch_1
    move-object/from16 v22, v1

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v22

    move-wide/from16 v10, v22

    .line 5087
    .local v10, "mxy_s":D
    move-object/from16 v22, v1

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v22

    move-wide/from16 v12, v22

    .line 5088
    .local v12, "myx_s":D
    move-wide/from16 v22, v10

    const-wide/16 v24, 0x0

    cmpl-double v22, v22, v24

    if-eqz v22, :cond_2

    move-wide/from16 v22, v12

    const-wide/16 v24, 0x0

    cmpl-double v22, v22, v24

    if-nez v22, :cond_3

    .line 5089
    :cond_2
    new-instance v22, Ljavafx/scene/transform/NonInvertibleTransformException;

    move-object/from16 v32, v22

    move-object/from16 v22, v32

    move-object/from16 v23, v32

    const-string v24, "Determinant is 0"

    invoke-direct/range {v23 .. v24}, Ljavafx/scene/transform/NonInvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 5091
    :cond_3
    new-instance v22, Ljavafx/geometry/Point2D;

    move-object/from16 v32, v22

    move-object/from16 v22, v32

    move-object/from16 v23, v32

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v26, v12

    div-double v24, v24, v26

    move-wide/from16 v26, v4

    mul-double v24, v24, v26

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v28, v10

    div-double v26, v26, v28

    move-wide/from16 v28, v2

    mul-double v26, v26, v28

    invoke-direct/range {v23 .. v27}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object/from16 v1, v22

    goto/16 :goto_0

    .line 5093
    .end local v10    # "mxy_s":D
    .end local v12    # "myx_s":D
    :pswitch_2
    move-object/from16 v22, v1

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v22

    move-wide/from16 v14, v22

    .line 5094
    .local v14, "mxx_st":D
    move-object/from16 v22, v1

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v22

    move-wide/from16 v16, v22

    .line 5095
    .local v16, "myy_st":D
    move-wide/from16 v22, v14

    const-wide/16 v24, 0x0

    cmpl-double v22, v22, v24

    if-eqz v22, :cond_4

    move-wide/from16 v22, v16

    const-wide/16 v24, 0x0

    cmpl-double v22, v22, v24

    if-nez v22, :cond_5

    .line 5096
    :cond_4
    new-instance v22, Ljavafx/scene/transform/NonInvertibleTransformException;

    move-object/from16 v32, v22

    move-object/from16 v22, v32

    move-object/from16 v23, v32

    const-string v24, "Determinant is 0"

    invoke-direct/range {v23 .. v24}, Ljavafx/scene/transform/NonInvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 5098
    :cond_5
    new-instance v22, Ljavafx/geometry/Point2D;

    move-object/from16 v32, v22

    move-object/from16 v22, v32

    move-object/from16 v23, v32

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v26, v14

    div-double v24, v24, v26

    move-wide/from16 v26, v2

    mul-double v24, v24, v26

    move-object/from16 v26, v1

    .line 5099
    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v26

    move-wide/from16 v28, v14

    div-double v26, v26, v28

    sub-double v24, v24, v26

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v28, v16

    div-double v26, v26, v28

    move-wide/from16 v28, v4

    mul-double v26, v26, v28

    move-object/from16 v28, v1

    .line 5100
    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v28

    move-wide/from16 v30, v16

    div-double v28, v28, v30

    sub-double v26, v26, v28

    invoke-direct/range {v23 .. v27}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object/from16 v1, v22

    goto/16 :goto_0

    .line 5102
    .end local v14    # "mxx_st":D
    .end local v16    # "myy_st":D
    :pswitch_3
    move-object/from16 v22, v1

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v22

    move-wide/from16 v18, v22

    .line 5103
    .local v18, "mxx_s":D
    move-object/from16 v22, v1

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v22

    move-wide/from16 v20, v22

    .line 5104
    .local v20, "myy_s":D
    move-wide/from16 v22, v18

    const-wide/16 v24, 0x0

    cmpl-double v22, v22, v24

    if-eqz v22, :cond_6

    move-wide/from16 v22, v20

    const-wide/16 v24, 0x0

    cmpl-double v22, v22, v24

    if-nez v22, :cond_7

    .line 5105
    :cond_6
    new-instance v22, Ljavafx/scene/transform/NonInvertibleTransformException;

    move-object/from16 v32, v22

    move-object/from16 v22, v32

    move-object/from16 v23, v32

    const-string v24, "Determinant is 0"

    invoke-direct/range {v23 .. v24}, Ljavafx/scene/transform/NonInvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 5107
    :cond_7
    new-instance v22, Ljavafx/geometry/Point2D;

    move-object/from16 v32, v22

    move-object/from16 v22, v32

    move-object/from16 v23, v32

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v26, v18

    div-double v24, v24, v26

    move-wide/from16 v26, v2

    mul-double v24, v24, v26

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v28, v20

    div-double v26, v26, v28

    move-wide/from16 v28, v4

    mul-double v26, v26, v28

    invoke-direct/range {v23 .. v27}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object/from16 v1, v22

    goto/16 :goto_0

    .line 5109
    .end local v18    # "mxx_s":D
    .end local v20    # "myy_s":D
    :pswitch_4
    new-instance v22, Ljavafx/geometry/Point2D;

    move-object/from16 v32, v22

    move-object/from16 v22, v32

    move-object/from16 v23, v32

    move-wide/from16 v24, v2

    move-object/from16 v26, v1

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v26

    sub-double v24, v24, v26

    move-wide/from16 v26, v4

    move-object/from16 v28, v1

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v28

    sub-double v26, v26, v28

    invoke-direct/range {v23 .. v27}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object/from16 v1, v22

    goto/16 :goto_0

    .line 5111
    :pswitch_5
    new-instance v22, Ljavafx/geometry/Point2D;

    move-object/from16 v32, v22

    move-object/from16 v22, v32

    move-object/from16 v23, v32

    move-wide/from16 v24, v2

    move-wide/from16 v26, v4

    invoke-direct/range {v23 .. v27}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object/from16 v1, v22

    goto/16 :goto_0

    .line 5073
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
    .locals 37
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/scene/transform/NonInvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 5118
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-wide/from16 v6, p5

    .local v6, "z":D
    move-object/from16 v24, v1

    move-object/from16 v0, v24

    iget v0, v0, Ljavafx/scene/transform/Affine;->state3d:I

    move/from16 v24, v0

    packed-switch v24, :pswitch_data_0

    .line 5120
    invoke-static {}, Ljavafx/scene/transform/Affine;->stateError()V

    .line 5123
    :pswitch_0
    move-object/from16 v24, v1

    move-object/from16 v0, v24

    iget v0, v0, Ljavafx/scene/transform/Affine;->state2d:I

    move/from16 v24, v0

    packed-switch v24, :pswitch_data_1

    .line 5125
    move-object/from16 v24, v1

    move-wide/from16 v25, v2

    move-wide/from16 v27, v4

    move-wide/from16 v29, v6

    invoke-super/range {v24 .. v30}, Ljavafx/scene/transform/Transform;->inverseTransform(DDD)Ljavafx/geometry/Point3D;

    move-result-object v24

    move-object/from16 v1, v24

    .line 5194
    .end local v1    # "this":Ljavafx/scene/transform/Affine;
    :goto_0
    return-object v1

    .line 5127
    .restart local v1    # "this":Ljavafx/scene/transform/Affine;
    :pswitch_1
    move-object/from16 v24, v1

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v24

    move-wide/from16 v8, v24

    .line 5128
    .local v8, "mxy_st":D
    move-object/from16 v24, v1

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v24

    move-wide/from16 v10, v24

    .line 5129
    .local v10, "myx_st":D
    move-wide/from16 v24, v8

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-eqz v24, :cond_0

    move-wide/from16 v24, v10

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-nez v24, :cond_1

    .line 5130
    :cond_0
    new-instance v24, Ljavafx/scene/transform/NonInvertibleTransformException;

    move-object/from16 v36, v24

    move-object/from16 v24, v36

    move-object/from16 v25, v36

    const-string v26, "Determinant is 0"

    invoke-direct/range {v25 .. v26}, Ljavafx/scene/transform/NonInvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 5133
    :cond_1
    new-instance v24, Ljavafx/geometry/Point3D;

    move-object/from16 v36, v24

    move-object/from16 v24, v36

    move-object/from16 v25, v36

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v28, v10

    div-double v26, v26, v28

    move-wide/from16 v28, v4

    mul-double v26, v26, v28

    move-object/from16 v28, v1

    .line 5134
    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v28

    move-wide/from16 v30, v10

    div-double v28, v28, v30

    sub-double v26, v26, v28

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v30, v8

    div-double v28, v28, v30

    move-wide/from16 v30, v2

    mul-double v28, v28, v30

    move-object/from16 v30, v1

    .line 5135
    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v30

    move-wide/from16 v32, v8

    div-double v30, v30, v32

    sub-double v28, v28, v30

    move-wide/from16 v30, v6

    invoke-direct/range {v25 .. v31}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object/from16 v1, v24

    goto :goto_0

    .line 5137
    .end local v8    # "mxy_st":D
    .end local v10    # "myx_st":D
    :pswitch_2
    move-object/from16 v24, v1

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v24

    move-wide/from16 v12, v24

    .line 5138
    .local v12, "mxy_s":D
    move-object/from16 v24, v1

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v24

    move-wide/from16 v14, v24

    .line 5139
    .local v14, "myx_s":D
    move-wide/from16 v24, v12

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-eqz v24, :cond_2

    move-wide/from16 v24, v14

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-nez v24, :cond_3

    .line 5140
    :cond_2
    new-instance v24, Ljavafx/scene/transform/NonInvertibleTransformException;

    move-object/from16 v36, v24

    move-object/from16 v24, v36

    move-object/from16 v25, v36

    const-string v26, "Determinant is 0"

    invoke-direct/range {v25 .. v26}, Ljavafx/scene/transform/NonInvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 5143
    :cond_3
    new-instance v24, Ljavafx/geometry/Point3D;

    move-object/from16 v36, v24

    move-object/from16 v24, v36

    move-object/from16 v25, v36

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v28, v14

    div-double v26, v26, v28

    move-wide/from16 v28, v4

    mul-double v26, v26, v28

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v30, v12

    div-double v28, v28, v30

    move-wide/from16 v30, v2

    mul-double v28, v28, v30

    move-wide/from16 v30, v6

    invoke-direct/range {v25 .. v31}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object/from16 v1, v24

    goto/16 :goto_0

    .line 5147
    .end local v12    # "mxy_s":D
    .end local v14    # "myx_s":D
    :pswitch_3
    move-object/from16 v24, v1

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v24

    move-wide/from16 v16, v24

    .line 5148
    .local v16, "mxx_st":D
    move-object/from16 v24, v1

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v24

    move-wide/from16 v18, v24

    .line 5149
    .local v18, "myy_st":D
    move-wide/from16 v24, v16

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-eqz v24, :cond_4

    move-wide/from16 v24, v18

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-nez v24, :cond_5

    .line 5150
    :cond_4
    new-instance v24, Ljavafx/scene/transform/NonInvertibleTransformException;

    move-object/from16 v36, v24

    move-object/from16 v24, v36

    move-object/from16 v25, v36

    const-string v26, "Determinant is 0"

    invoke-direct/range {v25 .. v26}, Ljavafx/scene/transform/NonInvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 5153
    :cond_5
    new-instance v24, Ljavafx/geometry/Point3D;

    move-object/from16 v36, v24

    move-object/from16 v24, v36

    move-object/from16 v25, v36

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v28, v16

    div-double v26, v26, v28

    move-wide/from16 v28, v2

    mul-double v26, v26, v28

    move-object/from16 v28, v1

    .line 5154
    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v28

    move-wide/from16 v30, v16

    div-double v28, v28, v30

    sub-double v26, v26, v28

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v30, v18

    div-double v28, v28, v30

    move-wide/from16 v30, v4

    mul-double v28, v28, v30

    move-object/from16 v30, v1

    .line 5155
    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v30

    move-wide/from16 v32, v18

    div-double v30, v30, v32

    sub-double v28, v28, v30

    move-wide/from16 v30, v6

    invoke-direct/range {v25 .. v31}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object/from16 v1, v24

    goto/16 :goto_0

    .line 5157
    .end local v16    # "mxx_st":D
    .end local v18    # "myy_st":D
    :pswitch_4
    move-object/from16 v24, v1

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v24

    move-wide/from16 v20, v24

    .line 5158
    .local v20, "mxx_s":D
    move-object/from16 v24, v1

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v24

    move-wide/from16 v22, v24

    .line 5159
    .local v22, "myy_s":D
    move-wide/from16 v24, v20

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-eqz v24, :cond_6

    move-wide/from16 v24, v22

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-nez v24, :cond_7

    .line 5160
    :cond_6
    new-instance v24, Ljavafx/scene/transform/NonInvertibleTransformException;

    move-object/from16 v36, v24

    move-object/from16 v24, v36

    move-object/from16 v25, v36

    const-string v26, "Determinant is 0"

    invoke-direct/range {v25 .. v26}, Ljavafx/scene/transform/NonInvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 5163
    :cond_7
    new-instance v24, Ljavafx/geometry/Point3D;

    move-object/from16 v36, v24

    move-object/from16 v24, v36

    move-object/from16 v25, v36

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v28, v20

    div-double v26, v26, v28

    move-wide/from16 v28, v2

    mul-double v26, v26, v28

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v30, v22

    div-double v28, v28, v30

    move-wide/from16 v30, v4

    mul-double v28, v28, v30

    move-wide/from16 v30, v6

    invoke-direct/range {v25 .. v31}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object/from16 v1, v24

    goto/16 :goto_0

    .line 5165
    .end local v20    # "mxx_s":D
    .end local v22    # "myy_s":D
    :pswitch_5
    new-instance v24, Ljavafx/geometry/Point3D;

    move-object/from16 v36, v24

    move-object/from16 v24, v36

    move-object/from16 v25, v36

    move-wide/from16 v26, v2

    move-object/from16 v28, v1

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v28

    sub-double v26, v26, v28

    move-wide/from16 v28, v4

    move-object/from16 v30, v1

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v30

    sub-double v28, v28, v30

    move-wide/from16 v30, v6

    invoke-direct/range {v25 .. v31}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object/from16 v1, v24

    goto/16 :goto_0

    .line 5167
    :pswitch_6
    new-instance v24, Ljavafx/geometry/Point3D;

    move-object/from16 v36, v24

    move-object/from16 v24, v36

    move-object/from16 v25, v36

    move-wide/from16 v26, v2

    move-wide/from16 v28, v4

    move-wide/from16 v30, v6

    invoke-direct/range {v25 .. v31}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object/from16 v1, v24

    goto/16 :goto_0

    .line 5170
    :pswitch_7
    new-instance v24, Ljavafx/geometry/Point3D;

    move-object/from16 v36, v24

    move-object/from16 v24, v36

    move-object/from16 v25, v36

    move-wide/from16 v26, v2

    move-object/from16 v28, v1

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v28

    sub-double v26, v26, v28

    move-wide/from16 v28, v4

    move-object/from16 v30, v1

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v30

    sub-double v28, v28, v30

    move-wide/from16 v30, v6

    move-object/from16 v32, v1

    invoke-virtual/range {v32 .. v32}, Ljavafx/scene/transform/Affine;->getTz()D

    move-result-wide v32

    sub-double v30, v30, v32

    invoke-direct/range {v25 .. v31}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object/from16 v1, v24

    goto/16 :goto_0

    .line 5172
    :pswitch_8
    move-object/from16 v24, v1

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v24

    move-wide/from16 v8, v24

    .line 5173
    .local v8, "mxx_s":D
    move-object/from16 v24, v1

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v24

    move-wide/from16 v10, v24

    .line 5174
    .local v10, "myy_s":D
    move-object/from16 v24, v1

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Affine;->getMzz()D

    move-result-wide v24

    move-wide/from16 v12, v24

    .line 5175
    .local v12, "mzz_s":D
    move-wide/from16 v24, v8

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-eqz v24, :cond_8

    move-wide/from16 v24, v10

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-eqz v24, :cond_8

    move-wide/from16 v24, v12

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-nez v24, :cond_9

    .line 5176
    :cond_8
    new-instance v24, Ljavafx/scene/transform/NonInvertibleTransformException;

    move-object/from16 v36, v24

    move-object/from16 v24, v36

    move-object/from16 v25, v36

    const-string v26, "Determinant is 0"

    invoke-direct/range {v25 .. v26}, Ljavafx/scene/transform/NonInvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 5178
    :cond_9
    new-instance v24, Ljavafx/geometry/Point3D;

    move-object/from16 v36, v24

    move-object/from16 v24, v36

    move-object/from16 v25, v36

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v28, v8

    div-double v26, v26, v28

    move-wide/from16 v28, v2

    mul-double v26, v26, v28

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v30, v10

    div-double v28, v28, v30

    move-wide/from16 v30, v4

    mul-double v28, v28, v30

    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v32, v12

    div-double v30, v30, v32

    move-wide/from16 v32, v6

    mul-double v30, v30, v32

    invoke-direct/range {v25 .. v31}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object/from16 v1, v24

    goto/16 :goto_0

    .line 5183
    .end local v8    # "mxx_s":D
    .end local v10    # "myy_s":D
    .end local v12    # "mzz_s":D
    :pswitch_9
    move-object/from16 v24, v1

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v24

    move-wide/from16 v14, v24

    .line 5184
    .local v14, "mxx_st":D
    move-object/from16 v24, v1

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v24

    move-wide/from16 v16, v24

    .line 5185
    .local v16, "myy_st":D
    move-object/from16 v24, v1

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Affine;->getMzz()D

    move-result-wide v24

    move-wide/from16 v18, v24

    .line 5186
    .local v18, "mzz_st":D
    move-wide/from16 v24, v14

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-eqz v24, :cond_a

    move-wide/from16 v24, v16

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-eqz v24, :cond_a

    move-wide/from16 v24, v18

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-nez v24, :cond_b

    .line 5187
    :cond_a
    new-instance v24, Ljavafx/scene/transform/NonInvertibleTransformException;

    move-object/from16 v36, v24

    move-object/from16 v24, v36

    move-object/from16 v25, v36

    const-string v26, "Determinant is 0"

    invoke-direct/range {v25 .. v26}, Ljavafx/scene/transform/NonInvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 5189
    :cond_b
    new-instance v24, Ljavafx/geometry/Point3D;

    move-object/from16 v36, v24

    move-object/from16 v24, v36

    move-object/from16 v25, v36

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v28, v14

    div-double v26, v26, v28

    move-wide/from16 v28, v2

    mul-double v26, v26, v28

    move-object/from16 v28, v1

    .line 5190
    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v28

    move-wide/from16 v30, v14

    div-double v28, v28, v30

    sub-double v26, v26, v28

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v30, v16

    div-double v28, v28, v30

    move-wide/from16 v30, v4

    mul-double v28, v28, v30

    move-object/from16 v30, v1

    .line 5191
    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v30

    move-wide/from16 v32, v16

    div-double v30, v30, v32

    sub-double v28, v28, v30

    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v32, v18

    div-double v30, v30, v32

    move-wide/from16 v32, v6

    mul-double v30, v30, v32

    move-object/from16 v32, v1

    .line 5192
    invoke-virtual/range {v32 .. v32}, Ljavafx/scene/transform/Affine;->getTz()D

    move-result-wide v32

    move-wide/from16 v34, v18

    div-double v32, v32, v34

    sub-double v30, v30, v32

    invoke-direct/range {v25 .. v31}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object/from16 v1, v24

    goto/16 :goto_0

    .line 5194
    .end local v14    # "mxx_st":D
    .end local v16    # "myy_st":D
    .end local v18    # "mzz_st":D
    :pswitch_a
    move-object/from16 v24, v1

    move-wide/from16 v25, v2

    move-wide/from16 v27, v4

    move-wide/from16 v29, v6

    invoke-super/range {v24 .. v30}, Ljavafx/scene/transform/Transform;->inverseTransform(DDD)Ljavafx/geometry/Point3D;

    move-result-object v24

    move-object/from16 v1, v24

    goto/16 :goto_0

    .line 5118
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 5123
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

.method inverseTransform2DPointsImpl([DI[DII)V
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/scene/transform/NonInvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 5205
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/transform/Affine;
    move-object/from16 v3, p1

    .local v3, "srcPts":[D
    move/from16 v4, p2

    .local v4, "srcOff":I
    move-object/from16 v5, p3

    .local v5, "dstPts":[D
    move/from16 v6, p4

    .local v6, "dstOff":I
    move/from16 v7, p5

    .local v7, "numPts":I
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Ljavafx/scene/transform/Affine;->state2d:I

    move/from16 v24, v0

    packed-switch v24, :pswitch_data_0

    .line 5207
    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move/from16 v26, v4

    move-object/from16 v27, v5

    move/from16 v28, v6

    move/from16 v29, v7

    invoke-super/range {v24 .. v29}, Ljavafx/scene/transform/Transform;->inverseTransform2DPointsImpl([DI[DII)V

    .line 5209
    .line 5294
    :goto_0
    return-void

    .line 5212
    :pswitch_0
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v24

    move-wide/from16 v10, v24

    .local v10, "mxy":D
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v24

    move-wide/from16 v12, v24

    .line 5213
    .local v12, "tx":D
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v24

    move-wide/from16 v14, v24

    .local v14, "myx":D
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v24

    move-wide/from16 v18, v24

    .line 5214
    .local v18, "ty":D
    move-wide/from16 v24, v10

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-eqz v24, :cond_0

    move-wide/from16 v24, v14

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-nez v24, :cond_1

    .line 5215
    :cond_0
    new-instance v24, Ljavafx/scene/transform/NonInvertibleTransformException;

    move-object/from16 v30, v24

    move-object/from16 v24, v30

    move-object/from16 v25, v30

    const-string v26, "Determinant is 0"

    invoke-direct/range {v25 .. v26}, Ljavafx/scene/transform/NonInvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 5218
    :cond_1
    move-wide/from16 v24, v12

    move-wide/from16 v20, v24

    .line 5219
    .local v20, "tmp":D
    move-wide/from16 v24, v18

    move-wide/from16 v0, v24

    neg-double v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v26, v14

    div-double v24, v24, v26

    move-wide/from16 v12, v24

    .line 5220
    move-wide/from16 v24, v20

    move-wide/from16 v0, v24

    neg-double v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v26, v10

    div-double v24, v24, v26

    move-wide/from16 v18, v24

    .line 5222
    move-wide/from16 v24, v14

    move-wide/from16 v20, v24

    .line 5223
    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v26, v10

    div-double v24, v24, v26

    move-wide/from16 v14, v24

    .line 5224
    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v26, v20

    div-double v24, v24, v26

    move-wide/from16 v10, v24

    .line 5226
    :goto_1
    add-int/lit8 v7, v7, -0x1

    move/from16 v24, v7

    if-ltz v24, :cond_2

    .line 5227
    move-object/from16 v24, v3

    move/from16 v25, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v24, v24, v25

    move-wide/from16 v22, v24

    .line 5228
    .local v22, "x":D
    move-object/from16 v24, v5

    move/from16 v25, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v26, v10

    move-object/from16 v28, v3

    move/from16 v29, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v28, v28, v29

    mul-double v26, v26, v28

    move-wide/from16 v28, v12

    add-double v26, v26, v28

    aput-wide v26, v24, v25

    .line 5229
    move-object/from16 v24, v5

    move/from16 v25, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v26, v14

    move-wide/from16 v28, v22

    mul-double v26, v26, v28

    move-wide/from16 v28, v18

    add-double v26, v26, v28

    aput-wide v26, v24, v25

    .line 5230
    goto :goto_1

    .line 5231
    .end local v22    # "x":D
    :cond_2
    goto/16 :goto_0

    .line 5233
    .end local v10    # "mxy":D
    .end local v12    # "tx":D
    .end local v14    # "myx":D
    .end local v18    # "ty":D
    .end local v20    # "tmp":D
    :pswitch_1
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v24

    move-wide/from16 v10, v24

    .line 5234
    .restart local v10    # "mxy":D
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v24

    move-wide/from16 v14, v24

    .line 5235
    .restart local v14    # "myx":D
    move-wide/from16 v24, v10

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-eqz v24, :cond_3

    move-wide/from16 v24, v14

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-nez v24, :cond_4

    .line 5236
    :cond_3
    new-instance v24, Ljavafx/scene/transform/NonInvertibleTransformException;

    move-object/from16 v30, v24

    move-object/from16 v24, v30

    move-object/from16 v25, v30

    const-string v26, "Determinant is 0"

    invoke-direct/range {v25 .. v26}, Ljavafx/scene/transform/NonInvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 5239
    :cond_4
    move-wide/from16 v24, v14

    move-wide/from16 v20, v24

    .line 5240
    .restart local v20    # "tmp":D
    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v26, v10

    div-double v24, v24, v26

    move-wide/from16 v14, v24

    .line 5241
    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v26, v20

    div-double v24, v24, v26

    move-wide/from16 v10, v24

    .line 5243
    :goto_2
    add-int/lit8 v7, v7, -0x1

    move/from16 v24, v7

    if-ltz v24, :cond_5

    .line 5244
    move-object/from16 v24, v3

    move/from16 v25, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v24, v24, v25

    move-wide/from16 v22, v24

    .line 5245
    .restart local v22    # "x":D
    move-object/from16 v24, v5

    move/from16 v25, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v26, v10

    move-object/from16 v28, v3

    move/from16 v29, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v28, v28, v29

    mul-double v26, v26, v28

    aput-wide v26, v24, v25

    .line 5246
    move-object/from16 v24, v5

    move/from16 v25, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v26, v14

    move-wide/from16 v28, v22

    mul-double v26, v26, v28

    aput-wide v26, v24, v25

    .line 5247
    goto :goto_2

    .line 5248
    .end local v22    # "x":D
    :cond_5
    goto/16 :goto_0

    .line 5250
    .end local v10    # "mxy":D
    .end local v14    # "myx":D
    .end local v20    # "tmp":D
    :pswitch_2
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v24

    move-wide/from16 v8, v24

    .local v8, "mxx":D
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v24

    move-wide/from16 v12, v24

    .line 5251
    .restart local v12    # "tx":D
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v24

    move-wide/from16 v16, v24

    .local v16, "myy":D
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v24

    move-wide/from16 v18, v24

    .line 5252
    .restart local v18    # "ty":D
    move-wide/from16 v24, v8

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-eqz v24, :cond_6

    move-wide/from16 v24, v16

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-nez v24, :cond_7

    .line 5253
    :cond_6
    new-instance v24, Ljavafx/scene/transform/NonInvertibleTransformException;

    move-object/from16 v30, v24

    move-object/from16 v24, v30

    move-object/from16 v25, v30

    const-string v26, "Determinant is 0"

    invoke-direct/range {v25 .. v26}, Ljavafx/scene/transform/NonInvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 5256
    :cond_7
    move-wide/from16 v24, v12

    move-wide/from16 v0, v24

    neg-double v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v26, v8

    div-double v24, v24, v26

    move-wide/from16 v12, v24

    .line 5257
    move-wide/from16 v24, v18

    move-wide/from16 v0, v24

    neg-double v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v26, v16

    div-double v24, v24, v26

    move-wide/from16 v18, v24

    .line 5258
    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v26, v8

    div-double v24, v24, v26

    move-wide/from16 v8, v24

    .line 5259
    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v26, v16

    div-double v24, v24, v26

    move-wide/from16 v16, v24

    .line 5261
    :goto_3
    add-int/lit8 v7, v7, -0x1

    move/from16 v24, v7

    if-ltz v24, :cond_8

    .line 5262
    move-object/from16 v24, v5

    move/from16 v25, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v26, v8

    move-object/from16 v28, v3

    move/from16 v29, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v28, v28, v29

    mul-double v26, v26, v28

    move-wide/from16 v28, v12

    add-double v26, v26, v28

    aput-wide v26, v24, v25

    .line 5263
    move-object/from16 v24, v5

    move/from16 v25, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v26, v16

    move-object/from16 v28, v3

    move/from16 v29, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v28, v28, v29

    mul-double v26, v26, v28

    move-wide/from16 v28, v18

    add-double v26, v26, v28

    aput-wide v26, v24, v25

    goto :goto_3

    .line 5265
    :cond_8
    goto/16 :goto_0

    .line 5267
    .end local v8    # "mxx":D
    .end local v12    # "tx":D
    .end local v16    # "myy":D
    .end local v18    # "ty":D
    :pswitch_3
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v24

    move-wide/from16 v8, v24

    .line 5268
    .restart local v8    # "mxx":D
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v24

    move-wide/from16 v16, v24

    .line 5269
    .restart local v16    # "myy":D
    move-wide/from16 v24, v8

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-eqz v24, :cond_9

    move-wide/from16 v24, v16

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-nez v24, :cond_a

    .line 5270
    :cond_9
    new-instance v24, Ljavafx/scene/transform/NonInvertibleTransformException;

    move-object/from16 v30, v24

    move-object/from16 v24, v30

    move-object/from16 v25, v30

    const-string v26, "Determinant is 0"

    invoke-direct/range {v25 .. v26}, Ljavafx/scene/transform/NonInvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 5273
    :cond_a
    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v26, v8

    div-double v24, v24, v26

    move-wide/from16 v8, v24

    .line 5274
    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v26, v16

    div-double v24, v24, v26

    move-wide/from16 v16, v24

    .line 5276
    :goto_4
    add-int/lit8 v7, v7, -0x1

    move/from16 v24, v7

    if-ltz v24, :cond_b

    .line 5277
    move-object/from16 v24, v5

    move/from16 v25, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v26, v8

    move-object/from16 v28, v3

    move/from16 v29, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v28, v28, v29

    mul-double v26, v26, v28

    aput-wide v26, v24, v25

    .line 5278
    move-object/from16 v24, v5

    move/from16 v25, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v26, v16

    move-object/from16 v28, v3

    move/from16 v29, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v28, v28, v29

    mul-double v26, v26, v28

    aput-wide v26, v24, v25

    goto :goto_4

    .line 5280
    :cond_b
    goto/16 :goto_0

    .line 5282
    .end local v8    # "mxx":D
    .end local v16    # "myy":D
    :pswitch_4
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v24

    move-wide/from16 v12, v24

    .line 5283
    .restart local v12    # "tx":D
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v24

    move-wide/from16 v18, v24

    .line 5284
    .restart local v18    # "ty":D
    :goto_5
    add-int/lit8 v7, v7, -0x1

    move/from16 v24, v7

    if-ltz v24, :cond_c

    .line 5285
    move-object/from16 v24, v5

    move/from16 v25, v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v26, v3

    move/from16 v27, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v26, v26, v27

    move-wide/from16 v28, v12

    sub-double v26, v26, v28

    aput-wide v26, v24, v25

    .line 5286
    move-object/from16 v24, v5

    move/from16 v25, v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v26, v3

    move/from16 v27, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v26, v26, v27

    move-wide/from16 v28, v18

    sub-double v26, v26, v28

    aput-wide v26, v24, v25

    goto :goto_5

    .line 5288
    :cond_c
    goto/16 :goto_0

    .line 5290
    .end local v12    # "tx":D
    .end local v18    # "ty":D
    :pswitch_5
    move-object/from16 v24, v3

    move-object/from16 v25, v5

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_d

    move/from16 v24, v4

    move/from16 v25, v6

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_e

    .line 5291
    :cond_d
    move-object/from16 v24, v3

    move/from16 v25, v4

    move-object/from16 v26, v5

    move/from16 v27, v6

    move/from16 v28, v7

    const/16 v29, 0x2

    mul-int/lit8 v28, v28, 0x2

    invoke-static/range {v24 .. v28}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5294
    :cond_e
    goto/16 :goto_0

    .line 5205
    nop

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

.method inverseTransform3DPointsImpl([DI[DII)V
    .locals 35
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/scene/transform/NonInvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 5305
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/transform/Affine;
    move-object/from16 v3, p1

    .local v3, "srcPts":[D
    move/from16 v4, p2

    .local v4, "srcOff":I
    move-object/from16 v5, p3

    .local v5, "dstPts":[D
    move/from16 v6, p4

    .local v6, "dstOff":I
    move/from16 v7, p5

    .local v7, "numPts":I
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget v0, v0, Ljavafx/scene/transform/Affine;->state3d:I

    move/from16 v28, v0

    packed-switch v28, :pswitch_data_0

    .line 5307
    invoke-static {}, Ljavafx/scene/transform/Affine;->stateError()V

    .line 5310
    :pswitch_0
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget v0, v0, Ljavafx/scene/transform/Affine;->state2d:I

    move/from16 v28, v0

    packed-switch v28, :pswitch_data_1

    .line 5312
    move-object/from16 v28, v2

    move-object/from16 v29, v3

    move/from16 v30, v4

    move-object/from16 v31, v5

    move/from16 v32, v6

    move/from16 v33, v7

    invoke-super/range {v28 .. v33}, Ljavafx/scene/transform/Transform;->inverseTransform3DPointsImpl([DI[DII)V

    .line 5314
    .line 5463
    :goto_0
    return-void

    .line 5317
    :pswitch_1
    move-object/from16 v28, v2

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v28

    move-wide/from16 v10, v28

    .local v10, "mxy":D
    move-object/from16 v28, v2

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v28

    move-wide/from16 v12, v28

    .line 5318
    .local v12, "tx":D
    move-object/from16 v28, v2

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v28

    move-wide/from16 v14, v28

    .local v14, "myx":D
    move-object/from16 v28, v2

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v28

    move-wide/from16 v18, v28

    .line 5319
    .local v18, "ty":D
    move-wide/from16 v28, v10

    const-wide/16 v30, 0x0

    cmpl-double v28, v28, v30

    if-eqz v28, :cond_0

    move-wide/from16 v28, v14

    const-wide/16 v30, 0x0

    cmpl-double v28, v28, v30

    if-nez v28, :cond_1

    .line 5320
    :cond_0
    new-instance v28, Ljavafx/scene/transform/NonInvertibleTransformException;

    move-object/from16 v34, v28

    move-object/from16 v28, v34

    move-object/from16 v29, v34

    const-string v30, "Determinant is 0"

    invoke-direct/range {v29 .. v30}, Ljavafx/scene/transform/NonInvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 5324
    :cond_1
    move-wide/from16 v28, v12

    move-wide/from16 v24, v28

    .line 5325
    .local v24, "tmp":D
    move-wide/from16 v28, v18

    move-wide/from16 v0, v28

    neg-double v0, v0

    move-wide/from16 v28, v0

    move-wide/from16 v30, v14

    div-double v28, v28, v30

    move-wide/from16 v12, v28

    .line 5326
    move-wide/from16 v28, v24

    move-wide/from16 v0, v28

    neg-double v0, v0

    move-wide/from16 v28, v0

    move-wide/from16 v30, v10

    div-double v28, v28, v30

    move-wide/from16 v18, v28

    .line 5328
    move-wide/from16 v28, v14

    move-wide/from16 v24, v28

    .line 5329
    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v30, v10

    div-double v28, v28, v30

    move-wide/from16 v14, v28

    .line 5330
    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v30, v24

    div-double v28, v28, v30

    move-wide/from16 v10, v28

    .line 5332
    :goto_1
    add-int/lit8 v7, v7, -0x1

    move/from16 v28, v7

    if-ltz v28, :cond_2

    .line 5333
    move-object/from16 v28, v3

    move/from16 v29, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v28, v28, v29

    move-wide/from16 v26, v28

    .line 5334
    .local v26, "x":D
    move-object/from16 v28, v5

    move/from16 v29, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v30, v10

    move-object/from16 v32, v3

    move/from16 v33, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v32, v32, v33

    mul-double v30, v30, v32

    move-wide/from16 v32, v12

    add-double v30, v30, v32

    aput-wide v30, v28, v29

    .line 5335
    move-object/from16 v28, v5

    move/from16 v29, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v30, v14

    move-wide/from16 v32, v26

    mul-double v30, v30, v32

    move-wide/from16 v32, v18

    add-double v30, v30, v32

    aput-wide v30, v28, v29

    .line 5336
    move-object/from16 v28, v5

    move/from16 v29, v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v30, v3

    move/from16 v31, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v30, v30, v31

    aput-wide v30, v28, v29

    .line 5337
    goto :goto_1

    .line 5338
    .end local v26    # "x":D
    :cond_2
    goto/16 :goto_0

    .line 5340
    .end local v10    # "mxy":D
    .end local v12    # "tx":D
    .end local v14    # "myx":D
    .end local v18    # "ty":D
    .end local v24    # "tmp":D
    :pswitch_2
    move-object/from16 v28, v2

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v28

    move-wide/from16 v10, v28

    .line 5341
    .restart local v10    # "mxy":D
    move-object/from16 v28, v2

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v28

    move-wide/from16 v14, v28

    .line 5342
    .restart local v14    # "myx":D
    move-wide/from16 v28, v10

    const-wide/16 v30, 0x0

    cmpl-double v28, v28, v30

    if-eqz v28, :cond_3

    move-wide/from16 v28, v14

    const-wide/16 v30, 0x0

    cmpl-double v28, v28, v30

    if-nez v28, :cond_4

    .line 5343
    :cond_3
    new-instance v28, Ljavafx/scene/transform/NonInvertibleTransformException;

    move-object/from16 v34, v28

    move-object/from16 v28, v34

    move-object/from16 v29, v34

    const-string v30, "Determinant is 0"

    invoke-direct/range {v29 .. v30}, Ljavafx/scene/transform/NonInvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 5347
    :cond_4
    move-wide/from16 v28, v14

    move-wide/from16 v24, v28

    .line 5348
    .restart local v24    # "tmp":D
    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v30, v10

    div-double v28, v28, v30

    move-wide/from16 v14, v28

    .line 5349
    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v30, v24

    div-double v28, v28, v30

    move-wide/from16 v10, v28

    .line 5351
    :goto_2
    add-int/lit8 v7, v7, -0x1

    move/from16 v28, v7

    if-ltz v28, :cond_5

    .line 5352
    move-object/from16 v28, v3

    move/from16 v29, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v28, v28, v29

    move-wide/from16 v26, v28

    .line 5353
    .restart local v26    # "x":D
    move-object/from16 v28, v5

    move/from16 v29, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v30, v10

    move-object/from16 v32, v3

    move/from16 v33, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v32, v32, v33

    mul-double v30, v30, v32

    aput-wide v30, v28, v29

    .line 5354
    move-object/from16 v28, v5

    move/from16 v29, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v30, v14

    move-wide/from16 v32, v26

    mul-double v30, v30, v32

    aput-wide v30, v28, v29

    .line 5355
    move-object/from16 v28, v5

    move/from16 v29, v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v30, v3

    move/from16 v31, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v30, v30, v31

    aput-wide v30, v28, v29

    .line 5356
    goto :goto_2

    .line 5357
    .end local v26    # "x":D
    :cond_5
    goto/16 :goto_0

    .line 5359
    .end local v10    # "mxy":D
    .end local v14    # "myx":D
    .end local v24    # "tmp":D
    :pswitch_3
    move-object/from16 v28, v2

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v28

    move-wide/from16 v8, v28

    .local v8, "mxx":D
    move-object/from16 v28, v2

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v28

    move-wide/from16 v12, v28

    .line 5360
    .restart local v12    # "tx":D
    move-object/from16 v28, v2

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v28

    move-wide/from16 v16, v28

    .local v16, "myy":D
    move-object/from16 v28, v2

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v28

    move-wide/from16 v18, v28

    .line 5361
    .restart local v18    # "ty":D
    move-wide/from16 v28, v8

    const-wide/16 v30, 0x0

    cmpl-double v28, v28, v30

    if-eqz v28, :cond_6

    move-wide/from16 v28, v16

    const-wide/16 v30, 0x0

    cmpl-double v28, v28, v30

    if-nez v28, :cond_7

    .line 5362
    :cond_6
    new-instance v28, Ljavafx/scene/transform/NonInvertibleTransformException;

    move-object/from16 v34, v28

    move-object/from16 v28, v34

    move-object/from16 v29, v34

    const-string v30, "Determinant is 0"

    invoke-direct/range {v29 .. v30}, Ljavafx/scene/transform/NonInvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 5366
    :cond_7
    move-wide/from16 v28, v12

    move-wide/from16 v0, v28

    neg-double v0, v0

    move-wide/from16 v28, v0

    move-wide/from16 v30, v8

    div-double v28, v28, v30

    move-wide/from16 v12, v28

    .line 5367
    move-wide/from16 v28, v18

    move-wide/from16 v0, v28

    neg-double v0, v0

    move-wide/from16 v28, v0

    move-wide/from16 v30, v16

    div-double v28, v28, v30

    move-wide/from16 v18, v28

    .line 5368
    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v30, v8

    div-double v28, v28, v30

    move-wide/from16 v8, v28

    .line 5369
    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v30, v16

    div-double v28, v28, v30

    move-wide/from16 v16, v28

    .line 5371
    :goto_3
    add-int/lit8 v7, v7, -0x1

    move/from16 v28, v7

    if-ltz v28, :cond_8

    .line 5372
    move-object/from16 v28, v5

    move/from16 v29, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v30, v8

    move-object/from16 v32, v3

    move/from16 v33, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v32, v32, v33

    mul-double v30, v30, v32

    move-wide/from16 v32, v12

    add-double v30, v30, v32

    aput-wide v30, v28, v29

    .line 5373
    move-object/from16 v28, v5

    move/from16 v29, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v30, v16

    move-object/from16 v32, v3

    move/from16 v33, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v32, v32, v33

    mul-double v30, v30, v32

    move-wide/from16 v32, v18

    add-double v30, v30, v32

    aput-wide v30, v28, v29

    .line 5374
    move-object/from16 v28, v5

    move/from16 v29, v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v30, v3

    move/from16 v31, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v30, v30, v31

    aput-wide v30, v28, v29

    goto :goto_3

    .line 5376
    :cond_8
    goto/16 :goto_0

    .line 5378
    .end local v8    # "mxx":D
    .end local v12    # "tx":D
    .end local v16    # "myy":D
    .end local v18    # "ty":D
    :pswitch_4
    move-object/from16 v28, v2

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v28

    move-wide/from16 v8, v28

    .line 5379
    .restart local v8    # "mxx":D
    move-object/from16 v28, v2

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v28

    move-wide/from16 v16, v28

    .line 5380
    .restart local v16    # "myy":D
    move-wide/from16 v28, v8

    const-wide/16 v30, 0x0

    cmpl-double v28, v28, v30

    if-eqz v28, :cond_9

    move-wide/from16 v28, v16

    const-wide/16 v30, 0x0

    cmpl-double v28, v28, v30

    if-nez v28, :cond_a

    .line 5381
    :cond_9
    new-instance v28, Ljavafx/scene/transform/NonInvertibleTransformException;

    move-object/from16 v34, v28

    move-object/from16 v28, v34

    move-object/from16 v29, v34

    const-string v30, "Determinant is 0"

    invoke-direct/range {v29 .. v30}, Ljavafx/scene/transform/NonInvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 5385
    :cond_a
    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v30, v8

    div-double v28, v28, v30

    move-wide/from16 v8, v28

    .line 5386
    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v30, v16

    div-double v28, v28, v30

    move-wide/from16 v16, v28

    .line 5388
    :goto_4
    add-int/lit8 v7, v7, -0x1

    move/from16 v28, v7

    if-ltz v28, :cond_b

    .line 5389
    move-object/from16 v28, v5

    move/from16 v29, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v30, v8

    move-object/from16 v32, v3

    move/from16 v33, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v32, v32, v33

    mul-double v30, v30, v32

    aput-wide v30, v28, v29

    .line 5390
    move-object/from16 v28, v5

    move/from16 v29, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v30, v16

    move-object/from16 v32, v3

    move/from16 v33, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v32, v32, v33

    mul-double v30, v30, v32

    aput-wide v30, v28, v29

    .line 5391
    move-object/from16 v28, v5

    move/from16 v29, v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v30, v3

    move/from16 v31, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v30, v30, v31

    aput-wide v30, v28, v29

    goto :goto_4

    .line 5393
    :cond_b
    goto/16 :goto_0

    .line 5395
    .end local v8    # "mxx":D
    .end local v16    # "myy":D
    :pswitch_5
    move-object/from16 v28, v2

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v28

    move-wide/from16 v12, v28

    .line 5396
    .restart local v12    # "tx":D
    move-object/from16 v28, v2

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v28

    move-wide/from16 v18, v28

    .line 5397
    .restart local v18    # "ty":D
    :goto_5
    add-int/lit8 v7, v7, -0x1

    move/from16 v28, v7

    if-ltz v28, :cond_c

    .line 5398
    move-object/from16 v28, v5

    move/from16 v29, v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v30, v3

    move/from16 v31, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v30, v30, v31

    move-wide/from16 v32, v12

    sub-double v30, v30, v32

    aput-wide v30, v28, v29

    .line 5399
    move-object/from16 v28, v5

    move/from16 v29, v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v30, v3

    move/from16 v31, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v30, v30, v31

    move-wide/from16 v32, v18

    sub-double v30, v30, v32

    aput-wide v30, v28, v29

    .line 5400
    move-object/from16 v28, v5

    move/from16 v29, v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v30, v3

    move/from16 v31, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v30, v30, v31

    aput-wide v30, v28, v29

    goto :goto_5

    .line 5402
    :cond_c
    goto/16 :goto_0

    .line 5404
    .end local v12    # "tx":D
    .end local v18    # "ty":D
    :pswitch_6
    move-object/from16 v28, v3

    move-object/from16 v29, v5

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_d

    move/from16 v28, v4

    move/from16 v29, v6

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_e

    .line 5405
    :cond_d
    move-object/from16 v28, v3

    move/from16 v29, v4

    move-object/from16 v30, v5

    move/from16 v31, v6

    move/from16 v32, v7

    const/16 v33, 0x3

    mul-int/lit8 v32, v32, 0x3

    invoke-static/range {v28 .. v32}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5408
    :cond_e
    goto/16 :goto_0

    .line 5412
    :pswitch_7
    move-object/from16 v28, v2

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v28

    move-wide/from16 v12, v28

    .line 5413
    .restart local v12    # "tx":D
    move-object/from16 v28, v2

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v28

    move-wide/from16 v18, v28

    .line 5414
    .restart local v18    # "ty":D
    move-object/from16 v28, v2

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/transform/Affine;->getTz()D

    move-result-wide v28

    move-wide/from16 v22, v28

    .line 5415
    .local v22, "tz":D
    :goto_6
    add-int/lit8 v7, v7, -0x1

    move/from16 v28, v7

    if-ltz v28, :cond_f

    .line 5416
    move-object/from16 v28, v5

    move/from16 v29, v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v30, v3

    move/from16 v31, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v30, v30, v31

    move-wide/from16 v32, v12

    sub-double v30, v30, v32

    aput-wide v30, v28, v29

    .line 5417
    move-object/from16 v28, v5

    move/from16 v29, v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v30, v3

    move/from16 v31, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v30, v30, v31

    move-wide/from16 v32, v18

    sub-double v30, v30, v32

    aput-wide v30, v28, v29

    .line 5418
    move-object/from16 v28, v5

    move/from16 v29, v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v30, v3

    move/from16 v31, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v30, v30, v31

    move-wide/from16 v32, v22

    sub-double v30, v30, v32

    aput-wide v30, v28, v29

    goto :goto_6

    .line 5420
    :cond_f
    goto/16 :goto_0

    .line 5422
    .end local v12    # "tx":D
    .end local v18    # "ty":D
    .end local v22    # "tz":D
    :pswitch_8
    move-object/from16 v28, v2

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v28

    move-wide/from16 v8, v28

    .line 5423
    .restart local v8    # "mxx":D
    move-object/from16 v28, v2

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v28

    move-wide/from16 v16, v28

    .line 5424
    .restart local v16    # "myy":D
    move-object/from16 v28, v2

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/transform/Affine;->getMzz()D

    move-result-wide v28

    move-wide/from16 v20, v28

    .line 5425
    .local v20, "mzz":D
    move-wide/from16 v28, v8

    const-wide/16 v30, 0x0

    cmpl-double v28, v28, v30

    if-eqz v28, :cond_10

    move-wide/from16 v28, v16

    const-wide/16 v30, 0x0

    cmpl-double v28, v28, v30

    if-nez v28, :cond_11

    const/16 v28, 0x1

    :goto_7
    move-wide/from16 v29, v20

    const-wide/16 v31, 0x0

    cmpl-double v29, v29, v31

    if-nez v29, :cond_12

    const/16 v29, 0x1

    :goto_8
    or-int v28, v28, v29

    if-eqz v28, :cond_13

    .line 5426
    :cond_10
    new-instance v28, Ljavafx/scene/transform/NonInvertibleTransformException;

    move-object/from16 v34, v28

    move-object/from16 v28, v34

    move-object/from16 v29, v34

    const-string v30, "Determinant is 0"

    invoke-direct/range {v29 .. v30}, Ljavafx/scene/transform/NonInvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 5425
    :cond_11
    const/16 v28, 0x0

    goto :goto_7

    :cond_12
    const/16 v29, 0x0

    goto :goto_8

    .line 5429
    :cond_13
    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v30, v8

    div-double v28, v28, v30

    move-wide/from16 v8, v28

    .line 5430
    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v30, v16

    div-double v28, v28, v30

    move-wide/from16 v16, v28

    .line 5431
    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v30, v20

    div-double v28, v28, v30

    move-wide/from16 v20, v28

    .line 5433
    :goto_9
    add-int/lit8 v7, v7, -0x1

    move/from16 v28, v7

    if-ltz v28, :cond_14

    .line 5434
    move-object/from16 v28, v5

    move/from16 v29, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v30, v8

    move-object/from16 v32, v3

    move/from16 v33, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v32, v32, v33

    mul-double v30, v30, v32

    aput-wide v30, v28, v29

    .line 5435
    move-object/from16 v28, v5

    move/from16 v29, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v30, v16

    move-object/from16 v32, v3

    move/from16 v33, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v32, v32, v33

    mul-double v30, v30, v32

    aput-wide v30, v28, v29

    .line 5436
    move-object/from16 v28, v5

    move/from16 v29, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v30, v20

    move-object/from16 v32, v3

    move/from16 v33, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v32, v32, v33

    mul-double v30, v30, v32

    aput-wide v30, v28, v29

    goto :goto_9

    .line 5438
    :cond_14
    goto/16 :goto_0

    .line 5440
    .end local v8    # "mxx":D
    .end local v16    # "myy":D
    .end local v20    # "mzz":D
    :pswitch_9
    move-object/from16 v28, v2

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v28

    move-wide/from16 v8, v28

    .restart local v8    # "mxx":D
    move-object/from16 v28, v2

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v28

    move-wide/from16 v12, v28

    .line 5441
    .restart local v12    # "tx":D
    move-object/from16 v28, v2

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v28

    move-wide/from16 v16, v28

    .restart local v16    # "myy":D
    move-object/from16 v28, v2

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v28

    move-wide/from16 v18, v28

    .line 5442
    .restart local v18    # "ty":D
    move-object/from16 v28, v2

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/transform/Affine;->getMzz()D

    move-result-wide v28

    move-wide/from16 v20, v28

    .restart local v20    # "mzz":D
    move-object/from16 v28, v2

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/transform/Affine;->getTz()D

    move-result-wide v28

    move-wide/from16 v22, v28

    .line 5443
    .restart local v22    # "tz":D
    move-wide/from16 v28, v8

    const-wide/16 v30, 0x0

    cmpl-double v28, v28, v30

    if-eqz v28, :cond_15

    move-wide/from16 v28, v16

    const-wide/16 v30, 0x0

    cmpl-double v28, v28, v30

    if-eqz v28, :cond_15

    move-wide/from16 v28, v20

    const-wide/16 v30, 0x0

    cmpl-double v28, v28, v30

    if-nez v28, :cond_16

    .line 5444
    :cond_15
    new-instance v28, Ljavafx/scene/transform/NonInvertibleTransformException;

    move-object/from16 v34, v28

    move-object/from16 v28, v34

    move-object/from16 v29, v34

    const-string v30, "Determinant is 0"

    invoke-direct/range {v29 .. v30}, Ljavafx/scene/transform/NonInvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 5447
    :cond_16
    move-wide/from16 v28, v12

    move-wide/from16 v0, v28

    neg-double v0, v0

    move-wide/from16 v28, v0

    move-wide/from16 v30, v8

    div-double v28, v28, v30

    move-wide/from16 v12, v28

    .line 5448
    move-wide/from16 v28, v18

    move-wide/from16 v0, v28

    neg-double v0, v0

    move-wide/from16 v28, v0

    move-wide/from16 v30, v16

    div-double v28, v28, v30

    move-wide/from16 v18, v28

    .line 5449
    move-wide/from16 v28, v22

    move-wide/from16 v0, v28

    neg-double v0, v0

    move-wide/from16 v28, v0

    move-wide/from16 v30, v20

    div-double v28, v28, v30

    move-wide/from16 v22, v28

    .line 5450
    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v30, v8

    div-double v28, v28, v30

    move-wide/from16 v8, v28

    .line 5451
    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v30, v16

    div-double v28, v28, v30

    move-wide/from16 v16, v28

    .line 5452
    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v30, v20

    div-double v28, v28, v30

    move-wide/from16 v20, v28

    .line 5454
    :goto_a
    add-int/lit8 v7, v7, -0x1

    move/from16 v28, v7

    if-ltz v28, :cond_17

    .line 5455
    move-object/from16 v28, v5

    move/from16 v29, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v30, v8

    move-object/from16 v32, v3

    move/from16 v33, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v32, v32, v33

    mul-double v30, v30, v32

    move-wide/from16 v32, v12

    add-double v30, v30, v32

    aput-wide v30, v28, v29

    .line 5456
    move-object/from16 v28, v5

    move/from16 v29, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v30, v16

    move-object/from16 v32, v3

    move/from16 v33, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v32, v32, v33

    mul-double v30, v30, v32

    move-wide/from16 v32, v18

    add-double v30, v30, v32

    aput-wide v30, v28, v29

    .line 5457
    move-object/from16 v28, v5

    move/from16 v29, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v30, v20

    move-object/from16 v32, v3

    move/from16 v33, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v32, v32, v33

    mul-double v30, v30, v32

    move-wide/from16 v32, v22

    add-double v30, v30, v32

    aput-wide v30, v28, v29

    goto :goto_a

    .line 5459
    :cond_17
    goto/16 :goto_0

    .line 5461
    .end local v8    # "mxx":D
    .end local v12    # "tx":D
    .end local v16    # "myy":D
    .end local v18    # "ty":D
    .end local v20    # "mzz":D
    .end local v22    # "tz":D
    :pswitch_a
    move-object/from16 v28, v2

    move-object/from16 v29, v3

    move/from16 v30, v4

    move-object/from16 v31, v5

    move/from16 v32, v6

    move/from16 v33, v7

    invoke-super/range {v28 .. v33}, Ljavafx/scene/transform/Transform;->inverseTransform3DPointsImpl([DI[DII)V

    .line 5463
    goto/16 :goto_0

    .line 5305
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 5310
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

.method public invert()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/scene/transform/NonInvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 1260
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Affine;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    invoke-static {v1}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->access$300(Ljavafx/scene/transform/Affine$AffineAtomicChange;)V

    .line 1262
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/transform/Affine;->state3d:I

    if-nez v1, :cond_0

    .line 1263
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/transform/Affine;->invert2D()V

    .line 1264
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/transform/Affine;->updateState2D()V

    .line 1270
    :goto_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    invoke-static {v1}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->access$400(Ljavafx/scene/transform/Affine$AffineAtomicChange;)V

    .line 1271
    return-void

    .line 1266
    :cond_0
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/transform/Affine;->invert3D()V

    .line 1267
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/transform/Affine;->updateState()V

    goto :goto_0
.end method

.method public final mxxProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 366
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Affine;->mxx:Ljavafx/scene/transform/Affine$AffineElementProperty;

    if-nez v2, :cond_0

    .line 367
    move-object v2, v1

    new-instance v3, Ljavafx/scene/transform/Affine$1;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/transform/Affine;->xx:D

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/transform/Affine$1;-><init>(Ljavafx/scene/transform/Affine;D)V

    iput-object v3, v2, Ljavafx/scene/transform/Affine;->mxx:Ljavafx/scene/transform/Affine$AffineElementProperty;

    .line 379
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Affine;->mxx:Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/transform/Affine;
    return-object v1
.end method

.method public final mxyProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 405
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Affine;->mxy:Ljavafx/scene/transform/Affine$AffineElementProperty;

    if-nez v2, :cond_0

    .line 406
    move-object v2, v1

    new-instance v3, Ljavafx/scene/transform/Affine$2;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/transform/Affine;->xy:D

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/transform/Affine$2;-><init>(Ljavafx/scene/transform/Affine;D)V

    iput-object v3, v2, Ljavafx/scene/transform/Affine;->mxy:Ljavafx/scene/transform/Affine$AffineElementProperty;

    .line 418
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Affine;->mxy:Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/transform/Affine;
    return-object v1
.end method

.method public final mxzProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 444
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Affine;->mxz:Ljavafx/scene/transform/Affine$AffineElementProperty;

    if-nez v2, :cond_0

    .line 445
    move-object v2, v1

    new-instance v3, Ljavafx/scene/transform/Affine$3;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/transform/Affine;->xz:D

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/transform/Affine$3;-><init>(Ljavafx/scene/transform/Affine;D)V

    iput-object v3, v2, Ljavafx/scene/transform/Affine;->mxz:Ljavafx/scene/transform/Affine$AffineElementProperty;

    .line 457
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Affine;->mxz:Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/transform/Affine;
    return-object v1
.end method

.method public final myxProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 522
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Affine;->myx:Ljavafx/scene/transform/Affine$AffineElementProperty;

    if-nez v2, :cond_0

    .line 523
    move-object v2, v1

    new-instance v3, Ljavafx/scene/transform/Affine$5;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/transform/Affine;->yx:D

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/transform/Affine$5;-><init>(Ljavafx/scene/transform/Affine;D)V

    iput-object v3, v2, Ljavafx/scene/transform/Affine;->myx:Ljavafx/scene/transform/Affine$AffineElementProperty;

    .line 535
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Affine;->myx:Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/transform/Affine;
    return-object v1
.end method

.method public final myyProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 561
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Affine;->myy:Ljavafx/scene/transform/Affine$AffineElementProperty;

    if-nez v2, :cond_0

    .line 562
    move-object v2, v1

    new-instance v3, Ljavafx/scene/transform/Affine$6;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/transform/Affine;->yy:D

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/transform/Affine$6;-><init>(Ljavafx/scene/transform/Affine;D)V

    iput-object v3, v2, Ljavafx/scene/transform/Affine;->myy:Ljavafx/scene/transform/Affine$AffineElementProperty;

    .line 574
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Affine;->myy:Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/transform/Affine;
    return-object v1
.end method

.method public final myzProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 600
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Affine;->myz:Ljavafx/scene/transform/Affine$AffineElementProperty;

    if-nez v2, :cond_0

    .line 601
    move-object v2, v1

    new-instance v3, Ljavafx/scene/transform/Affine$7;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/transform/Affine;->yz:D

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/transform/Affine$7;-><init>(Ljavafx/scene/transform/Affine;D)V

    iput-object v3, v2, Ljavafx/scene/transform/Affine;->myz:Ljavafx/scene/transform/Affine$AffineElementProperty;

    .line 613
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Affine;->myz:Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/transform/Affine;
    return-object v1
.end method

.method public final mzxProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 678
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Affine;->mzx:Ljavafx/scene/transform/Affine$AffineElementProperty;

    if-nez v2, :cond_0

    .line 679
    move-object v2, v1

    new-instance v3, Ljavafx/scene/transform/Affine$9;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/transform/Affine;->zx:D

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/transform/Affine$9;-><init>(Ljavafx/scene/transform/Affine;D)V

    iput-object v3, v2, Ljavafx/scene/transform/Affine;->mzx:Ljavafx/scene/transform/Affine$AffineElementProperty;

    .line 691
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Affine;->mzx:Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/transform/Affine;
    return-object v1
.end method

.method public final mzyProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 717
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Affine;->mzy:Ljavafx/scene/transform/Affine$AffineElementProperty;

    if-nez v2, :cond_0

    .line 718
    move-object v2, v1

    new-instance v3, Ljavafx/scene/transform/Affine$10;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/transform/Affine;->zy:D

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/transform/Affine$10;-><init>(Ljavafx/scene/transform/Affine;D)V

    iput-object v3, v2, Ljavafx/scene/transform/Affine;->mzy:Ljavafx/scene/transform/Affine$AffineElementProperty;

    .line 730
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Affine;->mzy:Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/transform/Affine;
    return-object v1
.end method

.method public final mzzProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 756
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Affine;->mzz:Ljavafx/scene/transform/Affine$AffineElementProperty;

    if-nez v2, :cond_0

    .line 757
    move-object v2, v1

    new-instance v3, Ljavafx/scene/transform/Affine$11;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/transform/Affine;->zz:D

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/transform/Affine$11;-><init>(Ljavafx/scene/transform/Affine;D)V

    iput-object v3, v2, Ljavafx/scene/transform/Affine;->mzz:Ljavafx/scene/transform/Affine$AffineElementProperty;

    .line 769
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Affine;->mzz:Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/transform/Affine;
    return-object v1
.end method

.method public prepend(DDDDDD)V
    .locals 53

    .prologue
    .line 1784
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/transform/Affine;
    move-wide/from16 v3, p1

    .local v3, "mxx":D
    move-wide/from16 v5, p3

    .local v5, "mxy":D
    move-wide/from16 v7, p5

    .local v7, "tx":D
    move-wide/from16 v9, p7

    .local v9, "myx":D
    move-wide/from16 v11, p9

    .local v11, "myy":D
    move-wide/from16 v13, p11

    .local v13, "ty":D
    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget v0, v0, Ljavafx/scene/transform/Affine;->state3d:I

    move/from16 v27, v0

    if-nez v27, :cond_0

    .line 1785
    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->access$300(Ljavafx/scene/transform/Affine$AffineAtomicChange;)V

    .line 1787
    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v27

    move-wide/from16 v15, v27

    .line 1788
    .local v15, "m_xx":D
    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v27

    move-wide/from16 v17, v27

    .line 1789
    .local v17, "m_xy":D
    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v27

    move-wide/from16 v19, v27

    .line 1790
    .local v19, "t_x":D
    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v27

    move-wide/from16 v21, v27

    .line 1791
    .local v21, "m_yx":D
    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v27

    move-wide/from16 v23, v27

    .line 1792
    .local v23, "m_yy":D
    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v27

    move-wide/from16 v25, v27

    .line 1794
    .local v25, "t_y":D
    move-object/from16 v27, v2

    move-wide/from16 v28, v3

    move-wide/from16 v30, v15

    mul-double v28, v28, v30

    move-wide/from16 v30, v5

    move-wide/from16 v32, v21

    mul-double v30, v30, v32

    add-double v28, v28, v30

    invoke-virtual/range {v27 .. v29}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    .line 1795
    move-object/from16 v27, v2

    move-wide/from16 v28, v3

    move-wide/from16 v30, v17

    mul-double v28, v28, v30

    move-wide/from16 v30, v5

    move-wide/from16 v32, v23

    mul-double v30, v30, v32

    add-double v28, v28, v30

    invoke-virtual/range {v27 .. v29}, Ljavafx/scene/transform/Affine;->setMxy(D)V

    .line 1796
    move-object/from16 v27, v2

    move-wide/from16 v28, v3

    move-wide/from16 v30, v19

    mul-double v28, v28, v30

    move-wide/from16 v30, v5

    move-wide/from16 v32, v25

    mul-double v30, v30, v32

    add-double v28, v28, v30

    move-wide/from16 v30, v7

    add-double v28, v28, v30

    invoke-virtual/range {v27 .. v29}, Ljavafx/scene/transform/Affine;->setTx(D)V

    .line 1797
    move-object/from16 v27, v2

    move-wide/from16 v28, v9

    move-wide/from16 v30, v15

    mul-double v28, v28, v30

    move-wide/from16 v30, v11

    move-wide/from16 v32, v21

    mul-double v30, v30, v32

    add-double v28, v28, v30

    invoke-virtual/range {v27 .. v29}, Ljavafx/scene/transform/Affine;->setMyx(D)V

    .line 1798
    move-object/from16 v27, v2

    move-wide/from16 v28, v9

    move-wide/from16 v30, v17

    mul-double v28, v28, v30

    move-wide/from16 v30, v11

    move-wide/from16 v32, v23

    mul-double v30, v30, v32

    add-double v28, v28, v30

    invoke-virtual/range {v27 .. v29}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    .line 1799
    move-object/from16 v27, v2

    move-wide/from16 v28, v9

    move-wide/from16 v30, v19

    mul-double v28, v28, v30

    move-wide/from16 v30, v11

    move-wide/from16 v32, v25

    mul-double v30, v30, v32

    add-double v28, v28, v30

    move-wide/from16 v30, v13

    add-double v28, v28, v30

    invoke-virtual/range {v27 .. v29}, Ljavafx/scene/transform/Affine;->setTy(D)V

    .line 1801
    move-object/from16 v27, v2

    invoke-direct/range {v27 .. v27}, Ljavafx/scene/transform/Affine;->updateState2D()V

    .line 1802
    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->access$400(Ljavafx/scene/transform/Affine$AffineAtomicChange;)V

    .line 1803
    .line 1808
    .end local v15    # "m_xx":D
    .end local v17    # "m_xy":D
    .end local v19    # "t_x":D
    .end local v21    # "m_yx":D
    .end local v23    # "m_yy":D
    .end local v25    # "t_y":D
    :goto_0
    return-void

    .line 1804
    :cond_0
    move-object/from16 v27, v2

    move-wide/from16 v28, v3

    move-wide/from16 v30, v5

    const-wide/16 v32, 0x0

    move-wide/from16 v34, v7

    move-wide/from16 v36, v9

    move-wide/from16 v38, v11

    const-wide/16 v40, 0x0

    move-wide/from16 v42, v13

    const-wide/16 v44, 0x0

    const-wide/16 v46, 0x0

    const-wide/high16 v48, 0x3ff0000000000000L    # 1.0

    const-wide/16 v50, 0x0

    invoke-virtual/range {v27 .. v51}, Ljavafx/scene/transform/Affine;->prepend(DDDDDDDDDDDD)V

    goto :goto_0
.end method

.method public prepend(DDDDDDDDDDDD)V
    .locals 59

    .prologue
    .line 1846
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/transform/Affine;
    move-wide/from16 v3, p1

    .local v3, "mxx":D
    move-wide/from16 v5, p3

    .local v5, "mxy":D
    move-wide/from16 v7, p5

    .local v7, "mxz":D
    move-wide/from16 v9, p7

    .local v9, "tx":D
    move-wide/from16 v11, p9

    .local v11, "myx":D
    move-wide/from16 v13, p11

    .local v13, "myy":D
    move-wide/from16 v15, p13

    .local v15, "myz":D
    move-wide/from16 v17, p15

    .local v17, "ty":D
    move-wide/from16 v19, p17

    .local v19, "mzx":D
    move-wide/from16 v21, p19

    .local v21, "mzy":D
    move-wide/from16 v23, p21

    .local v23, "mzz":D
    move-wide/from16 v25, p23

    .local v25, "tz":D
    move-object/from16 v51, v2

    move-object/from16 v0, v51

    iget-object v0, v0, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->access$300(Ljavafx/scene/transform/Affine$AffineAtomicChange;)V

    .line 1848
    move-object/from16 v51, v2

    invoke-virtual/range {v51 .. v51}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v51

    move-wide/from16 v27, v51

    .line 1849
    .local v27, "m_xx":D
    move-object/from16 v51, v2

    invoke-virtual/range {v51 .. v51}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v51

    move-wide/from16 v29, v51

    .line 1850
    .local v29, "m_xy":D
    move-object/from16 v51, v2

    invoke-virtual/range {v51 .. v51}, Ljavafx/scene/transform/Affine;->getMxz()D

    move-result-wide v51

    move-wide/from16 v31, v51

    .line 1851
    .local v31, "m_xz":D
    move-object/from16 v51, v2

    invoke-virtual/range {v51 .. v51}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v51

    move-wide/from16 v33, v51

    .line 1852
    .local v33, "t_x":D
    move-object/from16 v51, v2

    invoke-virtual/range {v51 .. v51}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v51

    move-wide/from16 v35, v51

    .line 1853
    .local v35, "m_yx":D
    move-object/from16 v51, v2

    invoke-virtual/range {v51 .. v51}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v51

    move-wide/from16 v37, v51

    .line 1854
    .local v37, "m_yy":D
    move-object/from16 v51, v2

    invoke-virtual/range {v51 .. v51}, Ljavafx/scene/transform/Affine;->getMyz()D

    move-result-wide v51

    move-wide/from16 v39, v51

    .line 1855
    .local v39, "m_yz":D
    move-object/from16 v51, v2

    invoke-virtual/range {v51 .. v51}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v51

    move-wide/from16 v41, v51

    .line 1856
    .local v41, "t_y":D
    move-object/from16 v51, v2

    invoke-virtual/range {v51 .. v51}, Ljavafx/scene/transform/Affine;->getMzx()D

    move-result-wide v51

    move-wide/from16 v43, v51

    .line 1857
    .local v43, "m_zx":D
    move-object/from16 v51, v2

    invoke-virtual/range {v51 .. v51}, Ljavafx/scene/transform/Affine;->getMzy()D

    move-result-wide v51

    move-wide/from16 v45, v51

    .line 1858
    .local v45, "m_zy":D
    move-object/from16 v51, v2

    invoke-virtual/range {v51 .. v51}, Ljavafx/scene/transform/Affine;->getMzz()D

    move-result-wide v51

    move-wide/from16 v47, v51

    .line 1859
    .local v47, "m_zz":D
    move-object/from16 v51, v2

    invoke-virtual/range {v51 .. v51}, Ljavafx/scene/transform/Affine;->getTz()D

    move-result-wide v51

    move-wide/from16 v49, v51

    .line 1861
    .local v49, "t_z":D
    move-object/from16 v51, v2

    move-wide/from16 v52, v3

    move-wide/from16 v54, v27

    mul-double v52, v52, v54

    move-wide/from16 v54, v5

    move-wide/from16 v56, v35

    mul-double v54, v54, v56

    add-double v52, v52, v54

    move-wide/from16 v54, v7

    move-wide/from16 v56, v43

    mul-double v54, v54, v56

    add-double v52, v52, v54

    invoke-virtual/range {v51 .. v53}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    .line 1862
    move-object/from16 v51, v2

    move-wide/from16 v52, v3

    move-wide/from16 v54, v29

    mul-double v52, v52, v54

    move-wide/from16 v54, v5

    move-wide/from16 v56, v37

    mul-double v54, v54, v56

    add-double v52, v52, v54

    move-wide/from16 v54, v7

    move-wide/from16 v56, v45

    mul-double v54, v54, v56

    add-double v52, v52, v54

    invoke-virtual/range {v51 .. v53}, Ljavafx/scene/transform/Affine;->setMxy(D)V

    .line 1863
    move-object/from16 v51, v2

    move-wide/from16 v52, v3

    move-wide/from16 v54, v31

    mul-double v52, v52, v54

    move-wide/from16 v54, v5

    move-wide/from16 v56, v39

    mul-double v54, v54, v56

    add-double v52, v52, v54

    move-wide/from16 v54, v7

    move-wide/from16 v56, v47

    mul-double v54, v54, v56

    add-double v52, v52, v54

    invoke-virtual/range {v51 .. v53}, Ljavafx/scene/transform/Affine;->setMxz(D)V

    .line 1864
    move-object/from16 v51, v2

    move-wide/from16 v52, v3

    move-wide/from16 v54, v33

    mul-double v52, v52, v54

    move-wide/from16 v54, v5

    move-wide/from16 v56, v41

    mul-double v54, v54, v56

    add-double v52, v52, v54

    move-wide/from16 v54, v7

    move-wide/from16 v56, v49

    mul-double v54, v54, v56

    add-double v52, v52, v54

    move-wide/from16 v54, v9

    add-double v52, v52, v54

    invoke-virtual/range {v51 .. v53}, Ljavafx/scene/transform/Affine;->setTx(D)V

    .line 1865
    move-object/from16 v51, v2

    move-wide/from16 v52, v11

    move-wide/from16 v54, v27

    mul-double v52, v52, v54

    move-wide/from16 v54, v13

    move-wide/from16 v56, v35

    mul-double v54, v54, v56

    add-double v52, v52, v54

    move-wide/from16 v54, v15

    move-wide/from16 v56, v43

    mul-double v54, v54, v56

    add-double v52, v52, v54

    invoke-virtual/range {v51 .. v53}, Ljavafx/scene/transform/Affine;->setMyx(D)V

    .line 1866
    move-object/from16 v51, v2

    move-wide/from16 v52, v11

    move-wide/from16 v54, v29

    mul-double v52, v52, v54

    move-wide/from16 v54, v13

    move-wide/from16 v56, v37

    mul-double v54, v54, v56

    add-double v52, v52, v54

    move-wide/from16 v54, v15

    move-wide/from16 v56, v45

    mul-double v54, v54, v56

    add-double v52, v52, v54

    invoke-virtual/range {v51 .. v53}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    .line 1867
    move-object/from16 v51, v2

    move-wide/from16 v52, v11

    move-wide/from16 v54, v31

    mul-double v52, v52, v54

    move-wide/from16 v54, v13

    move-wide/from16 v56, v39

    mul-double v54, v54, v56

    add-double v52, v52, v54

    move-wide/from16 v54, v15

    move-wide/from16 v56, v47

    mul-double v54, v54, v56

    add-double v52, v52, v54

    invoke-virtual/range {v51 .. v53}, Ljavafx/scene/transform/Affine;->setMyz(D)V

    .line 1868
    move-object/from16 v51, v2

    move-wide/from16 v52, v11

    move-wide/from16 v54, v33

    mul-double v52, v52, v54

    move-wide/from16 v54, v13

    move-wide/from16 v56, v41

    mul-double v54, v54, v56

    add-double v52, v52, v54

    move-wide/from16 v54, v15

    move-wide/from16 v56, v49

    mul-double v54, v54, v56

    add-double v52, v52, v54

    move-wide/from16 v54, v17

    add-double v52, v52, v54

    invoke-virtual/range {v51 .. v53}, Ljavafx/scene/transform/Affine;->setTy(D)V

    .line 1869
    move-object/from16 v51, v2

    move-wide/from16 v52, v19

    move-wide/from16 v54, v27

    mul-double v52, v52, v54

    move-wide/from16 v54, v21

    move-wide/from16 v56, v35

    mul-double v54, v54, v56

    add-double v52, v52, v54

    move-wide/from16 v54, v23

    move-wide/from16 v56, v43

    mul-double v54, v54, v56

    add-double v52, v52, v54

    invoke-virtual/range {v51 .. v53}, Ljavafx/scene/transform/Affine;->setMzx(D)V

    .line 1870
    move-object/from16 v51, v2

    move-wide/from16 v52, v19

    move-wide/from16 v54, v29

    mul-double v52, v52, v54

    move-wide/from16 v54, v21

    move-wide/from16 v56, v37

    mul-double v54, v54, v56

    add-double v52, v52, v54

    move-wide/from16 v54, v23

    move-wide/from16 v56, v45

    mul-double v54, v54, v56

    add-double v52, v52, v54

    invoke-virtual/range {v51 .. v53}, Ljavafx/scene/transform/Affine;->setMzy(D)V

    .line 1871
    move-object/from16 v51, v2

    move-wide/from16 v52, v19

    move-wide/from16 v54, v31

    mul-double v52, v52, v54

    move-wide/from16 v54, v21

    move-wide/from16 v56, v39

    mul-double v54, v54, v56

    add-double v52, v52, v54

    move-wide/from16 v54, v23

    move-wide/from16 v56, v47

    mul-double v54, v54, v56

    add-double v52, v52, v54

    invoke-virtual/range {v51 .. v53}, Ljavafx/scene/transform/Affine;->setMzz(D)V

    .line 1872
    move-object/from16 v51, v2

    move-wide/from16 v52, v19

    move-wide/from16 v54, v33

    mul-double v52, v52, v54

    move-wide/from16 v54, v21

    move-wide/from16 v56, v41

    mul-double v54, v54, v56

    add-double v52, v52, v54

    move-wide/from16 v54, v23

    move-wide/from16 v56, v49

    mul-double v54, v54, v56

    add-double v52, v52, v54

    move-wide/from16 v54, v25

    add-double v52, v52, v54

    invoke-virtual/range {v51 .. v53}, Ljavafx/scene/transform/Affine;->setTz(D)V

    .line 1874
    move-object/from16 v51, v2

    invoke-direct/range {v51 .. v51}, Ljavafx/scene/transform/Affine;->updateState()V

    .line 1875
    move-object/from16 v51, v2

    move-object/from16 v0, v51

    iget-object v0, v0, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->access$400(Ljavafx/scene/transform/Affine$AffineAtomicChange;)V

    .line 1876
    return-void
.end method

.method public prepend(Ljavafx/scene/transform/Transform;)V
    .locals 4

    .prologue
    .line 1753
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Affine;
    move-object v1, p1

    .local v1, "transform":Ljavafx/scene/transform/Transform;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljavafx/scene/transform/Transform;->prependTo(Ljavafx/scene/transform/Affine;)V

    .line 1754
    return-void
.end method

.method public prepend([DLjavafx/scene/transform/MatrixType;I)V
    .locals 31

    .prologue
    .line 1905
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-object/from16 v2, p1

    .local v2, "matrix":[D
    move-object/from16 v3, p2

    .local v3, "type":Ljavafx/scene/transform/MatrixType;
    move/from16 v4, p3

    .local v4, "offset":I
    move-object v5, v2

    array-length v5, v5

    move v6, v4

    move-object v7, v3

    invoke-virtual {v7}, Ljavafx/scene/transform/MatrixType;->elements()I

    move-result v7

    add-int/2addr v6, v7

    if-ge v5, v6, :cond_0

    .line 1906
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    move-object/from16 v30, v5

    move-object/from16 v5, v30

    move-object/from16 v6, v30

    const-string v7, "The array is too short."

    invoke-direct {v6, v7}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1909
    :cond_0
    sget-object v5, Ljavafx/scene/transform/Affine$13;->$SwitchMap$javafx$scene$transform$MatrixType:[I

    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/scene/transform/MatrixType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 1911
    invoke-static {}, Ljavafx/scene/transform/Affine;->stateError()V

    .line 1914
    :pswitch_0
    move-object v5, v2

    move v6, v4

    const/4 v7, 0x6

    add-int/lit8 v6, v6, 0x6

    aget-wide v5, v5, v6

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_1

    move-object v5, v2

    move v6, v4

    const/4 v7, 0x7

    add-int/lit8 v6, v6, 0x7

    aget-wide v5, v5, v6

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_1

    move-object v5, v2

    move v6, v4

    const/16 v7, 0x8

    add-int/lit8 v6, v6, 0x8

    aget-wide v5, v5, v6

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v5, v7

    if-eqz v5, :cond_2

    .line 1917
    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object/from16 v30, v5

    move-object/from16 v5, v30

    move-object/from16 v6, v30

    const-string v7, "The matrix is not affine"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1922
    :cond_2
    :pswitch_1
    move-object v5, v1

    move-object v6, v2

    move v7, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v6, v6, v7

    move-object v8, v2

    move v9, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v8, v8, v9

    move-object v10, v2

    move v11, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v10, v10, v11

    move-object v12, v2

    move v13, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v12, v12, v13

    move-object v14, v2

    move v15, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v14, v14, v15

    move-object/from16 v16, v2

    move/from16 v17, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v16, v16, v17

    invoke-virtual/range {v5 .. v17}, Ljavafx/scene/transform/Affine;->prepend(DDDDDD)V

    .line 1925
    .line 1940
    :goto_0
    return-void

    .line 1927
    :pswitch_2
    move-object v5, v2

    move v6, v4

    const/16 v7, 0xc

    add-int/lit8 v6, v6, 0xc

    aget-wide v5, v5, v6

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_3

    move-object v5, v2

    move v6, v4

    const/16 v7, 0xd

    add-int/lit8 v6, v6, 0xd

    aget-wide v5, v5, v6

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_3

    move-object v5, v2

    move v6, v4

    const/16 v7, 0xe

    add-int/lit8 v6, v6, 0xe

    aget-wide v5, v5, v6

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_3

    move-object v5, v2

    move v6, v4

    const/16 v7, 0xf

    add-int/lit8 v6, v6, 0xf

    aget-wide v5, v5, v6

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v5, v7

    if-eqz v5, :cond_4

    .line 1931
    :cond_3
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object/from16 v30, v5

    move-object/from16 v5, v30

    move-object/from16 v6, v30

    const-string v7, "The matrix is not affine"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1936
    :cond_4
    :pswitch_3
    move-object v5, v1

    move-object v6, v2

    move v7, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v6, v6, v7

    move-object v8, v2

    move v9, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v8, v8, v9

    move-object v10, v2

    move v11, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v10, v10, v11

    move-object v12, v2

    move v13, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v12, v12, v13

    move-object v14, v2

    move v15, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v14, v14, v15

    move-object/from16 v16, v2

    move/from16 v17, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v16, v16, v17

    move-object/from16 v18, v2

    move/from16 v19, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v18, v18, v19

    move-object/from16 v20, v2

    move/from16 v21, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v20, v20, v21

    move-object/from16 v22, v2

    move/from16 v23, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v22, v22, v23

    move-object/from16 v24, v2

    move/from16 v25, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v24, v24, v25

    move-object/from16 v26, v2

    move/from16 v27, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v26, v26, v27

    move-object/from16 v28, v2

    move/from16 v29, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v28, v28, v29

    invoke-virtual/range {v5 .. v29}, Ljavafx/scene/transform/Affine;->prepend(DDDDDDDDDDDD)V

    .line 1940
    goto/16 :goto_0

    .line 1909
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public prependRotation(D)V
    .locals 7

    .prologue
    .line 3993
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Affine;
    move-wide v1, p1

    .local v1, "angle":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    invoke-static {v3}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->access$300(Ljavafx/scene/transform/Affine$AffineAtomicChange;)V

    .line 3994
    move-object v3, v0

    move-wide v4, v1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/transform/Affine;->preRotate2D(D)V

    .line 3995
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    invoke-static {v3}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->access$400(Ljavafx/scene/transform/Affine$AffineAtomicChange;)V

    .line 3996
    return-void
.end method

.method public prependRotation(DDD)V
    .locals 13

    .prologue
    .line 4018
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-wide v2, p1

    .local v2, "angle":D
    move-wide/from16 v4, p3

    .local v4, "pivotX":D
    move-wide/from16 v6, p5

    .local v6, "pivotY":D
    move-object v8, v1

    iget-object v8, v8, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    invoke-static {v8}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->access$300(Ljavafx/scene/transform/Affine$AffineAtomicChange;)V

    .line 4019
    move-wide v8, v4

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-nez v8, :cond_0

    move-wide v8, v6

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-eqz v8, :cond_1

    .line 4020
    :cond_0
    move-object v8, v1

    move-wide v9, v4

    neg-double v9, v9

    move-wide v11, v6

    neg-double v11, v11

    invoke-direct {v8, v9, v10, v11, v12}, Ljavafx/scene/transform/Affine;->preTranslate2D(DD)V

    .line 4021
    move-object v8, v1

    move-wide v9, v2

    invoke-direct {v8, v9, v10}, Ljavafx/scene/transform/Affine;->preRotate2D(D)V

    .line 4022
    move-object v8, v1

    move-wide v9, v4

    move-wide v11, v6

    invoke-direct {v8, v9, v10, v11, v12}, Ljavafx/scene/transform/Affine;->preTranslate2D(DD)V

    .line 4026
    :goto_0
    move-object v8, v1

    iget-object v8, v8, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    invoke-static {v8}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->access$400(Ljavafx/scene/transform/Affine$AffineAtomicChange;)V

    .line 4027
    return-void

    .line 4024
    :cond_1
    move-object v8, v1

    move-wide v9, v2

    invoke-direct {v8, v9, v10}, Ljavafx/scene/transform/Affine;->preRotate2D(D)V

    goto :goto_0
.end method

.method public prependRotation(DDDDDDD)V
    .locals 27

    .prologue
    .line 4080
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/transform/Affine;
    move-wide/from16 v4, p1

    .local v4, "angle":D
    move-wide/from16 v6, p3

    .local v6, "pivotX":D
    move-wide/from16 v8, p5

    .local v8, "pivotY":D
    move-wide/from16 v10, p7

    .local v10, "pivotZ":D
    move-wide/from16 v12, p9

    .local v12, "axisX":D
    move-wide/from16 v14, p11

    .local v14, "axisY":D
    move-wide/from16 v16, p13

    .local v16, "axisZ":D
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->access$300(Ljavafx/scene/transform/Affine$AffineAtomicChange;)V

    .line 4081
    move-wide/from16 v18, v6

    const-wide/16 v20, 0x0

    cmpl-double v18, v18, v20

    if-nez v18, :cond_0

    move-wide/from16 v18, v8

    const-wide/16 v20, 0x0

    cmpl-double v18, v18, v20

    if-nez v18, :cond_0

    move-wide/from16 v18, v10

    const-wide/16 v20, 0x0

    cmpl-double v18, v18, v20

    if-eqz v18, :cond_1

    .line 4082
    :cond_0
    move-object/from16 v18, v3

    move-wide/from16 v19, v6

    move-wide/from16 v0, v19

    neg-double v0, v0

    move-wide/from16 v19, v0

    move-wide/from16 v21, v8

    move-wide/from16 v0, v21

    neg-double v0, v0

    move-wide/from16 v21, v0

    move-wide/from16 v23, v10

    move-wide/from16 v0, v23

    neg-double v0, v0

    move-wide/from16 v23, v0

    invoke-direct/range {v18 .. v24}, Ljavafx/scene/transform/Affine;->preTranslate3D(DDD)V

    .line 4083
    move-object/from16 v18, v3

    move-wide/from16 v19, v4

    move-wide/from16 v21, v12

    move-wide/from16 v23, v14

    move-wide/from16 v25, v16

    invoke-direct/range {v18 .. v26}, Ljavafx/scene/transform/Affine;->preRotate3D(DDDD)V

    .line 4084
    move-object/from16 v18, v3

    move-wide/from16 v19, v6

    move-wide/from16 v21, v8

    move-wide/from16 v23, v10

    invoke-direct/range {v18 .. v24}, Ljavafx/scene/transform/Affine;->preTranslate3D(DDD)V

    .line 4088
    :goto_0
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->access$400(Ljavafx/scene/transform/Affine$AffineAtomicChange;)V

    .line 4089
    return-void

    .line 4086
    :cond_1
    move-object/from16 v18, v3

    move-wide/from16 v19, v4

    move-wide/from16 v21, v12

    move-wide/from16 v23, v14

    move-wide/from16 v25, v16

    invoke-direct/range {v18 .. v26}, Ljavafx/scene/transform/Affine;->preRotate3D(DDDD)V

    goto :goto_0
.end method

.method public prependRotation(DDDDLjavafx/geometry/Point3D;)V
    .locals 27

    .prologue
    .line 4117
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-wide/from16 v2, p1

    .local v2, "angle":D
    move-wide/from16 v4, p3

    .local v4, "pivotX":D
    move-wide/from16 v6, p5

    .local v6, "pivotY":D
    move-wide/from16 v8, p7

    .local v8, "pivotZ":D
    move-object/from16 v10, p9

    .local v10, "axis":Ljavafx/geometry/Point3D;
    move-object v11, v1

    move-wide v12, v2

    move-wide v14, v4

    move-wide/from16 v16, v6

    move-wide/from16 v18, v8

    move-object/from16 v20, v10

    .line 4118
    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v20

    move-object/from16 v22, v10

    invoke-virtual/range {v22 .. v22}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v22

    move-object/from16 v24, v10

    invoke-virtual/range {v24 .. v24}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v24

    .line 4117
    invoke-virtual/range {v11 .. v25}, Ljavafx/scene/transform/Affine;->prependRotation(DDDDDDD)V

    .line 4119
    return-void
.end method

.method public prependRotation(DLjavafx/geometry/Point2D;)V
    .locals 13

    .prologue
    .line 4050
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-wide v2, p1

    .local v2, "angle":D
    move-object/from16 v4, p3

    .local v4, "pivot":Ljavafx/geometry/Point2D;
    move-object v5, v1

    move-wide v6, v2

    move-object v8, v4

    invoke-virtual {v8}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v8

    move-object v10, v4

    invoke-virtual {v10}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v10

    invoke-virtual/range {v5 .. v11}, Ljavafx/scene/transform/Affine;->prependRotation(DDD)V

    .line 4051
    return-void
.end method

.method public prependRotation(DLjavafx/geometry/Point3D;Ljavafx/geometry/Point3D;)V
    .locals 21

    .prologue
    .line 4144
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/transform/Affine;
    move-wide/from16 v1, p1

    .local v1, "angle":D
    move-object/from16 v3, p3

    .local v3, "pivot":Ljavafx/geometry/Point3D;
    move-object/from16 v4, p4

    .local v4, "axis":Ljavafx/geometry/Point3D;
    move-object v5, v0

    move-wide v6, v1

    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v8

    move-object v10, v3

    invoke-virtual {v10}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v10

    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v12

    move-object v14, v4

    .line 4145
    invoke-virtual {v14}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v14

    move-object/from16 v16, v4

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v16

    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v18

    .line 4144
    invoke-virtual/range {v5 .. v19}, Ljavafx/scene/transform/Affine;->prependRotation(DDDDDDD)V

    .line 4146
    return-void
.end method

.method public prependScale(DD)V
    .locals 11

    .prologue
    .line 2640
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Affine;
    move-wide v1, p1

    .local v1, "sx":D
    move-wide v3, p3

    .local v3, "sy":D
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    invoke-static {v5}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->access$300(Ljavafx/scene/transform/Affine$AffineAtomicChange;)V

    .line 2641
    move-object v5, v0

    move-wide v6, v1

    move-wide v8, v3

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/scene/transform/Affine;->preScale2D(DD)V

    .line 2642
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    invoke-static {v5}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->access$400(Ljavafx/scene/transform/Affine$AffineAtomicChange;)V

    .line 2643
    return-void
.end method

.method public prependScale(DDD)V
    .locals 15

    .prologue
    .line 2723
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Affine;
    move-wide/from16 v1, p1

    .local v1, "sx":D
    move-wide/from16 v3, p3

    .local v3, "sy":D
    move-wide/from16 v5, p5

    .local v5, "sz":D
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    invoke-static {v7}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->access$300(Ljavafx/scene/transform/Affine$AffineAtomicChange;)V

    .line 2724
    move-object v7, v0

    move-wide v8, v1

    move-wide v10, v3

    move-wide v12, v5

    invoke-direct/range {v7 .. v13}, Ljavafx/scene/transform/Affine;->preScale3D(DDD)V

    .line 2725
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    invoke-static {v7}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->access$400(Ljavafx/scene/transform/Affine$AffineAtomicChange;)V

    .line 2726
    return-void
.end method

.method public prependScale(DDDD)V
    .locals 15

    .prologue
    .line 2667
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-wide/from16 v2, p1

    .local v2, "sx":D
    move-wide/from16 v4, p3

    .local v4, "sy":D
    move-wide/from16 v6, p5

    .local v6, "pivotX":D
    move-wide/from16 v8, p7

    .local v8, "pivotY":D
    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    invoke-static {v10}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->access$300(Ljavafx/scene/transform/Affine$AffineAtomicChange;)V

    .line 2668
    move-wide v10, v6

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-nez v10, :cond_0

    move-wide v10, v8

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-eqz v10, :cond_1

    .line 2669
    :cond_0
    move-object v10, v1

    move-wide v11, v6

    neg-double v11, v11

    move-wide v13, v8

    neg-double v13, v13

    invoke-direct {v10, v11, v12, v13, v14}, Ljavafx/scene/transform/Affine;->preTranslate2D(DD)V

    .line 2670
    move-object v10, v1

    move-wide v11, v2

    move-wide v13, v4

    invoke-direct {v10, v11, v12, v13, v14}, Ljavafx/scene/transform/Affine;->preScale2D(DD)V

    .line 2671
    move-object v10, v1

    move-wide v11, v6

    move-wide v13, v8

    invoke-direct {v10, v11, v12, v13, v14}, Ljavafx/scene/transform/Affine;->preTranslate2D(DD)V

    .line 2675
    :goto_0
    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    invoke-static {v10}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->access$400(Ljavafx/scene/transform/Affine$AffineAtomicChange;)V

    .line 2676
    return-void

    .line 2673
    :cond_1
    move-object v10, v1

    move-wide v11, v2

    move-wide v13, v4

    invoke-direct {v10, v11, v12, v13, v14}, Ljavafx/scene/transform/Affine;->preScale2D(DD)V

    goto :goto_0
.end method

.method public prependScale(DDDDDD)V
    .locals 23

    .prologue
    .line 2754
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/transform/Affine;
    move-wide/from16 v4, p1

    .local v4, "sx":D
    move-wide/from16 v6, p3

    .local v6, "sy":D
    move-wide/from16 v8, p5

    .local v8, "sz":D
    move-wide/from16 v10, p7

    .local v10, "pivotX":D
    move-wide/from16 v12, p9

    .local v12, "pivotY":D
    move-wide/from16 v14, p11

    .local v14, "pivotZ":D
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->access$300(Ljavafx/scene/transform/Affine$AffineAtomicChange;)V

    .line 2755
    move-wide/from16 v16, v10

    const-wide/16 v18, 0x0

    cmpl-double v16, v16, v18

    if-nez v16, :cond_0

    move-wide/from16 v16, v12

    const-wide/16 v18, 0x0

    cmpl-double v16, v16, v18

    if-nez v16, :cond_0

    move-wide/from16 v16, v14

    const-wide/16 v18, 0x0

    cmpl-double v16, v16, v18

    if-eqz v16, :cond_1

    .line 2756
    :cond_0
    move-object/from16 v16, v3

    move-wide/from16 v17, v10

    move-wide/from16 v0, v17

    neg-double v0, v0

    move-wide/from16 v17, v0

    move-wide/from16 v19, v12

    move-wide/from16 v0, v19

    neg-double v0, v0

    move-wide/from16 v19, v0

    move-wide/from16 v21, v14

    move-wide/from16 v0, v21

    neg-double v0, v0

    move-wide/from16 v21, v0

    invoke-direct/range {v16 .. v22}, Ljavafx/scene/transform/Affine;->preTranslate3D(DDD)V

    .line 2757
    move-object/from16 v16, v3

    move-wide/from16 v17, v4

    move-wide/from16 v19, v6

    move-wide/from16 v21, v8

    invoke-direct/range {v16 .. v22}, Ljavafx/scene/transform/Affine;->preScale3D(DDD)V

    .line 2758
    move-object/from16 v16, v3

    move-wide/from16 v17, v10

    move-wide/from16 v19, v12

    move-wide/from16 v21, v14

    invoke-direct/range {v16 .. v22}, Ljavafx/scene/transform/Affine;->preTranslate3D(DDD)V

    .line 2762
    :goto_0
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->access$400(Ljavafx/scene/transform/Affine$AffineAtomicChange;)V

    .line 2763
    return-void

    .line 2760
    :cond_1
    move-object/from16 v16, v3

    move-wide/from16 v17, v4

    move-wide/from16 v19, v6

    move-wide/from16 v21, v8

    invoke-direct/range {v16 .. v22}, Ljavafx/scene/transform/Affine;->preScale3D(DDD)V

    goto :goto_0
.end method

.method public prependScale(DDDLjavafx/geometry/Point3D;)V
    .locals 23

    .prologue
    .line 2788
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-wide/from16 v2, p1

    .local v2, "sx":D
    move-wide/from16 v4, p3

    .local v4, "sy":D
    move-wide/from16 v6, p5

    .local v6, "sz":D
    move-object/from16 v8, p7

    .local v8, "pivot":Ljavafx/geometry/Point3D;
    move-object v9, v1

    move-wide v10, v2

    move-wide v12, v4

    move-wide v14, v6

    move-object/from16 v16, v8

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v16

    move-object/from16 v18, v8

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v18

    move-object/from16 v20, v8

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v20

    invoke-virtual/range {v9 .. v21}, Ljavafx/scene/transform/Affine;->prependScale(DDDDDD)V

    .line 2789
    return-void
.end method

.method public prependScale(DDLjavafx/geometry/Point2D;)V
    .locals 17

    .prologue
    .line 2700
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-wide/from16 v2, p1

    .local v2, "sx":D
    move-wide/from16 v4, p3

    .local v4, "sy":D
    move-object/from16 v6, p5

    .local v6, "pivot":Ljavafx/geometry/Point2D;
    move-object v7, v1

    move-wide v8, v2

    move-wide v10, v4

    move-object v12, v6

    invoke-virtual {v12}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v12

    move-object v14, v6

    invoke-virtual {v14}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v14

    invoke-virtual/range {v7 .. v15}, Ljavafx/scene/transform/Affine;->prependScale(DDDD)V

    .line 2701
    return-void
.end method

.method public prependShear(DD)V
    .locals 11

    .prologue
    .line 3176
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Affine;
    move-wide v1, p1

    .local v1, "shx":D
    move-wide v3, p3

    .local v3, "shy":D
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    invoke-static {v5}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->access$300(Ljavafx/scene/transform/Affine$AffineAtomicChange;)V

    .line 3177
    move-object v5, v0

    move-wide v6, v1

    move-wide v8, v3

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/scene/transform/Affine;->preShear2D(DD)V

    .line 3178
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    invoke-static {v5}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->access$400(Ljavafx/scene/transform/Affine$AffineAtomicChange;)V

    .line 3179
    return-void
.end method

.method public prependShear(DDDD)V
    .locals 15

    .prologue
    .line 3203
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-wide/from16 v2, p1

    .local v2, "shx":D
    move-wide/from16 v4, p3

    .local v4, "shy":D
    move-wide/from16 v6, p5

    .local v6, "pivotX":D
    move-wide/from16 v8, p7

    .local v8, "pivotY":D
    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    invoke-static {v10}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->access$300(Ljavafx/scene/transform/Affine$AffineAtomicChange;)V

    .line 3204
    move-wide v10, v6

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-nez v10, :cond_0

    move-wide v10, v8

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-eqz v10, :cond_1

    .line 3205
    :cond_0
    move-object v10, v1

    move-wide v11, v6

    neg-double v11, v11

    move-wide v13, v8

    neg-double v13, v13

    invoke-direct {v10, v11, v12, v13, v14}, Ljavafx/scene/transform/Affine;->preTranslate2D(DD)V

    .line 3206
    move-object v10, v1

    move-wide v11, v2

    move-wide v13, v4

    invoke-direct {v10, v11, v12, v13, v14}, Ljavafx/scene/transform/Affine;->preShear2D(DD)V

    .line 3207
    move-object v10, v1

    move-wide v11, v6

    move-wide v13, v8

    invoke-direct {v10, v11, v12, v13, v14}, Ljavafx/scene/transform/Affine;->preTranslate2D(DD)V

    .line 3211
    :goto_0
    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    invoke-static {v10}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->access$400(Ljavafx/scene/transform/Affine$AffineAtomicChange;)V

    .line 3212
    return-void

    .line 3209
    :cond_1
    move-object v10, v1

    move-wide v11, v2

    move-wide v13, v4

    invoke-direct {v10, v11, v12, v13, v14}, Ljavafx/scene/transform/Affine;->preShear2D(DD)V

    goto :goto_0
.end method

.method public prependShear(DDLjavafx/geometry/Point2D;)V
    .locals 17

    .prologue
    .line 3236
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-wide/from16 v2, p1

    .local v2, "shx":D
    move-wide/from16 v4, p3

    .local v4, "shy":D
    move-object/from16 v6, p5

    .local v6, "pivot":Ljavafx/geometry/Point2D;
    move-object v7, v1

    move-wide v8, v2

    move-wide v10, v4

    move-object v12, v6

    invoke-virtual {v12}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v12

    move-object v14, v6

    invoke-virtual {v14}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v14

    invoke-virtual/range {v7 .. v15}, Ljavafx/scene/transform/Affine;->prependShear(DDDD)V

    .line 3237
    return-void
.end method

.method prependTo(Ljavafx/scene/transform/Affine;)V
    .locals 28

    .prologue
    .line 1946
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-object/from16 v2, p1

    .local v2, "a":Ljavafx/scene/transform/Affine;
    move-object v3, v1

    iget v3, v3, Ljavafx/scene/transform/Affine;->state3d:I

    packed-switch v3, :pswitch_data_0

    .line 1948
    invoke-static {}, Ljavafx/scene/transform/Affine;->stateError()V

    .line 1951
    :pswitch_0
    move-object v3, v1

    iget v3, v3, Ljavafx/scene/transform/Affine;->state2d:I

    packed-switch v3, :pswitch_data_1

    .line 1965
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v6

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v8

    move-object v10, v1

    .line 1966
    invoke-virtual {v10}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v10

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v12

    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v14

    .line 1965
    invoke-virtual/range {v3 .. v15}, Ljavafx/scene/transform/Affine;->prepend(DDDDDD)V

    .line 1967
    .line 1983
    :goto_0
    return-void

    .line 1953
    :pswitch_1
    goto :goto_0

    .line 1955
    :pswitch_2
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Ljavafx/scene/transform/Affine;->prependTranslation(DD)V

    .line 1956
    goto :goto_0

    .line 1958
    :pswitch_3
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Ljavafx/scene/transform/Affine;->prependScale(DD)V

    .line 1959
    goto :goto_0

    .line 1961
    :pswitch_4
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Ljavafx/scene/transform/Affine;->prependScale(DD)V

    .line 1962
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Ljavafx/scene/transform/Affine;->prependTranslation(DD)V

    .line 1963
    goto :goto_0

    .line 1970
    :pswitch_5
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v6

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getTz()D

    move-result-wide v8

    invoke-virtual/range {v3 .. v9}, Ljavafx/scene/transform/Affine;->prependTranslation(DDD)V

    .line 1971
    goto :goto_0

    .line 1973
    :pswitch_6
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v6

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMzz()D

    move-result-wide v8

    invoke-virtual/range {v3 .. v9}, Ljavafx/scene/transform/Affine;->prependScale(DDD)V

    .line 1974
    goto :goto_0

    .line 1976
    :pswitch_7
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v6

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMzz()D

    move-result-wide v8

    invoke-virtual/range {v3 .. v9}, Ljavafx/scene/transform/Affine;->prependScale(DDD)V

    .line 1977
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v6

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getTz()D

    move-result-wide v8

    invoke-virtual/range {v3 .. v9}, Ljavafx/scene/transform/Affine;->prependTranslation(DDD)V

    .line 1978
    goto/16 :goto_0

    .line 1980
    :pswitch_8
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v6

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMxz()D

    move-result-wide v8

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v10

    move-object v12, v1

    .line 1981
    invoke-virtual {v12}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v12

    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v14

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/transform/Affine;->getMyz()D

    move-result-wide v16

    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v18

    move-object/from16 v20, v1

    .line 1982
    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/transform/Affine;->getMzx()D

    move-result-wide v20

    move-object/from16 v22, v1

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/transform/Affine;->getMzy()D

    move-result-wide v22

    move-object/from16 v24, v1

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Affine;->getMzz()D

    move-result-wide v24

    move-object/from16 v26, v1

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/transform/Affine;->getTz()D

    move-result-wide v26

    .line 1980
    invoke-virtual/range {v3 .. v27}, Ljavafx/scene/transform/Affine;->prepend(DDDDDDDDDDDD)V

    .line 1983
    goto/16 :goto_0

    .line 1946
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 1951
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public prependTranslation(DD)V
    .locals 11

    .prologue
    .line 2222
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Affine;
    move-wide v1, p1

    .local v1, "tx":D
    move-wide v3, p3

    .local v3, "ty":D
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    invoke-static {v5}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->access$300(Ljavafx/scene/transform/Affine$AffineAtomicChange;)V

    .line 2223
    move-object v5, v0

    move-wide v6, v1

    move-wide v8, v3

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/scene/transform/Affine;->preTranslate2D(DD)V

    .line 2224
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    invoke-static {v5}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->access$400(Ljavafx/scene/transform/Affine$AffineAtomicChange;)V

    .line 2225
    return-void
.end method

.method public prependTranslation(DDD)V
    .locals 15

    .prologue
    .line 2198
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Affine;
    move-wide/from16 v1, p1

    .local v1, "tx":D
    move-wide/from16 v3, p3

    .local v3, "ty":D
    move-wide/from16 v5, p5

    .local v5, "tz":D
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    invoke-static {v7}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->access$300(Ljavafx/scene/transform/Affine$AffineAtomicChange;)V

    .line 2199
    move-object v7, v0

    move-wide v8, v1

    move-wide v10, v3

    move-wide v12, v5

    invoke-direct/range {v7 .. v13}, Ljavafx/scene/transform/Affine;->preTranslate3D(DDD)V

    .line 2200
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    invoke-static {v7}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->access$400(Ljavafx/scene/transform/Affine$AffineAtomicChange;)V

    .line 2201
    return-void
.end method

.method public setElement(Ljavafx/scene/transform/MatrixType;IID)V
    .locals 12

    .prologue
    .line 828
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Affine;
    move-object v1, p1

    .local v1, "type":Ljavafx/scene/transform/MatrixType;
    move v2, p2

    .local v2, "row":I
    move v3, p3

    .local v3, "column":I
    move-wide/from16 v4, p4

    .local v4, "value":D
    move v6, v2

    if-ltz v6, :cond_0

    move v6, v2

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/transform/MatrixType;->rows()I

    move-result v7

    if-ge v6, v7, :cond_0

    move v6, v3

    if-ltz v6, :cond_0

    move v6, v3

    move-object v7, v1

    .line 829
    invoke-virtual {v7}, Ljavafx/scene/transform/MatrixType;->columns()I

    move-result v7

    if-lt v6, v7, :cond_1

    .line 830
    :cond_0
    new-instance v6, Ljava/lang/IndexOutOfBoundsException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Index outside of affine matrix "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 833
    :cond_1
    sget-object v6, Ljavafx/scene/transform/Affine$13;->$SwitchMap$javafx$scene$transform$MatrixType:[I

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/transform/MatrixType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 835
    invoke-static {}, Ljavafx/scene/transform/Affine;->stateError()V

    .line 840
    :pswitch_0
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Affine;->isType2D()Z

    move-result v6

    if-nez v6, :cond_2

    .line 841
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const-string v8, "Cannot access 2D matrix of a 3D transform"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 844
    :cond_2
    move v6, v2

    packed-switch v6, :pswitch_data_1

    .line 864
    .line 901
    :cond_3
    :goto_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot set affine matrix "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " element "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide v9, v4

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 846
    :pswitch_1
    move v6, v3

    packed-switch v6, :pswitch_data_2

    .line 852
    :pswitch_2
    move v6, v3

    packed-switch v6, :pswitch_data_3

    .line 858
    :pswitch_3
    move v6, v3

    packed-switch v6, :pswitch_data_4

    goto :goto_0

    .line 859
    :pswitch_4
    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_3

    .line 895
    :goto_1
    return-void

    .line 847
    :pswitch_5
    move-object v6, v0

    move-wide v7, v4

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    goto :goto_1

    .line 848
    :pswitch_6
    move-object v6, v0

    move-wide v7, v4

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/transform/Affine;->setMxy(D)V

    goto :goto_1

    .line 849
    :pswitch_7
    move-object v6, v0

    move-wide v7, v4

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/transform/Affine;->setTx(D)V

    goto :goto_1

    .line 853
    :pswitch_8
    move-object v6, v0

    move-wide v7, v4

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/transform/Affine;->setMyx(D)V

    goto :goto_1

    .line 854
    :pswitch_9
    move-object v6, v0

    move-wide v7, v4

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    goto :goto_1

    .line 855
    :pswitch_a
    move-object v6, v0

    move-wide v7, v4

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/transform/Affine;->setTy(D)V

    goto :goto_1

    .line 860
    :pswitch_b
    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_3

    goto :goto_1

    .line 861
    :pswitch_c
    move-wide v6, v4

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_3

    goto :goto_1

    .line 868
    :pswitch_d
    move v6, v2

    packed-switch v6, :pswitch_data_5

    goto/16 :goto_0

    .line 870
    :pswitch_e
    move v6, v3

    packed-switch v6, :pswitch_data_6

    .line 877
    :pswitch_f
    move v6, v3

    packed-switch v6, :pswitch_data_7

    .line 884
    :pswitch_10
    move v6, v3

    packed-switch v6, :pswitch_data_8

    .line 891
    :pswitch_11
    move v6, v3

    packed-switch v6, :pswitch_data_9

    goto/16 :goto_0

    .line 892
    :pswitch_12
    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_3

    goto :goto_1

    .line 871
    :pswitch_13
    move-object v6, v0

    move-wide v7, v4

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    goto :goto_1

    .line 872
    :pswitch_14
    move-object v6, v0

    move-wide v7, v4

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/transform/Affine;->setMxy(D)V

    goto :goto_1

    .line 873
    :pswitch_15
    move-object v6, v0

    move-wide v7, v4

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/transform/Affine;->setMxz(D)V

    goto :goto_1

    .line 874
    :pswitch_16
    move-object v6, v0

    move-wide v7, v4

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/transform/Affine;->setTx(D)V

    goto :goto_1

    .line 878
    :pswitch_17
    move-object v6, v0

    move-wide v7, v4

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/transform/Affine;->setMyx(D)V

    goto :goto_1

    .line 879
    :pswitch_18
    move-object v6, v0

    move-wide v7, v4

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    goto :goto_1

    .line 880
    :pswitch_19
    move-object v6, v0

    move-wide v7, v4

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/transform/Affine;->setMyz(D)V

    goto :goto_1

    .line 881
    :pswitch_1a
    move-object v6, v0

    move-wide v7, v4

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/transform/Affine;->setTy(D)V

    goto/16 :goto_1

    .line 885
    :pswitch_1b
    move-object v6, v0

    move-wide v7, v4

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/transform/Affine;->setMzx(D)V

    goto/16 :goto_1

    .line 886
    :pswitch_1c
    move-object v6, v0

    move-wide v7, v4

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/transform/Affine;->setMzy(D)V

    goto/16 :goto_1

    .line 887
    :pswitch_1d
    move-object v6, v0

    move-wide v7, v4

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/transform/Affine;->setMzz(D)V

    goto/16 :goto_1

    .line 888
    :pswitch_1e
    move-object v6, v0

    move-wide v7, v4

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/transform/Affine;->setTz(D)V

    goto/16 :goto_1

    .line 893
    :pswitch_1f
    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_3

    goto/16 :goto_1

    .line 894
    :pswitch_20
    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_3

    goto/16 :goto_1

    .line 895
    :pswitch_21
    move-wide v6, v4

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_3

    goto/16 :goto_1

    .line 833
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_d
    .end packed-switch

    .line 844
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 846
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 852
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 858
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_4
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 868
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch

    .line 870
    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch

    .line 877
    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
    .end packed-switch

    .line 884
    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
    .end packed-switch

    .line 891
    :pswitch_data_9
    .packed-switch 0x0
        :pswitch_12
        :pswitch_1f
        :pswitch_20
        :pswitch_21
    .end packed-switch
.end method

.method public final setMxx(D)V
    .locals 9

    .prologue
    .line 350
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/transform/Affine;->mxx:Ljavafx/scene/transform/Affine$AffineElementProperty;

    if-nez v4, :cond_1

    .line 351
    move-object v4, v1

    iget-wide v4, v4, Ljavafx/scene/transform/Affine;->xx:D

    move-wide v6, v2

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_0

    .line 352
    move-object v4, v1

    move-wide v5, v2

    iput-wide v5, v4, Ljavafx/scene/transform/Affine;->xx:D

    .line 353
    move-object v4, v1

    invoke-direct {v4}, Ljavafx/scene/transform/Affine;->postProcessChange()V

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->mxxProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    goto :goto_0
.end method

.method public final setMxy(D)V
    .locals 9

    .prologue
    .line 389
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/transform/Affine;->mxy:Ljavafx/scene/transform/Affine$AffineElementProperty;

    if-nez v4, :cond_1

    .line 390
    move-object v4, v1

    iget-wide v4, v4, Ljavafx/scene/transform/Affine;->xy:D

    move-wide v6, v2

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_0

    .line 391
    move-object v4, v1

    move-wide v5, v2

    iput-wide v5, v4, Ljavafx/scene/transform/Affine;->xy:D

    .line 392
    move-object v4, v1

    invoke-direct {v4}, Ljavafx/scene/transform/Affine;->postProcessChange()V

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->mxyProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    goto :goto_0
.end method

.method public final setMxz(D)V
    .locals 9

    .prologue
    .line 428
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/transform/Affine;->mxz:Ljavafx/scene/transform/Affine$AffineElementProperty;

    if-nez v4, :cond_1

    .line 429
    move-object v4, v1

    iget-wide v4, v4, Ljavafx/scene/transform/Affine;->xz:D

    move-wide v6, v2

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_0

    .line 430
    move-object v4, v1

    move-wide v5, v2

    iput-wide v5, v4, Ljavafx/scene/transform/Affine;->xz:D

    .line 431
    move-object v4, v1

    invoke-direct {v4}, Ljavafx/scene/transform/Affine;->postProcessChange()V

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 434
    :cond_1
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->mxzProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    goto :goto_0
.end method

.method public final setMyx(D)V
    .locals 9

    .prologue
    .line 506
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/transform/Affine;->myx:Ljavafx/scene/transform/Affine$AffineElementProperty;

    if-nez v4, :cond_1

    .line 507
    move-object v4, v1

    iget-wide v4, v4, Ljavafx/scene/transform/Affine;->yx:D

    move-wide v6, v2

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_0

    .line 508
    move-object v4, v1

    move-wide v5, v2

    iput-wide v5, v4, Ljavafx/scene/transform/Affine;->yx:D

    .line 509
    move-object v4, v1

    invoke-direct {v4}, Ljavafx/scene/transform/Affine;->postProcessChange()V

    .line 514
    :cond_0
    :goto_0
    return-void

    .line 512
    :cond_1
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->myxProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    goto :goto_0
.end method

.method public final setMyy(D)V
    .locals 9

    .prologue
    .line 545
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/transform/Affine;->myy:Ljavafx/scene/transform/Affine$AffineElementProperty;

    if-nez v4, :cond_1

    .line 546
    move-object v4, v1

    iget-wide v4, v4, Ljavafx/scene/transform/Affine;->yy:D

    move-wide v6, v2

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_0

    .line 547
    move-object v4, v1

    move-wide v5, v2

    iput-wide v5, v4, Ljavafx/scene/transform/Affine;->yy:D

    .line 548
    move-object v4, v1

    invoke-direct {v4}, Ljavafx/scene/transform/Affine;->postProcessChange()V

    .line 553
    :cond_0
    :goto_0
    return-void

    .line 551
    :cond_1
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->myyProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    goto :goto_0
.end method

.method public final setMyz(D)V
    .locals 9

    .prologue
    .line 584
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/transform/Affine;->myz:Ljavafx/scene/transform/Affine$AffineElementProperty;

    if-nez v4, :cond_1

    .line 585
    move-object v4, v1

    iget-wide v4, v4, Ljavafx/scene/transform/Affine;->yz:D

    move-wide v6, v2

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_0

    .line 586
    move-object v4, v1

    move-wide v5, v2

    iput-wide v5, v4, Ljavafx/scene/transform/Affine;->yz:D

    .line 587
    move-object v4, v1

    invoke-direct {v4}, Ljavafx/scene/transform/Affine;->postProcessChange()V

    .line 592
    :cond_0
    :goto_0
    return-void

    .line 590
    :cond_1
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->myzProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    goto :goto_0
.end method

.method public final setMzx(D)V
    .locals 9

    .prologue
    .line 662
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/transform/Affine;->mzx:Ljavafx/scene/transform/Affine$AffineElementProperty;

    if-nez v4, :cond_1

    .line 663
    move-object v4, v1

    iget-wide v4, v4, Ljavafx/scene/transform/Affine;->zx:D

    move-wide v6, v2

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_0

    .line 664
    move-object v4, v1

    move-wide v5, v2

    iput-wide v5, v4, Ljavafx/scene/transform/Affine;->zx:D

    .line 665
    move-object v4, v1

    invoke-direct {v4}, Ljavafx/scene/transform/Affine;->postProcessChange()V

    .line 670
    :cond_0
    :goto_0
    return-void

    .line 668
    :cond_1
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->mzxProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    goto :goto_0
.end method

.method public final setMzy(D)V
    .locals 9

    .prologue
    .line 701
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/transform/Affine;->mzy:Ljavafx/scene/transform/Affine$AffineElementProperty;

    if-nez v4, :cond_1

    .line 702
    move-object v4, v1

    iget-wide v4, v4, Ljavafx/scene/transform/Affine;->zy:D

    move-wide v6, v2

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_0

    .line 703
    move-object v4, v1

    move-wide v5, v2

    iput-wide v5, v4, Ljavafx/scene/transform/Affine;->zy:D

    .line 704
    move-object v4, v1

    invoke-direct {v4}, Ljavafx/scene/transform/Affine;->postProcessChange()V

    .line 709
    :cond_0
    :goto_0
    return-void

    .line 707
    :cond_1
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->mzyProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    goto :goto_0
.end method

.method public final setMzz(D)V
    .locals 9

    .prologue
    .line 740
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/transform/Affine;->mzz:Ljavafx/scene/transform/Affine$AffineElementProperty;

    if-nez v4, :cond_1

    .line 741
    move-object v4, v1

    iget-wide v4, v4, Ljavafx/scene/transform/Affine;->zz:D

    move-wide v6, v2

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_0

    .line 742
    move-object v4, v1

    move-wide v5, v2

    iput-wide v5, v4, Ljavafx/scene/transform/Affine;->zz:D

    .line 743
    move-object v4, v1

    invoke-direct {v4}, Ljavafx/scene/transform/Affine;->postProcessChange()V

    .line 748
    :cond_0
    :goto_0
    return-void

    .line 746
    :cond_1
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->mzzProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    goto :goto_0
.end method

.method public setToIdentity()V
    .locals 4

    .prologue
    .line 1225
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Affine;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    invoke-static {v1}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->access$300(Ljavafx/scene/transform/Affine$AffineAtomicChange;)V

    .line 1227
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/transform/Affine;->state3d:I

    if-eqz v1, :cond_1

    .line 1228
    move-object v1, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    move-object v1, v0

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/transform/Affine;->setMxy(D)V

    move-object v1, v0

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/transform/Affine;->setMxz(D)V

    move-object v1, v0

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/transform/Affine;->setTx(D)V

    .line 1229
    move-object v1, v0

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/transform/Affine;->setMyx(D)V

    move-object v1, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    move-object v1, v0

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/transform/Affine;->setMyz(D)V

    move-object v1, v0

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/transform/Affine;->setTy(D)V

    .line 1230
    move-object v1, v0

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/transform/Affine;->setMzx(D)V

    move-object v1, v0

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/transform/Affine;->setMzy(D)V

    move-object v1, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/transform/Affine;->setMzz(D)V

    move-object v1, v0

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/transform/Affine;->setTz(D)V

    .line 1231
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Ljavafx/scene/transform/Affine;->state3d:I

    .line 1232
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Ljavafx/scene/transform/Affine;->state2d:I

    .line 1239
    :cond_0
    :goto_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    invoke-static {v1}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->access$400(Ljavafx/scene/transform/Affine$AffineAtomicChange;)V

    .line 1240
    return-void

    .line 1233
    :cond_1
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/transform/Affine;->state2d:I

    if-eqz v1, :cond_0

    .line 1234
    move-object v1, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    move-object v1, v0

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/transform/Affine;->setMxy(D)V

    move-object v1, v0

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/transform/Affine;->setTx(D)V

    .line 1235
    move-object v1, v0

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/transform/Affine;->setMyx(D)V

    move-object v1, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    move-object v1, v0

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/transform/Affine;->setTy(D)V

    .line 1236
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Ljavafx/scene/transform/Affine;->state2d:I

    goto :goto_0
.end method

.method public setToTransform(DDDDDD)V
    .locals 39

    .prologue
    .line 1117
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/transform/Affine;
    move-wide/from16 v1, p1

    .local v1, "mxx":D
    move-wide/from16 v3, p3

    .local v3, "mxy":D
    move-wide/from16 v5, p5

    .local v5, "tx":D
    move-wide/from16 v7, p7

    .local v7, "myx":D
    move-wide/from16 v9, p9

    .local v9, "myy":D
    move-wide/from16 v11, p11

    .local v11, "ty":D
    move-object v13, v0

    move-wide v14, v1

    move-wide/from16 v16, v3

    const-wide/16 v18, 0x0

    move-wide/from16 v20, v5

    move-wide/from16 v22, v7

    move-wide/from16 v24, v9

    const-wide/16 v26, 0x0

    move-wide/from16 v28, v11

    const-wide/16 v30, 0x0

    const-wide/16 v32, 0x0

    const-wide/high16 v34, 0x3ff0000000000000L    # 1.0

    const-wide/16 v36, 0x0

    invoke-virtual/range {v13 .. v37}, Ljavafx/scene/transform/Affine;->setToTransform(DDDDDDDDDDDD)V

    .line 1120
    return-void
.end method

.method public setToTransform(DDDDDDDDDDDD)V
    .locals 29

    .prologue
    .line 1143
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
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

    move-object/from16 v0, v26

    iget-object v0, v0, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->access$300(Ljavafx/scene/transform/Affine$AffineAtomicChange;)V

    .line 1145
    move-object/from16 v26, v1

    move-wide/from16 v27, v2

    invoke-virtual/range {v26 .. v28}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    .line 1146
    move-object/from16 v26, v1

    move-wide/from16 v27, v4

    invoke-virtual/range {v26 .. v28}, Ljavafx/scene/transform/Affine;->setMxy(D)V

    .line 1147
    move-object/from16 v26, v1

    move-wide/from16 v27, v6

    invoke-virtual/range {v26 .. v28}, Ljavafx/scene/transform/Affine;->setMxz(D)V

    .line 1148
    move-object/from16 v26, v1

    move-wide/from16 v27, v8

    invoke-virtual/range {v26 .. v28}, Ljavafx/scene/transform/Affine;->setTx(D)V

    .line 1150
    move-object/from16 v26, v1

    move-wide/from16 v27, v10

    invoke-virtual/range {v26 .. v28}, Ljavafx/scene/transform/Affine;->setMyx(D)V

    .line 1151
    move-object/from16 v26, v1

    move-wide/from16 v27, v12

    invoke-virtual/range {v26 .. v28}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    .line 1152
    move-object/from16 v26, v1

    move-wide/from16 v27, v14

    invoke-virtual/range {v26 .. v28}, Ljavafx/scene/transform/Affine;->setMyz(D)V

    .line 1153
    move-object/from16 v26, v1

    move-wide/from16 v27, v16

    invoke-virtual/range {v26 .. v28}, Ljavafx/scene/transform/Affine;->setTy(D)V

    .line 1155
    move-object/from16 v26, v1

    move-wide/from16 v27, v18

    invoke-virtual/range {v26 .. v28}, Ljavafx/scene/transform/Affine;->setMzx(D)V

    .line 1156
    move-object/from16 v26, v1

    move-wide/from16 v27, v20

    invoke-virtual/range {v26 .. v28}, Ljavafx/scene/transform/Affine;->setMzy(D)V

    .line 1157
    move-object/from16 v26, v1

    move-wide/from16 v27, v22

    invoke-virtual/range {v26 .. v28}, Ljavafx/scene/transform/Affine;->setMzz(D)V

    .line 1158
    move-object/from16 v26, v1

    move-wide/from16 v27, v24

    invoke-virtual/range {v26 .. v28}, Ljavafx/scene/transform/Affine;->setTz(D)V

    .line 1160
    move-object/from16 v26, v1

    invoke-direct/range {v26 .. v26}, Ljavafx/scene/transform/Affine;->updateState()V

    .line 1161
    move-object/from16 v26, v1

    move-object/from16 v0, v26

    iget-object v0, v0, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->access$400(Ljavafx/scene/transform/Affine$AffineAtomicChange;)V

    .line 1162
    return-void
.end method

.method public setToTransform(Ljavafx/scene/transform/Transform;)V
    .locals 28

    .prologue
    .line 1095
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-object/from16 v2, p1

    .local v2, "transform":Ljavafx/scene/transform/Transform;
    move-object v3, v1

    move-object v4, v2

    .line 1096
    invoke-virtual {v4}, Ljavafx/scene/transform/Transform;->getMxx()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/transform/Transform;->getMxy()D

    move-result-wide v6

    move-object v8, v2

    .line 1097
    invoke-virtual {v8}, Ljavafx/scene/transform/Transform;->getMxz()D

    move-result-wide v8

    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/scene/transform/Transform;->getTx()D

    move-result-wide v10

    move-object v12, v2

    .line 1098
    invoke-virtual {v12}, Ljavafx/scene/transform/Transform;->getMyx()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/scene/transform/Transform;->getMyy()D

    move-result-wide v14

    move-object/from16 v16, v2

    .line 1099
    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/transform/Transform;->getMyz()D

    move-result-wide v16

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/transform/Transform;->getTy()D

    move-result-wide v18

    move-object/from16 v20, v2

    .line 1100
    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/transform/Transform;->getMzx()D

    move-result-wide v20

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/transform/Transform;->getMzy()D

    move-result-wide v22

    move-object/from16 v24, v2

    .line 1101
    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Transform;->getMzz()D

    move-result-wide v24

    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/transform/Transform;->getTz()D

    move-result-wide v26

    .line 1095
    invoke-virtual/range {v3 .. v27}, Ljavafx/scene/transform/Affine;->setToTransform(DDDDDDDDDDDD)V

    .line 1102
    return-void
.end method

.method public setToTransform([DLjavafx/scene/transform/MatrixType;I)V
    .locals 31

    .prologue
    .line 1180
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-object/from16 v2, p1

    .local v2, "matrix":[D
    move-object/from16 v3, p2

    .local v3, "type":Ljavafx/scene/transform/MatrixType;
    move/from16 v4, p3

    .local v4, "offset":I
    move-object v5, v2

    array-length v5, v5

    move v6, v4

    move-object v7, v3

    invoke-virtual {v7}, Ljavafx/scene/transform/MatrixType;->elements()I

    move-result v7

    add-int/2addr v6, v7

    if-ge v5, v6, :cond_0

    .line 1181
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    move-object/from16 v30, v5

    move-object/from16 v5, v30

    move-object/from16 v6, v30

    const-string v7, "The array is too short."

    invoke-direct {v6, v7}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1184
    :cond_0
    sget-object v5, Ljavafx/scene/transform/Affine$13;->$SwitchMap$javafx$scene$transform$MatrixType:[I

    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/scene/transform/MatrixType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 1186
    invoke-static {}, Ljavafx/scene/transform/Affine;->stateError()V

    .line 1189
    :pswitch_0
    move-object v5, v2

    move v6, v4

    const/4 v7, 0x6

    add-int/lit8 v6, v6, 0x6

    aget-wide v5, v5, v6

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_1

    move-object v5, v2

    move v6, v4

    const/4 v7, 0x7

    add-int/lit8 v6, v6, 0x7

    aget-wide v5, v5, v6

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_1

    move-object v5, v2

    move v6, v4

    const/16 v7, 0x8

    add-int/lit8 v6, v6, 0x8

    aget-wide v5, v5, v6

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v5, v7

    if-eqz v5, :cond_2

    .line 1192
    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object/from16 v30, v5

    move-object/from16 v5, v30

    move-object/from16 v6, v30

    const-string v7, "The matrix is not affine"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1197
    :cond_2
    :pswitch_1
    move-object v5, v1

    move-object v6, v2

    move v7, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v6, v6, v7

    move-object v8, v2

    move v9, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v8, v8, v9

    move-object v10, v2

    move v11, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v10, v10, v11

    move-object v12, v2

    move v13, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v12, v12, v13

    move-object v14, v2

    move v15, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v14, v14, v15

    move-object/from16 v16, v2

    move/from16 v17, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v16, v16, v17

    invoke-virtual/range {v5 .. v17}, Ljavafx/scene/transform/Affine;->setToTransform(DDDDDD)V

    .line 1200
    .line 1216
    :goto_0
    return-void

    .line 1202
    :pswitch_2
    move-object v5, v2

    move v6, v4

    const/16 v7, 0xc

    add-int/lit8 v6, v6, 0xc

    aget-wide v5, v5, v6

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_3

    move-object v5, v2

    move v6, v4

    const/16 v7, 0xd

    add-int/lit8 v6, v6, 0xd

    aget-wide v5, v5, v6

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_3

    move-object v5, v2

    move v6, v4

    const/16 v7, 0xe

    add-int/lit8 v6, v6, 0xe

    aget-wide v5, v5, v6

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_3

    move-object v5, v2

    move v6, v4

    const/16 v7, 0xf

    add-int/lit8 v6, v6, 0xf

    aget-wide v5, v5, v6

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v5, v7

    if-eqz v5, :cond_4

    .line 1206
    :cond_3
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object/from16 v30, v5

    move-object/from16 v5, v30

    move-object/from16 v6, v30

    const-string v7, "The matrix is not affine"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1211
    :cond_4
    :pswitch_3
    move-object v5, v1

    move-object v6, v2

    move v7, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v6, v6, v7

    move-object v8, v2

    move v9, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v8, v8, v9

    move-object v10, v2

    move v11, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v10, v10, v11

    move-object v12, v2

    move v13, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v12, v12, v13

    move-object v14, v2

    move v15, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v14, v14, v15

    move-object/from16 v16, v2

    move/from16 v17, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v16, v16, v17

    move-object/from16 v18, v2

    move/from16 v19, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v18, v18, v19

    move-object/from16 v20, v2

    move/from16 v21, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v20, v20, v21

    move-object/from16 v22, v2

    move/from16 v23, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v22, v22, v23

    move-object/from16 v24, v2

    move/from16 v25, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v24, v24, v25

    move-object/from16 v26, v2

    move/from16 v27, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v26, v26, v27

    move-object/from16 v28, v2

    move/from16 v29, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v28, v28, v29

    invoke-virtual/range {v5 .. v29}, Ljavafx/scene/transform/Affine;->setToTransform(DDDDDDDDDDDD)V

    .line 1216
    goto/16 :goto_0

    .line 1184
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final setTx(D)V
    .locals 9

    .prologue
    .line 467
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/transform/Affine;->tx:Ljavafx/scene/transform/Affine$AffineElementProperty;

    if-nez v4, :cond_1

    .line 468
    move-object v4, v1

    iget-wide v4, v4, Ljavafx/scene/transform/Affine;->xt:D

    move-wide v6, v2

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_0

    .line 469
    move-object v4, v1

    move-wide v5, v2

    iput-wide v5, v4, Ljavafx/scene/transform/Affine;->xt:D

    .line 470
    move-object v4, v1

    invoke-direct {v4}, Ljavafx/scene/transform/Affine;->postProcessChange()V

    .line 475
    :cond_0
    :goto_0
    return-void

    .line 473
    :cond_1
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->txProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    goto :goto_0
.end method

.method public final setTy(D)V
    .locals 9

    .prologue
    .line 623
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/transform/Affine;->ty:Ljavafx/scene/transform/Affine$AffineElementProperty;

    if-nez v4, :cond_1

    .line 624
    move-object v4, v1

    iget-wide v4, v4, Ljavafx/scene/transform/Affine;->yt:D

    move-wide v6, v2

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_0

    .line 625
    move-object v4, v1

    move-wide v5, v2

    iput-wide v5, v4, Ljavafx/scene/transform/Affine;->yt:D

    .line 626
    move-object v4, v1

    invoke-direct {v4}, Ljavafx/scene/transform/Affine;->postProcessChange()V

    .line 631
    :cond_0
    :goto_0
    return-void

    .line 629
    :cond_1
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->tyProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    goto :goto_0
.end method

.method public final setTz(D)V
    .locals 9

    .prologue
    .line 779
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/transform/Affine;->tz:Ljavafx/scene/transform/Affine$AffineElementProperty;

    if-nez v4, :cond_1

    .line 780
    move-object v4, v1

    iget-wide v4, v4, Ljavafx/scene/transform/Affine;->zt:D

    move-wide v6, v2

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_0

    .line 781
    move-object v4, v1

    move-wide v5, v2

    iput-wide v5, v4, Ljavafx/scene/transform/Affine;->zt:D

    .line 782
    move-object v4, v1

    invoke-direct {v4}, Ljavafx/scene/transform/Affine;->postProcessChange()V

    .line 787
    :cond_0
    :goto_0
    return-void

    .line 785
    :cond_1
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->tzProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 5566
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Affine [\n"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 5568
    .local v2, "sb":Ljava/lang/StringBuilder;
    move-object v3, v2

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5569
    move-object v3, v2

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5570
    move-object v3, v2

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getMxz()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5571
    move-object v3, v2

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5572
    move-object v3, v2

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5573
    move-object v3, v2

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5574
    move-object v3, v2

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5575
    move-object v3, v2

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getMyz()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5576
    move-object v3, v2

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5577
    move-object v3, v2

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5578
    move-object v3, v2

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getMzx()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5579
    move-object v3, v2

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getMzy()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5580
    move-object v3, v2

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getMzz()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5581
    move-object v3, v2

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getTz()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5583
    move-object v3, v2

    const-string v4, "\n]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .end local v1    # "this":Ljavafx/scene/transform/Affine;
    return-object v1
.end method

.method public transform(DD)Ljavafx/geometry/Point2D;
    .locals 17

    .prologue
    .line 4688
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Affine;->ensureCanTransform2DPoint()V

    .line 4690
    move-object v6, v1

    iget v6, v6, Ljavafx/scene/transform/Affine;->state2d:I

    packed-switch v6, :pswitch_data_0

    .line 4692
    invoke-static {}, Ljavafx/scene/transform/Affine;->stateError()V

    .line 4695
    :pswitch_0
    new-instance v6, Ljavafx/geometry/Point2D;

    move-object/from16 v16, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v16

    move-object v8, v1

    .line 4696
    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v8

    move-wide v10, v2

    mul-double/2addr v8, v10

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v10

    move-wide v12, v4

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v10

    add-double/2addr v8, v10

    move-object v10, v1

    .line 4697
    invoke-virtual {v10}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v10

    move-wide v12, v2

    mul-double/2addr v10, v12

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v12

    move-wide v14, v4

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v12

    add-double/2addr v10, v12

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v1, v6

    .line 4717
    .end local v1    # "this":Ljavafx/scene/transform/Affine;
    :goto_0
    return-object v1

    .line 4699
    .restart local v1    # "this":Ljavafx/scene/transform/Affine;
    :pswitch_1
    new-instance v6, Ljavafx/geometry/Point2D;

    move-object/from16 v16, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v16

    move-object v8, v1

    .line 4700
    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v8

    move-wide v10, v2

    mul-double/2addr v8, v10

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v10

    move-wide v12, v4

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    move-object v10, v1

    .line 4701
    invoke-virtual {v10}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v10

    move-wide v12, v2

    mul-double/2addr v10, v12

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v12

    move-wide v14, v4

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v1, v6

    goto :goto_0

    .line 4703
    :pswitch_2
    new-instance v6, Ljavafx/geometry/Point2D;

    move-object/from16 v16, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v16

    move-object v8, v1

    .line 4704
    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v8

    move-wide v10, v4

    mul-double/2addr v8, v10

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v10

    add-double/2addr v8, v10

    move-object v10, v1

    .line 4705
    invoke-virtual {v10}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v10

    move-wide v12, v2

    mul-double/2addr v10, v12

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v12

    add-double/2addr v10, v12

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v1, v6

    goto :goto_0

    .line 4707
    :pswitch_3
    new-instance v6, Ljavafx/geometry/Point2D;

    move-object/from16 v16, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v16

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v8

    move-wide v10, v4

    mul-double/2addr v8, v10

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v10

    move-wide v12, v2

    mul-double/2addr v10, v12

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v1, v6

    goto :goto_0

    .line 4709
    :pswitch_4
    new-instance v6, Ljavafx/geometry/Point2D;

    move-object/from16 v16, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v16

    move-object v8, v1

    .line 4710
    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v8

    move-wide v10, v2

    mul-double/2addr v8, v10

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v10

    add-double/2addr v8, v10

    move-object v10, v1

    .line 4711
    invoke-virtual {v10}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v10

    move-wide v12, v4

    mul-double/2addr v10, v12

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v12

    add-double/2addr v10, v12

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v1, v6

    goto/16 :goto_0

    .line 4713
    :pswitch_5
    new-instance v6, Ljavafx/geometry/Point2D;

    move-object/from16 v16, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v16

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v8

    move-wide v10, v2

    mul-double/2addr v8, v10

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v10

    move-wide v12, v4

    mul-double/2addr v10, v12

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v1, v6

    goto/16 :goto_0

    .line 4715
    :pswitch_6
    new-instance v6, Ljavafx/geometry/Point2D;

    move-object/from16 v16, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v16

    move-wide v8, v2

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v10

    add-double/2addr v8, v10

    move-wide v10, v4

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v12

    add-double/2addr v10, v12

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v1, v6

    goto/16 :goto_0

    .line 4717
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

    .line 4690
    nop

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
    .locals 21

    .prologue
    .line 4723
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-wide/from16 v6, p5

    .local v6, "z":D
    move-object v8, v1

    iget v8, v8, Ljavafx/scene/transform/Affine;->state3d:I

    packed-switch v8, :pswitch_data_0

    .line 4725
    invoke-static {}, Ljavafx/scene/transform/Affine;->stateError()V

    .line 4728
    :pswitch_0
    move-object v8, v1

    iget v8, v8, Ljavafx/scene/transform/Affine;->state2d:I

    packed-switch v8, :pswitch_data_1

    .line 4730
    invoke-static {}, Ljavafx/scene/transform/Affine;->stateError()V

    .line 4733
    :pswitch_1
    new-instance v8, Ljavafx/geometry/Point3D;

    move-object/from16 v20, v8

    move-object/from16 v8, v20

    move-object/from16 v9, v20

    move-object v10, v1

    .line 4734
    invoke-virtual {v10}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v10

    move-wide v12, v2

    mul-double/2addr v10, v12

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v12

    move-wide v14, v4

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v12

    add-double/2addr v10, v12

    move-object v12, v1

    .line 4735
    invoke-virtual {v12}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v12

    move-wide v14, v2

    mul-double/2addr v12, v14

    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v14

    move-wide/from16 v16, v4

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v14

    add-double/2addr v12, v14

    move-wide v14, v6

    invoke-direct/range {v9 .. v15}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v1, v8

    .line 4770
    .end local v1    # "this":Ljavafx/scene/transform/Affine;
    :goto_0
    return-object v1

    .line 4737
    .restart local v1    # "this":Ljavafx/scene/transform/Affine;
    :pswitch_2
    new-instance v8, Ljavafx/geometry/Point3D;

    move-object/from16 v20, v8

    move-object/from16 v8, v20

    move-object/from16 v9, v20

    move-object v10, v1

    .line 4738
    invoke-virtual {v10}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v10

    move-wide v12, v2

    mul-double/2addr v10, v12

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v12

    move-wide v14, v4

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    move-object v12, v1

    .line 4739
    invoke-virtual {v12}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v12

    move-wide v14, v2

    mul-double/2addr v12, v14

    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v14

    move-wide/from16 v16, v4

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    move-wide v14, v6

    invoke-direct/range {v9 .. v15}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v1, v8

    goto :goto_0

    .line 4741
    :pswitch_3
    new-instance v8, Ljavafx/geometry/Point3D;

    move-object/from16 v20, v8

    move-object/from16 v8, v20

    move-object/from16 v9, v20

    move-object v10, v1

    .line 4742
    invoke-virtual {v10}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v10

    move-wide v12, v4

    mul-double/2addr v10, v12

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v12

    add-double/2addr v10, v12

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v12

    move-wide v14, v2

    mul-double/2addr v12, v14

    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v14

    add-double/2addr v12, v14

    move-wide v14, v6

    invoke-direct/range {v9 .. v15}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v1, v8

    goto :goto_0

    .line 4745
    :pswitch_4
    new-instance v8, Ljavafx/geometry/Point3D;

    move-object/from16 v20, v8

    move-object/from16 v8, v20

    move-object/from16 v9, v20

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v10

    move-wide v12, v4

    mul-double/2addr v10, v12

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v12

    move-wide v14, v2

    mul-double/2addr v12, v14

    move-wide v14, v6

    invoke-direct/range {v9 .. v15}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v1, v8

    goto :goto_0

    .line 4747
    :pswitch_5
    new-instance v8, Ljavafx/geometry/Point3D;

    move-object/from16 v20, v8

    move-object/from16 v8, v20

    move-object/from16 v9, v20

    move-object v10, v1

    .line 4748
    invoke-virtual {v10}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v10

    move-wide v12, v2

    mul-double/2addr v10, v12

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v12

    add-double/2addr v10, v12

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v12

    move-wide v14, v4

    mul-double/2addr v12, v14

    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v14

    add-double/2addr v12, v14

    move-wide v14, v6

    invoke-direct/range {v9 .. v15}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v1, v8

    goto/16 :goto_0

    .line 4751
    :pswitch_6
    new-instance v8, Ljavafx/geometry/Point3D;

    move-object/from16 v20, v8

    move-object/from16 v8, v20

    move-object/from16 v9, v20

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v10

    move-wide v12, v2

    mul-double/2addr v10, v12

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v12

    move-wide v14, v4

    mul-double/2addr v12, v14

    move-wide v14, v6

    invoke-direct/range {v9 .. v15}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v1, v8

    goto/16 :goto_0

    .line 4753
    :pswitch_7
    new-instance v8, Ljavafx/geometry/Point3D;

    move-object/from16 v20, v8

    move-object/from16 v8, v20

    move-object/from16 v9, v20

    move-wide v10, v2

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v12

    add-double/2addr v10, v12

    move-wide v12, v4

    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v14

    add-double/2addr v12, v14

    move-wide v14, v6

    invoke-direct/range {v9 .. v15}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v1, v8

    goto/16 :goto_0

    .line 4755
    :pswitch_8
    new-instance v8, Ljavafx/geometry/Point3D;

    move-object/from16 v20, v8

    move-object/from16 v8, v20

    move-object/from16 v9, v20

    move-wide v10, v2

    move-wide v12, v4

    move-wide v14, v6

    invoke-direct/range {v9 .. v15}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v1, v8

    goto/16 :goto_0

    .line 4758
    :pswitch_9
    new-instance v8, Ljavafx/geometry/Point3D;

    move-object/from16 v20, v8

    move-object/from16 v8, v20

    move-object/from16 v9, v20

    move-wide v10, v2

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v12

    add-double/2addr v10, v12

    move-wide v12, v4

    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v14

    add-double/2addr v12, v14

    move-wide v14, v6

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/transform/Affine;->getTz()D

    move-result-wide v16

    add-double v14, v14, v16

    invoke-direct/range {v9 .. v15}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v1, v8

    goto/16 :goto_0

    .line 4760
    :pswitch_a
    new-instance v8, Ljavafx/geometry/Point3D;

    move-object/from16 v20, v8

    move-object/from16 v8, v20

    move-object/from16 v9, v20

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v10

    move-wide v12, v2

    mul-double/2addr v10, v12

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v12

    move-wide v14, v4

    mul-double/2addr v12, v14

    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/transform/Affine;->getMzz()D

    move-result-wide v14

    move-wide/from16 v16, v6

    mul-double v14, v14, v16

    invoke-direct/range {v9 .. v15}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v1, v8

    goto/16 :goto_0

    .line 4762
    :pswitch_b
    new-instance v8, Ljavafx/geometry/Point3D;

    move-object/from16 v20, v8

    move-object/from16 v8, v20

    move-object/from16 v9, v20

    move-object v10, v1

    .line 4763
    invoke-virtual {v10}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v10

    move-wide v12, v2

    mul-double/2addr v10, v12

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v12

    add-double/2addr v10, v12

    move-object v12, v1

    .line 4764
    invoke-virtual {v12}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v12

    move-wide v14, v4

    mul-double/2addr v12, v14

    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v14

    add-double/2addr v12, v14

    move-object v14, v1

    .line 4765
    invoke-virtual {v14}, Ljavafx/scene/transform/Affine;->getMzz()D

    move-result-wide v14

    move-wide/from16 v16, v6

    mul-double v14, v14, v16

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/transform/Affine;->getTz()D

    move-result-wide v16

    add-double v14, v14, v16

    invoke-direct/range {v9 .. v15}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v1, v8

    goto/16 :goto_0

    .line 4767
    :pswitch_c
    new-instance v8, Ljavafx/geometry/Point3D;

    move-object/from16 v20, v8

    move-object/from16 v8, v20

    move-object/from16 v9, v20

    move-object v10, v1

    .line 4768
    invoke-virtual {v10}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v10

    move-wide v12, v2

    mul-double/2addr v10, v12

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v12

    move-wide v14, v4

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/transform/Affine;->getMxz()D

    move-result-wide v12

    move-wide v14, v6

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v12

    add-double/2addr v10, v12

    move-object v12, v1

    .line 4769
    invoke-virtual {v12}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v12

    move-wide v14, v2

    mul-double/2addr v12, v14

    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v14

    move-wide/from16 v16, v4

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/transform/Affine;->getMyz()D

    move-result-wide v14

    move-wide/from16 v16, v6

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v14

    add-double/2addr v12, v14

    move-object v14, v1

    .line 4770
    invoke-virtual {v14}, Ljavafx/scene/transform/Affine;->getMzx()D

    move-result-wide v14

    move-wide/from16 v16, v2

    mul-double v14, v14, v16

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/transform/Affine;->getMzy()D

    move-result-wide v16

    move-wide/from16 v18, v4

    mul-double v16, v16, v18

    add-double v14, v14, v16

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/transform/Affine;->getMzz()D

    move-result-wide v16

    move-wide/from16 v18, v6

    mul-double v16, v16, v18

    add-double v14, v14, v16

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/transform/Affine;->getTz()D

    move-result-wide v16

    add-double v14, v14, v16

    invoke-direct/range {v9 .. v15}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v1, v8

    goto/16 :goto_0

    .line 4723
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 4728
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

.method transform2DPointsImpl([DI[DII)V
    .locals 32

    .prologue
    .line 4780
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/transform/Affine;
    move-object/from16 v3, p1

    .local v3, "srcPts":[D
    move/from16 v4, p2

    .local v4, "srcOff":I
    move-object/from16 v5, p3

    .local v5, "dstPts":[D
    move/from16 v6, p4

    .local v6, "dstOff":I
    move/from16 v7, p5

    .local v7, "numPts":I
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Ljavafx/scene/transform/Affine;->state2d:I

    move/from16 v24, v0

    packed-switch v24, :pswitch_data_0

    .line 4782
    invoke-static {}, Ljavafx/scene/transform/Affine;->stateError()V

    .line 4785
    :pswitch_0
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v24

    move-wide/from16 v8, v24

    .local v8, "mxx":D
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v24

    move-wide/from16 v10, v24

    .local v10, "mxy":D
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v24

    move-wide/from16 v12, v24

    .line 4786
    .local v12, "tx":D
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v24

    move-wide/from16 v14, v24

    .local v14, "myx":D
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v24

    move-wide/from16 v16, v24

    .local v16, "myy":D
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v24

    move-wide/from16 v18, v24

    .line 4787
    .local v18, "ty":D
    :goto_0
    add-int/lit8 v7, v7, -0x1

    move/from16 v24, v7

    if-ltz v24, :cond_0

    .line 4788
    move-object/from16 v24, v3

    move/from16 v25, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v24, v24, v25

    move-wide/from16 v20, v24

    .line 4789
    .local v20, "x":D
    move-object/from16 v24, v3

    move/from16 v25, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v24, v24, v25

    move-wide/from16 v22, v24

    .line 4790
    .local v22, "y":D
    move-object/from16 v24, v5

    move/from16 v25, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v26, v8

    move-wide/from16 v28, v20

    mul-double v26, v26, v28

    move-wide/from16 v28, v10

    move-wide/from16 v30, v22

    mul-double v28, v28, v30

    add-double v26, v26, v28

    move-wide/from16 v28, v12

    add-double v26, v26, v28

    aput-wide v26, v24, v25

    .line 4791
    move-object/from16 v24, v5

    move/from16 v25, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v26, v14

    move-wide/from16 v28, v20

    mul-double v26, v26, v28

    move-wide/from16 v28, v16

    move-wide/from16 v30, v22

    mul-double v28, v28, v30

    add-double v26, v26, v28

    move-wide/from16 v28, v18

    add-double v26, v26, v28

    aput-wide v26, v24, v25

    .line 4792
    goto :goto_0

    .line 4793
    .line 4851
    .end local v8    # "mxx":D
    .end local v10    # "mxy":D
    .end local v12    # "tx":D
    .end local v14    # "myx":D
    .end local v16    # "myy":D
    .end local v18    # "ty":D
    .end local v20    # "x":D
    .end local v22    # "y":D
    :cond_0
    :goto_1
    return-void

    .line 4795
    :pswitch_1
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v24

    move-wide/from16 v8, v24

    .restart local v8    # "mxx":D
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v24

    move-wide/from16 v10, v24

    .line 4796
    .restart local v10    # "mxy":D
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v24

    move-wide/from16 v14, v24

    .restart local v14    # "myx":D
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v24

    move-wide/from16 v16, v24

    .line 4797
    .restart local v16    # "myy":D
    :goto_2
    add-int/lit8 v7, v7, -0x1

    move/from16 v24, v7

    if-ltz v24, :cond_1

    .line 4798
    move-object/from16 v24, v3

    move/from16 v25, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v24, v24, v25

    move-wide/from16 v20, v24

    .line 4799
    .restart local v20    # "x":D
    move-object/from16 v24, v3

    move/from16 v25, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v24, v24, v25

    move-wide/from16 v22, v24

    .line 4800
    .restart local v22    # "y":D
    move-object/from16 v24, v5

    move/from16 v25, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v26, v8

    move-wide/from16 v28, v20

    mul-double v26, v26, v28

    move-wide/from16 v28, v10

    move-wide/from16 v30, v22

    mul-double v28, v28, v30

    add-double v26, v26, v28

    aput-wide v26, v24, v25

    .line 4801
    move-object/from16 v24, v5

    move/from16 v25, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v26, v14

    move-wide/from16 v28, v20

    mul-double v26, v26, v28

    move-wide/from16 v28, v16

    move-wide/from16 v30, v22

    mul-double v28, v28, v30

    add-double v26, v26, v28

    aput-wide v26, v24, v25

    .line 4802
    goto :goto_2

    .line 4803
    .end local v20    # "x":D
    .end local v22    # "y":D
    :cond_1
    goto :goto_1

    .line 4805
    .end local v8    # "mxx":D
    .end local v10    # "mxy":D
    .end local v14    # "myx":D
    .end local v16    # "myy":D
    :pswitch_2
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v24

    move-wide/from16 v10, v24

    .restart local v10    # "mxy":D
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v24

    move-wide/from16 v12, v24

    .line 4806
    .restart local v12    # "tx":D
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v24

    move-wide/from16 v14, v24

    .restart local v14    # "myx":D
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v24

    move-wide/from16 v18, v24

    .line 4807
    .restart local v18    # "ty":D
    :goto_3
    add-int/lit8 v7, v7, -0x1

    move/from16 v24, v7

    if-ltz v24, :cond_2

    .line 4808
    move-object/from16 v24, v3

    move/from16 v25, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v24, v24, v25

    move-wide/from16 v20, v24

    .line 4809
    .restart local v20    # "x":D
    move-object/from16 v24, v5

    move/from16 v25, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v26, v10

    move-object/from16 v28, v3

    move/from16 v29, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v28, v28, v29

    mul-double v26, v26, v28

    move-wide/from16 v28, v12

    add-double v26, v26, v28

    aput-wide v26, v24, v25

    .line 4810
    move-object/from16 v24, v5

    move/from16 v25, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v26, v14

    move-wide/from16 v28, v20

    mul-double v26, v26, v28

    move-wide/from16 v28, v18

    add-double v26, v26, v28

    aput-wide v26, v24, v25

    .line 4811
    goto :goto_3

    .line 4812
    .end local v20    # "x":D
    :cond_2
    goto/16 :goto_1

    .line 4814
    .end local v10    # "mxy":D
    .end local v12    # "tx":D
    .end local v14    # "myx":D
    .end local v18    # "ty":D
    :pswitch_3
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v24

    move-wide/from16 v10, v24

    .line 4815
    .restart local v10    # "mxy":D
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v24

    move-wide/from16 v14, v24

    .line 4816
    .restart local v14    # "myx":D
    :goto_4
    add-int/lit8 v7, v7, -0x1

    move/from16 v24, v7

    if-ltz v24, :cond_3

    .line 4817
    move-object/from16 v24, v3

    move/from16 v25, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v24, v24, v25

    move-wide/from16 v20, v24

    .line 4818
    .restart local v20    # "x":D
    move-object/from16 v24, v5

    move/from16 v25, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v26, v10

    move-object/from16 v28, v3

    move/from16 v29, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v28, v28, v29

    mul-double v26, v26, v28

    aput-wide v26, v24, v25

    .line 4819
    move-object/from16 v24, v5

    move/from16 v25, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v26, v14

    move-wide/from16 v28, v20

    mul-double v26, v26, v28

    aput-wide v26, v24, v25

    .line 4820
    goto :goto_4

    .line 4821
    .end local v20    # "x":D
    :cond_3
    goto/16 :goto_1

    .line 4823
    .end local v10    # "mxy":D
    .end local v14    # "myx":D
    :pswitch_4
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v24

    move-wide/from16 v8, v24

    .restart local v8    # "mxx":D
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v24

    move-wide/from16 v12, v24

    .line 4824
    .restart local v12    # "tx":D
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v24

    move-wide/from16 v16, v24

    .restart local v16    # "myy":D
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v24

    move-wide/from16 v18, v24

    .line 4825
    .restart local v18    # "ty":D
    :goto_5
    add-int/lit8 v7, v7, -0x1

    move/from16 v24, v7

    if-ltz v24, :cond_4

    .line 4826
    move-object/from16 v24, v5

    move/from16 v25, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v26, v8

    move-object/from16 v28, v3

    move/from16 v29, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v28, v28, v29

    mul-double v26, v26, v28

    move-wide/from16 v28, v12

    add-double v26, v26, v28

    aput-wide v26, v24, v25

    .line 4827
    move-object/from16 v24, v5

    move/from16 v25, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v26, v16

    move-object/from16 v28, v3

    move/from16 v29, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v28, v28, v29

    mul-double v26, v26, v28

    move-wide/from16 v28, v18

    add-double v26, v26, v28

    aput-wide v26, v24, v25

    goto :goto_5

    .line 4829
    :cond_4
    goto/16 :goto_1

    .line 4831
    .end local v8    # "mxx":D
    .end local v12    # "tx":D
    .end local v16    # "myy":D
    .end local v18    # "ty":D
    :pswitch_5
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v24

    move-wide/from16 v8, v24

    .line 4832
    .restart local v8    # "mxx":D
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v24

    move-wide/from16 v16, v24

    .line 4833
    .restart local v16    # "myy":D
    :goto_6
    add-int/lit8 v7, v7, -0x1

    move/from16 v24, v7

    if-ltz v24, :cond_5

    .line 4834
    move-object/from16 v24, v5

    move/from16 v25, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v26, v8

    move-object/from16 v28, v3

    move/from16 v29, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v28, v28, v29

    mul-double v26, v26, v28

    aput-wide v26, v24, v25

    .line 4835
    move-object/from16 v24, v5

    move/from16 v25, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v26, v16

    move-object/from16 v28, v3

    move/from16 v29, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v28, v28, v29

    mul-double v26, v26, v28

    aput-wide v26, v24, v25

    goto :goto_6

    .line 4837
    :cond_5
    goto/16 :goto_1

    .line 4839
    .end local v8    # "mxx":D
    .end local v16    # "myy":D
    :pswitch_6
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v24

    move-wide/from16 v12, v24

    .line 4840
    .restart local v12    # "tx":D
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v24

    move-wide/from16 v18, v24

    .line 4841
    .restart local v18    # "ty":D
    :goto_7
    add-int/lit8 v7, v7, -0x1

    move/from16 v24, v7

    if-ltz v24, :cond_6

    .line 4842
    move-object/from16 v24, v5

    move/from16 v25, v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v26, v3

    move/from16 v27, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v26, v26, v27

    move-wide/from16 v28, v12

    add-double v26, v26, v28

    aput-wide v26, v24, v25

    .line 4843
    move-object/from16 v24, v5

    move/from16 v25, v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v26, v3

    move/from16 v27, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v26, v26, v27

    move-wide/from16 v28, v18

    add-double v26, v26, v28

    aput-wide v26, v24, v25

    goto :goto_7

    .line 4845
    :cond_6
    goto/16 :goto_1

    .line 4847
    .end local v12    # "tx":D
    .end local v18    # "ty":D
    :pswitch_7
    move-object/from16 v24, v3

    move-object/from16 v25, v5

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_7

    move/from16 v24, v4

    move/from16 v25, v6

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_8

    .line 4848
    :cond_7
    move-object/from16 v24, v3

    move/from16 v25, v4

    move-object/from16 v26, v5

    move/from16 v27, v6

    move/from16 v28, v7

    const/16 v29, 0x2

    mul-int/lit8 v28, v28, 0x2

    invoke-static/range {v24 .. v28}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4851
    :cond_8
    goto/16 :goto_1

    .line 4780
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

.method transform3DPointsImpl([DI[DII)V
    .locals 46

    .prologue
    .line 4861
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/transform/Affine;
    move-object/from16 v3, p1

    .local v3, "srcPts":[D
    move/from16 v4, p2

    .local v4, "srcOff":I
    move-object/from16 v5, p3

    .local v5, "dstPts":[D
    move/from16 v6, p4

    .local v6, "dstOff":I
    move/from16 v7, p5

    .local v7, "numPts":I
    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget v0, v0, Ljavafx/scene/transform/Affine;->state3d:I

    move/from16 v38, v0

    packed-switch v38, :pswitch_data_0

    .line 4863
    invoke-static {}, Ljavafx/scene/transform/Affine;->stateError()V

    .line 4866
    :pswitch_0
    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget v0, v0, Ljavafx/scene/transform/Affine;->state2d:I

    move/from16 v38, v0

    packed-switch v38, :pswitch_data_1

    .line 4868
    invoke-static {}, Ljavafx/scene/transform/Affine;->stateError()V

    .line 4871
    :pswitch_1
    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v38

    move-wide/from16 v8, v38

    .local v8, "mxx":D
    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v38

    move-wide/from16 v10, v38

    .local v10, "mxy":D
    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v38

    move-wide/from16 v12, v38

    .line 4872
    .local v12, "tx":D
    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v38

    move-wide/from16 v14, v38

    .local v14, "myx":D
    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v38

    move-wide/from16 v16, v38

    .local v16, "myy":D
    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v38

    move-wide/from16 v18, v38

    .line 4873
    .local v18, "ty":D
    :goto_0
    add-int/lit8 v7, v7, -0x1

    move/from16 v38, v7

    if-ltz v38, :cond_0

    .line 4874
    move-object/from16 v38, v3

    move/from16 v39, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v38, v38, v39

    move-wide/from16 v24, v38

    .line 4875
    .local v24, "x":D
    move-object/from16 v38, v3

    move/from16 v39, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v38, v38, v39

    move-wide/from16 v26, v38

    .line 4876
    .local v26, "y":D
    move-object/from16 v38, v5

    move/from16 v39, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v40, v8

    move-wide/from16 v42, v24

    mul-double v40, v40, v42

    move-wide/from16 v42, v10

    move-wide/from16 v44, v26

    mul-double v42, v42, v44

    add-double v40, v40, v42

    move-wide/from16 v42, v12

    add-double v40, v40, v42

    aput-wide v40, v38, v39

    .line 4877
    move-object/from16 v38, v5

    move/from16 v39, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v40, v14

    move-wide/from16 v42, v24

    mul-double v40, v40, v42

    move-wide/from16 v42, v16

    move-wide/from16 v44, v26

    mul-double v42, v42, v44

    add-double v40, v40, v42

    move-wide/from16 v42, v18

    add-double v40, v40, v42

    aput-wide v40, v38, v39

    .line 4878
    move-object/from16 v38, v5

    move/from16 v39, v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v40, v3

    move/from16 v41, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v40, v40, v41

    aput-wide v40, v38, v39

    .line 4879
    goto :goto_0

    .line 4880
    .line 5000
    .end local v8    # "mxx":D
    .end local v10    # "mxy":D
    .end local v12    # "tx":D
    .end local v14    # "myx":D
    .end local v16    # "myy":D
    .end local v18    # "ty":D
    .end local v24    # "x":D
    .end local v26    # "y":D
    :cond_0
    :goto_1
    return-void

    .line 4882
    :pswitch_2
    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v38

    move-wide/from16 v8, v38

    .restart local v8    # "mxx":D
    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v38

    move-wide/from16 v10, v38

    .line 4883
    .restart local v10    # "mxy":D
    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v38

    move-wide/from16 v14, v38

    .restart local v14    # "myx":D
    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v38

    move-wide/from16 v16, v38

    .line 4884
    .restart local v16    # "myy":D
    :goto_2
    add-int/lit8 v7, v7, -0x1

    move/from16 v38, v7

    if-ltz v38, :cond_1

    .line 4885
    move-object/from16 v38, v3

    move/from16 v39, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v38, v38, v39

    move-wide/from16 v24, v38

    .line 4886
    .restart local v24    # "x":D
    move-object/from16 v38, v3

    move/from16 v39, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v38, v38, v39

    move-wide/from16 v26, v38

    .line 4887
    .restart local v26    # "y":D
    move-object/from16 v38, v5

    move/from16 v39, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v40, v8

    move-wide/from16 v42, v24

    mul-double v40, v40, v42

    move-wide/from16 v42, v10

    move-wide/from16 v44, v26

    mul-double v42, v42, v44

    add-double v40, v40, v42

    aput-wide v40, v38, v39

    .line 4888
    move-object/from16 v38, v5

    move/from16 v39, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v40, v14

    move-wide/from16 v42, v24

    mul-double v40, v40, v42

    move-wide/from16 v42, v16

    move-wide/from16 v44, v26

    mul-double v42, v42, v44

    add-double v40, v40, v42

    aput-wide v40, v38, v39

    .line 4889
    move-object/from16 v38, v5

    move/from16 v39, v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v40, v3

    move/from16 v41, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v40, v40, v41

    aput-wide v40, v38, v39

    .line 4890
    goto :goto_2

    .line 4891
    .end local v24    # "x":D
    .end local v26    # "y":D
    :cond_1
    goto :goto_1

    .line 4893
    .end local v8    # "mxx":D
    .end local v10    # "mxy":D
    .end local v14    # "myx":D
    .end local v16    # "myy":D
    :pswitch_3
    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v38

    move-wide/from16 v10, v38

    .restart local v10    # "mxy":D
    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v38

    move-wide/from16 v12, v38

    .line 4894
    .restart local v12    # "tx":D
    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v38

    move-wide/from16 v14, v38

    .restart local v14    # "myx":D
    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v38

    move-wide/from16 v18, v38

    .line 4895
    .restart local v18    # "ty":D
    :goto_3
    add-int/lit8 v7, v7, -0x1

    move/from16 v38, v7

    if-ltz v38, :cond_2

    .line 4896
    move-object/from16 v38, v3

    move/from16 v39, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v38, v38, v39

    move-wide/from16 v24, v38

    .line 4897
    .restart local v24    # "x":D
    move-object/from16 v38, v5

    move/from16 v39, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v40, v10

    move-object/from16 v42, v3

    move/from16 v43, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v42, v42, v43

    mul-double v40, v40, v42

    move-wide/from16 v42, v12

    add-double v40, v40, v42

    aput-wide v40, v38, v39

    .line 4898
    move-object/from16 v38, v5

    move/from16 v39, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v40, v14

    move-wide/from16 v42, v24

    mul-double v40, v40, v42

    move-wide/from16 v42, v18

    add-double v40, v40, v42

    aput-wide v40, v38, v39

    .line 4899
    move-object/from16 v38, v5

    move/from16 v39, v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v40, v3

    move/from16 v41, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v40, v40, v41

    aput-wide v40, v38, v39

    .line 4900
    goto :goto_3

    .line 4901
    .end local v24    # "x":D
    :cond_2
    goto/16 :goto_1

    .line 4903
    .end local v10    # "mxy":D
    .end local v12    # "tx":D
    .end local v14    # "myx":D
    .end local v18    # "ty":D
    :pswitch_4
    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v38

    move-wide/from16 v10, v38

    .line 4904
    .restart local v10    # "mxy":D
    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v38

    move-wide/from16 v14, v38

    .line 4905
    .restart local v14    # "myx":D
    :goto_4
    add-int/lit8 v7, v7, -0x1

    move/from16 v38, v7

    if-ltz v38, :cond_3

    .line 4906
    move-object/from16 v38, v3

    move/from16 v39, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v38, v38, v39

    move-wide/from16 v24, v38

    .line 4907
    .restart local v24    # "x":D
    move-object/from16 v38, v5

    move/from16 v39, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v40, v10

    move-object/from16 v42, v3

    move/from16 v43, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v42, v42, v43

    mul-double v40, v40, v42

    aput-wide v40, v38, v39

    .line 4908
    move-object/from16 v38, v5

    move/from16 v39, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v40, v14

    move-wide/from16 v42, v24

    mul-double v40, v40, v42

    aput-wide v40, v38, v39

    .line 4909
    move-object/from16 v38, v5

    move/from16 v39, v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v40, v3

    move/from16 v41, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v40, v40, v41

    aput-wide v40, v38, v39

    .line 4910
    goto :goto_4

    .line 4911
    .end local v24    # "x":D
    :cond_3
    goto/16 :goto_1

    .line 4913
    .end local v10    # "mxy":D
    .end local v14    # "myx":D
    :pswitch_5
    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v38

    move-wide/from16 v8, v38

    .restart local v8    # "mxx":D
    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v38

    move-wide/from16 v12, v38

    .line 4914
    .restart local v12    # "tx":D
    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v38

    move-wide/from16 v16, v38

    .restart local v16    # "myy":D
    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v38

    move-wide/from16 v18, v38

    .line 4915
    .restart local v18    # "ty":D
    :goto_5
    add-int/lit8 v7, v7, -0x1

    move/from16 v38, v7

    if-ltz v38, :cond_4

    .line 4916
    move-object/from16 v38, v5

    move/from16 v39, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v40, v8

    move-object/from16 v42, v3

    move/from16 v43, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v42, v42, v43

    mul-double v40, v40, v42

    move-wide/from16 v42, v12

    add-double v40, v40, v42

    aput-wide v40, v38, v39

    .line 4917
    move-object/from16 v38, v5

    move/from16 v39, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v40, v16

    move-object/from16 v42, v3

    move/from16 v43, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v42, v42, v43

    mul-double v40, v40, v42

    move-wide/from16 v42, v18

    add-double v40, v40, v42

    aput-wide v40, v38, v39

    .line 4918
    move-object/from16 v38, v5

    move/from16 v39, v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v40, v3

    move/from16 v41, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v40, v40, v41

    aput-wide v40, v38, v39

    goto :goto_5

    .line 4920
    :cond_4
    goto/16 :goto_1

    .line 4922
    .end local v8    # "mxx":D
    .end local v12    # "tx":D
    .end local v16    # "myy":D
    .end local v18    # "ty":D
    :pswitch_6
    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v38

    move-wide/from16 v8, v38

    .line 4923
    .restart local v8    # "mxx":D
    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v38

    move-wide/from16 v16, v38

    .line 4924
    .restart local v16    # "myy":D
    :goto_6
    add-int/lit8 v7, v7, -0x1

    move/from16 v38, v7

    if-ltz v38, :cond_5

    .line 4925
    move-object/from16 v38, v5

    move/from16 v39, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v40, v8

    move-object/from16 v42, v3

    move/from16 v43, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v42, v42, v43

    mul-double v40, v40, v42

    aput-wide v40, v38, v39

    .line 4926
    move-object/from16 v38, v5

    move/from16 v39, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v40, v16

    move-object/from16 v42, v3

    move/from16 v43, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v42, v42, v43

    mul-double v40, v40, v42

    aput-wide v40, v38, v39

    .line 4927
    move-object/from16 v38, v5

    move/from16 v39, v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v40, v3

    move/from16 v41, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v40, v40, v41

    aput-wide v40, v38, v39

    goto :goto_6

    .line 4929
    :cond_5
    goto/16 :goto_1

    .line 4931
    .end local v8    # "mxx":D
    .end local v16    # "myy":D
    :pswitch_7
    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v38

    move-wide/from16 v12, v38

    .line 4932
    .restart local v12    # "tx":D
    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v38

    move-wide/from16 v18, v38

    .line 4933
    .restart local v18    # "ty":D
    :goto_7
    add-int/lit8 v7, v7, -0x1

    move/from16 v38, v7

    if-ltz v38, :cond_6

    .line 4934
    move-object/from16 v38, v5

    move/from16 v39, v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v40, v3

    move/from16 v41, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v40, v40, v41

    move-wide/from16 v42, v12

    add-double v40, v40, v42

    aput-wide v40, v38, v39

    .line 4935
    move-object/from16 v38, v5

    move/from16 v39, v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v40, v3

    move/from16 v41, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v40, v40, v41

    move-wide/from16 v42, v18

    add-double v40, v40, v42

    aput-wide v40, v38, v39

    .line 4936
    move-object/from16 v38, v5

    move/from16 v39, v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v40, v3

    move/from16 v41, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v40, v40, v41

    aput-wide v40, v38, v39

    goto :goto_7

    .line 4938
    :cond_6
    goto/16 :goto_1

    .line 4940
    .end local v12    # "tx":D
    .end local v18    # "ty":D
    :pswitch_8
    move-object/from16 v38, v3

    move-object/from16 v39, v5

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    if-ne v0, v1, :cond_7

    move/from16 v38, v4

    move/from16 v39, v6

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_8

    .line 4941
    :cond_7
    move-object/from16 v38, v3

    move/from16 v39, v4

    move-object/from16 v40, v5

    move/from16 v41, v6

    move/from16 v42, v7

    const/16 v43, 0x3

    mul-int/lit8 v42, v42, 0x3

    invoke-static/range {v38 .. v42}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4944
    :cond_8
    goto/16 :goto_1

    .line 4948
    :pswitch_9
    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v38

    move-wide/from16 v12, v38

    .line 4949
    .restart local v12    # "tx":D
    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v38

    move-wide/from16 v18, v38

    .line 4950
    .restart local v18    # "ty":D
    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/transform/Affine;->getTz()D

    move-result-wide v38

    move-wide/from16 v22, v38

    .line 4951
    .local v22, "tz":D
    :goto_8
    add-int/lit8 v7, v7, -0x1

    move/from16 v38, v7

    if-ltz v38, :cond_9

    .line 4952
    move-object/from16 v38, v5

    move/from16 v39, v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v40, v3

    move/from16 v41, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v40, v40, v41

    move-wide/from16 v42, v12

    add-double v40, v40, v42

    aput-wide v40, v38, v39

    .line 4953
    move-object/from16 v38, v5

    move/from16 v39, v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v40, v3

    move/from16 v41, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v40, v40, v41

    move-wide/from16 v42, v18

    add-double v40, v40, v42

    aput-wide v40, v38, v39

    .line 4954
    move-object/from16 v38, v5

    move/from16 v39, v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v40, v3

    move/from16 v41, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v40, v40, v41

    move-wide/from16 v42, v22

    add-double v40, v40, v42

    aput-wide v40, v38, v39

    goto :goto_8

    .line 4956
    :cond_9
    goto/16 :goto_1

    .line 4958
    .end local v12    # "tx":D
    .end local v18    # "ty":D
    .end local v22    # "tz":D
    :pswitch_a
    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v38

    move-wide/from16 v8, v38

    .line 4959
    .restart local v8    # "mxx":D
    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v38

    move-wide/from16 v16, v38

    .line 4960
    .restart local v16    # "myy":D
    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/transform/Affine;->getMzz()D

    move-result-wide v38

    move-wide/from16 v20, v38

    .line 4961
    .local v20, "mzz":D
    :goto_9
    add-int/lit8 v7, v7, -0x1

    move/from16 v38, v7

    if-ltz v38, :cond_a

    .line 4962
    move-object/from16 v38, v5

    move/from16 v39, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v40, v8

    move-object/from16 v42, v3

    move/from16 v43, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v42, v42, v43

    mul-double v40, v40, v42

    aput-wide v40, v38, v39

    .line 4963
    move-object/from16 v38, v5

    move/from16 v39, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v40, v16

    move-object/from16 v42, v3

    move/from16 v43, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v42, v42, v43

    mul-double v40, v40, v42

    aput-wide v40, v38, v39

    .line 4964
    move-object/from16 v38, v5

    move/from16 v39, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v40, v20

    move-object/from16 v42, v3

    move/from16 v43, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v42, v42, v43

    mul-double v40, v40, v42

    aput-wide v40, v38, v39

    goto :goto_9

    .line 4966
    :cond_a
    goto/16 :goto_1

    .line 4968
    .end local v8    # "mxx":D
    .end local v16    # "myy":D
    .end local v20    # "mzz":D
    :pswitch_b
    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v38

    move-wide/from16 v8, v38

    .restart local v8    # "mxx":D
    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v38

    move-wide/from16 v12, v38

    .line 4969
    .restart local v12    # "tx":D
    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v38

    move-wide/from16 v16, v38

    .restart local v16    # "myy":D
    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v38

    move-wide/from16 v18, v38

    .line 4970
    .restart local v18    # "ty":D
    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/transform/Affine;->getMzz()D

    move-result-wide v38

    move-wide/from16 v20, v38

    .restart local v20    # "mzz":D
    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/transform/Affine;->getTz()D

    move-result-wide v38

    move-wide/from16 v22, v38

    .line 4971
    .restart local v22    # "tz":D
    :goto_a
    add-int/lit8 v7, v7, -0x1

    move/from16 v38, v7

    if-ltz v38, :cond_b

    .line 4972
    move-object/from16 v38, v5

    move/from16 v39, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v40, v8

    move-object/from16 v42, v3

    move/from16 v43, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v42, v42, v43

    mul-double v40, v40, v42

    move-wide/from16 v42, v12

    add-double v40, v40, v42

    aput-wide v40, v38, v39

    .line 4973
    move-object/from16 v38, v5

    move/from16 v39, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v40, v16

    move-object/from16 v42, v3

    move/from16 v43, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v42, v42, v43

    mul-double v40, v40, v42

    move-wide/from16 v42, v18

    add-double v40, v40, v42

    aput-wide v40, v38, v39

    .line 4974
    move-object/from16 v38, v5

    move/from16 v39, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v40, v20

    move-object/from16 v42, v3

    move/from16 v43, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v42, v42, v43

    mul-double v40, v40, v42

    move-wide/from16 v42, v22

    add-double v40, v40, v42

    aput-wide v40, v38, v39

    goto :goto_a

    .line 4976
    :cond_b
    goto/16 :goto_1

    .line 4978
    .end local v8    # "mxx":D
    .end local v12    # "tx":D
    .end local v16    # "myy":D
    .end local v18    # "ty":D
    .end local v20    # "mzz":D
    .end local v22    # "tz":D
    :pswitch_c
    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v38

    move-wide/from16 v8, v38

    .line 4979
    .restart local v8    # "mxx":D
    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v38

    move-wide/from16 v10, v38

    .line 4980
    .restart local v10    # "mxy":D
    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/transform/Affine;->getMxz()D

    move-result-wide v38

    move-wide/from16 v24, v38

    .line 4981
    .local v24, "mxz":D
    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v38

    move-wide/from16 v12, v38

    .line 4982
    .restart local v12    # "tx":D
    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v38

    move-wide/from16 v14, v38

    .line 4983
    .restart local v14    # "myx":D
    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v38

    move-wide/from16 v16, v38

    .line 4984
    .restart local v16    # "myy":D
    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/transform/Affine;->getMyz()D

    move-result-wide v38

    move-wide/from16 v26, v38

    .line 4985
    .local v26, "myz":D
    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v38

    move-wide/from16 v18, v38

    .line 4986
    .restart local v18    # "ty":D
    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/transform/Affine;->getMzx()D

    move-result-wide v38

    move-wide/from16 v28, v38

    .line 4987
    .local v28, "mzx":D
    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/transform/Affine;->getMzy()D

    move-result-wide v38

    move-wide/from16 v30, v38

    .line 4988
    .local v30, "mzy":D
    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/transform/Affine;->getMzz()D

    move-result-wide v38

    move-wide/from16 v20, v38

    .line 4989
    .restart local v20    # "mzz":D
    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/transform/Affine;->getTz()D

    move-result-wide v38

    move-wide/from16 v22, v38

    .line 4991
    .restart local v22    # "tz":D
    :goto_b
    add-int/lit8 v7, v7, -0x1

    move/from16 v38, v7

    if-ltz v38, :cond_c

    .line 4992
    move-object/from16 v38, v3

    move/from16 v39, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v38, v38, v39

    move-wide/from16 v32, v38

    .line 4993
    .local v32, "x":D
    move-object/from16 v38, v3

    move/from16 v39, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v38, v38, v39

    move-wide/from16 v34, v38

    .line 4994
    .local v34, "y":D
    move-object/from16 v38, v3

    move/from16 v39, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v38, v38, v39

    move-wide/from16 v36, v38

    .line 4996
    .local v36, "z":D
    move-object/from16 v38, v5

    move/from16 v39, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v40, v8

    move-wide/from16 v42, v32

    mul-double v40, v40, v42

    move-wide/from16 v42, v10

    move-wide/from16 v44, v34

    mul-double v42, v42, v44

    add-double v40, v40, v42

    move-wide/from16 v42, v24

    move-wide/from16 v44, v36

    mul-double v42, v42, v44

    add-double v40, v40, v42

    move-wide/from16 v42, v12

    add-double v40, v40, v42

    aput-wide v40, v38, v39

    .line 4997
    move-object/from16 v38, v5

    move/from16 v39, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v40, v14

    move-wide/from16 v42, v32

    mul-double v40, v40, v42

    move-wide/from16 v42, v16

    move-wide/from16 v44, v34

    mul-double v42, v42, v44

    add-double v40, v40, v42

    move-wide/from16 v42, v26

    move-wide/from16 v44, v36

    mul-double v42, v42, v44

    add-double v40, v40, v42

    move-wide/from16 v42, v18

    add-double v40, v40, v42

    aput-wide v40, v38, v39

    .line 4998
    move-object/from16 v38, v5

    move/from16 v39, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v40, v28

    move-wide/from16 v42, v32

    mul-double v40, v40, v42

    move-wide/from16 v42, v30

    move-wide/from16 v44, v34

    mul-double v42, v42, v44

    add-double v40, v40, v42

    move-wide/from16 v42, v20

    move-wide/from16 v44, v36

    mul-double v42, v42, v44

    add-double v40, v40, v42

    move-wide/from16 v42, v22

    add-double v40, v40, v42

    aput-wide v40, v38, v39

    .line 4999
    goto/16 :goto_b

    .line 5000
    .end local v32    # "x":D
    .end local v34    # "y":D
    .end local v36    # "z":D
    :cond_c
    goto/16 :goto_1

    .line 4861
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 4866
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

.method public final txProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 483
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Affine;->tx:Ljavafx/scene/transform/Affine$AffineElementProperty;

    if-nez v2, :cond_0

    .line 484
    move-object v2, v1

    new-instance v3, Ljavafx/scene/transform/Affine$4;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/transform/Affine;->xt:D

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/transform/Affine$4;-><init>(Ljavafx/scene/transform/Affine;D)V

    iput-object v3, v2, Ljavafx/scene/transform/Affine;->tx:Ljavafx/scene/transform/Affine$AffineElementProperty;

    .line 496
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Affine;->tx:Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/transform/Affine;
    return-object v1
.end method

.method public final tyProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 639
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Affine;->ty:Ljavafx/scene/transform/Affine$AffineElementProperty;

    if-nez v2, :cond_0

    .line 640
    move-object v2, v1

    new-instance v3, Ljavafx/scene/transform/Affine$8;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/transform/Affine;->yt:D

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/transform/Affine$8;-><init>(Ljavafx/scene/transform/Affine;D)V

    iput-object v3, v2, Ljavafx/scene/transform/Affine;->ty:Ljavafx/scene/transform/Affine$AffineElementProperty;

    .line 652
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Affine;->ty:Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/transform/Affine;
    return-object v1
.end method

.method public final tzProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 795
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Affine;->tz:Ljavafx/scene/transform/Affine$AffineElementProperty;

    if-nez v2, :cond_0

    .line 796
    move-object v2, v1

    new-instance v3, Ljavafx/scene/transform/Affine$12;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/transform/Affine;->zt:D

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/transform/Affine$12;-><init>(Ljavafx/scene/transform/Affine;D)V

    iput-object v3, v2, Ljavafx/scene/transform/Affine;->tz:Ljavafx/scene/transform/Affine$AffineElementProperty;

    .line 808
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Affine;->tz:Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/transform/Affine;
    return-object v1
.end method
