.class public Lcom/sun/javafx/geom/transform/Affine2D;
.super Lcom/sun/javafx/geom/transform/AffineBase;
.source "Affine2D.java"


# static fields
.field private static final BASE_HASH:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 1457
    const-wide/16 v2, 0x0

    move-wide v0, v2

    .line 1458
    .local v0, "bits":J
    move-wide v2, v0

    const-wide/16 v4, 0x1f

    mul-long/2addr v2, v4

    sget-object v4, Lcom/sun/javafx/geom/transform/Affine2D;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzz()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    add-long/2addr v2, v4

    move-wide v0, v2

    .line 1459
    move-wide v2, v0

    const-wide/16 v4, 0x1f

    mul-long/2addr v2, v4

    sget-object v4, Lcom/sun/javafx/geom/transform/Affine2D;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzy()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    add-long/2addr v2, v4

    move-wide v0, v2

    .line 1460
    move-wide v2, v0

    const-wide/16 v4, 0x1f

    mul-long/2addr v2, v4

    sget-object v4, Lcom/sun/javafx/geom/transform/Affine2D;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzx()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    add-long/2addr v2, v4

    move-wide v0, v2

    .line 1461
    move-wide v2, v0

    const-wide/16 v4, 0x1f

    mul-long/2addr v2, v4

    sget-object v4, Lcom/sun/javafx/geom/transform/Affine2D;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyz()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    add-long/2addr v2, v4

    move-wide v0, v2

    .line 1462
    move-wide v2, v0

    const-wide/16 v4, 0x1f

    mul-long/2addr v2, v4

    sget-object v4, Lcom/sun/javafx/geom/transform/Affine2D;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxz()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    add-long/2addr v2, v4

    move-wide v0, v2

    .line 1463
    move-wide v2, v0

    sput-wide v2, Lcom/sun/javafx/geom/transform/Affine2D;->BASE_HASH:J

    .line 1464
    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Affine2D;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/geom/transform/AffineBase;-><init>()V

    .line 134
    move-object v1, v0

    move-object v2, v0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    move-object v7, v2

    move-wide v8, v3

    move-wide v2, v8

    move-object v4, v7

    move-wide v5, v8

    iput-wide v5, v4, Lcom/sun/javafx/geom/transform/Affine2D;->myy:D

    iput-wide v2, v1, Lcom/sun/javafx/geom/transform/Affine2D;->mxx:D

    .line 138
    return-void
.end method

.method public constructor <init>(DDDDDD)V
    .locals 17

    .prologue
    .line 189
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Affine2D;
    move-wide/from16 v1, p1

    .local v1, "mxx":D
    move-wide/from16 v3, p3

    .local v3, "myx":D
    move-wide/from16 v5, p5

    .local v5, "mxy":D
    move-wide/from16 v7, p7

    .local v7, "myy":D
    move-wide/from16 v9, p9

    .local v9, "mxt":D
    move-wide/from16 v11, p11

    .local v11, "myt":D
    move-object v13, v0

    invoke-direct {v13}, Lcom/sun/javafx/geom/transform/AffineBase;-><init>()V

    .line 190
    move-object v13, v0

    move-wide v14, v1

    iput-wide v14, v13, Lcom/sun/javafx/geom/transform/Affine2D;->mxx:D

    .line 191
    move-object v13, v0

    move-wide v14, v3

    iput-wide v14, v13, Lcom/sun/javafx/geom/transform/Affine2D;->myx:D

    .line 192
    move-object v13, v0

    move-wide v14, v5

    iput-wide v14, v13, Lcom/sun/javafx/geom/transform/Affine2D;->mxy:D

    .line 193
    move-object v13, v0

    move-wide v14, v7

    iput-wide v14, v13, Lcom/sun/javafx/geom/transform/Affine2D;->myy:D

    .line 194
    move-object v13, v0

    move-wide v14, v9

    iput-wide v14, v13, Lcom/sun/javafx/geom/transform/Affine2D;->mxt:D

    .line 195
    move-object v13, v0

    move-wide v14, v11

    iput-wide v14, v13, Lcom/sun/javafx/geom/transform/Affine2D;->myt:D

    .line 196
    move-object v13, v0

    invoke-virtual {v13}, Lcom/sun/javafx/geom/transform/Affine2D;->updateState2D()V

    .line 197
    return-void
.end method

.method private constructor <init>(DDDDDDI)V
    .locals 21

    .prologue
    .line 118
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/geom/transform/Affine2D;
    move-wide/from16 v4, p1

    .local v4, "mxx":D
    move-wide/from16 v6, p3

    .local v6, "myx":D
    move-wide/from16 v8, p5

    .local v8, "mxy":D
    move-wide/from16 v10, p7

    .local v10, "myy":D
    move-wide/from16 v12, p9

    .local v12, "mxt":D
    move-wide/from16 v14, p11

    .local v14, "myt":D
    move/from16 v16, p13

    .local v16, "state":I
    move-object/from16 v17, v3

    invoke-direct/range {v17 .. v17}, Lcom/sun/javafx/geom/transform/AffineBase;-><init>()V

    .line 119
    move-object/from16 v17, v3

    move-wide/from16 v18, v4

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine2D;->mxx:D

    .line 120
    move-object/from16 v17, v3

    move-wide/from16 v18, v6

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine2D;->myx:D

    .line 121
    move-object/from16 v17, v3

    move-wide/from16 v18, v8

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine2D;->mxy:D

    .line 122
    move-object/from16 v17, v3

    move-wide/from16 v18, v10

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine2D;->myy:D

    .line 123
    move-object/from16 v17, v3

    move-wide/from16 v18, v12

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine2D;->mxt:D

    .line 124
    move-object/from16 v17, v3

    move-wide/from16 v18, v14

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine2D;->myt:D

    .line 125
    move-object/from16 v17, v3

    move/from16 v18, v16

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/sun/javafx/geom/transform/Affine2D;->state:I

    .line 126
    move-object/from16 v17, v3

    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/sun/javafx/geom/transform/Affine2D;->type:I

    .line 127
    return-void
.end method

.method public constructor <init>(FFFFFF)V
    .locals 10

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Affine2D;
    move v1, p1

    .local v1, "mxx":F
    move v2, p2

    .local v2, "myx":F
    move v3, p3

    .local v3, "mxy":F
    move v4, p4

    .local v4, "myy":F
    move v5, p5

    .local v5, "mxt":F
    move/from16 v6, p6

    .local v6, "myt":F
    move-object v7, v0

    invoke-direct {v7}, Lcom/sun/javafx/geom/transform/AffineBase;-><init>()V

    .line 165
    move-object v7, v0

    move v8, v1

    float-to-double v8, v8

    iput-wide v8, v7, Lcom/sun/javafx/geom/transform/Affine2D;->mxx:D

    .line 166
    move-object v7, v0

    move v8, v2

    float-to-double v8, v8

    iput-wide v8, v7, Lcom/sun/javafx/geom/transform/Affine2D;->myx:D

    .line 167
    move-object v7, v0

    move v8, v3

    float-to-double v8, v8

    iput-wide v8, v7, Lcom/sun/javafx/geom/transform/Affine2D;->mxy:D

    .line 168
    move-object v7, v0

    move v8, v4

    float-to-double v8, v8

    iput-wide v8, v7, Lcom/sun/javafx/geom/transform/Affine2D;->myy:D

    .line 169
    move-object v7, v0

    move v8, v5

    float-to-double v8, v8

    iput-wide v8, v7, Lcom/sun/javafx/geom/transform/Affine2D;->mxt:D

    .line 170
    move-object v7, v0

    move v8, v6

    float-to-double v8, v8

    iput-wide v8, v7, Lcom/sun/javafx/geom/transform/Affine2D;->myt:D

    .line 171
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/geom/transform/Affine2D;->updateState2D()V

    .line 172
    return-void
.end method

.method public constructor <init>(Lcom/sun/javafx/geom/transform/BaseTransform;)V
    .locals 4

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Affine2D;
    move-object v1, p1

    .local v1, "Tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/geom/transform/AffineBase;-><init>()V

    .line 146
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/geom/transform/Affine2D;->setTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 147
    return-void
.end method

.method private static _matround(D)D
    .locals 6

    .prologue
    .line 1272
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


# virtual methods
.method public copy()Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 5

    .prologue
    .line 1452
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Affine2D;
    new-instance v1, Lcom/sun/javafx/geom/transform/Affine2D;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/geom/transform/Affine2D;-><init>(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Affine2D;
    return-object v0
.end method

.method public createInverse()Lcom/sun/javafx/geom/transform/Affine2D;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 1061
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/geom/transform/Affine2D;
    move-object v6, v3

    iget v6, v6, Lcom/sun/javafx/geom/transform/Affine2D;->state:I

    packed-switch v6, :pswitch_data_0

    .line 1063
    invoke-static {}, Lcom/sun/javafx/geom/transform/Affine2D;->stateError()V

    .line 1066
    :pswitch_0
    move-object v6, v3

    iget-wide v6, v6, Lcom/sun/javafx/geom/transform/Affine2D;->mxx:D

    move-object v8, v3

    iget-wide v8, v8, Lcom/sun/javafx/geom/transform/Affine2D;->myy:D

    mul-double/2addr v6, v8

    move-object v8, v3

    iget-wide v8, v8, Lcom/sun/javafx/geom/transform/Affine2D;->mxy:D

    move-object v10, v3

    iget-wide v10, v10, Lcom/sun/javafx/geom/transform/Affine2D;->myx:D

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    move-wide v4, v6

    .line 1067
    .local v4, "det":D
    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-eqz v6, :cond_0

    move-wide v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide/16 v8, 0x1

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_1

    .line 1068
    :cond_0
    new-instance v6, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;

    move-object/from16 v24, v6

    move-object/from16 v6, v24

    move-object/from16 v7, v24

    new-instance v8, Ljava/lang/StringBuilder;

    move-object/from16 v24, v8

    move-object/from16 v8, v24

    move-object/from16 v9, v24

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Determinant is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide v9, v4

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1071
    :cond_1
    new-instance v6, Lcom/sun/javafx/geom/transform/Affine2D;

    move-object/from16 v24, v6

    move-object/from16 v6, v24

    move-object/from16 v7, v24

    move-object v8, v3

    iget-wide v8, v8, Lcom/sun/javafx/geom/transform/Affine2D;->myy:D

    move-wide v10, v4

    div-double/2addr v8, v10

    move-object v10, v3

    iget-wide v10, v10, Lcom/sun/javafx/geom/transform/Affine2D;->myx:D

    neg-double v10, v10

    move-wide v12, v4

    div-double/2addr v10, v12

    move-object v12, v3

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/Affine2D;->mxy:D

    neg-double v12, v12

    move-wide v14, v4

    div-double/2addr v12, v14

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/geom/transform/Affine2D;->mxx:D

    move-wide/from16 v16, v4

    div-double v14, v14, v16

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->mxy:D

    move-wide/from16 v16, v0

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->myt:D

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->myy:D

    move-wide/from16 v18, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->mxt:D

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    sub-double v16, v16, v18

    move-wide/from16 v18, v4

    div-double v16, v16, v18

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->myx:D

    move-wide/from16 v18, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->mxt:D

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->mxx:D

    move-wide/from16 v20, v0

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->myt:D

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    sub-double v18, v18, v20

    move-wide/from16 v20, v4

    div-double v18, v18, v20

    const/16 v20, 0x7

    invoke-direct/range {v7 .. v20}, Lcom/sun/javafx/geom/transform/Affine2D;-><init>(DDDDDDI)V

    move-object v3, v6

    .line 1126
    .end local v3    # "this":Lcom/sun/javafx/geom/transform/Affine2D;
    .end local v4    # "det":D
    :goto_0
    return-object v3

    .line 1079
    .restart local v3    # "this":Lcom/sun/javafx/geom/transform/Affine2D;
    :pswitch_1
    move-object v6, v3

    iget-wide v6, v6, Lcom/sun/javafx/geom/transform/Affine2D;->mxx:D

    move-object v8, v3

    iget-wide v8, v8, Lcom/sun/javafx/geom/transform/Affine2D;->myy:D

    mul-double/2addr v6, v8

    move-object v8, v3

    iget-wide v8, v8, Lcom/sun/javafx/geom/transform/Affine2D;->mxy:D

    move-object v10, v3

    iget-wide v10, v10, Lcom/sun/javafx/geom/transform/Affine2D;->myx:D

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    move-wide v4, v6

    .line 1080
    .restart local v4    # "det":D
    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-eqz v6, :cond_2

    move-wide v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide/16 v8, 0x1

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_3

    .line 1081
    :cond_2
    new-instance v6, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;

    move-object/from16 v24, v6

    move-object/from16 v6, v24

    move-object/from16 v7, v24

    new-instance v8, Ljava/lang/StringBuilder;

    move-object/from16 v24, v8

    move-object/from16 v8, v24

    move-object/from16 v9, v24

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Determinant is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide v9, v4

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1084
    :cond_3
    new-instance v6, Lcom/sun/javafx/geom/transform/Affine2D;

    move-object/from16 v24, v6

    move-object/from16 v6, v24

    move-object/from16 v7, v24

    move-object v8, v3

    iget-wide v8, v8, Lcom/sun/javafx/geom/transform/Affine2D;->myy:D

    move-wide v10, v4

    div-double/2addr v8, v10

    move-object v10, v3

    iget-wide v10, v10, Lcom/sun/javafx/geom/transform/Affine2D;->myx:D

    neg-double v10, v10

    move-wide v12, v4

    div-double/2addr v10, v12

    move-object v12, v3

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/Affine2D;->mxy:D

    neg-double v12, v12

    move-wide v14, v4

    div-double/2addr v12, v14

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/geom/transform/Affine2D;->mxx:D

    move-wide/from16 v16, v4

    div-double v14, v14, v16

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x6

    invoke-direct/range {v7 .. v20}, Lcom/sun/javafx/geom/transform/Affine2D;-><init>(DDDDDDI)V

    move-object v3, v6

    goto :goto_0

    .line 1089
    .end local v4    # "det":D
    :pswitch_2
    move-object v6, v3

    iget-wide v6, v6, Lcom/sun/javafx/geom/transform/Affine2D;->mxy:D

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-eqz v6, :cond_4

    move-object v6, v3

    iget-wide v6, v6, Lcom/sun/javafx/geom/transform/Affine2D;->myx:D

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_5

    .line 1090
    :cond_4
    new-instance v6, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;

    move-object/from16 v24, v6

    move-object/from16 v6, v24

    move-object/from16 v7, v24

    const-string v8, "Determinant is 0"

    invoke-direct {v7, v8}, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1092
    :cond_5
    new-instance v6, Lcom/sun/javafx/geom/transform/Affine2D;

    move-object/from16 v24, v6

    move-object/from16 v6, v24

    move-object/from16 v7, v24

    const-wide/16 v8, 0x0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    move-object v12, v3

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/Affine2D;->mxy:D

    div-double/2addr v10, v12

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/geom/transform/Affine2D;->myx:D

    div-double/2addr v12, v14

    const-wide/16 v14, 0x0

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->myt:D

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    neg-double v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->myx:D

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->mxt:D

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->mxy:D

    move-wide/from16 v20, v0

    div-double v18, v18, v20

    const/16 v20, 0x5

    invoke-direct/range {v7 .. v20}, Lcom/sun/javafx/geom/transform/Affine2D;-><init>(DDDDDDI)V

    move-object v3, v6

    goto/16 :goto_0

    .line 1097
    :pswitch_3
    move-object v6, v3

    iget-wide v6, v6, Lcom/sun/javafx/geom/transform/Affine2D;->mxy:D

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-eqz v6, :cond_6

    move-object v6, v3

    iget-wide v6, v6, Lcom/sun/javafx/geom/transform/Affine2D;->myx:D

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_7

    .line 1098
    :cond_6
    new-instance v6, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;

    move-object/from16 v24, v6

    move-object/from16 v6, v24

    move-object/from16 v7, v24

    const-string v8, "Determinant is 0"

    invoke-direct {v7, v8}, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1100
    :cond_7
    new-instance v6, Lcom/sun/javafx/geom/transform/Affine2D;

    move-object/from16 v24, v6

    move-object/from16 v6, v24

    move-object/from16 v7, v24

    const-wide/16 v8, 0x0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    move-object v12, v3

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/Affine2D;->mxy:D

    div-double/2addr v10, v12

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/geom/transform/Affine2D;->myx:D

    div-double/2addr v12, v14

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x4

    invoke-direct/range {v7 .. v20}, Lcom/sun/javafx/geom/transform/Affine2D;-><init>(DDDDDDI)V

    move-object v3, v6

    goto/16 :goto_0

    .line 1105
    :pswitch_4
    move-object v6, v3

    iget-wide v6, v6, Lcom/sun/javafx/geom/transform/Affine2D;->mxx:D

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-eqz v6, :cond_8

    move-object v6, v3

    iget-wide v6, v6, Lcom/sun/javafx/geom/transform/Affine2D;->myy:D

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_9

    .line 1106
    :cond_8
    new-instance v6, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;

    move-object/from16 v24, v6

    move-object/from16 v6, v24

    move-object/from16 v7, v24

    const-string v8, "Determinant is 0"

    invoke-direct {v7, v8}, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1108
    :cond_9
    new-instance v6, Lcom/sun/javafx/geom/transform/Affine2D;

    move-object/from16 v24, v6

    move-object/from16 v6, v24

    move-object/from16 v7, v24

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    move-object v10, v3

    iget-wide v10, v10, Lcom/sun/javafx/geom/transform/Affine2D;->mxx:D

    div-double/2addr v8, v10

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->myy:D

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->mxt:D

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    neg-double v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->mxx:D

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->myt:D

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->myy:D

    move-wide/from16 v20, v0

    div-double v18, v18, v20

    const/16 v20, 0x3

    invoke-direct/range {v7 .. v20}, Lcom/sun/javafx/geom/transform/Affine2D;-><init>(DDDDDDI)V

    move-object v3, v6

    goto/16 :goto_0

    .line 1113
    :pswitch_5
    move-object v6, v3

    iget-wide v6, v6, Lcom/sun/javafx/geom/transform/Affine2D;->mxx:D

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-eqz v6, :cond_a

    move-object v6, v3

    iget-wide v6, v6, Lcom/sun/javafx/geom/transform/Affine2D;->myy:D

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_b

    .line 1114
    :cond_a
    new-instance v6, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;

    move-object/from16 v24, v6

    move-object/from16 v6, v24

    move-object/from16 v7, v24

    const-string v8, "Determinant is 0"

    invoke-direct {v7, v8}, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1116
    :cond_b
    new-instance v6, Lcom/sun/javafx/geom/transform/Affine2D;

    move-object/from16 v24, v6

    move-object/from16 v6, v24

    move-object/from16 v7, v24

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    move-object v10, v3

    iget-wide v10, v10, Lcom/sun/javafx/geom/transform/Affine2D;->mxx:D

    div-double/2addr v8, v10

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->myy:D

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x2

    invoke-direct/range {v7 .. v20}, Lcom/sun/javafx/geom/transform/Affine2D;-><init>(DDDDDDI)V

    move-object v3, v6

    goto/16 :goto_0

    .line 1121
    :pswitch_6
    new-instance v6, Lcom/sun/javafx/geom/transform/Affine2D;

    move-object/from16 v24, v6

    move-object/from16 v6, v24

    move-object/from16 v7, v24

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->mxt:D

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    neg-double v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->myt:D

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    const/16 v20, 0x1

    invoke-direct/range {v7 .. v20}, Lcom/sun/javafx/geom/transform/Affine2D;-><init>(DDDDDDI)V

    move-object v3, v6

    goto/16 :goto_0

    .line 1126
    :pswitch_7
    new-instance v6, Lcom/sun/javafx/geom/transform/Affine2D;

    move-object/from16 v24, v6

    move-object/from16 v6, v24

    move-object/from16 v7, v24

    invoke-direct {v7}, Lcom/sun/javafx/geom/transform/Affine2D;-><init>()V

    move-object v3, v6

    goto/16 :goto_0

    .line 1061
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

.method public bridge synthetic createInverse()Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Affine2D;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/geom/transform/Affine2D;->createInverse()Lcom/sun/javafx/geom/transform/Affine2D;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Affine2D;
    return-object v0
.end method

.method public deltaTransform(Lcom/sun/javafx/geom/Point2D;Lcom/sun/javafx/geom/Point2D;)Lcom/sun/javafx/geom/Point2D;
    .locals 17

    .prologue
    .line 1238
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/Affine2D;
    move-object/from16 v2, p1

    .local v2, "ptSrc":Lcom/sun/javafx/geom/Point2D;
    move-object/from16 v3, p2

    .local v3, "ptDst":Lcom/sun/javafx/geom/Point2D;
    move-object v8, v3

    if-nez v8, :cond_0

    .line 1239
    new-instance v8, Lcom/sun/javafx/geom/Point2D;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    invoke-direct {v9}, Lcom/sun/javafx/geom/Point2D;-><init>()V

    move-object v3, v8

    .line 1242
    :cond_0
    move-object v8, v2

    iget v8, v8, Lcom/sun/javafx/geom/Point2D;->x:F

    float-to-double v8, v8

    move-wide v4, v8

    .line 1243
    .local v4, "x":D
    move-object v8, v2

    iget v8, v8, Lcom/sun/javafx/geom/Point2D;->y:F

    float-to-double v8, v8

    move-wide v6, v8

    .line 1244
    .local v6, "y":D
    move-object v8, v1

    iget v8, v8, Lcom/sun/javafx/geom/transform/Affine2D;->state:I

    packed-switch v8, :pswitch_data_0

    .line 1246
    invoke-static {}, Lcom/sun/javafx/geom/transform/Affine2D;->stateError()V

    .line 1250
    :pswitch_0
    move-object v8, v3

    move-wide v9, v4

    move-object v11, v1

    iget-wide v11, v11, Lcom/sun/javafx/geom/transform/Affine2D;->mxx:D

    mul-double/2addr v9, v11

    move-wide v11, v6

    move-object v13, v1

    iget-wide v13, v13, Lcom/sun/javafx/geom/transform/Affine2D;->mxy:D

    mul-double/2addr v11, v13

    add-double/2addr v9, v11

    double-to-float v9, v9

    move-wide v10, v4

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/Affine2D;->myx:D

    mul-double/2addr v10, v12

    move-wide v12, v6

    move-object v14, v1

    iget-wide v14, v14, Lcom/sun/javafx/geom/transform/Affine2D;->myy:D

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    double-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/geom/Point2D;->setLocation(FF)V

    .line 1251
    move-object v8, v3

    move-object v1, v8

    .line 1263
    .end local v1    # "this":Lcom/sun/javafx/geom/transform/Affine2D;
    :goto_0
    return-object v1

    .line 1254
    .restart local v1    # "this":Lcom/sun/javafx/geom/transform/Affine2D;
    :pswitch_1
    move-object v8, v3

    move-wide v9, v6

    move-object v11, v1

    iget-wide v11, v11, Lcom/sun/javafx/geom/transform/Affine2D;->mxy:D

    mul-double/2addr v9, v11

    double-to-float v9, v9

    move-wide v10, v4

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/Affine2D;->myx:D

    mul-double/2addr v10, v12

    double-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/geom/Point2D;->setLocation(FF)V

    .line 1255
    move-object v8, v3

    move-object v1, v8

    goto :goto_0

    .line 1258
    :pswitch_2
    move-object v8, v3

    move-wide v9, v4

    move-object v11, v1

    iget-wide v11, v11, Lcom/sun/javafx/geom/transform/Affine2D;->mxx:D

    mul-double/2addr v9, v11

    double-to-float v9, v9

    move-wide v10, v6

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/Affine2D;->myy:D

    mul-double/2addr v10, v12

    double-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/geom/Point2D;->setLocation(FF)V

    .line 1259
    move-object v8, v3

    move-object v1, v8

    goto :goto_0

    .line 1262
    :pswitch_3
    move-object v8, v3

    move-wide v9, v4

    double-to-float v9, v9

    move-wide v10, v6

    double-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/geom/Point2D;->setLocation(FF)V

    .line 1263
    move-object v8, v3

    move-object v1, v8

    goto :goto_0

    .line 1244
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

.method public deriveWithConcatenation(DDDDDD)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 27

    .prologue
    .line 1391
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Affine2D;
    move-wide/from16 v1, p1

    .local v1, "mxx":D
    move-wide/from16 v3, p3

    .local v3, "myx":D
    move-wide/from16 v5, p5

    .local v5, "mxy":D
    move-wide/from16 v7, p7

    .local v7, "myy":D
    move-wide/from16 v9, p9

    .local v9, "mxt":D
    move-wide/from16 v11, p11

    .local v11, "myt":D
    move-wide v14, v1

    move-wide/from16 v16, v3

    move-wide/from16 v18, v5

    move-wide/from16 v20, v7

    move-wide/from16 v22, v9

    move-wide/from16 v24, v11

    invoke-static/range {v14 .. v25}, Lcom/sun/javafx/geom/transform/Affine2D;->getInstance(DDDDDD)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v14

    move-object v13, v14

    .line 1394
    .local v13, "tmpTx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v14, v0

    move-object v15, v13

    invoke-virtual {v14, v15}, Lcom/sun/javafx/geom/transform/Affine2D;->concatenate(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 1395
    move-object v14, v0

    move-object v0, v14

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Affine2D;
    return-object v0
.end method

.method public deriveWithConcatenation(DDDDDDDDDDDD)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 53

    .prologue
    .line 1403
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/Affine2D;
    move-wide/from16 v2, p1

    .local v2, "mxx":D
    move-wide/from16 v4, p3

    .local v4, "mxy":D
    move-wide/from16 v6, p5

    .local v6, "mxz":D
    move-wide/from16 v8, p7

    .local v8, "mxt":D
    move-wide/from16 v10, p9

    .local v10, "myx":D
    move-wide/from16 v12, p11

    .local v12, "myy":D
    move-wide/from16 v14, p13

    .local v14, "myz":D
    move-wide/from16 v16, p15

    .local v16, "myt":D
    move-wide/from16 v18, p17

    .local v18, "mzx":D
    move-wide/from16 v20, p19

    .local v20, "mzy":D
    move-wide/from16 v22, p21

    .local v22, "mzz":D
    move-wide/from16 v24, p23

    .local v24, "mzt":D
    move-wide/from16 v27, v6

    const-wide/16 v29, 0x0

    cmpl-double v27, v27, v29

    if-nez v27, :cond_0

    move-wide/from16 v27, v14

    const-wide/16 v29, 0x0

    cmpl-double v27, v27, v29

    if-nez v27, :cond_0

    move-wide/from16 v27, v18

    const-wide/16 v29, 0x0

    cmpl-double v27, v27, v29

    if-nez v27, :cond_0

    move-wide/from16 v27, v20

    const-wide/16 v29, 0x0

    cmpl-double v27, v27, v29

    if-nez v27, :cond_0

    move-wide/from16 v27, v22

    const-wide/high16 v29, 0x3ff0000000000000L    # 1.0

    cmpl-double v27, v27, v29

    if-nez v27, :cond_0

    move-wide/from16 v27, v24

    const-wide/16 v29, 0x0

    cmpl-double v27, v27, v29

    if-nez v27, :cond_0

    .line 1406
    move-object/from16 v27, v1

    move-wide/from16 v28, v2

    move-wide/from16 v30, v4

    move-wide/from16 v32, v8

    move-wide/from16 v34, v10

    move-wide/from16 v36, v12

    move-wide/from16 v38, v16

    invoke-virtual/range {v27 .. v39}, Lcom/sun/javafx/geom/transform/Affine2D;->concatenate(DDDDDD)V

    .line 1409
    move-object/from16 v27, v1

    move-object/from16 v1, v27

    .line 1416
    .end local v1    # "this":Lcom/sun/javafx/geom/transform/Affine2D;
    :goto_0
    return-object v1

    .line 1412
    .restart local v1    # "this":Lcom/sun/javafx/geom/transform/Affine2D;
    :cond_0
    new-instance v27, Lcom/sun/javafx/geom/transform/Affine3D;

    move-object/from16 v52, v27

    move-object/from16 v27, v52

    move-object/from16 v28, v52

    move-object/from16 v29, v1

    invoke-direct/range {v28 .. v29}, Lcom/sun/javafx/geom/transform/Affine3D;-><init>(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    move-object/from16 v26, v27

    .line 1413
    .local v26, "t3d":Lcom/sun/javafx/geom/transform/Affine3D;
    move-object/from16 v27, v26

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

    invoke-virtual/range {v27 .. v51}, Lcom/sun/javafx/geom/transform/Affine3D;->concatenate(DDDDDDDDDDDD)V

    .line 1416
    move-object/from16 v27, v26

    move-object/from16 v1, v27

    goto :goto_0
.end method

.method public deriveWithConcatenation(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 7

    .prologue
    .line 1421
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Affine2D;
    move-object v1, p1

    .local v1, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/geom/transform/BaseTransform;->is2D()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1422
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/geom/transform/Affine2D;->concatenate(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 1423
    move-object v3, v0

    move-object v0, v3

    .line 1427
    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Affine2D;
    :goto_0
    return-object v0

    .line 1425
    .restart local v0    # "this":Lcom/sun/javafx/geom/transform/Affine2D;
    :cond_0
    new-instance v3, Lcom/sun/javafx/geom/transform/Affine3D;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/sun/javafx/geom/transform/Affine3D;-><init>(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    move-object v2, v3

    .line 1426
    .local v2, "t3d":Lcom/sun/javafx/geom/transform/Affine3D;
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/geom/transform/Affine3D;->concatenate(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 1427
    move-object v3, v2

    move-object v0, v3

    goto :goto_0
.end method

.method public deriveWithNewTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 4

    .prologue
    .line 1443
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Affine2D;
    move-object v1, p1

    .local v1, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/geom/transform/BaseTransform;->is2D()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1444
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/geom/transform/Affine2D;->setTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 1445
    move-object v2, v0

    move-object v0, v2

    .line 1447
    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Affine2D;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/geom/transform/Affine2D;
    :cond_0
    move-object v2, v1

    invoke-static {v2}, Lcom/sun/javafx/geom/transform/Affine2D;->getInstance(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public deriveWithPreConcatenation(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 7

    .prologue
    .line 1432
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Affine2D;
    move-object v1, p1

    .local v1, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/geom/transform/BaseTransform;->is2D()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1433
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/geom/transform/Affine2D;->preConcatenate(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 1434
    move-object v3, v0

    move-object v0, v3

    .line 1438
    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Affine2D;
    :goto_0
    return-object v0

    .line 1436
    .restart local v0    # "this":Lcom/sun/javafx/geom/transform/Affine2D;
    :cond_0
    new-instance v3, Lcom/sun/javafx/geom/transform/Affine3D;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/sun/javafx/geom/transform/Affine3D;-><init>(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    move-object v2, v3

    .line 1437
    .local v2, "t3d":Lcom/sun/javafx/geom/transform/Affine3D;
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/geom/transform/Affine3D;->preConcatenate(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 1438
    move-object v3, v2

    move-object v0, v3

    goto :goto_0
.end method

.method public deriveWithPreTranslation(DD)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 11

    .prologue
    .line 1369
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Affine2D;
    move-wide v1, p1

    .local v1, "mxt":D
    move-wide v3, p3

    .local v3, "myt":D
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget-wide v6, v6, Lcom/sun/javafx/geom/transform/Affine2D;->mxt:D

    move-wide v8, v1

    add-double/2addr v6, v8

    iput-wide v6, v5, Lcom/sun/javafx/geom/transform/Affine2D;->mxt:D

    .line 1370
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget-wide v6, v6, Lcom/sun/javafx/geom/transform/Affine2D;->myt:D

    move-wide v8, v3

    add-double/2addr v6, v8

    iput-wide v6, v5, Lcom/sun/javafx/geom/transform/Affine2D;->myt:D

    .line 1371
    move-object v5, v0

    iget-wide v5, v5, Lcom/sun/javafx/geom/transform/Affine2D;->mxt:D

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_0

    move-object v5, v0

    iget-wide v5, v5, Lcom/sun/javafx/geom/transform/Affine2D;->myt:D

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-eqz v5, :cond_2

    .line 1372
    :cond_0
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Lcom/sun/javafx/geom/transform/Affine2D;->state:I

    const/4 v7, 0x1

    or-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/sun/javafx/geom/transform/Affine2D;->state:I

    .line 1374
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Lcom/sun/javafx/geom/transform/Affine2D;->type:I

    const/4 v7, 0x1

    or-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/sun/javafx/geom/transform/Affine2D;->type:I

    .line 1382
    :cond_1
    :goto_0
    move-object v5, v0

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Affine2D;
    return-object v0

    .line 1377
    .restart local v0    # "this":Lcom/sun/javafx/geom/transform/Affine2D;
    :cond_2
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Lcom/sun/javafx/geom/transform/Affine2D;->state:I

    const/4 v7, -0x2

    and-int/lit8 v6, v6, -0x2

    iput v6, v5, Lcom/sun/javafx/geom/transform/Affine2D;->state:I

    .line 1378
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/transform/Affine2D;->type:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 1379
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Lcom/sun/javafx/geom/transform/Affine2D;->type:I

    const/4 v7, -0x2

    and-int/lit8 v6, v6, -0x2

    iput v6, v5, Lcom/sun/javafx/geom/transform/Affine2D;->type:I

    goto :goto_0
.end method

.method public deriveWithRotation(DDDD)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 21

    .prologue
    .line 1351
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/Affine2D;
    move-wide/from16 v2, p1

    .local v2, "theta":D
    move-wide/from16 v4, p3

    .local v4, "axisX":D
    move-wide/from16 v6, p5

    .local v6, "axisY":D
    move-wide/from16 v8, p7

    .local v8, "axisZ":D
    move-wide v11, v2

    const-wide/16 v13, 0x0

    cmpl-double v11, v11, v13

    if-nez v11, :cond_0

    .line 1352
    move-object v11, v1

    move-object v1, v11

    .line 1364
    .end local v1    # "this":Lcom/sun/javafx/geom/transform/Affine2D;
    :goto_0
    return-object v1

    .line 1354
    .restart local v1    # "this":Lcom/sun/javafx/geom/transform/Affine2D;
    :cond_0
    move-wide v11, v4

    invoke-static {v11, v12}, Lcom/sun/javafx/geom/transform/Affine2D;->almostZero(D)Z

    move-result v11

    if-eqz v11, :cond_3

    move-wide v11, v6

    invoke-static {v11, v12}, Lcom/sun/javafx/geom/transform/Affine2D;->almostZero(D)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1355
    move-wide v11, v8

    const-wide/16 v13, 0x0

    cmpl-double v11, v11, v13

    if-lez v11, :cond_2

    .line 1356
    move-object v11, v1

    move-wide v12, v2

    invoke-virtual {v11, v12, v13}, Lcom/sun/javafx/geom/transform/Affine2D;->rotate(D)V

    .line 1360
    :cond_1
    :goto_1
    move-object v11, v1

    move-object v1, v11

    goto :goto_0

    .line 1357
    :cond_2
    move-wide v11, v8

    const-wide/16 v13, 0x0

    cmpg-double v11, v11, v13

    if-gez v11, :cond_1

    .line 1358
    move-object v11, v1

    move-wide v12, v2

    neg-double v12, v12

    invoke-virtual {v11, v12, v13}, Lcom/sun/javafx/geom/transform/Affine2D;->rotate(D)V

    goto :goto_1

    .line 1362
    :cond_3
    new-instance v11, Lcom/sun/javafx/geom/transform/Affine3D;

    move-object/from16 v20, v11

    move-object/from16 v11, v20

    move-object/from16 v12, v20

    move-object v13, v1

    invoke-direct {v12, v13}, Lcom/sun/javafx/geom/transform/Affine3D;-><init>(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    move-object v10, v11

    .line 1363
    .local v10, "a":Lcom/sun/javafx/geom/transform/Affine3D;
    move-object v11, v10

    move-wide v12, v2

    move-wide v14, v4

    move-wide/from16 v16, v6

    move-wide/from16 v18, v8

    invoke-virtual/range {v11 .. v19}, Lcom/sun/javafx/geom/transform/Affine3D;->rotate(DDDD)V

    .line 1364
    move-object v11, v10

    move-object v1, v11

    goto :goto_0
.end method

.method public deriveWithScale(DDD)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 17

    .prologue
    .line 1338
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/Affine2D;
    move-wide/from16 v2, p1

    .local v2, "mxx":D
    move-wide/from16 v4, p3

    .local v4, "myy":D
    move-wide/from16 v6, p5

    .local v6, "mzz":D
    move-wide v9, v6

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    cmpl-double v9, v9, v11

    if-nez v9, :cond_0

    .line 1339
    move-object v9, v1

    move-wide v10, v2

    move-wide v12, v4

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/sun/javafx/geom/transform/Affine2D;->scale(DD)V

    .line 1340
    move-object v9, v1

    move-object v1, v9

    .line 1344
    .end local v1    # "this":Lcom/sun/javafx/geom/transform/Affine2D;
    :goto_0
    return-object v1

    .line 1342
    .restart local v1    # "this":Lcom/sun/javafx/geom/transform/Affine2D;
    :cond_0
    new-instance v9, Lcom/sun/javafx/geom/transform/Affine3D;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    move-object v11, v1

    invoke-direct {v10, v11}, Lcom/sun/javafx/geom/transform/Affine3D;-><init>(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    move-object v8, v9

    .line 1343
    .local v8, "a":Lcom/sun/javafx/geom/transform/Affine3D;
    move-object v9, v8

    move-wide v10, v2

    move-wide v12, v4

    move-wide v14, v6

    invoke-virtual/range {v9 .. v15}, Lcom/sun/javafx/geom/transform/Affine3D;->scale(DDD)V

    .line 1344
    move-object v9, v8

    move-object v1, v9

    goto :goto_0
.end method

.method public deriveWithTranslation(DD)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 11

    .prologue
    .line 1321
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Affine2D;
    move-wide v1, p1

    .local v1, "mxt":D
    move-wide v3, p3

    .local v3, "myt":D
    move-object v5, v0

    move-wide v6, v1

    move-wide v8, v3

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sun/javafx/geom/transform/Affine2D;->translate(DD)V

    .line 1322
    move-object v5, v0

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Affine2D;
    return-object v0
.end method

.method public deriveWithTranslation(DDD)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 17

    .prologue
    .line 1327
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/Affine2D;
    move-wide/from16 v2, p1

    .local v2, "mxt":D
    move-wide/from16 v4, p3

    .local v4, "myt":D
    move-wide/from16 v6, p5

    .local v6, "mzt":D
    move-wide v9, v6

    const-wide/16 v11, 0x0

    cmpl-double v9, v9, v11

    if-nez v9, :cond_0

    .line 1328
    move-object v9, v1

    move-wide v10, v2

    move-wide v12, v4

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/sun/javafx/geom/transform/Affine2D;->translate(DD)V

    .line 1329
    move-object v9, v1

    move-object v1, v9

    .line 1333
    .end local v1    # "this":Lcom/sun/javafx/geom/transform/Affine2D;
    :goto_0
    return-object v1

    .line 1331
    .restart local v1    # "this":Lcom/sun/javafx/geom/transform/Affine2D;
    :cond_0
    new-instance v9, Lcom/sun/javafx/geom/transform/Affine3D;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    move-object v11, v1

    invoke-direct {v10, v11}, Lcom/sun/javafx/geom/transform/Affine3D;-><init>(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    move-object v8, v9

    .line 1332
    .local v8, "a":Lcom/sun/javafx/geom/transform/Affine3D;
    move-object v9, v8

    move-wide v10, v2

    move-wide v12, v4

    move-wide v14, v6

    invoke-virtual/range {v9 .. v15}, Lcom/sun/javafx/geom/transform/Affine3D;->translate(DDD)V

    .line 1333
    move-object v9, v8

    move-object v1, v9

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    .line 1499
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/Affine2D;
    move-object v2, p1

    .local v2, "obj":Ljava/lang/Object;
    move-object v4, v2

    instance-of v4, v4, Lcom/sun/javafx/geom/transform/BaseTransform;

    if-eqz v4, :cond_1

    .line 1500
    move-object v4, v2

    check-cast v4, Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v3, v4

    .line 1501
    .local v3, "a":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v4, v3

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getType()I

    move-result v4

    const/16 v5, 0x7f

    if-gt v4, v5, :cond_0

    move-object v4, v3

    .line 1502
    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxx()D

    move-result-wide v4

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/transform/Affine2D;->mxx:D

    cmpl-double v4, v4, v6

    if-nez v4, :cond_0

    move-object v4, v3

    .line 1503
    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxy()D

    move-result-wide v4

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/transform/Affine2D;->mxy:D

    cmpl-double v4, v4, v6

    if-nez v4, :cond_0

    move-object v4, v3

    .line 1504
    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxt()D

    move-result-wide v4

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/transform/Affine2D;->mxt:D

    cmpl-double v4, v4, v6

    if-nez v4, :cond_0

    move-object v4, v3

    .line 1505
    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyx()D

    move-result-wide v4

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/transform/Affine2D;->myx:D

    cmpl-double v4, v4, v6

    if-nez v4, :cond_0

    move-object v4, v3

    .line 1506
    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyy()D

    move-result-wide v4

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/transform/Affine2D;->myy:D

    cmpl-double v4, v4, v6

    if-nez v4, :cond_0

    move-object v4, v3

    .line 1507
    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyt()D

    move-result-wide v4

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/transform/Affine2D;->myt:D

    cmpl-double v4, v4, v6

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v1, v4

    .line 1509
    .end local v1    # "this":Lcom/sun/javafx/geom/transform/Affine2D;
    .end local v3    # "a":Lcom/sun/javafx/geom/transform/BaseTransform;
    :goto_1
    return v1

    .line 1507
    .restart local v1    # "this":Lcom/sun/javafx/geom/transform/Affine2D;
    .restart local v3    # "a":Lcom/sun/javafx/geom/transform/BaseTransform;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 1509
    .end local v3    # "a":Lcom/sun/javafx/geom/transform/BaseTransform;
    :cond_1
    const/4 v4, 0x0

    move v1, v4

    goto :goto_1
.end method

.method public getDegree()Lcom/sun/javafx/geom/transform/BaseTransform$Degree;
    .locals 2

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Affine2D;
    sget-object v1, Lcom/sun/javafx/geom/transform/BaseTransform$Degree;->AFFINE_2D:Lcom/sun/javafx/geom/transform/BaseTransform$Degree;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Affine2D;
    return-object v0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    .line 1476
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/Affine2D;
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/Affine2D;->isIdentity()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    move v1, v4

    .line 1485
    .end local v1    # "this":Lcom/sun/javafx/geom/transform/Affine2D;
    .local v2, "bits":J
    :goto_0
    return v1

    .line 1477
    .end local v2    # "bits":J
    .restart local v1    # "this":Lcom/sun/javafx/geom/transform/Affine2D;
    :cond_0
    sget-wide v4, Lcom/sun/javafx/geom/transform/Affine2D;->BASE_HASH:J

    move-wide v2, v4

    .line 1478
    .restart local v2    # "bits":J
    move-wide v4, v2

    const-wide/16 v6, 0x1f

    mul-long/2addr v4, v6

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/Affine2D;->getMyy()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    add-long/2addr v4, v6

    move-wide v2, v4

    .line 1479
    move-wide v4, v2

    const-wide/16 v6, 0x1f

    mul-long/2addr v4, v6

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/Affine2D;->getMyx()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    add-long/2addr v4, v6

    move-wide v2, v4

    .line 1480
    move-wide v4, v2

    const-wide/16 v6, 0x1f

    mul-long/2addr v4, v6

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/Affine2D;->getMxy()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    add-long/2addr v4, v6

    move-wide v2, v4

    .line 1481
    move-wide v4, v2

    const-wide/16 v6, 0x1f

    mul-long/2addr v4, v6

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/Affine2D;->getMxx()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    add-long/2addr v4, v6

    move-wide v2, v4

    .line 1482
    move-wide v4, v2

    const-wide/16 v6, 0x1f

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    add-long/2addr v4, v6

    move-wide v2, v4

    .line 1483
    move-wide v4, v2

    const-wide/16 v6, 0x1f

    mul-long/2addr v4, v6

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/Affine2D;->getMyt()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    add-long/2addr v4, v6

    move-wide v2, v4

    .line 1484
    move-wide v4, v2

    const-wide/16 v6, 0x1f

    mul-long/2addr v4, v6

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/Affine2D;->getMxt()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    add-long/2addr v4, v6

    move-wide v2, v4

    .line 1485
    move-wide v4, v2

    long-to-int v4, v4

    move-wide v5, v2

    const/16 v7, 0x20

    shr-long/2addr v5, v7

    long-to-int v5, v5

    xor-int/2addr v4, v5

    move v1, v4

    goto :goto_0
.end method

.method public is2D()Z
    .locals 2

    .prologue
    .line 1294
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Affine2D;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Affine2D;
    return v0
.end method

.method public preConcatenate(Lcom/sun/javafx/geom/transform/BaseTransform;)V
    .locals 34

    .prologue
    .line 832
    move-object/from16 v4, p0

    .local v4, "this":Lcom/sun/javafx/geom/transform/Affine2D;
    move-object/from16 v5, p1

    .local v5, "Tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    sget-object v25, Lcom/sun/javafx/geom/transform/Affine2D$1;->$SwitchMap$com$sun$javafx$geom$transform$BaseTransform$Degree:[I

    move-object/from16 v26, v5

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/geom/transform/BaseTransform;->getDegree()Lcom/sun/javafx/geom/transform/BaseTransform$Degree;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/geom/transform/BaseTransform$Degree;->ordinal()I

    move-result v26

    aget v25, v25, v26

    packed-switch v25, :pswitch_data_0

    .line 841
    sget-object v25, Lcom/sun/javafx/geom/transform/BaseTransform$Degree;->AFFINE_2D:Lcom/sun/javafx/geom/transform/BaseTransform$Degree;

    invoke-static/range {v25 .. v25}, Lcom/sun/javafx/geom/transform/Affine2D;->degreeError(Lcom/sun/javafx/geom/transform/BaseTransform$Degree;)V

    .line 846
    :goto_0
    move-object/from16 v25, v4

    move-object/from16 v0, v25

    iget v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->state:I

    move/from16 v25, v0

    move/from16 v22, v25

    .line 847
    .local v22, "mystate":I
    move-object/from16 v25, v5

    check-cast v25, Lcom/sun/javafx/geom/transform/Affine2D;

    move-object/from16 v23, v25

    .line 848
    .local v23, "at":Lcom/sun/javafx/geom/transform/Affine2D;
    move-object/from16 v25, v23

    move-object/from16 v0, v25

    iget v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->state:I

    move/from16 v25, v0

    move/from16 v24, v25

    .line 849
    .local v24, "txstate":I
    move/from16 v25, v24

    const/16 v26, 0x4

    shl-int/lit8 v25, v25, 0x4

    move/from16 v26, v22

    or-int v25, v25, v26

    packed-switch v25, :pswitch_data_1

    .line 944
    :pswitch_0
    move-object/from16 v25, v23

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->mxx:D

    move-wide/from16 v25, v0

    move-wide/from16 v10, v25

    .local v10, "Txx":D
    move-object/from16 v25, v23

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->mxy:D

    move-wide/from16 v25, v0

    move-wide/from16 v12, v25

    .local v12, "Txy":D
    move-object/from16 v25, v23

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->mxt:D

    move-wide/from16 v25, v0

    move-wide/from16 v18, v25

    .line 945
    .local v18, "Txt":D
    move-object/from16 v25, v23

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->myx:D

    move-wide/from16 v25, v0

    move-wide/from16 v14, v25

    .local v14, "Tyx":D
    move-object/from16 v25, v23

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->myy:D

    move-wide/from16 v25, v0

    move-wide/from16 v16, v25

    .local v16, "Tyy":D
    move-object/from16 v25, v23

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->myt:D

    move-wide/from16 v25, v0

    move-wide/from16 v20, v25

    .line 946
    .local v20, "Tyt":D
    move/from16 v25, v22

    packed-switch v25, :pswitch_data_2

    .line 948
    invoke-static {}, Lcom/sun/javafx/geom/transform/Affine2D;->stateError()V

    .line 951
    :pswitch_1
    move-object/from16 v25, v4

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->mxt:D

    move-wide/from16 v25, v0

    move-wide/from16 v6, v25

    .line 952
    .local v6, "M0":D
    move-object/from16 v25, v4

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->myt:D

    move-wide/from16 v25, v0

    move-wide/from16 v8, v25

    .line 953
    .local v8, "M1":D
    move-wide/from16 v25, v18

    move-wide/from16 v27, v6

    move-wide/from16 v29, v10

    mul-double v27, v27, v29

    move-wide/from16 v29, v8

    move-wide/from16 v31, v12

    mul-double v29, v29, v31

    add-double v27, v27, v29

    add-double v25, v25, v27

    move-wide/from16 v18, v25

    .line 954
    move-wide/from16 v25, v20

    move-wide/from16 v27, v6

    move-wide/from16 v29, v14

    mul-double v27, v27, v29

    move-wide/from16 v29, v8

    move-wide/from16 v31, v16

    mul-double v29, v29, v31

    add-double v27, v27, v29

    add-double v25, v25, v27

    move-wide/from16 v20, v25

    .line 958
    .end local v6    # "M0":D
    .end local v8    # "M1":D
    :pswitch_2
    move-object/from16 v25, v4

    move-wide/from16 v26, v18

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine2D;->mxt:D

    .line 959
    move-object/from16 v25, v4

    move-wide/from16 v26, v20

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine2D;->myt:D

    .line 961
    move-object/from16 v25, v4

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->mxx:D

    move-wide/from16 v25, v0

    move-wide/from16 v6, v25

    .line 962
    .restart local v6    # "M0":D
    move-object/from16 v25, v4

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->myx:D

    move-wide/from16 v25, v0

    move-wide/from16 v8, v25

    .line 963
    .restart local v8    # "M1":D
    move-object/from16 v25, v4

    move-wide/from16 v26, v6

    move-wide/from16 v28, v10

    mul-double v26, v26, v28

    move-wide/from16 v28, v8

    move-wide/from16 v30, v12

    mul-double v28, v28, v30

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine2D;->mxx:D

    .line 964
    move-object/from16 v25, v4

    move-wide/from16 v26, v6

    move-wide/from16 v28, v14

    mul-double v26, v26, v28

    move-wide/from16 v28, v8

    move-wide/from16 v30, v16

    mul-double v28, v28, v30

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine2D;->myx:D

    .line 966
    move-object/from16 v25, v4

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->mxy:D

    move-wide/from16 v25, v0

    move-wide/from16 v6, v25

    .line 967
    move-object/from16 v25, v4

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->myy:D

    move-wide/from16 v25, v0

    move-wide/from16 v8, v25

    .line 968
    move-object/from16 v25, v4

    move-wide/from16 v26, v6

    move-wide/from16 v28, v10

    mul-double v26, v26, v28

    move-wide/from16 v28, v8

    move-wide/from16 v30, v12

    mul-double v28, v28, v30

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine2D;->mxy:D

    .line 969
    move-object/from16 v25, v4

    move-wide/from16 v26, v6

    move-wide/from16 v28, v14

    mul-double v26, v26, v28

    move-wide/from16 v28, v8

    move-wide/from16 v30, v16

    mul-double v28, v28, v30

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine2D;->myy:D

    .line 970
    .line 1033
    .end local v8    # "M1":D
    :goto_1
    move-object/from16 v25, v4

    invoke-virtual/range {v25 .. v25}, Lcom/sun/javafx/geom/transform/Affine2D;->updateState2D()V

    .line 1034
    .end local v6    # "M0":D
    .end local v10    # "Txx":D
    .end local v12    # "Txy":D
    .end local v14    # "Tyx":D
    .end local v16    # "Tyy":D
    .end local v18    # "Txt":D
    .end local v20    # "Tyt":D
    .end local v22    # "mystate":I
    .end local v23    # "at":Lcom/sun/javafx/geom/transform/Affine2D;
    .end local v24    # "txstate":I
    :goto_2
    return-void

    .line 834
    :pswitch_3
    goto :goto_2

    .line 836
    :pswitch_4
    move-object/from16 v25, v4

    move-object/from16 v26, v5

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxt()D

    move-result-wide v26

    move-object/from16 v28, v5

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyt()D

    move-result-wide v28

    invoke-virtual/range {v25 .. v29}, Lcom/sun/javafx/geom/transform/Affine2D;->translate(DD)V

    .line 837
    goto :goto_2

    .line 839
    :pswitch_5
    goto/16 :goto_0

    .line 859
    .restart local v22    # "mystate":I
    .restart local v23    # "at":Lcom/sun/javafx/geom/transform/Affine2D;
    .restart local v24    # "txstate":I
    :pswitch_6
    goto :goto_2

    .line 866
    :pswitch_7
    move-object/from16 v25, v4

    move-object/from16 v26, v23

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->mxt:D

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine2D;->mxt:D

    .line 867
    move-object/from16 v25, v4

    move-object/from16 v26, v23

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->myt:D

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine2D;->myt:D

    .line 868
    move-object/from16 v25, v4

    move/from16 v26, v22

    const/16 v27, 0x1

    or-int/lit8 v26, v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/sun/javafx/geom/transform/Affine2D;->state:I

    .line 869
    move-object/from16 v25, v4

    move-object/from16 v33, v25

    move-object/from16 v25, v33

    move-object/from16 v26, v33

    move-object/from16 v0, v26

    iget v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->type:I

    move/from16 v26, v0

    const/16 v27, 0x1

    or-int/lit8 v26, v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/sun/javafx/geom/transform/Affine2D;->type:I

    .line 870
    goto :goto_2

    .line 877
    :pswitch_8
    move-object/from16 v25, v4

    move-object/from16 v26, v4

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->mxt:D

    move-wide/from16 v26, v0

    move-object/from16 v28, v23

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->mxt:D

    move-wide/from16 v28, v0

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine2D;->mxt:D

    .line 878
    move-object/from16 v25, v4

    move-object/from16 v26, v4

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->myt:D

    move-wide/from16 v26, v0

    move-object/from16 v28, v23

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->myt:D

    move-wide/from16 v28, v0

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine2D;->myt:D

    .line 879
    goto/16 :goto_2

    .line 884
    :pswitch_9
    move-object/from16 v25, v4

    move/from16 v26, v22

    const/16 v27, 0x2

    or-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/sun/javafx/geom/transform/Affine2D;->state:I

    .line 893
    :pswitch_a
    move-object/from16 v25, v23

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->mxx:D

    move-wide/from16 v25, v0

    move-wide/from16 v10, v25

    .line 894
    .restart local v10    # "Txx":D
    move-object/from16 v25, v23

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->myy:D

    move-wide/from16 v25, v0

    move-wide/from16 v16, v25

    .line 895
    .restart local v16    # "Tyy":D
    move/from16 v25, v22

    const/16 v26, 0x4

    and-int/lit8 v25, v25, 0x4

    if-eqz v25, :cond_2

    .line 896
    move-object/from16 v25, v4

    move-object/from16 v26, v4

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->mxy:D

    move-wide/from16 v26, v0

    move-wide/from16 v28, v10

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine2D;->mxy:D

    .line 897
    move-object/from16 v25, v4

    move-object/from16 v26, v4

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->myx:D

    move-wide/from16 v26, v0

    move-wide/from16 v28, v16

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine2D;->myx:D

    .line 898
    move/from16 v25, v22

    const/16 v26, 0x2

    and-int/lit8 v25, v25, 0x2

    if-eqz v25, :cond_0

    .line 899
    move-object/from16 v25, v4

    move-object/from16 v26, v4

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->mxx:D

    move-wide/from16 v26, v0

    move-wide/from16 v28, v10

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine2D;->mxx:D

    .line 900
    move-object/from16 v25, v4

    move-object/from16 v26, v4

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->myy:D

    move-wide/from16 v26, v0

    move-wide/from16 v28, v16

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine2D;->myy:D

    .line 906
    :cond_0
    :goto_3
    move/from16 v25, v22

    const/16 v26, 0x1

    and-int/lit8 v25, v25, 0x1

    if-eqz v25, :cond_1

    .line 907
    move-object/from16 v25, v4

    move-object/from16 v26, v4

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->mxt:D

    move-wide/from16 v26, v0

    move-wide/from16 v28, v10

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine2D;->mxt:D

    .line 908
    move-object/from16 v25, v4

    move-object/from16 v26, v4

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->myt:D

    move-wide/from16 v26, v0

    move-wide/from16 v28, v16

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine2D;->myt:D

    .line 910
    :cond_1
    move-object/from16 v25, v4

    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/sun/javafx/geom/transform/Affine2D;->type:I

    .line 911
    goto/16 :goto_2

    .line 903
    :cond_2
    move-object/from16 v25, v4

    move-object/from16 v26, v4

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->mxx:D

    move-wide/from16 v26, v0

    move-wide/from16 v28, v10

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine2D;->mxx:D

    .line 904
    move-object/from16 v25, v4

    move-object/from16 v26, v4

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->myy:D

    move-wide/from16 v26, v0

    move-wide/from16 v28, v16

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine2D;->myy:D

    goto :goto_3

    .line 914
    .end local v10    # "Txx":D
    .end local v16    # "Tyy":D
    :pswitch_b
    move/from16 v25, v22

    const/16 v26, 0x2

    or-int/lit8 v25, v25, 0x2

    move/from16 v22, v25

    .line 920
    :pswitch_c
    move-object/from16 v25, v4

    move/from16 v26, v22

    const/16 v27, 0x4

    xor-int/lit8 v26, v26, 0x4

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/sun/javafx/geom/transform/Affine2D;->state:I

    .line 925
    :pswitch_d
    move-object/from16 v25, v23

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->mxy:D

    move-wide/from16 v25, v0

    move-wide/from16 v12, v25

    .line 926
    .restart local v12    # "Txy":D
    move-object/from16 v25, v23

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->myx:D

    move-wide/from16 v25, v0

    move-wide/from16 v14, v25

    .line 928
    .restart local v14    # "Tyx":D
    move-object/from16 v25, v4

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->mxx:D

    move-wide/from16 v25, v0

    move-wide/from16 v6, v25

    .line 929
    .restart local v6    # "M0":D
    move-object/from16 v25, v4

    move-object/from16 v26, v4

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->myx:D

    move-wide/from16 v26, v0

    move-wide/from16 v28, v12

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine2D;->mxx:D

    .line 930
    move-object/from16 v25, v4

    move-wide/from16 v26, v6

    move-wide/from16 v28, v14

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine2D;->myx:D

    .line 932
    move-object/from16 v25, v4

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->mxy:D

    move-wide/from16 v25, v0

    move-wide/from16 v6, v25

    .line 933
    move-object/from16 v25, v4

    move-object/from16 v26, v4

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->myy:D

    move-wide/from16 v26, v0

    move-wide/from16 v28, v12

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine2D;->mxy:D

    .line 934
    move-object/from16 v25, v4

    move-wide/from16 v26, v6

    move-wide/from16 v28, v14

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine2D;->myy:D

    .line 936
    move-object/from16 v25, v4

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->mxt:D

    move-wide/from16 v25, v0

    move-wide/from16 v6, v25

    .line 937
    move-object/from16 v25, v4

    move-object/from16 v26, v4

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->myt:D

    move-wide/from16 v26, v0

    move-wide/from16 v28, v12

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine2D;->mxt:D

    .line 938
    move-object/from16 v25, v4

    move-wide/from16 v26, v6

    move-wide/from16 v28, v14

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine2D;->myt:D

    .line 939
    move-object/from16 v25, v4

    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/sun/javafx/geom/transform/Affine2D;->type:I

    .line 940
    goto/16 :goto_2

    .line 973
    .end local v6    # "M0":D
    .restart local v10    # "Txx":D
    .restart local v16    # "Tyy":D
    .restart local v18    # "Txt":D
    .restart local v20    # "Tyt":D
    :pswitch_e
    move-object/from16 v25, v4

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->mxt:D

    move-wide/from16 v25, v0

    move-wide/from16 v6, v25

    .line 974
    .restart local v6    # "M0":D
    move-object/from16 v25, v4

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->myt:D

    move-wide/from16 v25, v0

    move-wide/from16 v8, v25

    .line 975
    .restart local v8    # "M1":D
    move-wide/from16 v25, v18

    move-wide/from16 v27, v6

    move-wide/from16 v29, v10

    mul-double v27, v27, v29

    move-wide/from16 v29, v8

    move-wide/from16 v31, v12

    mul-double v29, v29, v31

    add-double v27, v27, v29

    add-double v25, v25, v27

    move-wide/from16 v18, v25

    .line 976
    move-wide/from16 v25, v20

    move-wide/from16 v27, v6

    move-wide/from16 v29, v14

    mul-double v27, v27, v29

    move-wide/from16 v29, v8

    move-wide/from16 v31, v16

    mul-double v29, v29, v31

    add-double v27, v27, v29

    add-double v25, v25, v27

    move-wide/from16 v20, v25

    .line 980
    .end local v6    # "M0":D
    .end local v8    # "M1":D
    :pswitch_f
    move-object/from16 v25, v4

    move-wide/from16 v26, v18

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine2D;->mxt:D

    .line 981
    move-object/from16 v25, v4

    move-wide/from16 v26, v20

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine2D;->myt:D

    .line 983
    move-object/from16 v25, v4

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->myx:D

    move-wide/from16 v25, v0

    move-wide/from16 v6, v25

    .line 984
    .restart local v6    # "M0":D
    move-object/from16 v25, v4

    move-wide/from16 v26, v6

    move-wide/from16 v28, v12

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine2D;->mxx:D

    .line 985
    move-object/from16 v25, v4

    move-wide/from16 v26, v6

    move-wide/from16 v28, v16

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine2D;->myx:D

    .line 987
    move-object/from16 v25, v4

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->mxy:D

    move-wide/from16 v25, v0

    move-wide/from16 v6, v25

    .line 988
    move-object/from16 v25, v4

    move-wide/from16 v26, v6

    move-wide/from16 v28, v10

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine2D;->mxy:D

    .line 989
    move-object/from16 v25, v4

    move-wide/from16 v26, v6

    move-wide/from16 v28, v14

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine2D;->myy:D

    .line 990
    goto/16 :goto_1

    .line 993
    .end local v6    # "M0":D
    :pswitch_10
    move-object/from16 v25, v4

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->mxt:D

    move-wide/from16 v25, v0

    move-wide/from16 v6, v25

    .line 994
    .restart local v6    # "M0":D
    move-object/from16 v25, v4

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->myt:D

    move-wide/from16 v25, v0

    move-wide/from16 v8, v25

    .line 995
    .restart local v8    # "M1":D
    move-wide/from16 v25, v18

    move-wide/from16 v27, v6

    move-wide/from16 v29, v10

    mul-double v27, v27, v29

    move-wide/from16 v29, v8

    move-wide/from16 v31, v12

    mul-double v29, v29, v31

    add-double v27, v27, v29

    add-double v25, v25, v27

    move-wide/from16 v18, v25

    .line 996
    move-wide/from16 v25, v20

    move-wide/from16 v27, v6

    move-wide/from16 v29, v14

    mul-double v27, v27, v29

    move-wide/from16 v29, v8

    move-wide/from16 v31, v16

    mul-double v29, v29, v31

    add-double v27, v27, v29

    add-double v25, v25, v27

    move-wide/from16 v20, v25

    .line 1000
    .end local v6    # "M0":D
    .end local v8    # "M1":D
    :pswitch_11
    move-object/from16 v25, v4

    move-wide/from16 v26, v18

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine2D;->mxt:D

    .line 1001
    move-object/from16 v25, v4

    move-wide/from16 v26, v20

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine2D;->myt:D

    .line 1003
    move-object/from16 v25, v4

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->mxx:D

    move-wide/from16 v25, v0

    move-wide/from16 v6, v25

    .line 1004
    .restart local v6    # "M0":D
    move-object/from16 v25, v4

    move-wide/from16 v26, v6

    move-wide/from16 v28, v10

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine2D;->mxx:D

    .line 1005
    move-object/from16 v25, v4

    move-wide/from16 v26, v6

    move-wide/from16 v28, v14

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine2D;->myx:D

    .line 1007
    move-object/from16 v25, v4

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->myy:D

    move-wide/from16 v25, v0

    move-wide/from16 v6, v25

    .line 1008
    move-object/from16 v25, v4

    move-wide/from16 v26, v6

    move-wide/from16 v28, v12

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine2D;->mxy:D

    .line 1009
    move-object/from16 v25, v4

    move-wide/from16 v26, v6

    move-wide/from16 v28, v16

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine2D;->myy:D

    .line 1010
    goto/16 :goto_1

    .line 1013
    .end local v6    # "M0":D
    :pswitch_12
    move-object/from16 v25, v4

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->mxt:D

    move-wide/from16 v25, v0

    move-wide/from16 v6, v25

    .line 1014
    .restart local v6    # "M0":D
    move-object/from16 v25, v4

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->myt:D

    move-wide/from16 v25, v0

    move-wide/from16 v8, v25

    .line 1015
    .restart local v8    # "M1":D
    move-wide/from16 v25, v18

    move-wide/from16 v27, v6

    move-wide/from16 v29, v10

    mul-double v27, v27, v29

    move-wide/from16 v29, v8

    move-wide/from16 v31, v12

    mul-double v29, v29, v31

    add-double v27, v27, v29

    add-double v25, v25, v27

    move-wide/from16 v18, v25

    .line 1016
    move-wide/from16 v25, v20

    move-wide/from16 v27, v6

    move-wide/from16 v29, v14

    mul-double v27, v27, v29

    move-wide/from16 v29, v8

    move-wide/from16 v31, v16

    mul-double v29, v29, v31

    add-double v27, v27, v29

    add-double v25, v25, v27

    move-wide/from16 v20, v25

    .line 1020
    .end local v6    # "M0":D
    .end local v8    # "M1":D
    :pswitch_13
    move-object/from16 v25, v4

    move-wide/from16 v26, v18

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine2D;->mxt:D

    .line 1021
    move-object/from16 v25, v4

    move-wide/from16 v26, v20

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine2D;->myt:D

    .line 1023
    move-object/from16 v25, v4

    move-wide/from16 v26, v10

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine2D;->mxx:D

    .line 1024
    move-object/from16 v25, v4

    move-wide/from16 v26, v14

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine2D;->myx:D

    .line 1026
    move-object/from16 v25, v4

    move-wide/from16 v26, v12

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine2D;->mxy:D

    .line 1027
    move-object/from16 v25, v4

    move-wide/from16 v26, v16

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine2D;->myy:D

    .line 1029
    move-object/from16 v25, v4

    move/from16 v26, v22

    move/from16 v27, v24

    or-int v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/sun/javafx/geom/transform/Affine2D;->state:I

    .line 1030
    move-object/from16 v25, v4

    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/sun/javafx/geom/transform/Affine2D;->type:I

    .line 1031
    goto/16 :goto_2

    .line 832
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 849
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_d
        :pswitch_d
    .end packed-switch

    .line 946
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public quadrantRotate(I)V
    .locals 4

    .prologue
    .line 328
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Affine2D;
    move v1, p1

    .local v1, "numquadrants":I
    move v2, v1

    const/4 v3, 0x3

    and-int/lit8 v2, v2, 0x3

    packed-switch v2, :pswitch_data_0

    .line 341
    :goto_0
    return-void

    .line 330
    :pswitch_0
    goto :goto_0

    .line 332
    :pswitch_1
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/geom/transform/Affine2D;->rotate90()V

    .line 333
    goto :goto_0

    .line 335
    :pswitch_2
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/geom/transform/Affine2D;->rotate180()V

    .line 336
    goto :goto_0

    .line 338
    :pswitch_3
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/geom/transform/Affine2D;->rotate270()V

    goto :goto_0

    .line 328
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public quadrantRotate(IDD)V
    .locals 22

    .prologue
    .line 361
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/geom/transform/Affine2D;
    move/from16 v4, p1

    .local v4, "numquadrants":I
    move-wide/from16 v5, p2

    .local v5, "anchorx":D
    move-wide/from16 v7, p4

    .local v7, "anchory":D
    move v9, v4

    const/4 v10, 0x3

    and-int/lit8 v9, v9, 0x3

    packed-switch v9, :pswitch_data_0

    .line 380
    :goto_0
    move-object v9, v3

    iget-wide v9, v9, Lcom/sun/javafx/geom/transform/Affine2D;->mxt:D

    const-wide/16 v11, 0x0

    cmpl-double v9, v9, v11

    if-nez v9, :cond_1

    move-object v9, v3

    iget-wide v9, v9, Lcom/sun/javafx/geom/transform/Affine2D;->myt:D

    const-wide/16 v11, 0x0

    cmpl-double v9, v9, v11

    if-nez v9, :cond_1

    .line 381
    move-object v9, v3

    move-object/from16 v20, v9

    move-object/from16 v9, v20

    move-object/from16 v10, v20

    iget v10, v10, Lcom/sun/javafx/geom/transform/Affine2D;->state:I

    const/4 v11, -0x2

    and-int/lit8 v10, v10, -0x2

    iput v10, v9, Lcom/sun/javafx/geom/transform/Affine2D;->state:I

    .line 382
    move-object v9, v3

    iget v9, v9, Lcom/sun/javafx/geom/transform/Affine2D;->type:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_0

    .line 383
    move-object v9, v3

    move-object/from16 v20, v9

    move-object/from16 v9, v20

    move-object/from16 v10, v20

    iget v10, v10, Lcom/sun/javafx/geom/transform/Affine2D;->type:I

    const/4 v11, -0x2

    and-int/lit8 v10, v10, -0x2

    iput v10, v9, Lcom/sun/javafx/geom/transform/Affine2D;->type:I

    .line 389
    :cond_0
    :goto_1
    return-void

    .line 363
    :pswitch_0
    goto :goto_1

    .line 365
    :pswitch_1
    move-object v9, v3

    move-object/from16 v20, v9

    move-object/from16 v9, v20

    move-object/from16 v10, v20

    iget-wide v10, v10, Lcom/sun/javafx/geom/transform/Affine2D;->mxt:D

    move-wide v12, v5

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/geom/transform/Affine2D;->mxx:D

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->mxy:D

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    mul-double/2addr v12, v14

    move-wide v14, v7

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->mxy:D

    move-wide/from16 v16, v0

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->mxx:D

    move-wide/from16 v18, v0

    add-double v16, v16, v18

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    add-double/2addr v10, v12

    iput-wide v10, v9, Lcom/sun/javafx/geom/transform/Affine2D;->mxt:D

    .line 366
    move-object v9, v3

    move-object/from16 v20, v9

    move-object/from16 v9, v20

    move-object/from16 v10, v20

    iget-wide v10, v10, Lcom/sun/javafx/geom/transform/Affine2D;->myt:D

    move-wide v12, v5

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/geom/transform/Affine2D;->myx:D

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->myy:D

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    mul-double/2addr v12, v14

    move-wide v14, v7

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->myy:D

    move-wide/from16 v16, v0

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->myx:D

    move-wide/from16 v18, v0

    add-double v16, v16, v18

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    add-double/2addr v10, v12

    iput-wide v10, v9, Lcom/sun/javafx/geom/transform/Affine2D;->myt:D

    .line 367
    move-object v9, v3

    invoke-virtual {v9}, Lcom/sun/javafx/geom/transform/Affine2D;->rotate90()V

    .line 368
    goto/16 :goto_0

    .line 370
    :pswitch_2
    move-object v9, v3

    move-object/from16 v20, v9

    move-object/from16 v9, v20

    move-object/from16 v10, v20

    iget-wide v10, v10, Lcom/sun/javafx/geom/transform/Affine2D;->mxt:D

    move-wide v12, v5

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/geom/transform/Affine2D;->mxx:D

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->mxx:D

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    mul-double/2addr v12, v14

    move-wide v14, v7

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->mxy:D

    move-wide/from16 v16, v0

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->mxy:D

    move-wide/from16 v18, v0

    add-double v16, v16, v18

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    add-double/2addr v10, v12

    iput-wide v10, v9, Lcom/sun/javafx/geom/transform/Affine2D;->mxt:D

    .line 371
    move-object v9, v3

    move-object/from16 v20, v9

    move-object/from16 v9, v20

    move-object/from16 v10, v20

    iget-wide v10, v10, Lcom/sun/javafx/geom/transform/Affine2D;->myt:D

    move-wide v12, v5

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/geom/transform/Affine2D;->myx:D

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->myx:D

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    mul-double/2addr v12, v14

    move-wide v14, v7

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->myy:D

    move-wide/from16 v16, v0

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->myy:D

    move-wide/from16 v18, v0

    add-double v16, v16, v18

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    add-double/2addr v10, v12

    iput-wide v10, v9, Lcom/sun/javafx/geom/transform/Affine2D;->myt:D

    .line 372
    move-object v9, v3

    invoke-virtual {v9}, Lcom/sun/javafx/geom/transform/Affine2D;->rotate180()V

    .line 373
    goto/16 :goto_0

    .line 375
    :pswitch_3
    move-object v9, v3

    move-object/from16 v20, v9

    move-object/from16 v9, v20

    move-object/from16 v10, v20

    iget-wide v10, v10, Lcom/sun/javafx/geom/transform/Affine2D;->mxt:D

    move-wide v12, v5

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/geom/transform/Affine2D;->mxx:D

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->mxy:D

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    mul-double/2addr v12, v14

    move-wide v14, v7

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->mxy:D

    move-wide/from16 v16, v0

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->mxx:D

    move-wide/from16 v18, v0

    sub-double v16, v16, v18

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    add-double/2addr v10, v12

    iput-wide v10, v9, Lcom/sun/javafx/geom/transform/Affine2D;->mxt:D

    .line 376
    move-object v9, v3

    move-object/from16 v20, v9

    move-object/from16 v9, v20

    move-object/from16 v10, v20

    iget-wide v10, v10, Lcom/sun/javafx/geom/transform/Affine2D;->myt:D

    move-wide v12, v5

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/geom/transform/Affine2D;->myx:D

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->myy:D

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    mul-double/2addr v12, v14

    move-wide v14, v7

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->myy:D

    move-wide/from16 v16, v0

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->myx:D

    move-wide/from16 v18, v0

    sub-double v16, v16, v18

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    add-double/2addr v10, v12

    iput-wide v10, v9, Lcom/sun/javafx/geom/transform/Affine2D;->myt:D

    .line 377
    move-object v9, v3

    invoke-virtual {v9}, Lcom/sun/javafx/geom/transform/Affine2D;->rotate270()V

    goto/16 :goto_0

    .line 386
    :cond_1
    move-object v9, v3

    move-object/from16 v20, v9

    move-object/from16 v9, v20

    move-object/from16 v10, v20

    iget v10, v10, Lcom/sun/javafx/geom/transform/Affine2D;->state:I

    const/4 v11, 0x1

    or-int/lit8 v10, v10, 0x1

    iput v10, v9, Lcom/sun/javafx/geom/transform/Affine2D;->state:I

    .line 387
    move-object v9, v3

    move-object/from16 v20, v9

    move-object/from16 v9, v20

    move-object/from16 v10, v20

    iget v10, v10, Lcom/sun/javafx/geom/transform/Affine2D;->type:I

    const/4 v11, 0x1

    or-int/lit8 v10, v10, 0x1

    iput v10, v9, Lcom/sun/javafx/geom/transform/Affine2D;->type:I

    goto/16 :goto_1

    .line 361
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected reset3Delements()V
    .locals 0

    .prologue
    .line 205
    return-void
.end method

.method public restoreTransform(DDDDDD)V
    .locals 27

    .prologue
    .line 1302
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Affine2D;
    move-wide/from16 v1, p1

    .local v1, "mxx":D
    move-wide/from16 v3, p3

    .local v3, "myx":D
    move-wide/from16 v5, p5

    .local v5, "mxy":D
    move-wide/from16 v7, p7

    .local v7, "myy":D
    move-wide/from16 v9, p9

    .local v9, "mxt":D
    move-wide/from16 v11, p11

    .local v11, "myt":D
    move-object v13, v0

    move-wide v14, v1

    move-wide/from16 v16, v3

    move-wide/from16 v18, v5

    move-wide/from16 v20, v7

    move-wide/from16 v22, v9

    move-wide/from16 v24, v11

    invoke-virtual/range {v13 .. v25}, Lcom/sun/javafx/geom/transform/Affine2D;->setTransform(DDDDDD)V

    .line 1303
    return-void
.end method

.method public restoreTransform(DDDDDDDDDDDD)V
    .locals 39

    .prologue
    .line 1310
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/Affine2D;
    move-wide/from16 v2, p1

    .local v2, "mxx":D
    move-wide/from16 v4, p3

    .local v4, "mxy":D
    move-wide/from16 v6, p5

    .local v6, "mxz":D
    move-wide/from16 v8, p7

    .local v8, "mxt":D
    move-wide/from16 v10, p9

    .local v10, "myx":D
    move-wide/from16 v12, p11

    .local v12, "myy":D
    move-wide/from16 v14, p13

    .local v14, "myz":D
    move-wide/from16 v16, p15

    .local v16, "myt":D
    move-wide/from16 v18, p17

    .local v18, "mzx":D
    move-wide/from16 v20, p19

    .local v20, "mzy":D
    move-wide/from16 v22, p21

    .local v22, "mzz":D
    move-wide/from16 v24, p23

    .local v24, "mzt":D
    move-wide/from16 v26, v6

    const-wide/16 v28, 0x0

    cmpl-double v26, v26, v28

    if-nez v26, :cond_0

    move-wide/from16 v26, v14

    const-wide/16 v28, 0x0

    cmpl-double v26, v26, v28

    if-nez v26, :cond_0

    move-wide/from16 v26, v18

    const-wide/16 v28, 0x0

    cmpl-double v26, v26, v28

    if-nez v26, :cond_0

    move-wide/from16 v26, v20

    const-wide/16 v28, 0x0

    cmpl-double v26, v26, v28

    if-nez v26, :cond_0

    move-wide/from16 v26, v22

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    cmpl-double v26, v26, v28

    if-nez v26, :cond_0

    move-wide/from16 v26, v24

    const-wide/16 v28, 0x0

    cmpl-double v26, v26, v28

    if-eqz v26, :cond_1

    .line 1314
    :cond_0
    sget-object v26, Lcom/sun/javafx/geom/transform/BaseTransform$Degree;->AFFINE_2D:Lcom/sun/javafx/geom/transform/BaseTransform$Degree;

    invoke-static/range {v26 .. v26}, Lcom/sun/javafx/geom/transform/Affine2D;->degreeError(Lcom/sun/javafx/geom/transform/BaseTransform$Degree;)V

    .line 1316
    :cond_1
    move-object/from16 v26, v1

    move-wide/from16 v27, v2

    move-wide/from16 v29, v10

    move-wide/from16 v31, v4

    move-wide/from16 v33, v12

    move-wide/from16 v35, v8

    move-wide/from16 v37, v16

    invoke-virtual/range {v26 .. v38}, Lcom/sun/javafx/geom/transform/Affine2D;->setTransform(DDDDDD)V

    .line 1317
    return-void
.end method

.method public rotate(DD)V
    .locals 25

    .prologue
    .line 257
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/geom/transform/Affine2D;
    move-wide/from16 v4, p1

    .local v4, "vecx":D
    move-wide/from16 v6, p3

    .local v6, "vecy":D
    move-wide/from16 v18, v6

    const-wide/16 v20, 0x0

    cmpl-double v18, v18, v20

    if-nez v18, :cond_1

    .line 258
    move-wide/from16 v18, v4

    const-wide/16 v20, 0x0

    cmpg-double v18, v18, v20

    if-gez v18, :cond_0

    .line 259
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/geom/transform/Affine2D;->rotate180()V

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    move-wide/from16 v18, v4

    const-wide/16 v20, 0x0

    cmpl-double v18, v18, v20

    if-nez v18, :cond_3

    .line 264
    move-wide/from16 v18, v6

    const-wide/16 v20, 0x0

    cmpl-double v18, v18, v20

    if-lez v18, :cond_2

    .line 265
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/geom/transform/Affine2D;->rotate90()V

    goto :goto_0

    .line 267
    :cond_2
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/geom/transform/Affine2D;->rotate270()V

    goto :goto_0

    .line 270
    :cond_3
    move-wide/from16 v18, v4

    move-wide/from16 v20, v4

    mul-double v18, v18, v20

    move-wide/from16 v20, v6

    move-wide/from16 v22, v6

    mul-double v20, v20, v22

    add-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    move-wide/from16 v8, v18

    .line 271
    .local v8, "len":D
    move-wide/from16 v18, v6

    move-wide/from16 v20, v8

    div-double v18, v18, v20

    move-wide/from16 v10, v18

    .line 272
    .local v10, "sin":D
    move-wide/from16 v18, v4

    move-wide/from16 v20, v8

    div-double v18, v18, v20

    move-wide/from16 v12, v18

    .line 274
    .local v12, "cos":D
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->mxx:D

    move-wide/from16 v18, v0

    move-wide/from16 v14, v18

    .line 275
    .local v14, "M0":D
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->mxy:D

    move-wide/from16 v18, v0

    move-wide/from16 v16, v18

    .line 276
    .local v16, "M1":D
    move-object/from16 v18, v3

    move-wide/from16 v19, v12

    move-wide/from16 v21, v14

    mul-double v19, v19, v21

    move-wide/from16 v21, v10

    move-wide/from16 v23, v16

    mul-double v21, v21, v23

    add-double v19, v19, v21

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine2D;->mxx:D

    .line 277
    move-object/from16 v18, v3

    move-wide/from16 v19, v10

    move-wide/from16 v0, v19

    neg-double v0, v0

    move-wide/from16 v19, v0

    move-wide/from16 v21, v14

    mul-double v19, v19, v21

    move-wide/from16 v21, v12

    move-wide/from16 v23, v16

    mul-double v21, v21, v23

    add-double v19, v19, v21

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine2D;->mxy:D

    .line 278
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->myx:D

    move-wide/from16 v18, v0

    move-wide/from16 v14, v18

    .line 279
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->myy:D

    move-wide/from16 v18, v0

    move-wide/from16 v16, v18

    .line 280
    move-object/from16 v18, v3

    move-wide/from16 v19, v12

    move-wide/from16 v21, v14

    mul-double v19, v19, v21

    move-wide/from16 v21, v10

    move-wide/from16 v23, v16

    mul-double v21, v21, v23

    add-double v19, v19, v21

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine2D;->myx:D

    .line 281
    move-object/from16 v18, v3

    move-wide/from16 v19, v10

    move-wide/from16 v0, v19

    neg-double v0, v0

    move-wide/from16 v19, v0

    move-wide/from16 v21, v14

    mul-double v19, v19, v21

    move-wide/from16 v21, v12

    move-wide/from16 v23, v16

    mul-double v21, v21, v23

    add-double v19, v19, v21

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/Affine2D;->myy:D

    .line 282
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/geom/transform/Affine2D;->updateState2D()V

    goto/16 :goto_0
.end method

.method public rotate(DDD)V
    .locals 13

    .prologue
    .line 234
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Affine2D;
    move-wide v1, p1

    .local v1, "theta":D
    move-wide/from16 v3, p3

    .local v3, "anchorx":D
    move-wide/from16 v5, p5

    .local v5, "anchory":D
    move-object v7, v0

    move-wide v8, v3

    move-wide v10, v5

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/sun/javafx/geom/transform/Affine2D;->translate(DD)V

    .line 235
    move-object v7, v0

    move-wide v8, v1

    invoke-virtual {v7, v8, v9}, Lcom/sun/javafx/geom/transform/Affine2D;->rotate(D)V

    .line 236
    move-object v7, v0

    move-wide v8, v3

    neg-double v8, v8

    move-wide v10, v5

    neg-double v10, v10

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/sun/javafx/geom/transform/Affine2D;->translate(DD)V

    .line 237
    return-void
.end method

.method public rotate(DDDD)V
    .locals 15

    .prologue
    .line 311
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Affine2D;
    move-wide/from16 v1, p1

    .local v1, "vecx":D
    move-wide/from16 v3, p3

    .local v3, "vecy":D
    move-wide/from16 v5, p5

    .local v5, "anchorx":D
    move-wide/from16 v7, p7

    .local v7, "anchory":D
    move-object v9, v0

    move-wide v10, v5

    move-wide v12, v7

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/sun/javafx/geom/transform/Affine2D;->translate(DD)V

    .line 312
    move-object v9, v0

    move-wide v10, v1

    move-wide v12, v3

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/sun/javafx/geom/transform/Affine2D;->rotate(DD)V

    .line 313
    move-object v9, v0

    move-wide v10, v5

    neg-double v10, v10

    move-wide v12, v7

    neg-double v12, v12

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/sun/javafx/geom/transform/Affine2D;->translate(DD)V

    .line 314
    return-void
.end method

.method public setToQuadrantRotation(I)V
    .locals 6

    .prologue
    .line 604
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/Affine2D;
    move v2, p1

    .local v2, "numquadrants":I
    move v3, v2

    const/4 v4, 0x3

    and-int/lit8 v3, v3, 0x3

    packed-switch v3, :pswitch_data_0

    .line 646
    :goto_0
    return-void

    .line 606
    :pswitch_0
    move-object v3, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iput-wide v4, v3, Lcom/sun/javafx/geom/transform/Affine2D;->mxx:D

    .line 607
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/javafx/geom/transform/Affine2D;->myx:D

    .line 608
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/javafx/geom/transform/Affine2D;->mxy:D

    .line 609
    move-object v3, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iput-wide v4, v3, Lcom/sun/javafx/geom/transform/Affine2D;->myy:D

    .line 610
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/javafx/geom/transform/Affine2D;->mxt:D

    .line 611
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/javafx/geom/transform/Affine2D;->myt:D

    .line 612
    move-object v3, v1

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/javafx/geom/transform/Affine2D;->state:I

    .line 613
    move-object v3, v1

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/javafx/geom/transform/Affine2D;->type:I

    .line 614
    goto :goto_0

    .line 616
    :pswitch_1
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/javafx/geom/transform/Affine2D;->mxx:D

    .line 617
    move-object v3, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iput-wide v4, v3, Lcom/sun/javafx/geom/transform/Affine2D;->myx:D

    .line 618
    move-object v3, v1

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    iput-wide v4, v3, Lcom/sun/javafx/geom/transform/Affine2D;->mxy:D

    .line 619
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/javafx/geom/transform/Affine2D;->myy:D

    .line 620
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/javafx/geom/transform/Affine2D;->mxt:D

    .line 621
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/javafx/geom/transform/Affine2D;->myt:D

    .line 622
    move-object v3, v1

    const/4 v4, 0x4

    iput v4, v3, Lcom/sun/javafx/geom/transform/Affine2D;->state:I

    .line 623
    move-object v3, v1

    const/16 v4, 0x8

    iput v4, v3, Lcom/sun/javafx/geom/transform/Affine2D;->type:I

    .line 624
    goto :goto_0

    .line 626
    :pswitch_2
    move-object v3, v1

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    iput-wide v4, v3, Lcom/sun/javafx/geom/transform/Affine2D;->mxx:D

    .line 627
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/javafx/geom/transform/Affine2D;->myx:D

    .line 628
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/javafx/geom/transform/Affine2D;->mxy:D

    .line 629
    move-object v3, v1

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    iput-wide v4, v3, Lcom/sun/javafx/geom/transform/Affine2D;->myy:D

    .line 630
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/javafx/geom/transform/Affine2D;->mxt:D

    .line 631
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/javafx/geom/transform/Affine2D;->myt:D

    .line 632
    move-object v3, v1

    const/4 v4, 0x2

    iput v4, v3, Lcom/sun/javafx/geom/transform/Affine2D;->state:I

    .line 633
    move-object v3, v1

    const/16 v4, 0x8

    iput v4, v3, Lcom/sun/javafx/geom/transform/Affine2D;->type:I

    .line 634
    goto :goto_0

    .line 636
    :pswitch_3
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/javafx/geom/transform/Affine2D;->mxx:D

    .line 637
    move-object v3, v1

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    iput-wide v4, v3, Lcom/sun/javafx/geom/transform/Affine2D;->myx:D

    .line 638
    move-object v3, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iput-wide v4, v3, Lcom/sun/javafx/geom/transform/Affine2D;->mxy:D

    .line 639
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/javafx/geom/transform/Affine2D;->myy:D

    .line 640
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/javafx/geom/transform/Affine2D;->mxt:D

    .line 641
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/javafx/geom/transform/Affine2D;->myt:D

    .line 642
    move-object v3, v1

    const/4 v4, 0x4

    iput v4, v3, Lcom/sun/javafx/geom/transform/Affine2D;->state:I

    .line 643
    move-object v3, v1

    const/16 v4, 0x8

    iput v4, v3, Lcom/sun/javafx/geom/transform/Affine2D;->type:I

    goto/16 :goto_0

    .line 604
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setToQuadrantRotation(IDD)V
    .locals 12

    .prologue
    .line 666
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/Affine2D;
    move v2, p1

    .local v2, "numquadrants":I
    move-wide v3, p2

    .local v3, "anchorx":D
    move-wide/from16 v5, p4

    .local v5, "anchory":D
    move v7, v2

    const/4 v8, 0x3

    and-int/lit8 v7, v7, 0x3

    packed-switch v7, :pswitch_data_0

    .line 723
    :goto_0
    return-void

    .line 668
    :pswitch_0
    move-object v7, v1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    iput-wide v8, v7, Lcom/sun/javafx/geom/transform/Affine2D;->mxx:D

    .line 669
    move-object v7, v1

    const-wide/16 v8, 0x0

    iput-wide v8, v7, Lcom/sun/javafx/geom/transform/Affine2D;->myx:D

    .line 670
    move-object v7, v1

    const-wide/16 v8, 0x0

    iput-wide v8, v7, Lcom/sun/javafx/geom/transform/Affine2D;->mxy:D

    .line 671
    move-object v7, v1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    iput-wide v8, v7, Lcom/sun/javafx/geom/transform/Affine2D;->myy:D

    .line 672
    move-object v7, v1

    const-wide/16 v8, 0x0

    iput-wide v8, v7, Lcom/sun/javafx/geom/transform/Affine2D;->mxt:D

    .line 673
    move-object v7, v1

    const-wide/16 v8, 0x0

    iput-wide v8, v7, Lcom/sun/javafx/geom/transform/Affine2D;->myt:D

    .line 674
    move-object v7, v1

    const/4 v8, 0x0

    iput v8, v7, Lcom/sun/javafx/geom/transform/Affine2D;->state:I

    .line 675
    move-object v7, v1

    const/4 v8, 0x0

    iput v8, v7, Lcom/sun/javafx/geom/transform/Affine2D;->type:I

    .line 676
    goto :goto_0

    .line 678
    :pswitch_1
    move-object v7, v1

    const-wide/16 v8, 0x0

    iput-wide v8, v7, Lcom/sun/javafx/geom/transform/Affine2D;->mxx:D

    .line 679
    move-object v7, v1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    iput-wide v8, v7, Lcom/sun/javafx/geom/transform/Affine2D;->myx:D

    .line 680
    move-object v7, v1

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    iput-wide v8, v7, Lcom/sun/javafx/geom/transform/Affine2D;->mxy:D

    .line 681
    move-object v7, v1

    const-wide/16 v8, 0x0

    iput-wide v8, v7, Lcom/sun/javafx/geom/transform/Affine2D;->myy:D

    .line 682
    move-object v7, v1

    move-wide v8, v3

    move-wide v10, v5

    add-double/2addr v8, v10

    iput-wide v8, v7, Lcom/sun/javafx/geom/transform/Affine2D;->mxt:D

    .line 683
    move-object v7, v1

    move-wide v8, v5

    move-wide v10, v3

    sub-double/2addr v8, v10

    iput-wide v8, v7, Lcom/sun/javafx/geom/transform/Affine2D;->myt:D

    .line 684
    move-object v7, v1

    iget-wide v7, v7, Lcom/sun/javafx/geom/transform/Affine2D;->mxt:D

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_0

    move-object v7, v1

    iget-wide v7, v7, Lcom/sun/javafx/geom/transform/Affine2D;->myt:D

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_0

    .line 685
    move-object v7, v1

    const/4 v8, 0x4

    iput v8, v7, Lcom/sun/javafx/geom/transform/Affine2D;->state:I

    .line 686
    move-object v7, v1

    const/16 v8, 0x8

    iput v8, v7, Lcom/sun/javafx/geom/transform/Affine2D;->type:I

    goto :goto_0

    .line 688
    :cond_0
    move-object v7, v1

    const/4 v8, 0x5

    iput v8, v7, Lcom/sun/javafx/geom/transform/Affine2D;->state:I

    .line 689
    move-object v7, v1

    const/16 v8, 0x9

    iput v8, v7, Lcom/sun/javafx/geom/transform/Affine2D;->type:I

    .line 691
    goto :goto_0

    .line 693
    :pswitch_2
    move-object v7, v1

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    iput-wide v8, v7, Lcom/sun/javafx/geom/transform/Affine2D;->mxx:D

    .line 694
    move-object v7, v1

    const-wide/16 v8, 0x0

    iput-wide v8, v7, Lcom/sun/javafx/geom/transform/Affine2D;->myx:D

    .line 695
    move-object v7, v1

    const-wide/16 v8, 0x0

    iput-wide v8, v7, Lcom/sun/javafx/geom/transform/Affine2D;->mxy:D

    .line 696
    move-object v7, v1

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    iput-wide v8, v7, Lcom/sun/javafx/geom/transform/Affine2D;->myy:D

    .line 697
    move-object v7, v1

    move-wide v8, v3

    move-wide v10, v3

    add-double/2addr v8, v10

    iput-wide v8, v7, Lcom/sun/javafx/geom/transform/Affine2D;->mxt:D

    .line 698
    move-object v7, v1

    move-wide v8, v5

    move-wide v10, v5

    add-double/2addr v8, v10

    iput-wide v8, v7, Lcom/sun/javafx/geom/transform/Affine2D;->myt:D

    .line 699
    move-object v7, v1

    iget-wide v7, v7, Lcom/sun/javafx/geom/transform/Affine2D;->mxt:D

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_1

    move-object v7, v1

    iget-wide v7, v7, Lcom/sun/javafx/geom/transform/Affine2D;->myt:D

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_1

    .line 700
    move-object v7, v1

    const/4 v8, 0x2

    iput v8, v7, Lcom/sun/javafx/geom/transform/Affine2D;->state:I

    .line 701
    move-object v7, v1

    const/16 v8, 0x8

    iput v8, v7, Lcom/sun/javafx/geom/transform/Affine2D;->type:I

    goto/16 :goto_0

    .line 703
    :cond_1
    move-object v7, v1

    const/4 v8, 0x3

    iput v8, v7, Lcom/sun/javafx/geom/transform/Affine2D;->state:I

    .line 704
    move-object v7, v1

    const/16 v8, 0x9

    iput v8, v7, Lcom/sun/javafx/geom/transform/Affine2D;->type:I

    .line 706
    goto/16 :goto_0

    .line 708
    :pswitch_3
    move-object v7, v1

    const-wide/16 v8, 0x0

    iput-wide v8, v7, Lcom/sun/javafx/geom/transform/Affine2D;->mxx:D

    .line 709
    move-object v7, v1

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    iput-wide v8, v7, Lcom/sun/javafx/geom/transform/Affine2D;->myx:D

    .line 710
    move-object v7, v1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    iput-wide v8, v7, Lcom/sun/javafx/geom/transform/Affine2D;->mxy:D

    .line 711
    move-object v7, v1

    const-wide/16 v8, 0x0

    iput-wide v8, v7, Lcom/sun/javafx/geom/transform/Affine2D;->myy:D

    .line 712
    move-object v7, v1

    move-wide v8, v3

    move-wide v10, v5

    sub-double/2addr v8, v10

    iput-wide v8, v7, Lcom/sun/javafx/geom/transform/Affine2D;->mxt:D

    .line 713
    move-object v7, v1

    move-wide v8, v5

    move-wide v10, v3

    add-double/2addr v8, v10

    iput-wide v8, v7, Lcom/sun/javafx/geom/transform/Affine2D;->myt:D

    .line 714
    move-object v7, v1

    iget-wide v7, v7, Lcom/sun/javafx/geom/transform/Affine2D;->mxt:D

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_2

    move-object v7, v1

    iget-wide v7, v7, Lcom/sun/javafx/geom/transform/Affine2D;->myt:D

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_2

    .line 715
    move-object v7, v1

    const/4 v8, 0x4

    iput v8, v7, Lcom/sun/javafx/geom/transform/Affine2D;->state:I

    .line 716
    move-object v7, v1

    const/16 v8, 0x8

    iput v8, v7, Lcom/sun/javafx/geom/transform/Affine2D;->type:I

    goto/16 :goto_0

    .line 718
    :cond_2
    move-object v7, v1

    const/4 v8, 0x5

    iput v8, v7, Lcom/sun/javafx/geom/transform/Affine2D;->state:I

    .line 719
    move-object v7, v1

    const/16 v8, 0x9

    iput v8, v7, Lcom/sun/javafx/geom/transform/Affine2D;->type:I

    goto/16 :goto_0

    .line 666
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setToRotation(D)V
    .locals 13

    .prologue
    .line 436
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/Affine2D;
    move-wide v2, p1

    .local v2, "theta":D
    move-wide v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    move-wide v4, v8

    .line 438
    .local v4, "sin":D
    move-wide v8, v4

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpl-double v8, v8, v10

    if-eqz v8, :cond_0

    move-wide v8, v4

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    cmpl-double v8, v8, v10

    if-nez v8, :cond_1

    .line 439
    :cond_0
    const-wide/16 v8, 0x0

    move-wide v6, v8

    .line 440
    .local v6, "cos":D
    move-object v8, v1

    const/4 v9, 0x4

    iput v9, v8, Lcom/sun/javafx/geom/transform/Affine2D;->state:I

    .line 441
    move-object v8, v1

    const/16 v9, 0x8

    iput v9, v8, Lcom/sun/javafx/geom/transform/Affine2D;->type:I

    .line 457
    :goto_0
    move-object v8, v1

    move-wide v9, v6

    iput-wide v9, v8, Lcom/sun/javafx/geom/transform/Affine2D;->mxx:D

    .line 458
    move-object v8, v1

    move-wide v9, v4

    iput-wide v9, v8, Lcom/sun/javafx/geom/transform/Affine2D;->myx:D

    .line 459
    move-object v8, v1

    move-wide v9, v4

    neg-double v9, v9

    iput-wide v9, v8, Lcom/sun/javafx/geom/transform/Affine2D;->mxy:D

    .line 460
    move-object v8, v1

    move-wide v9, v6

    iput-wide v9, v8, Lcom/sun/javafx/geom/transform/Affine2D;->myy:D

    .line 461
    move-object v8, v1

    const-wide/16 v9, 0x0

    iput-wide v9, v8, Lcom/sun/javafx/geom/transform/Affine2D;->mxt:D

    .line 462
    move-object v8, v1

    const-wide/16 v9, 0x0

    iput-wide v9, v8, Lcom/sun/javafx/geom/transform/Affine2D;->myt:D

    .line 463
    return-void

    .line 443
    .end local v6    # "cos":D
    :cond_1
    move-wide v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    move-wide v6, v8

    .line 444
    .restart local v6    # "cos":D
    move-wide v8, v6

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    cmpl-double v8, v8, v10

    if-nez v8, :cond_2

    .line 445
    const-wide/16 v8, 0x0

    move-wide v4, v8

    .line 446
    move-object v8, v1

    const/4 v9, 0x2

    iput v9, v8, Lcom/sun/javafx/geom/transform/Affine2D;->state:I

    .line 447
    move-object v8, v1

    const/16 v9, 0x8

    iput v9, v8, Lcom/sun/javafx/geom/transform/Affine2D;->type:I

    goto :goto_0

    .line 448
    :cond_2
    move-wide v8, v6

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpl-double v8, v8, v10

    if-nez v8, :cond_3

    .line 449
    const-wide/16 v8, 0x0

    move-wide v4, v8

    .line 450
    move-object v8, v1

    const/4 v9, 0x0

    iput v9, v8, Lcom/sun/javafx/geom/transform/Affine2D;->state:I

    .line 451
    move-object v8, v1

    const/4 v9, 0x0

    iput v9, v8, Lcom/sun/javafx/geom/transform/Affine2D;->type:I

    goto :goto_0

    .line 453
    :cond_3
    move-object v8, v1

    const/4 v9, 0x6

    iput v9, v8, Lcom/sun/javafx/geom/transform/Affine2D;->state:I

    .line 454
    move-object v8, v1

    const/16 v9, 0x10

    iput v9, v8, Lcom/sun/javafx/geom/transform/Affine2D;->type:I

    goto :goto_0
.end method

.method public setToRotation(DD)V
    .locals 19

    .prologue
    .line 526
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/Affine2D;
    move-wide/from16 v2, p1

    .local v2, "vecx":D
    move-wide/from16 v4, p3

    .local v4, "vecy":D
    move-wide v12, v4

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-nez v12, :cond_1

    .line 527
    const-wide/16 v12, 0x0

    move-wide v6, v12

    .line 528
    .local v6, "sin":D
    move-wide v12, v2

    const-wide/16 v14, 0x0

    cmpg-double v12, v12, v14

    if-gez v12, :cond_0

    .line 529
    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    move-wide v8, v12

    .line 530
    .local v8, "cos":D
    move-object v12, v1

    const/4 v13, 0x2

    iput v13, v12, Lcom/sun/javafx/geom/transform/Affine2D;->state:I

    .line 531
    move-object v12, v1

    const/16 v13, 0x8

    iput v13, v12, Lcom/sun/javafx/geom/transform/Affine2D;->type:I

    .line 549
    :goto_0
    move-object v12, v1

    move-wide v13, v8

    iput-wide v13, v12, Lcom/sun/javafx/geom/transform/Affine2D;->mxx:D

    .line 550
    move-object v12, v1

    move-wide v13, v6

    iput-wide v13, v12, Lcom/sun/javafx/geom/transform/Affine2D;->myx:D

    .line 551
    move-object v12, v1

    move-wide v13, v6

    neg-double v13, v13

    iput-wide v13, v12, Lcom/sun/javafx/geom/transform/Affine2D;->mxy:D

    .line 552
    move-object v12, v1

    move-wide v13, v8

    iput-wide v13, v12, Lcom/sun/javafx/geom/transform/Affine2D;->myy:D

    .line 553
    move-object v12, v1

    const-wide/16 v13, 0x0

    iput-wide v13, v12, Lcom/sun/javafx/geom/transform/Affine2D;->mxt:D

    .line 554
    move-object v12, v1

    const-wide/16 v13, 0x0

    iput-wide v13, v12, Lcom/sun/javafx/geom/transform/Affine2D;->myt:D

    .line 555
    return-void

    .line 533
    .end local v8    # "cos":D
    :cond_0
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move-wide v8, v12

    .line 534
    .restart local v8    # "cos":D
    move-object v12, v1

    const/4 v13, 0x0

    iput v13, v12, Lcom/sun/javafx/geom/transform/Affine2D;->state:I

    .line 535
    move-object v12, v1

    const/4 v13, 0x0

    iput v13, v12, Lcom/sun/javafx/geom/transform/Affine2D;->type:I

    goto :goto_0

    .line 537
    .end local v6    # "sin":D
    .end local v8    # "cos":D
    :cond_1
    move-wide v12, v2

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-nez v12, :cond_3

    .line 538
    const-wide/16 v12, 0x0

    move-wide v8, v12

    .line 539
    .restart local v8    # "cos":D
    move-wide v12, v4

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-lez v12, :cond_2

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    :goto_1
    move-wide v6, v12

    .line 540
    .restart local v6    # "sin":D
    move-object v12, v1

    const/4 v13, 0x4

    iput v13, v12, Lcom/sun/javafx/geom/transform/Affine2D;->state:I

    .line 541
    move-object v12, v1

    const/16 v13, 0x8

    iput v13, v12, Lcom/sun/javafx/geom/transform/Affine2D;->type:I

    goto :goto_0

    .line 539
    .end local v6    # "sin":D
    :cond_2
    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    goto :goto_1

    .line 543
    .end local v8    # "cos":D
    :cond_3
    move-wide v12, v2

    move-wide v14, v2

    mul-double/2addr v12, v14

    move-wide v14, v4

    move-wide/from16 v16, v4

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    move-wide v10, v12

    .line 544
    .local v10, "len":D
    move-wide v12, v2

    move-wide v14, v10

    div-double/2addr v12, v14

    move-wide v8, v12

    .line 545
    .restart local v8    # "cos":D
    move-wide v12, v4

    move-wide v14, v10

    div-double/2addr v12, v14

    move-wide v6, v12

    .line 546
    .restart local v6    # "sin":D
    move-object v12, v1

    const/4 v13, 0x6

    iput v13, v12, Lcom/sun/javafx/geom/transform/Affine2D;->state:I

    .line 547
    move-object v12, v1

    const/16 v13, 0x10

    iput v13, v12, Lcom/sun/javafx/geom/transform/Affine2D;->type:I

    goto :goto_0
.end method

.method public setToRotation(DDD)V
    .locals 19

    .prologue
    .line 496
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Affine2D;
    move-wide/from16 v1, p1

    .local v1, "theta":D
    move-wide/from16 v3, p3

    .local v3, "anchorx":D
    move-wide/from16 v5, p5

    .local v5, "anchory":D
    move-object v11, v0

    move-wide v12, v1

    invoke-virtual {v11, v12, v13}, Lcom/sun/javafx/geom/transform/Affine2D;->setToRotation(D)V

    .line 497
    move-object v11, v0

    iget-wide v11, v11, Lcom/sun/javafx/geom/transform/Affine2D;->myx:D

    move-wide v7, v11

    .line 498
    .local v7, "sin":D
    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    move-object v13, v0

    iget-wide v13, v13, Lcom/sun/javafx/geom/transform/Affine2D;->mxx:D

    sub-double/2addr v11, v13

    move-wide v9, v11

    .line 499
    .local v9, "oneMinusCos":D
    move-object v11, v0

    move-wide v12, v3

    move-wide v14, v9

    mul-double/2addr v12, v14

    move-wide v14, v5

    move-wide/from16 v16, v7

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    iput-wide v12, v11, Lcom/sun/javafx/geom/transform/Affine2D;->mxt:D

    .line 500
    move-object v11, v0

    move-wide v12, v5

    move-wide v14, v9

    mul-double/2addr v12, v14

    move-wide v14, v3

    move-wide/from16 v16, v7

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    iput-wide v12, v11, Lcom/sun/javafx/geom/transform/Affine2D;->myt:D

    .line 501
    move-object v11, v0

    iget-wide v11, v11, Lcom/sun/javafx/geom/transform/Affine2D;->mxt:D

    const-wide/16 v13, 0x0

    cmpl-double v11, v11, v13

    if-nez v11, :cond_0

    move-object v11, v0

    iget-wide v11, v11, Lcom/sun/javafx/geom/transform/Affine2D;->myt:D

    const-wide/16 v13, 0x0

    cmpl-double v11, v11, v13

    if-eqz v11, :cond_1

    .line 502
    :cond_0
    move-object v11, v0

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    iget v12, v12, Lcom/sun/javafx/geom/transform/Affine2D;->state:I

    const/4 v13, 0x1

    or-int/lit8 v12, v12, 0x1

    iput v12, v11, Lcom/sun/javafx/geom/transform/Affine2D;->state:I

    .line 503
    move-object v11, v0

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    iget v12, v12, Lcom/sun/javafx/geom/transform/Affine2D;->type:I

    const/4 v13, 0x1

    or-int/lit8 v12, v12, 0x1

    iput v12, v11, Lcom/sun/javafx/geom/transform/Affine2D;->type:I

    .line 505
    :cond_1
    return-void
.end method

.method public setToRotation(DDDD)V
    .locals 21

    .prologue
    .line 581
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Affine2D;
    move-wide/from16 v1, p1

    .local v1, "vecx":D
    move-wide/from16 v3, p3

    .local v3, "vecy":D
    move-wide/from16 v5, p5

    .local v5, "anchorx":D
    move-wide/from16 v7, p7

    .local v7, "anchory":D
    move-object v13, v0

    move-wide v14, v1

    move-wide/from16 v16, v3

    invoke-virtual/range {v13 .. v17}, Lcom/sun/javafx/geom/transform/Affine2D;->setToRotation(DD)V

    .line 582
    move-object v13, v0

    iget-wide v13, v13, Lcom/sun/javafx/geom/transform/Affine2D;->myx:D

    move-wide v9, v13

    .line 583
    .local v9, "sin":D
    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    move-object v15, v0

    iget-wide v15, v15, Lcom/sun/javafx/geom/transform/Affine2D;->mxx:D

    sub-double/2addr v13, v15

    move-wide v11, v13

    .line 584
    .local v11, "oneMinusCos":D
    move-object v13, v0

    move-wide v14, v5

    move-wide/from16 v16, v11

    mul-double v14, v14, v16

    move-wide/from16 v16, v7

    move-wide/from16 v18, v9

    mul-double v16, v16, v18

    add-double v14, v14, v16

    iput-wide v14, v13, Lcom/sun/javafx/geom/transform/Affine2D;->mxt:D

    .line 585
    move-object v13, v0

    move-wide v14, v7

    move-wide/from16 v16, v11

    mul-double v14, v14, v16

    move-wide/from16 v16, v5

    move-wide/from16 v18, v9

    mul-double v16, v16, v18

    sub-double v14, v14, v16

    iput-wide v14, v13, Lcom/sun/javafx/geom/transform/Affine2D;->myt:D

    .line 586
    move-object v13, v0

    iget-wide v13, v13, Lcom/sun/javafx/geom/transform/Affine2D;->mxt:D

    const-wide/16 v15, 0x0

    cmpl-double v13, v13, v15

    if-nez v13, :cond_0

    move-object v13, v0

    iget-wide v13, v13, Lcom/sun/javafx/geom/transform/Affine2D;->myt:D

    const-wide/16 v15, 0x0

    cmpl-double v13, v13, v15

    if-eqz v13, :cond_1

    .line 587
    :cond_0
    move-object v13, v0

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    iget v14, v14, Lcom/sun/javafx/geom/transform/Affine2D;->state:I

    const/4 v15, 0x1

    or-int/lit8 v14, v14, 0x1

    iput v14, v13, Lcom/sun/javafx/geom/transform/Affine2D;->state:I

    .line 588
    move-object v13, v0

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    iget v14, v14, Lcom/sun/javafx/geom/transform/Affine2D;->type:I

    const/4 v15, 0x1

    or-int/lit8 v14, v14, 0x1

    iput v14, v13, Lcom/sun/javafx/geom/transform/Affine2D;->type:I

    .line 590
    :cond_1
    return-void
.end method

.method public setToScale(DD)V
    .locals 11

    .prologue
    .line 739
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/Affine2D;
    move-wide v2, p1

    .local v2, "sx":D
    move-wide v4, p3

    .local v4, "sy":D
    move-object v6, v1

    move-wide v7, v2

    iput-wide v7, v6, Lcom/sun/javafx/geom/transform/Affine2D;->mxx:D

    .line 740
    move-object v6, v1

    const-wide/16 v7, 0x0

    iput-wide v7, v6, Lcom/sun/javafx/geom/transform/Affine2D;->myx:D

    .line 741
    move-object v6, v1

    const-wide/16 v7, 0x0

    iput-wide v7, v6, Lcom/sun/javafx/geom/transform/Affine2D;->mxy:D

    .line 742
    move-object v6, v1

    move-wide v7, v4

    iput-wide v7, v6, Lcom/sun/javafx/geom/transform/Affine2D;->myy:D

    .line 743
    move-object v6, v1

    const-wide/16 v7, 0x0

    iput-wide v7, v6, Lcom/sun/javafx/geom/transform/Affine2D;->mxt:D

    .line 744
    move-object v6, v1

    const-wide/16 v7, 0x0

    iput-wide v7, v6, Lcom/sun/javafx/geom/transform/Affine2D;->myt:D

    .line 745
    move-wide v6, v2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_0

    move-wide v6, v4

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v6, v8

    if-eqz v6, :cond_1

    .line 746
    :cond_0
    move-object v6, v1

    const/4 v7, 0x2

    iput v7, v6, Lcom/sun/javafx/geom/transform/Affine2D;->state:I

    .line 747
    move-object v6, v1

    const/4 v7, -0x1

    iput v7, v6, Lcom/sun/javafx/geom/transform/Affine2D;->type:I

    .line 752
    :goto_0
    return-void

    .line 749
    :cond_1
    move-object v6, v1

    const/4 v7, 0x0

    iput v7, v6, Lcom/sun/javafx/geom/transform/Affine2D;->state:I

    .line 750
    move-object v6, v1

    const/4 v7, 0x0

    iput v7, v6, Lcom/sun/javafx/geom/transform/Affine2D;->type:I

    goto :goto_0
.end method

.method public setToTranslation(DD)V
    .locals 11

    .prologue
    .line 405
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/Affine2D;
    move-wide v2, p1

    .local v2, "tx":D
    move-wide v4, p3

    .local v4, "ty":D
    move-object v6, v1

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    iput-wide v7, v6, Lcom/sun/javafx/geom/transform/Affine2D;->mxx:D

    .line 406
    move-object v6, v1

    const-wide/16 v7, 0x0

    iput-wide v7, v6, Lcom/sun/javafx/geom/transform/Affine2D;->myx:D

    .line 407
    move-object v6, v1

    const-wide/16 v7, 0x0

    iput-wide v7, v6, Lcom/sun/javafx/geom/transform/Affine2D;->mxy:D

    .line 408
    move-object v6, v1

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    iput-wide v7, v6, Lcom/sun/javafx/geom/transform/Affine2D;->myy:D

    .line 409
    move-object v6, v1

    move-wide v7, v2

    iput-wide v7, v6, Lcom/sun/javafx/geom/transform/Affine2D;->mxt:D

    .line 410
    move-object v6, v1

    move-wide v7, v4

    iput-wide v7, v6, Lcom/sun/javafx/geom/transform/Affine2D;->myt:D

    .line 411
    move-wide v6, v2

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_0

    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-eqz v6, :cond_1

    .line 412
    :cond_0
    move-object v6, v1

    const/4 v7, 0x1

    iput v7, v6, Lcom/sun/javafx/geom/transform/Affine2D;->state:I

    .line 413
    move-object v6, v1

    const/4 v7, 0x1

    iput v7, v6, Lcom/sun/javafx/geom/transform/Affine2D;->type:I

    .line 418
    :goto_0
    return-void

    .line 415
    :cond_1
    move-object v6, v1

    const/4 v7, 0x0

    iput v7, v6, Lcom/sun/javafx/geom/transform/Affine2D;->state:I

    .line 416
    move-object v6, v1

    const/4 v7, 0x0

    iput v7, v6, Lcom/sun/javafx/geom/transform/Affine2D;->type:I

    goto :goto_0
.end method

.method public setTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)V
    .locals 8

    .prologue
    .line 761
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Affine2D;
    move-object v1, p1

    .local v1, "Tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    sget-object v2, Lcom/sun/javafx/geom/transform/Affine2D$1;->$SwitchMap$com$sun$javafx$geom$transform$BaseTransform$Degree:[I

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/geom/transform/BaseTransform;->getDegree()Lcom/sun/javafx/geom/transform/BaseTransform$Degree;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/javafx/geom/transform/BaseTransform$Degree;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 769
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/geom/transform/BaseTransform;->getType()I

    move-result v2

    const/16 v3, 0x7f

    if-le v2, v3, :cond_0

    .line 770
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 771
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxx()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 772
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxy()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 773
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxz()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 774
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxt()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 775
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/PrintStream;->println()V

    .line 776
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyx()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 777
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyy()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 778
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyz()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 779
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyt()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 780
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/PrintStream;->println()V

    .line 781
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzx()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 782
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzy()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 783
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzz()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 784
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzt()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 785
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/PrintStream;->println()V

    .line 788
    sget-object v2, Lcom/sun/javafx/geom/transform/BaseTransform$Degree;->AFFINE_2D:Lcom/sun/javafx/geom/transform/BaseTransform$Degree;

    invoke-static {v2}, Lcom/sun/javafx/geom/transform/Affine2D;->degreeError(Lcom/sun/javafx/geom/transform/BaseTransform$Degree;)V

    .line 792
    :cond_0
    :pswitch_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxx()D

    move-result-wide v3

    iput-wide v3, v2, Lcom/sun/javafx/geom/transform/Affine2D;->mxx:D

    .line 793
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyx()D

    move-result-wide v3

    iput-wide v3, v2, Lcom/sun/javafx/geom/transform/Affine2D;->myx:D

    .line 794
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxy()D

    move-result-wide v3

    iput-wide v3, v2, Lcom/sun/javafx/geom/transform/Affine2D;->mxy:D

    .line 795
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyy()D

    move-result-wide v3

    iput-wide v3, v2, Lcom/sun/javafx/geom/transform/Affine2D;->myy:D

    .line 796
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxt()D

    move-result-wide v3

    iput-wide v3, v2, Lcom/sun/javafx/geom/transform/Affine2D;->mxt:D

    .line 797
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyt()D

    move-result-wide v3

    iput-wide v3, v2, Lcom/sun/javafx/geom/transform/Affine2D;->myt:D

    .line 798
    move-object v2, v1

    instance-of v2, v2, Lcom/sun/javafx/geom/transform/AffineBase;

    if-eqz v2, :cond_1

    .line 799
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lcom/sun/javafx/geom/transform/AffineBase;

    iget v3, v3, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    iput v3, v2, Lcom/sun/javafx/geom/transform/Affine2D;->state:I

    .line 800
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lcom/sun/javafx/geom/transform/AffineBase;

    iget v3, v3, Lcom/sun/javafx/geom/transform/AffineBase;->type:I

    iput v3, v2, Lcom/sun/javafx/geom/transform/Affine2D;->type:I

    .line 806
    :goto_0
    return-void

    .line 763
    :pswitch_1
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/geom/transform/Affine2D;->setToIdentity()V

    .line 764
    goto :goto_0

    .line 766
    :pswitch_2
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxt()D

    move-result-wide v3

    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyt()D

    move-result-wide v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sun/javafx/geom/transform/Affine2D;->setToTranslation(DD)V

    .line 767
    goto :goto_0

    .line 802
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/geom/transform/Affine2D;->updateState2D()V

    goto :goto_0

    .line 761
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1283
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/Affine2D;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Affine2D[["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/javafx/geom/transform/Affine2D;->mxx:D

    .line 1284
    invoke-static {v2, v3}, Lcom/sun/javafx/geom/transform/Affine2D;->_matround(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/javafx/geom/transform/Affine2D;->mxy:D

    .line 1285
    invoke-static {v2, v3}, Lcom/sun/javafx/geom/transform/Affine2D;->_matround(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/javafx/geom/transform/Affine2D;->mxt:D

    .line 1286
    invoke-static {v2, v3}, Lcom/sun/javafx/geom/transform/Affine2D;->_matround(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/javafx/geom/transform/Affine2D;->myx:D

    .line 1287
    invoke-static {v2, v3}, Lcom/sun/javafx/geom/transform/Affine2D;->_matround(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/javafx/geom/transform/Affine2D;->myy:D

    .line 1288
    invoke-static {v2, v3}, Lcom/sun/javafx/geom/transform/Affine2D;->_matround(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/javafx/geom/transform/Affine2D;->myt:D

    .line 1289
    invoke-static {v2, v3}, Lcom/sun/javafx/geom/transform/Affine2D;->_matround(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/Affine2D;
    return-object v0
.end method

.method public transform([Lcom/sun/javafx/geom/Point2D;I[Lcom/sun/javafx/geom/Point2D;II)V
    .locals 24

    .prologue
    .line 1165
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/geom/transform/Affine2D;
    move-object/from16 v3, p1

    .local v3, "ptSrc":[Lcom/sun/javafx/geom/Point2D;
    move/from16 v4, p2

    .local v4, "srcOff":I
    move-object/from16 v5, p3

    .local v5, "ptDst":[Lcom/sun/javafx/geom/Point2D;
    move/from16 v6, p4

    .local v6, "dstOff":I
    move/from16 v7, p5

    .local v7, "numPts":I
    move-object v15, v2

    iget v15, v15, Lcom/sun/javafx/geom/transform/Affine2D;->state:I

    move v8, v15

    .line 1166
    .local v8, "mystate":I
    :goto_0
    add-int/lit8 v7, v7, -0x1

    move v15, v7

    if-ltz v15, :cond_1

    .line 1168
    move-object v15, v3

    move/from16 v16, v4

    add-int/lit8 v4, v4, 0x1

    aget-object v15, v15, v16

    move-object v9, v15

    .line 1169
    .local v9, "src":Lcom/sun/javafx/geom/Point2D;
    move-object v15, v9

    iget v15, v15, Lcom/sun/javafx/geom/Point2D;->x:F

    float-to-double v15, v15

    move-wide v10, v15

    .line 1170
    .local v10, "x":D
    move-object v15, v9

    iget v15, v15, Lcom/sun/javafx/geom/Point2D;->y:F

    float-to-double v15, v15

    move-wide v12, v15

    .line 1171
    .local v12, "y":D
    move-object v15, v5

    move/from16 v16, v6

    add-int/lit8 v6, v6, 0x1

    aget-object v15, v15, v16

    move-object v14, v15

    .line 1172
    .local v14, "dst":Lcom/sun/javafx/geom/Point2D;
    move-object v15, v14

    if-nez v15, :cond_0

    .line 1173
    new-instance v15, Lcom/sun/javafx/geom/Point2D;

    move-object/from16 v23, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v23

    invoke-direct/range {v16 .. v16}, Lcom/sun/javafx/geom/Point2D;-><init>()V

    move-object v14, v15

    .line 1174
    move-object v15, v5

    move/from16 v16, v6

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    move-object/from16 v17, v14

    aput-object v17, v15, v16

    .line 1176
    :cond_0
    move v15, v8

    packed-switch v15, :pswitch_data_0

    .line 1178
    invoke-static {}, Lcom/sun/javafx/geom/transform/Affine2D;->stateError()V

    .line 1181
    :pswitch_0
    move-object v15, v14

    move-wide/from16 v16, v10

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->mxx:D

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v18, v12

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->mxy:D

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    add-double v16, v16, v18

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->mxt:D

    move-wide/from16 v18, v0

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    move-wide/from16 v17, v10

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->myx:D

    move-wide/from16 v19, v0

    mul-double v17, v17, v19

    move-wide/from16 v19, v12

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->myy:D

    move-wide/from16 v21, v0

    mul-double v19, v19, v21

    add-double v17, v17, v19

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->myt:D

    move-wide/from16 v19, v0

    add-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lcom/sun/javafx/geom/Point2D;->setLocation(FF)V

    .line 1183
    .line 1208
    :goto_1
    goto/16 :goto_0

    .line 1185
    :pswitch_1
    move-object v15, v14

    move-wide/from16 v16, v10

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->mxx:D

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v18, v12

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->mxy:D

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    move-wide/from16 v17, v10

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->myx:D

    move-wide/from16 v19, v0

    mul-double v17, v17, v19

    move-wide/from16 v19, v12

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->myy:D

    move-wide/from16 v21, v0

    mul-double v19, v19, v21

    add-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lcom/sun/javafx/geom/Point2D;->setLocation(FF)V

    .line 1187
    goto :goto_1

    .line 1189
    :pswitch_2
    move-object v15, v14

    move-wide/from16 v16, v12

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->mxy:D

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->mxt:D

    move-wide/from16 v18, v0

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    move-wide/from16 v17, v10

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->myx:D

    move-wide/from16 v19, v0

    mul-double v17, v17, v19

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->myt:D

    move-wide/from16 v19, v0

    add-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lcom/sun/javafx/geom/Point2D;->setLocation(FF)V

    .line 1191
    goto :goto_1

    .line 1193
    :pswitch_3
    move-object v15, v14

    move-wide/from16 v16, v12

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->mxy:D

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    move-wide/from16 v17, v10

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->myx:D

    move-wide/from16 v19, v0

    mul-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lcom/sun/javafx/geom/Point2D;->setLocation(FF)V

    .line 1194
    goto/16 :goto_1

    .line 1196
    :pswitch_4
    move-object v15, v14

    move-wide/from16 v16, v10

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->mxx:D

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->mxt:D

    move-wide/from16 v18, v0

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    move-wide/from16 v17, v12

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->myy:D

    move-wide/from16 v19, v0

    mul-double v17, v17, v19

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->myt:D

    move-wide/from16 v19, v0

    add-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lcom/sun/javafx/geom/Point2D;->setLocation(FF)V

    .line 1197
    goto/16 :goto_1

    .line 1199
    :pswitch_5
    move-object v15, v14

    move-wide/from16 v16, v10

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->mxx:D

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    move-wide/from16 v17, v12

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->myy:D

    move-wide/from16 v19, v0

    mul-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lcom/sun/javafx/geom/Point2D;->setLocation(FF)V

    .line 1200
    goto/16 :goto_1

    .line 1202
    :pswitch_6
    move-object v15, v14

    move-wide/from16 v16, v10

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->mxt:D

    move-wide/from16 v18, v0

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    move-wide/from16 v17, v12

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/Affine2D;->myt:D

    move-wide/from16 v19, v0

    add-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lcom/sun/javafx/geom/Point2D;->setLocation(FF)V

    .line 1203
    goto/16 :goto_1

    .line 1205
    :pswitch_7
    move-object v15, v14

    move-wide/from16 v16, v10

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    move-wide/from16 v17, v12

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lcom/sun/javafx/geom/Point2D;->setLocation(FF)V

    goto/16 :goto_1

    .line 1211
    .end local v9    # "src":Lcom/sun/javafx/geom/Point2D;
    .end local v10    # "x":D
    .end local v12    # "y":D
    .end local v14    # "dst":Lcom/sun/javafx/geom/Point2D;
    :cond_1
    return-void

    .line 1176
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
