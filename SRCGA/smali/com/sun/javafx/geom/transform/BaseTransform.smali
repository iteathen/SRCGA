.class public abstract Lcom/sun/javafx/geom/transform/BaseTransform;
.super Ljava/lang/Object;
.source "BaseTransform.java"

# interfaces
.implements Lcom/sun/javafx/geom/transform/CanTransformVec3d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/geom/transform/BaseTransform$Degree;
    }
.end annotation


# static fields
.field static final EPSILON_ABSOLUTE:D = 1.0E-5

.field public static final IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

.field public static final TYPE_AFFINE2D_MASK:I = 0x7f

.field public static final TYPE_AFFINE_3D:I = 0x80

.field public static final TYPE_FLIP:I = 0x40

.field public static final TYPE_GENERAL_ROTATION:I = 0x10

.field public static final TYPE_GENERAL_SCALE:I = 0x4

.field public static final TYPE_GENERAL_TRANSFORM:I = 0x20

.field public static final TYPE_IDENTITY:I = 0x0

.field public static final TYPE_MASK_ROTATION:I = 0x18

.field public static final TYPE_MASK_SCALE:I = 0x6

.field public static final TYPE_QUADRANT_ROTATION:I = 0x8

.field public static final TYPE_TRANSLATION:I = 0x1

.field public static final TYPE_UNIFORM_SCALE:I = 0x2

.field protected static final TYPE_UNKNOWN:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    new-instance v0, Lcom/sun/javafx/geom/transform/Identity;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/javafx/geom/transform/Identity;-><init>()V

    sput-object v0, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static almostZero(D)Z
    .locals 6

    .prologue
    .line 530
    move-wide v0, p0

    .local v0, "a":D
    move-wide v2, v0

    const-wide v4, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    move-wide v2, v0

    const-wide v4, -0x411b074a771c970fL    # -1.0E-5

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

.method static degreeError(Lcom/sun/javafx/geom/transform/BaseTransform$Degree;)V
    .locals 6

    .prologue
    .line 249
    move-object v0, p0

    .local v0, "maxSupported":Lcom/sun/javafx/geom/transform/BaseTransform$Degree;
    new-instance v1, Ljava/lang/InternalError;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "does not support higher than "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " operations"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getInstance(DDDDDD)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 28

    .prologue
    .line 283
    move-wide/from16 v0, p0

    .local v0, "mxx":D
    move-wide/from16 v2, p2

    .local v2, "myx":D
    move-wide/from16 v4, p4

    .local v4, "mxy":D
    move-wide/from16 v6, p6

    .local v6, "myy":D
    move-wide/from16 v8, p8

    .local v8, "mxt":D
    move-wide/from16 v10, p10

    .local v10, "myt":D
    move-wide v12, v0

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpl-double v12, v12, v14

    if-nez v12, :cond_0

    move-wide v12, v2

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-nez v12, :cond_0

    move-wide v12, v4

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-nez v12, :cond_0

    move-wide v12, v6

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpl-double v12, v12, v14

    if-nez v12, :cond_0

    .line 284
    move-wide v12, v8

    move-wide v14, v10

    invoke-static {v12, v13, v14, v15}, Lcom/sun/javafx/geom/transform/BaseTransform;->getTranslateInstance(DD)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v12

    move-object v0, v12

    .line 286
    .end local v0    # "mxx":D
    :goto_0
    return-object v0

    .restart local v0    # "mxx":D
    :cond_0
    new-instance v12, Lcom/sun/javafx/geom/transform/Affine2D;

    move-object/from16 v26, v12

    move-object/from16 v12, v26

    move-object/from16 v13, v26

    move-wide v14, v0

    move-wide/from16 v16, v2

    move-wide/from16 v18, v4

    move-wide/from16 v20, v6

    move-wide/from16 v22, v8

    move-wide/from16 v24, v10

    invoke-direct/range {v13 .. v25}, Lcom/sun/javafx/geom/transform/Affine2D;-><init>(DDDDDD)V

    move-object v0, v12

    goto :goto_0
.end method

.method public static getInstance(DDDDDDDDDDDD)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 52

    .prologue
    .line 268
    move-wide/from16 v0, p0

    .local v0, "mxx":D
    move-wide/from16 v2, p2

    .local v2, "mxy":D
    move-wide/from16 v4, p4

    .local v4, "mxz":D
    move-wide/from16 v6, p6

    .local v6, "mxt":D
    move-wide/from16 v8, p8

    .local v8, "myx":D
    move-wide/from16 v10, p10

    .local v10, "myy":D
    move-wide/from16 v12, p12

    .local v12, "myz":D
    move-wide/from16 v14, p14

    .local v14, "myt":D
    move-wide/from16 v16, p16

    .local v16, "mzx":D
    move-wide/from16 v18, p18

    .local v18, "mzy":D
    move-wide/from16 v20, p20

    .local v20, "mzz":D
    move-wide/from16 v22, p22

    .local v22, "mzt":D
    move-wide/from16 v24, v4

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-nez v24, :cond_0

    move-wide/from16 v24, v12

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-nez v24, :cond_0

    move-wide/from16 v24, v16

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-nez v24, :cond_0

    move-wide/from16 v24, v18

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-nez v24, :cond_0

    move-wide/from16 v24, v20

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    cmpl-double v24, v24, v26

    if-nez v24, :cond_0

    move-wide/from16 v24, v22

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-nez v24, :cond_0

    .line 271
    move-wide/from16 v24, v0

    move-wide/from16 v26, v8

    move-wide/from16 v28, v2

    move-wide/from16 v30, v10

    move-wide/from16 v32, v6

    move-wide/from16 v34, v14

    invoke-static/range {v24 .. v35}, Lcom/sun/javafx/geom/transform/BaseTransform;->getInstance(DDDDDD)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v24

    move-object/from16 v0, v24

    .line 273
    .end local v0    # "mxx":D
    :goto_0
    return-object v0

    .restart local v0    # "mxx":D
    :cond_0
    new-instance v24, Lcom/sun/javafx/geom/transform/Affine3D;

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

    invoke-direct/range {v25 .. v49}, Lcom/sun/javafx/geom/transform/Affine3D;-><init>(DDDDDDDDDDDD)V

    move-object/from16 v0, v24

    goto :goto_0
.end method

.method public static getInstance(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 5

    .prologue
    .line 254
    move-object v0, p0

    .local v0, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/geom/transform/BaseTransform;->isIdentity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    sget-object v1, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v0, v1

    .line 261
    .end local v0    # "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    :goto_0
    return-object v0

    .line 256
    .restart local v0    # "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/geom/transform/BaseTransform;->isTranslateOrIdentity()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 257
    new-instance v1, Lcom/sun/javafx/geom/transform/Translate2D;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/geom/transform/Translate2D;-><init>(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    move-object v0, v1

    goto :goto_0

    .line 258
    :cond_1
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/geom/transform/BaseTransform;->is2D()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 259
    new-instance v1, Lcom/sun/javafx/geom/transform/Affine2D;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/geom/transform/Affine2D;-><init>(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    move-object v0, v1

    goto :goto_0

    .line 261
    :cond_2
    new-instance v1, Lcom/sun/javafx/geom/transform/Affine3D;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/geom/transform/Affine3D;-><init>(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static getRotateInstance(DDD)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 16

    .prologue
    .line 303
    move-wide/from16 v0, p0

    .local v0, "theta":D
    move-wide/from16 v2, p2

    .local v2, "x":D
    move-wide/from16 v4, p4

    .local v4, "y":D
    new-instance v7, Lcom/sun/javafx/geom/transform/Affine2D;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    invoke-direct {v8}, Lcom/sun/javafx/geom/transform/Affine2D;-><init>()V

    move-object v6, v7

    .line 304
    .local v6, "a":Lcom/sun/javafx/geom/transform/Affine2D;
    move-object v7, v6

    move-wide v8, v0

    move-wide v10, v2

    move-wide v12, v4

    invoke-virtual/range {v7 .. v13}, Lcom/sun/javafx/geom/transform/Affine2D;->setToRotation(DDD)V

    .line 305
    move-object v7, v6

    move-object v0, v7

    .end local v0    # "theta":D
    return-object v0
.end method

.method public static getScaleInstance(DD)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 16

    .prologue
    .line 299
    move-wide/from16 v0, p0

    .local v0, "mxx":D
    move-wide/from16 v2, p2

    .local v2, "myy":D
    move-wide v4, v0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-wide v10, v2

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    invoke-static/range {v4 .. v15}, Lcom/sun/javafx/geom/transform/BaseTransform;->getInstance(DDDDDD)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "mxx":D
    return-object v0
.end method

.method public static getTranslateInstance(DD)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 12

    .prologue
    .line 291
    move-wide v0, p0

    .local v0, "mxt":D
    move-wide v2, p2

    .local v2, "myt":D
    move-wide v4, v0

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_0

    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_0

    .line 292
    sget-object v4, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v0, v4

    .line 294
    .end local v0    # "mxt":D
    :goto_0
    return-object v0

    .restart local v0    # "mxt":D
    :cond_0
    new-instance v4, Lcom/sun/javafx/geom/transform/Translate2D;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-wide v6, v0

    move-wide v8, v2

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sun/javafx/geom/transform/Translate2D;-><init>(DD)V

    move-object v0, v4

    goto :goto_0
.end method

.method static makePoint(Lcom/sun/javafx/geom/Point2D;Lcom/sun/javafx/geom/Point2D;)Lcom/sun/javafx/geom/Point2D;
    .locals 5

    .prologue
    .line 521
    move-object v0, p0

    .local v0, "src":Lcom/sun/javafx/geom/Point2D;
    move-object v1, p1

    .local v1, "dst":Lcom/sun/javafx/geom/Point2D;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 522
    new-instance v2, Lcom/sun/javafx/geom/Point2D;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/javafx/geom/Point2D;-><init>()V

    move-object v1, v2

    .line 524
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "src":Lcom/sun/javafx/geom/Point2D;
    return-object v0
.end method


# virtual methods
.method public abstract copy()Lcom/sun/javafx/geom/transform/BaseTransform;
.end method

.method public abstract createInverse()Lcom/sun/javafx/geom/transform/BaseTransform;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
        }
    .end annotation
.end method

.method public abstract createTransformedShape(Lcom/sun/javafx/geom/Shape;)Lcom/sun/javafx/geom/Shape;
.end method

.method public abstract deltaTransform(Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Vec3d;)Lcom/sun/javafx/geom/Vec3d;
.end method

.method public abstract deltaTransform([DI[DII)V
.end method

.method public abstract deltaTransform([FI[FII)V
.end method

.method public abstract deriveWithConcatenation(DDDDDD)Lcom/sun/javafx/geom/transform/BaseTransform;
.end method

.method public abstract deriveWithConcatenation(DDDDDDDDDDDD)Lcom/sun/javafx/geom/transform/BaseTransform;
.end method

.method public abstract deriveWithConcatenation(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/BaseTransform;
.end method

.method public abstract deriveWithNewTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/BaseTransform;
.end method

.method public abstract deriveWithPreConcatenation(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/BaseTransform;
.end method

.method public abstract deriveWithPreTranslation(DD)Lcom/sun/javafx/geom/transform/BaseTransform;
.end method

.method public abstract deriveWithRotation(DDDD)Lcom/sun/javafx/geom/transform/BaseTransform;
.end method

.method public abstract deriveWithScale(DDD)Lcom/sun/javafx/geom/transform/BaseTransform;
.end method

.method public abstract deriveWithTranslation(DD)Lcom/sun/javafx/geom/transform/BaseTransform;
.end method

.method public abstract deriveWithTranslation(DDD)Lcom/sun/javafx/geom/transform/BaseTransform;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    .line 500
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v2, p1

    .local v2, "obj":Ljava/lang/Object;
    move-object v4, v2

    instance-of v4, v4, Lcom/sun/javafx/geom/transform/BaseTransform;

    if-nez v4, :cond_0

    .line 501
    const/4 v4, 0x0

    move v1, v4

    .line 517
    .end local v1    # "this":Lcom/sun/javafx/geom/transform/BaseTransform;
    :goto_0
    return v1

    .line 504
    .restart local v1    # "this":Lcom/sun/javafx/geom/transform/BaseTransform;
    :cond_0
    move-object v4, v2

    check-cast v4, Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v3, v4

    .line 506
    .local v3, "a":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxx()D

    move-result-wide v4

    move-object v6, v3

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxx()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    move-object v4, v1

    .line 507
    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxy()D

    move-result-wide v4

    move-object v6, v3

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxy()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    move-object v4, v1

    .line 508
    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxz()D

    move-result-wide v4

    move-object v6, v3

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxz()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    move-object v4, v1

    .line 509
    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxt()D

    move-result-wide v4

    move-object v6, v3

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxt()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    move-object v4, v1

    .line 510
    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyx()D

    move-result-wide v4

    move-object v6, v3

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyx()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    move-object v4, v1

    .line 511
    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyy()D

    move-result-wide v4

    move-object v6, v3

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyy()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    move-object v4, v1

    .line 512
    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyz()D

    move-result-wide v4

    move-object v6, v3

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyz()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    move-object v4, v1

    .line 513
    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyt()D

    move-result-wide v4

    move-object v6, v3

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyt()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    move-object v4, v1

    .line 514
    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzx()D

    move-result-wide v4

    move-object v6, v3

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzx()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    move-object v4, v1

    .line 515
    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzy()D

    move-result-wide v4

    move-object v6, v3

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzy()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    move-object v4, v1

    .line 516
    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzz()D

    move-result-wide v4

    move-object v6, v3

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzz()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    move-object v4, v1

    .line 517
    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzt()D

    move-result-wide v4

    move-object v6, v3

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzt()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    move v1, v4

    goto/16 :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public abstract getDegree()Lcom/sun/javafx/geom/transform/BaseTransform$Degree;
.end method

.method public abstract getDeterminant()D
.end method

.method public getMxt()D
    .locals 3

    .prologue
    .line 344
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/BaseTransform;
    const-wide/16 v1, 0x0

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/BaseTransform;
    return-wide v0
.end method

.method public getMxx()D
    .locals 3

    .prologue
    .line 341
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/BaseTransform;
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/BaseTransform;
    return-wide v0
.end method

.method public getMxy()D
    .locals 3

    .prologue
    .line 342
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/BaseTransform;
    const-wide/16 v1, 0x0

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/BaseTransform;
    return-wide v0
.end method

.method public getMxz()D
    .locals 3

    .prologue
    .line 343
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/BaseTransform;
    const-wide/16 v1, 0x0

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/BaseTransform;
    return-wide v0
.end method

.method public getMyt()D
    .locals 3

    .prologue
    .line 348
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/BaseTransform;
    const-wide/16 v1, 0x0

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/BaseTransform;
    return-wide v0
.end method

.method public getMyx()D
    .locals 3

    .prologue
    .line 345
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/BaseTransform;
    const-wide/16 v1, 0x0

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/BaseTransform;
    return-wide v0
.end method

.method public getMyy()D
    .locals 3

    .prologue
    .line 346
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/BaseTransform;
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/BaseTransform;
    return-wide v0
.end method

.method public getMyz()D
    .locals 3

    .prologue
    .line 347
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/BaseTransform;
    const-wide/16 v1, 0x0

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/BaseTransform;
    return-wide v0
.end method

.method public getMzt()D
    .locals 3

    .prologue
    .line 352
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/BaseTransform;
    const-wide/16 v1, 0x0

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/BaseTransform;
    return-wide v0
.end method

.method public getMzx()D
    .locals 3

    .prologue
    .line 349
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/BaseTransform;
    const-wide/16 v1, 0x0

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/BaseTransform;
    return-wide v0
.end method

.method public getMzy()D
    .locals 3

    .prologue
    .line 350
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/BaseTransform;
    const-wide/16 v1, 0x0

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/BaseTransform;
    return-wide v0
.end method

.method public getMzz()D
    .locals 3

    .prologue
    .line 351
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/BaseTransform;
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/BaseTransform;
    return-wide v0
.end method

.method public abstract getType()I
.end method

.method public hashCode()I
    .locals 8

    .prologue
    .line 472
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->isIdentity()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    move v1, v4

    .line 486
    .end local v1    # "this":Lcom/sun/javafx/geom/transform/BaseTransform;
    .local v2, "bits":J
    :goto_0
    return v1

    .line 473
    .end local v2    # "bits":J
    .restart local v1    # "this":Lcom/sun/javafx/geom/transform/BaseTransform;
    :cond_0
    const-wide/16 v4, 0x0

    move-wide v2, v4

    .line 474
    .restart local v2    # "bits":J
    move-wide v4, v2

    const-wide/16 v6, 0x1f

    mul-long/2addr v4, v6

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzz()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    add-long/2addr v4, v6

    move-wide v2, v4

    .line 475
    move-wide v4, v2

    const-wide/16 v6, 0x1f

    mul-long/2addr v4, v6

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzy()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    add-long/2addr v4, v6

    move-wide v2, v4

    .line 476
    move-wide v4, v2

    const-wide/16 v6, 0x1f

    mul-long/2addr v4, v6

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzx()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    add-long/2addr v4, v6

    move-wide v2, v4

    .line 477
    move-wide v4, v2

    const-wide/16 v6, 0x1f

    mul-long/2addr v4, v6

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyz()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    add-long/2addr v4, v6

    move-wide v2, v4

    .line 478
    move-wide v4, v2

    const-wide/16 v6, 0x1f

    mul-long/2addr v4, v6

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxz()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    add-long/2addr v4, v6

    move-wide v2, v4

    .line 479
    move-wide v4, v2

    const-wide/16 v6, 0x1f

    mul-long/2addr v4, v6

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyy()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    add-long/2addr v4, v6

    move-wide v2, v4

    .line 480
    move-wide v4, v2

    const-wide/16 v6, 0x1f

    mul-long/2addr v4, v6

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyx()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    add-long/2addr v4, v6

    move-wide v2, v4

    .line 481
    move-wide v4, v2

    const-wide/16 v6, 0x1f

    mul-long/2addr v4, v6

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxy()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    add-long/2addr v4, v6

    move-wide v2, v4

    .line 482
    move-wide v4, v2

    const-wide/16 v6, 0x1f

    mul-long/2addr v4, v6

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxx()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    add-long/2addr v4, v6

    move-wide v2, v4

    .line 483
    move-wide v4, v2

    const-wide/16 v6, 0x1f

    mul-long/2addr v4, v6

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzt()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    add-long/2addr v4, v6

    move-wide v2, v4

    .line 484
    move-wide v4, v2

    const-wide/16 v6, 0x1f

    mul-long/2addr v4, v6

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyt()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    add-long/2addr v4, v6

    move-wide v2, v4

    .line 485
    move-wide v4, v2

    const-wide/16 v6, 0x1f

    mul-long/2addr v4, v6

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxt()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    add-long/2addr v4, v6

    move-wide v2, v4

    .line 486
    move-wide v4, v2

    long-to-int v4, v4

    move-wide v5, v2

    const/16 v7, 0x20

    shr-long/2addr v5, v7

    long-to-int v5, v5

    xor-int/2addr v4, v5

    move v1, v4

    goto/16 :goto_0
.end method

.method public abstract inverseDeltaTransform(Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Vec3d;)Lcom/sun/javafx/geom/Vec3d;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
        }
    .end annotation
.end method

.method public abstract inverseDeltaTransform([FI[FII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
        }
    .end annotation
.end method

.method public abstract inverseTransform(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
        }
    .end annotation
.end method

.method public abstract inverseTransform(Lcom/sun/javafx/geom/Point2D;Lcom/sun/javafx/geom/Point2D;)Lcom/sun/javafx/geom/Point2D;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
        }
    .end annotation
.end method

.method public abstract inverseTransform(Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Vec3d;)Lcom/sun/javafx/geom/Vec3d;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
        }
    .end annotation
.end method

.method public abstract inverseTransform(Lcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/Rectangle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
        }
    .end annotation
.end method

.method public abstract inverseTransform([DI[DII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
        }
    .end annotation
.end method

.method public abstract inverseTransform([FI[FII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
        }
    .end annotation
.end method

.method public abstract invert()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
        }
    .end annotation
.end method

.method public abstract is2D()Z
.end method

.method public abstract isIdentity()Z
.end method

.method public abstract isTranslateOrIdentity()Z
.end method

.method public abstract restoreTransform(DDDDDD)V
.end method

.method public abstract restoreTransform(DDDDDDDDDDDD)V
.end method

.method public abstract setToIdentity()V
.end method

.method public abstract setTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 539
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/BaseTransform;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Matrix: degree "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/geom/transform/BaseTransform;->getDegree()Lcom/sun/javafx/geom/transform/BaseTransform$Degree;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 540
    invoke-virtual {v2}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxx()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxy()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxz()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxt()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 541
    invoke-virtual {v2}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyx()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyy()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyz()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyt()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 542
    invoke-virtual {v2}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzx()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzy()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzz()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzt()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/BaseTransform;
    return-object v0
.end method

.method public abstract transform(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;
.end method

.method public abstract transform(Lcom/sun/javafx/geom/Point2D;Lcom/sun/javafx/geom/Point2D;)Lcom/sun/javafx/geom/Point2D;
.end method

.method public abstract transform(Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Vec3d;)Lcom/sun/javafx/geom/Vec3d;
.end method

.method public abstract transform(Lcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/Rectangle;)V
.end method

.method public abstract transform([DI[DII)V
.end method

.method public abstract transform([DI[FII)V
.end method

.method public abstract transform([FI[DII)V
.end method

.method public abstract transform([FI[FII)V
.end method
