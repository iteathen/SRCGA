.class public Ljavafx/scene/transform/Rotate;
.super Ljavafx/scene/transform/Transform;
.source "Rotate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/transform/Rotate$MatrixCache;
    }
.end annotation


# static fields
.field public static final X_AXIS:Ljavafx/geometry/Point3D;

.field public static final Y_AXIS:Ljavafx/geometry/Point3D;

.field public static final Z_AXIS:Ljavafx/geometry/Point3D;


# instance fields
.field private angle:Ljavafx/beans/property/DoubleProperty;

.field private axis:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/Point3D;",
            ">;"
        }
    .end annotation
.end field

.field private cache:Ljavafx/scene/transform/Rotate$MatrixCache;

.field private inverseCache:Ljavafx/scene/transform/Rotate$MatrixCache;

.field private pivotX:Ljavafx/beans/property/DoubleProperty;

.field private pivotY:Ljavafx/beans/property/DoubleProperty;

.field private pivotZ:Ljavafx/beans/property/DoubleProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 76
    new-instance v0, Ljavafx/geometry/Point3D;

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-direct/range {v1 .. v7}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    sput-object v0, Ljavafx/scene/transform/Rotate;->X_AXIS:Ljavafx/geometry/Point3D;

    .line 81
    new-instance v0, Ljavafx/geometry/Point3D;

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v6, 0x0

    invoke-direct/range {v1 .. v7}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    sput-object v0, Ljavafx/scene/transform/Rotate;->Y_AXIS:Ljavafx/geometry/Point3D;

    .line 86
    new-instance v0, Ljavafx/geometry/Point3D;

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v1 .. v7}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    sput-object v0, Ljavafx/scene/transform/Rotate;->Z_AXIS:Ljavafx/geometry/Point3D;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Rotate;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/transform/Transform;-><init>()V

    .line 104
    return-void
.end method

.method public constructor <init>(D)V
    .locals 7

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Rotate;
    move-wide v1, p1

    .local v1, "angle":D
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/transform/Transform;-><init>()V

    .line 112
    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/transform/Rotate;->setAngle(D)V

    .line 113
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 11

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Rotate;
    move-wide v1, p1

    .local v1, "angle":D
    move-wide v3, p3

    .local v3, "pivotX":D
    move-wide/from16 v5, p5

    .local v5, "pivotY":D
    move-object v7, v0

    invoke-direct {v7}, Ljavafx/scene/transform/Transform;-><init>()V

    .line 133
    move-object v7, v0

    move-wide v8, v1

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Rotate;->setAngle(D)V

    .line 134
    move-object v7, v0

    move-wide v8, v3

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Rotate;->setPivotX(D)V

    .line 135
    move-object v7, v0

    move-wide v8, v5

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Rotate;->setPivotY(D)V

    .line 136
    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 17

    .prologue
    .line 146
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/transform/Rotate;
    move-wide/from16 v1, p1

    .local v1, "angle":D
    move-wide/from16 v3, p3

    .local v3, "pivotX":D
    move-wide/from16 v5, p5

    .local v5, "pivotY":D
    move-wide/from16 v7, p7

    .local v7, "pivotZ":D
    move-object v9, v0

    move-wide v10, v1

    move-wide v12, v3

    move-wide v14, v5

    invoke-direct/range {v9 .. v15}, Ljavafx/scene/transform/Rotate;-><init>(DDD)V

    .line 147
    move-object v9, v0

    move-wide v10, v7

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/transform/Rotate;->setPivotZ(D)V

    .line 148
    return-void
.end method

.method public constructor <init>(DDDDLjavafx/geometry/Point3D;)V
    .locals 19

    .prologue
    .line 159
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/transform/Rotate;
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

    invoke-direct/range {v11 .. v17}, Ljavafx/scene/transform/Rotate;-><init>(DDD)V

    .line 160
    move-object v11, v1

    move-wide v12, v8

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/transform/Rotate;->setPivotZ(D)V

    .line 161
    move-object v11, v1

    move-object v12, v10

    invoke-virtual {v11, v12}, Ljavafx/scene/transform/Rotate;->setAxis(Ljavafx/geometry/Point3D;)V

    .line 162
    return-void
.end method

.method public constructor <init>(DLjavafx/geometry/Point3D;)V
    .locals 9

    .prologue
    .line 121
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Rotate;
    move-wide v2, p1

    .local v2, "angle":D
    move-object v4, p3

    .local v4, "axis":Ljavafx/geometry/Point3D;
    move-object v5, v1

    invoke-direct {v5}, Ljavafx/scene/transform/Transform;-><init>()V

    .line 122
    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/transform/Rotate;->setAngle(D)V

    .line 123
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljavafx/scene/transform/Rotate;->setAxis(Ljavafx/geometry/Point3D;)V

    .line 124
    return-void
.end method

.method private updateCache()V
    .locals 13

    .prologue
    .line 806
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Rotate;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    if-nez v2, :cond_0

    .line 807
    move-object v2, v1

    new-instance v3, Ljavafx/scene/transform/Rotate$MatrixCache;

    move-object v12, v3

    move-object v3, v12

    move-object v4, v12

    invoke-direct {v4}, Ljavafx/scene/transform/Rotate$MatrixCache;-><init>()V

    iput-object v3, v2, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    .line 810
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-boolean v2, v2, Ljavafx/scene/transform/Rotate$MatrixCache;->valid:Z

    if-nez v2, :cond_1

    .line 811
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/transform/Rotate;->getAngle()D

    move-result-wide v3

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/transform/Rotate;->getAxis()Ljavafx/geometry/Point3D;

    move-result-object v5

    move-object v6, v1

    .line 812
    invoke-virtual {v6}, Ljavafx/scene/transform/Rotate;->getPivotX()D

    move-result-wide v6

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Rotate;->getPivotY()D

    move-result-wide v8

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/transform/Rotate;->getPivotZ()D

    move-result-wide v10

    .line 811
    invoke-virtual/range {v2 .. v11}, Ljavafx/scene/transform/Rotate$MatrixCache;->update(DLjavafx/geometry/Point3D;DDD)V

    .line 814
    :cond_1
    return-void
.end method

.method private updateInverseCache()V
    .locals 13

    .prologue
    .line 820
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Rotate;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Rotate;->inverseCache:Ljavafx/scene/transform/Rotate$MatrixCache;

    if-nez v2, :cond_0

    .line 821
    move-object v2, v1

    new-instance v3, Ljavafx/scene/transform/Rotate$MatrixCache;

    move-object v12, v3

    move-object v3, v12

    move-object v4, v12

    invoke-direct {v4}, Ljavafx/scene/transform/Rotate$MatrixCache;-><init>()V

    iput-object v3, v2, Ljavafx/scene/transform/Rotate;->inverseCache:Ljavafx/scene/transform/Rotate$MatrixCache;

    .line 824
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Rotate;->inverseCache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-boolean v2, v2, Ljavafx/scene/transform/Rotate$MatrixCache;->valid:Z

    if-nez v2, :cond_1

    .line 825
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Rotate;->inverseCache:Ljavafx/scene/transform/Rotate$MatrixCache;

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/transform/Rotate;->getAngle()D

    move-result-wide v3

    neg-double v3, v3

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/transform/Rotate;->getAxis()Ljavafx/geometry/Point3D;

    move-result-object v5

    move-object v6, v1

    .line 826
    invoke-virtual {v6}, Ljavafx/scene/transform/Rotate;->getPivotX()D

    move-result-wide v6

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Rotate;->getPivotY()D

    move-result-wide v8

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/transform/Rotate;->getPivotZ()D

    move-result-wide v10

    .line 825
    invoke-virtual/range {v2 .. v11}, Ljavafx/scene/transform/Rotate$MatrixCache;->update(DLjavafx/geometry/Point3D;DDD)V

    .line 828
    :cond_1
    return-void
.end method


# virtual methods
.method public final angleProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Rotate;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Rotate;->angle:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 180
    move-object v1, v0

    new-instance v2, Ljavafx/scene/transform/Rotate$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/transform/Rotate$1;-><init>(Ljavafx/scene/transform/Rotate;)V

    iput-object v2, v1, Ljavafx/scene/transform/Rotate;->angle:Ljavafx/beans/property/DoubleProperty;

    .line 198
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Rotate;->angle:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Rotate;
    return-object v0
.end method

.method appendTo(Ljavafx/scene/transform/Affine;)V
    .locals 13

    .prologue
    .line 792
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Rotate;
    move-object v2, p1

    .local v2, "a":Ljavafx/scene/transform/Affine;
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Rotate;->getAngle()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Rotate;->getPivotX()D

    move-result-wide v6

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Rotate;->getPivotY()D

    move-result-wide v8

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/transform/Rotate;->getPivotZ()D

    move-result-wide v10

    move-object v12, v1

    .line 793
    invoke-virtual {v12}, Ljavafx/scene/transform/Rotate;->getAxis()Ljavafx/geometry/Point3D;

    move-result-object v12

    .line 792
    invoke-virtual/range {v3 .. v12}, Ljavafx/scene/transform/Affine;->appendRotation(DDDDLjavafx/geometry/Point3D;)V

    .line 794
    return-void
.end method

.method public final axisProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/Point3D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 333
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Rotate;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Rotate;->axis:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 334
    move-object v1, v0

    new-instance v2, Ljavafx/scene/transform/Rotate$5;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Ljavafx/scene/transform/Rotate;->Z_AXIS:Ljavafx/geometry/Point3D;

    invoke-direct {v3, v4, v5}, Ljavafx/scene/transform/Rotate$5;-><init>(Ljavafx/scene/transform/Rotate;Ljavafx/geometry/Point3D;)V

    iput-object v2, v1, Ljavafx/scene/transform/Rotate;->axis:Ljavafx/beans/property/ObjectProperty;

    .line 352
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Rotate;->axis:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Rotate;
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Rotate;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/transform/Rotate;->clone()Ljavafx/scene/transform/Rotate;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Rotate;
    return-object v0
.end method

.method public clone()Ljavafx/scene/transform/Rotate;
    .locals 14

    .prologue
    .line 530
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Rotate;
    new-instance v2, Ljavafx/scene/transform/Rotate;

    move-object v13, v2

    move-object v2, v13

    move-object v3, v13

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Rotate;->getAngle()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Rotate;->getPivotX()D

    move-result-wide v6

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Rotate;->getPivotY()D

    move-result-wide v8

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/transform/Rotate;->getPivotZ()D

    move-result-wide v10

    move-object v12, v1

    .line 531
    invoke-virtual {v12}, Ljavafx/scene/transform/Rotate;->getAxis()Ljavafx/geometry/Point3D;

    move-result-object v12

    invoke-direct/range {v3 .. v12}, Ljavafx/scene/transform/Rotate;-><init>(DDDDLjavafx/geometry/Point3D;)V

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/transform/Rotate;
    return-object v1
.end method

.method public bridge synthetic clone()Ljavafx/scene/transform/Transform;
    .locals 2

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Rotate;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/transform/Rotate;->clone()Ljavafx/scene/transform/Rotate;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Rotate;
    return-object v0
.end method

.method computeIs2D()Z
    .locals 6

    .prologue
    .line 441
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Rotate;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/transform/Rotate;->getAxis()Ljavafx/geometry/Point3D;

    move-result-object v2

    move-object v1, v2

    .line 442
    .local v1, "a":Ljavafx/geometry/Point3D;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_1

    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/transform/Rotate;->getAngle()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljavafx/scene/transform/Rotate;
    return v0

    .restart local v0    # "this":Ljavafx/scene/transform/Rotate;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method computeIsIdentity()Z
    .locals 6

    .prologue
    .line 447
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Rotate;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/transform/Rotate;->getAngle()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    .line 448
    const/4 v2, 0x1

    move v0, v2

    .line 452
    .end local v0    # "this":Ljavafx/scene/transform/Rotate;
    .local v1, "a":Ljavafx/geometry/Point3D;
    :goto_0
    return v0

    .line 451
    .end local v1    # "a":Ljavafx/geometry/Point3D;
    .restart local v0    # "this":Ljavafx/scene/transform/Rotate;
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/transform/Rotate;->getAxis()Ljavafx/geometry/Point3D;

    move-result-object v2

    move-object v1, v2

    .line 452
    .restart local v1    # "a":Ljavafx/geometry/Point3D;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_1

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_1

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public createConcatenation(Ljavafx/scene/transform/Transform;)Ljavafx/scene/transform/Transform;
    .locals 22

    .prologue
    .line 498
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/transform/Rotate;
    move-object/from16 v2, p1

    .local v2, "transform":Ljavafx/scene/transform/Transform;
    move-object v10, v2

    instance-of v10, v10, Ljavafx/scene/transform/Rotate;

    if-eqz v10, :cond_1

    .line 499
    move-object v10, v2

    check-cast v10, Ljavafx/scene/transform/Rotate;

    move-object v3, v10

    .line 500
    .local v3, "r":Ljavafx/scene/transform/Rotate;
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/transform/Rotate;->getPivotX()D

    move-result-wide v10

    move-wide v4, v10

    .line 501
    .local v4, "px":D
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/transform/Rotate;->getPivotY()D

    move-result-wide v10

    move-wide v6, v10

    .line 502
    .local v6, "py":D
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/transform/Rotate;->getPivotZ()D

    move-result-wide v10

    move-wide v8, v10

    .line 504
    .local v8, "pz":D
    move-object v10, v3

    invoke-virtual {v10}, Ljavafx/scene/transform/Rotate;->getAxis()Ljavafx/geometry/Point3D;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v11}, Ljavafx/scene/transform/Rotate;->getAxis()Ljavafx/geometry/Point3D;

    move-result-object v11

    if-eq v10, v11, :cond_0

    move-object v10, v3

    .line 505
    invoke-virtual {v10}, Ljavafx/scene/transform/Rotate;->getAxis()Ljavafx/geometry/Point3D;

    move-result-object v10

    invoke-virtual {v10}, Ljavafx/geometry/Point3D;->normalize()Ljavafx/geometry/Point3D;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v11}, Ljavafx/scene/transform/Rotate;->getAxis()Ljavafx/geometry/Point3D;

    move-result-object v11

    invoke-virtual {v11}, Ljavafx/geometry/Point3D;->normalize()Ljavafx/geometry/Point3D;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljavafx/geometry/Point3D;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    move-wide v10, v4

    move-object v12, v3

    .line 506
    invoke-virtual {v12}, Ljavafx/scene/transform/Rotate;->getPivotX()D

    move-result-wide v12

    cmpl-double v10, v10, v12

    if-nez v10, :cond_1

    move-wide v10, v6

    move-object v12, v3

    .line 507
    invoke-virtual {v12}, Ljavafx/scene/transform/Rotate;->getPivotY()D

    move-result-wide v12

    cmpl-double v10, v10, v12

    if-nez v10, :cond_1

    move-wide v10, v8

    move-object v12, v3

    .line 508
    invoke-virtual {v12}, Ljavafx/scene/transform/Rotate;->getPivotZ()D

    move-result-wide v12

    cmpl-double v10, v10, v12

    if-nez v10, :cond_1

    .line 509
    new-instance v10, Ljavafx/scene/transform/Rotate;

    move-object/from16 v21, v10

    move-object/from16 v10, v21

    move-object/from16 v11, v21

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/transform/Rotate;->getAngle()D

    move-result-wide v12

    move-object v14, v3

    invoke-virtual {v14}, Ljavafx/scene/transform/Rotate;->getAngle()D

    move-result-wide v14

    add-double/2addr v12, v14

    move-wide v14, v4

    move-wide/from16 v16, v6

    move-wide/from16 v18, v8

    move-object/from16 v20, v1

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/transform/Rotate;->getAxis()Ljavafx/geometry/Point3D;

    move-result-object v20

    invoke-direct/range {v11 .. v20}, Ljavafx/scene/transform/Rotate;-><init>(DDDDLjavafx/geometry/Point3D;)V

    move-object v1, v10

    .line 519
    .end local v1    # "this":Ljavafx/scene/transform/Rotate;
    .end local v3    # "r":Ljavafx/scene/transform/Rotate;
    .end local v4    # "px":D
    .end local v6    # "py":D
    .end local v8    # "pz":D
    :goto_0
    return-object v1

    .line 513
    .restart local v1    # "this":Ljavafx/scene/transform/Rotate;
    :cond_1
    move-object v10, v2

    instance-of v10, v10, Ljavafx/scene/transform/Affine;

    if-eqz v10, :cond_2

    .line 514
    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/scene/transform/Transform;->clone()Ljavafx/scene/transform/Transform;

    move-result-object v10

    check-cast v10, Ljavafx/scene/transform/Affine;

    move-object v3, v10

    .line 515
    .local v3, "a":Ljavafx/scene/transform/Affine;
    move-object v10, v3

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljavafx/scene/transform/Affine;->prepend(Ljavafx/scene/transform/Transform;)V

    .line 516
    move-object v10, v3

    move-object v1, v10

    goto :goto_0

    .line 519
    .end local v3    # "a":Ljavafx/scene/transform/Affine;
    :cond_2
    move-object v10, v1

    move-object v11, v2

    invoke-super {v10, v11}, Ljavafx/scene/transform/Transform;->createConcatenation(Ljavafx/scene/transform/Transform;)Ljavafx/scene/transform/Transform;

    move-result-object v10

    move-object v1, v10

    goto :goto_0
.end method

.method public createInverse()Ljavafx/scene/transform/Transform;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/scene/transform/NonInvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 524
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Rotate;
    new-instance v2, Ljavafx/scene/transform/Rotate;

    move-object v13, v2

    move-object v2, v13

    move-object v3, v13

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Rotate;->getAngle()D

    move-result-wide v4

    neg-double v4, v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Rotate;->getPivotX()D

    move-result-wide v6

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Rotate;->getPivotY()D

    move-result-wide v8

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/transform/Rotate;->getPivotZ()D

    move-result-wide v10

    move-object v12, v1

    .line 525
    invoke-virtual {v12}, Ljavafx/scene/transform/Rotate;->getAxis()Ljavafx/geometry/Point3D;

    move-result-object v12

    invoke-direct/range {v3 .. v12}, Ljavafx/scene/transform/Rotate;-><init>(DDDDLjavafx/geometry/Point3D;)V

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/transform/Rotate;
    return-object v1
.end method

.method public deltaTransform(DD)Ljavafx/geometry/Point2D;
    .locals 17

    .prologue
    .line 594
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/transform/Rotate;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Rotate;->ensureCanTransform2DPoint()V

    .line 596
    move-object v6, v1

    invoke-direct {v6}, Ljavafx/scene/transform/Rotate;->updateCache()V

    .line 598
    new-instance v6, Ljavafx/geometry/Point2D;

    move-object/from16 v16, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v16

    move-object v8, v1

    iget-object v8, v8, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v8, v8, Ljavafx/scene/transform/Rotate$MatrixCache;->mxx:D

    move-wide v10, v2

    mul-double/2addr v8, v10

    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v10, v10, Ljavafx/scene/transform/Rotate$MatrixCache;->mxy:D

    move-wide v12, v4

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v10, v10, Ljavafx/scene/transform/Rotate$MatrixCache;->myx:D

    move-wide v12, v2

    mul-double/2addr v10, v12

    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v12, v12, Ljavafx/scene/transform/Rotate$MatrixCache;->myy:D

    move-wide v14, v4

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v1, v6

    .end local v1    # "this":Ljavafx/scene/transform/Rotate;
    return-object v1
.end method

.method public deltaTransform(DDD)Ljavafx/geometry/Point3D;
    .locals 23

    .prologue
    .line 605
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/transform/Rotate;
    move-wide/from16 v4, p1

    .local v4, "x":D
    move-wide/from16 v6, p3

    .local v6, "y":D
    move-wide/from16 v8, p5

    .local v8, "z":D
    move-object v10, v3

    invoke-direct {v10}, Ljavafx/scene/transform/Rotate;->updateCache()V

    .line 607
    new-instance v10, Ljavafx/geometry/Point3D;

    move-object/from16 v22, v10

    move-object/from16 v10, v22

    move-object/from16 v11, v22

    move-object v12, v3

    iget-object v12, v12, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v12, v12, Ljavafx/scene/transform/Rotate$MatrixCache;->mxx:D

    move-wide v14, v4

    mul-double/2addr v12, v14

    move-object v14, v3

    iget-object v14, v14, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v14, v14, Ljavafx/scene/transform/Rotate$MatrixCache;->mxy:D

    move-wide/from16 v16, v6

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    move-object v14, v3

    iget-object v14, v14, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v14, v14, Ljavafx/scene/transform/Rotate$MatrixCache;->mxz:D

    move-wide/from16 v16, v8

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    move-object v14, v3

    iget-object v14, v14, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v14, v14, Ljavafx/scene/transform/Rotate$MatrixCache;->myx:D

    move-wide/from16 v16, v4

    mul-double v14, v14, v16

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Ljavafx/scene/transform/Rotate$MatrixCache;->myy:D

    move-wide/from16 v16, v0

    move-wide/from16 v18, v6

    mul-double v16, v16, v18

    add-double v14, v14, v16

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Ljavafx/scene/transform/Rotate$MatrixCache;->myz:D

    move-wide/from16 v16, v0

    move-wide/from16 v18, v8

    mul-double v16, v16, v18

    add-double v14, v14, v16

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Ljavafx/scene/transform/Rotate$MatrixCache;->mzx:D

    move-wide/from16 v16, v0

    move-wide/from16 v18, v4

    mul-double v16, v16, v18

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Ljavafx/scene/transform/Rotate$MatrixCache;->mzy:D

    move-wide/from16 v18, v0

    move-wide/from16 v20, v6

    mul-double v18, v18, v20

    add-double v16, v16, v18

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Ljavafx/scene/transform/Rotate$MatrixCache;->mzz:D

    move-wide/from16 v18, v0

    move-wide/from16 v20, v8

    mul-double v18, v18, v20

    add-double v16, v16, v18

    invoke-direct/range {v11 .. v17}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v3, v10

    .end local v3    # "this":Ljavafx/scene/transform/Rotate;
    return-object v3
.end method

.method fill2DArray([D)V
    .locals 6

    .prologue
    .line 463
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Rotate;
    move-object v1, p1

    .local v1, "array":[D
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/transform/Rotate;->updateCache()V

    .line 464
    move-object v2, v1

    const/4 v3, 0x0

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v4, v4, Ljavafx/scene/transform/Rotate$MatrixCache;->mxx:D

    aput-wide v4, v2, v3

    .line 465
    move-object v2, v1

    const/4 v3, 0x1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v4, v4, Ljavafx/scene/transform/Rotate$MatrixCache;->mxy:D

    aput-wide v4, v2, v3

    .line 466
    move-object v2, v1

    const/4 v3, 0x2

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v4, v4, Ljavafx/scene/transform/Rotate$MatrixCache;->tx:D

    aput-wide v4, v2, v3

    .line 467
    move-object v2, v1

    const/4 v3, 0x3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v4, v4, Ljavafx/scene/transform/Rotate$MatrixCache;->myx:D

    aput-wide v4, v2, v3

    .line 468
    move-object v2, v1

    const/4 v3, 0x4

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v4, v4, Ljavafx/scene/transform/Rotate$MatrixCache;->myy:D

    aput-wide v4, v2, v3

    .line 469
    move-object v2, v1

    const/4 v3, 0x5

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v4, v4, Ljavafx/scene/transform/Rotate$MatrixCache;->ty:D

    aput-wide v4, v2, v3

    .line 470
    return-void
.end method

.method fill3DArray([D)V
    .locals 6

    .prologue
    .line 474
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Rotate;
    move-object v1, p1

    .local v1, "array":[D
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/transform/Rotate;->updateCache()V

    .line 475
    move-object v2, v1

    const/4 v3, 0x0

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v4, v4, Ljavafx/scene/transform/Rotate$MatrixCache;->mxx:D

    aput-wide v4, v2, v3

    .line 476
    move-object v2, v1

    const/4 v3, 0x1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v4, v4, Ljavafx/scene/transform/Rotate$MatrixCache;->mxy:D

    aput-wide v4, v2, v3

    .line 477
    move-object v2, v1

    const/4 v3, 0x2

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v4, v4, Ljavafx/scene/transform/Rotate$MatrixCache;->mxz:D

    aput-wide v4, v2, v3

    .line 478
    move-object v2, v1

    const/4 v3, 0x3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v4, v4, Ljavafx/scene/transform/Rotate$MatrixCache;->tx:D

    aput-wide v4, v2, v3

    .line 479
    move-object v2, v1

    const/4 v3, 0x4

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v4, v4, Ljavafx/scene/transform/Rotate$MatrixCache;->myx:D

    aput-wide v4, v2, v3

    .line 480
    move-object v2, v1

    const/4 v3, 0x5

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v4, v4, Ljavafx/scene/transform/Rotate$MatrixCache;->myy:D

    aput-wide v4, v2, v3

    .line 481
    move-object v2, v1

    const/4 v3, 0x6

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v4, v4, Ljavafx/scene/transform/Rotate$MatrixCache;->myz:D

    aput-wide v4, v2, v3

    .line 482
    move-object v2, v1

    const/4 v3, 0x7

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v4, v4, Ljavafx/scene/transform/Rotate$MatrixCache;->ty:D

    aput-wide v4, v2, v3

    .line 483
    move-object v2, v1

    const/16 v3, 0x8

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v4, v4, Ljavafx/scene/transform/Rotate$MatrixCache;->mzx:D

    aput-wide v4, v2, v3

    .line 484
    move-object v2, v1

    const/16 v3, 0x9

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v4, v4, Ljavafx/scene/transform/Rotate$MatrixCache;->mzy:D

    aput-wide v4, v2, v3

    .line 485
    move-object v2, v1

    const/16 v3, 0xa

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v4, v4, Ljavafx/scene/transform/Rotate$MatrixCache;->mzz:D

    aput-wide v4, v2, v3

    .line 486
    move-object v2, v1

    const/16 v3, 0xb

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v4, v4, Ljavafx/scene/transform/Rotate$MatrixCache;->tz:D

    aput-wide v4, v2, v3

    .line 487
    return-void
.end method

.method public final getAngle()D
    .locals 4

    .prologue
    .line 175
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Rotate;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Rotate;->angle:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/transform/Rotate;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/transform/Rotate;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Rotate;->angle:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getAxis()Ljavafx/geometry/Point3D;
    .locals 2

    .prologue
    .line 329
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Rotate;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Rotate;->axis:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/scene/transform/Rotate;->Z_AXIS:Ljavafx/geometry/Point3D;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Rotate;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/transform/Rotate;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Rotate;->axis:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/geometry/Point3D;

    goto :goto_0
.end method

.method public getMxx()D
    .locals 3

    .prologue
    .line 363
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Rotate;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/transform/Rotate;->updateCache()V

    .line 364
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v1, v1, Ljavafx/scene/transform/Rotate$MatrixCache;->mxx:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Rotate;
    return-wide v0
.end method

.method public getMxy()D
    .locals 3

    .prologue
    .line 369
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Rotate;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/transform/Rotate;->updateCache()V

    .line 370
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v1, v1, Ljavafx/scene/transform/Rotate$MatrixCache;->mxy:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Rotate;
    return-wide v0
.end method

.method public getMxz()D
    .locals 3

    .prologue
    .line 375
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Rotate;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/transform/Rotate;->updateCache()V

    .line 376
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v1, v1, Ljavafx/scene/transform/Rotate$MatrixCache;->mxz:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Rotate;
    return-wide v0
.end method

.method public getMyx()D
    .locals 3

    .prologue
    .line 387
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Rotate;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/transform/Rotate;->updateCache()V

    .line 388
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v1, v1, Ljavafx/scene/transform/Rotate$MatrixCache;->myx:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Rotate;
    return-wide v0
.end method

.method public getMyy()D
    .locals 3

    .prologue
    .line 393
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Rotate;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/transform/Rotate;->updateCache()V

    .line 394
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v1, v1, Ljavafx/scene/transform/Rotate$MatrixCache;->myy:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Rotate;
    return-wide v0
.end method

.method public getMyz()D
    .locals 3

    .prologue
    .line 399
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Rotate;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/transform/Rotate;->updateCache()V

    .line 400
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v1, v1, Ljavafx/scene/transform/Rotate$MatrixCache;->myz:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Rotate;
    return-wide v0
.end method

.method public getMzx()D
    .locals 3

    .prologue
    .line 411
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Rotate;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/transform/Rotate;->updateCache()V

    .line 412
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v1, v1, Ljavafx/scene/transform/Rotate$MatrixCache;->mzx:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Rotate;
    return-wide v0
.end method

.method public getMzy()D
    .locals 3

    .prologue
    .line 417
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Rotate;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/transform/Rotate;->updateCache()V

    .line 418
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v1, v1, Ljavafx/scene/transform/Rotate$MatrixCache;->mzy:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Rotate;
    return-wide v0
.end method

.method public getMzz()D
    .locals 3

    .prologue
    .line 423
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Rotate;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/transform/Rotate;->updateCache()V

    .line 424
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v1, v1, Ljavafx/scene/transform/Rotate$MatrixCache;->mzz:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Rotate;
    return-wide v0
.end method

.method public final getPivotX()D
    .locals 4

    .prologue
    .line 214
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Rotate;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Rotate;->pivotX:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/transform/Rotate;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/transform/Rotate;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Rotate;->pivotX:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getPivotY()D
    .locals 4

    .prologue
    .line 253
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Rotate;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Rotate;->pivotY:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/transform/Rotate;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/transform/Rotate;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Rotate;->pivotY:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getPivotZ()D
    .locals 4

    .prologue
    .line 292
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Rotate;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Rotate;->pivotZ:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/transform/Rotate;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/transform/Rotate;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/transform/Rotate;->pivotZ:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public getTx()D
    .locals 3

    .prologue
    .line 381
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Rotate;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/transform/Rotate;->updateCache()V

    .line 382
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v1, v1, Ljavafx/scene/transform/Rotate$MatrixCache;->tx:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Rotate;
    return-wide v0
.end method

.method public getTy()D
    .locals 3

    .prologue
    .line 405
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Rotate;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/transform/Rotate;->updateCache()V

    .line 406
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v1, v1, Ljavafx/scene/transform/Rotate$MatrixCache;->ty:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Rotate;
    return-wide v0
.end method

.method public getTz()D
    .locals 3

    .prologue
    .line 429
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Rotate;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/transform/Rotate;->updateCache()V

    .line 430
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v1, v1, Ljavafx/scene/transform/Rotate$MatrixCache;->tz:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Rotate;
    return-wide v0
.end method

.method public impl_apply(Lcom/sun/javafx/geom/transform/Affine3D;)V
    .locals 22
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 730
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/transform/Rotate;
    move-object/from16 v4, p1

    .local v4, "trans":Lcom/sun/javafx/geom/transform/Affine3D;
    move-object v13, v3

    invoke-virtual {v13}, Ljavafx/scene/transform/Rotate;->getPivotX()D

    move-result-wide v13

    move-wide v5, v13

    .line 731
    .local v5, "localPivotX":D
    move-object v13, v3

    invoke-virtual {v13}, Ljavafx/scene/transform/Rotate;->getPivotY()D

    move-result-wide v13

    move-wide v7, v13

    .line 732
    .local v7, "localPivotY":D
    move-object v13, v3

    invoke-virtual {v13}, Ljavafx/scene/transform/Rotate;->getPivotZ()D

    move-result-wide v13

    move-wide v9, v13

    .line 733
    .local v9, "localPivotZ":D
    move-object v13, v3

    invoke-virtual {v13}, Ljavafx/scene/transform/Rotate;->getAngle()D

    move-result-wide v13

    move-wide v11, v13

    .line 735
    .local v11, "localAngle":D
    move-wide v13, v5

    const-wide/16 v15, 0x0

    cmpl-double v13, v13, v15

    if-nez v13, :cond_0

    move-wide v13, v7

    const-wide/16 v15, 0x0

    cmpl-double v13, v13, v15

    if-nez v13, :cond_0

    move-wide v13, v9

    const-wide/16 v15, 0x0

    cmpl-double v13, v13, v15

    if-eqz v13, :cond_1

    .line 736
    :cond_0
    move-object v13, v4

    move-wide v14, v5

    move-wide/from16 v16, v7

    move-wide/from16 v18, v9

    invoke-virtual/range {v13 .. v19}, Lcom/sun/javafx/geom/transform/Affine3D;->translate(DDD)V

    .line 737
    move-object v13, v4

    move-wide v14, v11

    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v14

    move-object/from16 v16, v3

    .line 738
    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/transform/Rotate;->getAxis()Ljavafx/geometry/Point3D;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v16

    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/transform/Rotate;->getAxis()Ljavafx/geometry/Point3D;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v18

    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/transform/Rotate;->getAxis()Ljavafx/geometry/Point3D;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v20

    .line 737
    invoke-virtual/range {v13 .. v21}, Lcom/sun/javafx/geom/transform/Affine3D;->rotate(DDDD)V

    .line 739
    move-object v13, v4

    move-wide v14, v5

    neg-double v14, v14

    move-wide/from16 v16, v7

    move-wide/from16 v0, v16

    neg-double v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v18, v9

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    invoke-virtual/range {v13 .. v19}, Lcom/sun/javafx/geom/transform/Affine3D;->translate(DDD)V

    .line 744
    :goto_0
    return-void

    .line 741
    :cond_1
    move-object v13, v4

    move-wide v14, v11

    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v14

    move-object/from16 v16, v3

    .line 742
    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/transform/Rotate;->getAxis()Ljavafx/geometry/Point3D;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v16

    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/transform/Rotate;->getAxis()Ljavafx/geometry/Point3D;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v18

    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/transform/Rotate;->getAxis()Ljavafx/geometry/Point3D;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v20

    .line 741
    invoke-virtual/range {v13 .. v21}, Lcom/sun/javafx/geom/transform/Affine3D;->rotate(DDDD)V

    goto :goto_0
.end method

.method public impl_derive(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 22
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 753
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/transform/Rotate;
    move-object/from16 v4, p1

    .local v4, "trans":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v13, v3

    invoke-virtual {v13}, Ljavafx/scene/transform/Rotate;->isIdentity()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 754
    move-object v13, v4

    move-object v3, v13

    .line 768
    .end local v3    # "this":Ljavafx/scene/transform/Rotate;
    :goto_0
    return-object v3

    .line 757
    .restart local v3    # "this":Ljavafx/scene/transform/Rotate;
    :cond_0
    move-object v13, v3

    invoke-virtual {v13}, Ljavafx/scene/transform/Rotate;->getPivotX()D

    move-result-wide v13

    move-wide v5, v13

    .line 758
    .local v5, "localPivotX":D
    move-object v13, v3

    invoke-virtual {v13}, Ljavafx/scene/transform/Rotate;->getPivotY()D

    move-result-wide v13

    move-wide v7, v13

    .line 759
    .local v7, "localPivotY":D
    move-object v13, v3

    invoke-virtual {v13}, Ljavafx/scene/transform/Rotate;->getPivotZ()D

    move-result-wide v13

    move-wide v9, v13

    .line 760
    .local v9, "localPivotZ":D
    move-object v13, v3

    invoke-virtual {v13}, Ljavafx/scene/transform/Rotate;->getAngle()D

    move-result-wide v13

    move-wide v11, v13

    .line 762
    .local v11, "localAngle":D
    move-wide v13, v5

    const-wide/16 v15, 0x0

    cmpl-double v13, v13, v15

    if-nez v13, :cond_1

    move-wide v13, v7

    const-wide/16 v15, 0x0

    cmpl-double v13, v13, v15

    if-nez v13, :cond_1

    move-wide v13, v9

    const-wide/16 v15, 0x0

    cmpl-double v13, v13, v15

    if-eqz v13, :cond_2

    .line 763
    :cond_1
    move-object v13, v4

    move-wide v14, v5

    move-wide/from16 v16, v7

    move-wide/from16 v18, v9

    invoke-virtual/range {v13 .. v19}, Lcom/sun/javafx/geom/transform/BaseTransform;->deriveWithTranslation(DDD)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v13

    move-object v4, v13

    .line 764
    move-object v13, v4

    move-wide v14, v11

    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v14

    move-object/from16 v16, v3

    .line 765
    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/transform/Rotate;->getAxis()Ljavafx/geometry/Point3D;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v16

    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/transform/Rotate;->getAxis()Ljavafx/geometry/Point3D;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v18

    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/transform/Rotate;->getAxis()Ljavafx/geometry/Point3D;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v20

    .line 764
    invoke-virtual/range {v13 .. v21}, Lcom/sun/javafx/geom/transform/BaseTransform;->deriveWithRotation(DDDD)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v13

    move-object v4, v13

    .line 766
    move-object v13, v4

    move-wide v14, v5

    neg-double v14, v14

    move-wide/from16 v16, v7

    move-wide/from16 v0, v16

    neg-double v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v18, v9

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    invoke-virtual/range {v13 .. v19}, Lcom/sun/javafx/geom/transform/BaseTransform;->deriveWithTranslation(DDD)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v13

    move-object v3, v13

    goto :goto_0

    .line 768
    :cond_2
    move-object v13, v4

    move-wide v14, v11

    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v14

    move-object/from16 v16, v3

    .line 769
    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/transform/Rotate;->getAxis()Ljavafx/geometry/Point3D;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v16

    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/transform/Rotate;->getAxis()Ljavafx/geometry/Point3D;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v18

    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/transform/Rotate;->getAxis()Ljavafx/geometry/Point3D;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v20

    .line 768
    invoke-virtual/range {v13 .. v21}, Lcom/sun/javafx/geom/transform/BaseTransform;->deriveWithRotation(DDDD)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v13

    move-object v3, v13

    goto/16 :goto_0
.end method

.method public inverseDeltaTransform(DD)Ljavafx/geometry/Point2D;
    .locals 17

    .prologue
    .line 675
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/transform/Rotate;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Rotate;->ensureCanTransform2DPoint()V

    .line 677
    move-object v6, v1

    invoke-direct {v6}, Ljavafx/scene/transform/Rotate;->updateInverseCache()V

    .line 679
    new-instance v6, Ljavafx/geometry/Point2D;

    move-object/from16 v16, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v16

    move-object v8, v1

    iget-object v8, v8, Ljavafx/scene/transform/Rotate;->inverseCache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v8, v8, Ljavafx/scene/transform/Rotate$MatrixCache;->mxx:D

    move-wide v10, v2

    mul-double/2addr v8, v10

    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/transform/Rotate;->inverseCache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v10, v10, Ljavafx/scene/transform/Rotate$MatrixCache;->mxy:D

    move-wide v12, v4

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/transform/Rotate;->inverseCache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v10, v10, Ljavafx/scene/transform/Rotate$MatrixCache;->myx:D

    move-wide v12, v2

    mul-double/2addr v10, v12

    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/transform/Rotate;->inverseCache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v12, v12, Ljavafx/scene/transform/Rotate$MatrixCache;->myy:D

    move-wide v14, v4

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v1, v6

    .end local v1    # "this":Ljavafx/scene/transform/Rotate;
    return-object v1
.end method

.method public inverseDeltaTransform(DDD)Ljavafx/geometry/Point3D;
    .locals 23

    .prologue
    .line 686
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/transform/Rotate;
    move-wide/from16 v4, p1

    .local v4, "x":D
    move-wide/from16 v6, p3

    .local v6, "y":D
    move-wide/from16 v8, p5

    .local v8, "z":D
    move-object v10, v3

    invoke-direct {v10}, Ljavafx/scene/transform/Rotate;->updateInverseCache()V

    .line 688
    new-instance v10, Ljavafx/geometry/Point3D;

    move-object/from16 v22, v10

    move-object/from16 v10, v22

    move-object/from16 v11, v22

    move-object v12, v3

    iget-object v12, v12, Ljavafx/scene/transform/Rotate;->inverseCache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v12, v12, Ljavafx/scene/transform/Rotate$MatrixCache;->mxx:D

    move-wide v14, v4

    mul-double/2addr v12, v14

    move-object v14, v3

    iget-object v14, v14, Ljavafx/scene/transform/Rotate;->inverseCache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v14, v14, Ljavafx/scene/transform/Rotate$MatrixCache;->mxy:D

    move-wide/from16 v16, v6

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    move-object v14, v3

    iget-object v14, v14, Ljavafx/scene/transform/Rotate;->inverseCache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v14, v14, Ljavafx/scene/transform/Rotate$MatrixCache;->mxz:D

    move-wide/from16 v16, v8

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    move-object v14, v3

    iget-object v14, v14, Ljavafx/scene/transform/Rotate;->inverseCache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v14, v14, Ljavafx/scene/transform/Rotate$MatrixCache;->myx:D

    move-wide/from16 v16, v4

    mul-double v14, v14, v16

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavafx/scene/transform/Rotate;->inverseCache:Ljavafx/scene/transform/Rotate$MatrixCache;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Ljavafx/scene/transform/Rotate$MatrixCache;->myy:D

    move-wide/from16 v16, v0

    move-wide/from16 v18, v6

    mul-double v16, v16, v18

    add-double v14, v14, v16

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavafx/scene/transform/Rotate;->inverseCache:Ljavafx/scene/transform/Rotate$MatrixCache;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Ljavafx/scene/transform/Rotate$MatrixCache;->myz:D

    move-wide/from16 v16, v0

    move-wide/from16 v18, v8

    mul-double v16, v16, v18

    add-double v14, v14, v16

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavafx/scene/transform/Rotate;->inverseCache:Ljavafx/scene/transform/Rotate$MatrixCache;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Ljavafx/scene/transform/Rotate$MatrixCache;->mzx:D

    move-wide/from16 v16, v0

    move-wide/from16 v18, v4

    mul-double v16, v16, v18

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/transform/Rotate;->inverseCache:Ljavafx/scene/transform/Rotate$MatrixCache;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Ljavafx/scene/transform/Rotate$MatrixCache;->mzy:D

    move-wide/from16 v18, v0

    move-wide/from16 v20, v6

    mul-double v18, v18, v20

    add-double v16, v16, v18

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/transform/Rotate;->inverseCache:Ljavafx/scene/transform/Rotate$MatrixCache;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Ljavafx/scene/transform/Rotate$MatrixCache;->mzz:D

    move-wide/from16 v18, v0

    move-wide/from16 v20, v8

    mul-double v18, v18, v20

    add-double v16, v16, v18

    invoke-direct/range {v11 .. v17}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v3, v10

    .end local v3    # "this":Ljavafx/scene/transform/Rotate;
    return-object v3
.end method

.method public inverseTransform(DD)Ljavafx/geometry/Point2D;
    .locals 17

    .prologue
    .line 615
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/transform/Rotate;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Rotate;->ensureCanTransform2DPoint()V

    .line 617
    move-object v6, v1

    invoke-direct {v6}, Ljavafx/scene/transform/Rotate;->updateInverseCache()V

    .line 619
    new-instance v6, Ljavafx/geometry/Point2D;

    move-object/from16 v16, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v16

    move-object v8, v1

    iget-object v8, v8, Ljavafx/scene/transform/Rotate;->inverseCache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v8, v8, Ljavafx/scene/transform/Rotate$MatrixCache;->mxx:D

    move-wide v10, v2

    mul-double/2addr v8, v10

    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/transform/Rotate;->inverseCache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v10, v10, Ljavafx/scene/transform/Rotate$MatrixCache;->mxy:D

    move-wide v12, v4

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/transform/Rotate;->inverseCache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v10, v10, Ljavafx/scene/transform/Rotate$MatrixCache;->tx:D

    add-double/2addr v8, v10

    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/transform/Rotate;->inverseCache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v10, v10, Ljavafx/scene/transform/Rotate$MatrixCache;->myx:D

    move-wide v12, v2

    mul-double/2addr v10, v12

    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/transform/Rotate;->inverseCache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v12, v12, Ljavafx/scene/transform/Rotate$MatrixCache;->myy:D

    move-wide v14, v4

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/transform/Rotate;->inverseCache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v12, v12, Ljavafx/scene/transform/Rotate$MatrixCache;->ty:D

    add-double/2addr v10, v12

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v1, v6

    .end local v1    # "this":Ljavafx/scene/transform/Rotate;
    return-object v1
.end method

.method public inverseTransform(DDD)Ljavafx/geometry/Point3D;
    .locals 23

    .prologue
    .line 626
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/transform/Rotate;
    move-wide/from16 v4, p1

    .local v4, "x":D
    move-wide/from16 v6, p3

    .local v6, "y":D
    move-wide/from16 v8, p5

    .local v8, "z":D
    move-object v10, v3

    invoke-direct {v10}, Ljavafx/scene/transform/Rotate;->updateInverseCache()V

    .line 628
    new-instance v10, Ljavafx/geometry/Point3D;

    move-object/from16 v22, v10

    move-object/from16 v10, v22

    move-object/from16 v11, v22

    move-object v12, v3

    iget-object v12, v12, Ljavafx/scene/transform/Rotate;->inverseCache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v12, v12, Ljavafx/scene/transform/Rotate$MatrixCache;->mxx:D

    move-wide v14, v4

    mul-double/2addr v12, v14

    move-object v14, v3

    iget-object v14, v14, Ljavafx/scene/transform/Rotate;->inverseCache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v14, v14, Ljavafx/scene/transform/Rotate$MatrixCache;->mxy:D

    move-wide/from16 v16, v6

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    move-object v14, v3

    iget-object v14, v14, Ljavafx/scene/transform/Rotate;->inverseCache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v14, v14, Ljavafx/scene/transform/Rotate$MatrixCache;->mxz:D

    move-wide/from16 v16, v8

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    move-object v14, v3

    iget-object v14, v14, Ljavafx/scene/transform/Rotate;->inverseCache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v14, v14, Ljavafx/scene/transform/Rotate$MatrixCache;->tx:D

    add-double/2addr v12, v14

    move-object v14, v3

    iget-object v14, v14, Ljavafx/scene/transform/Rotate;->inverseCache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v14, v14, Ljavafx/scene/transform/Rotate$MatrixCache;->myx:D

    move-wide/from16 v16, v4

    mul-double v14, v14, v16

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavafx/scene/transform/Rotate;->inverseCache:Ljavafx/scene/transform/Rotate$MatrixCache;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Ljavafx/scene/transform/Rotate$MatrixCache;->myy:D

    move-wide/from16 v16, v0

    move-wide/from16 v18, v6

    mul-double v16, v16, v18

    add-double v14, v14, v16

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavafx/scene/transform/Rotate;->inverseCache:Ljavafx/scene/transform/Rotate$MatrixCache;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Ljavafx/scene/transform/Rotate$MatrixCache;->myz:D

    move-wide/from16 v16, v0

    move-wide/from16 v18, v8

    mul-double v16, v16, v18

    add-double v14, v14, v16

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavafx/scene/transform/Rotate;->inverseCache:Ljavafx/scene/transform/Rotate$MatrixCache;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Ljavafx/scene/transform/Rotate$MatrixCache;->ty:D

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavafx/scene/transform/Rotate;->inverseCache:Ljavafx/scene/transform/Rotate$MatrixCache;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Ljavafx/scene/transform/Rotate$MatrixCache;->mzx:D

    move-wide/from16 v16, v0

    move-wide/from16 v18, v4

    mul-double v16, v16, v18

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/transform/Rotate;->inverseCache:Ljavafx/scene/transform/Rotate$MatrixCache;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Ljavafx/scene/transform/Rotate$MatrixCache;->mzy:D

    move-wide/from16 v18, v0

    move-wide/from16 v20, v6

    mul-double v18, v18, v20

    add-double v16, v16, v18

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/transform/Rotate;->inverseCache:Ljavafx/scene/transform/Rotate$MatrixCache;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Ljavafx/scene/transform/Rotate$MatrixCache;->mzz:D

    move-wide/from16 v18, v0

    move-wide/from16 v20, v8

    mul-double v18, v18, v20

    add-double v16, v16, v18

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/transform/Rotate;->inverseCache:Ljavafx/scene/transform/Rotate$MatrixCache;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Ljavafx/scene/transform/Rotate$MatrixCache;->tz:D

    move-wide/from16 v18, v0

    add-double v16, v16, v18

    invoke-direct/range {v11 .. v17}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v3, v10

    .end local v3    # "this":Ljavafx/scene/transform/Rotate;
    return-object v3
.end method

.method inverseTransform2DPointsImpl([DI[DII)V
    .locals 18

    .prologue
    .line 640
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/transform/Rotate;
    move-object/from16 v1, p1

    .local v1, "srcPts":[D
    move/from16 v2, p2

    .local v2, "srcOff":I
    move-object/from16 v3, p3

    .local v3, "dstPts":[D
    move/from16 v4, p4

    .local v4, "dstOff":I
    move/from16 v5, p5

    .local v5, "numPts":I
    move-object v10, v0

    invoke-direct {v10}, Ljavafx/scene/transform/Rotate;->updateInverseCache()V

    .line 642
    :goto_0
    add-int/lit8 v5, v5, -0x1

    move v10, v5

    if-ltz v10, :cond_0

    .line 643
    move-object v10, v1

    move v11, v2

    add-int/lit8 v2, v2, 0x1

    aget-wide v10, v10, v11

    move-wide v6, v10

    .line 644
    .local v6, "x":D
    move-object v10, v1

    move v11, v2

    add-int/lit8 v2, v2, 0x1

    aget-wide v10, v10, v11

    move-wide v8, v10

    .line 646
    .local v8, "y":D
    move-object v10, v3

    move v11, v4

    add-int/lit8 v4, v4, 0x1

    move-object v12, v0

    iget-object v12, v12, Ljavafx/scene/transform/Rotate;->inverseCache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v12, v12, Ljavafx/scene/transform/Rotate$MatrixCache;->mxx:D

    move-wide v14, v6

    mul-double/2addr v12, v14

    move-object v14, v0

    iget-object v14, v14, Ljavafx/scene/transform/Rotate;->inverseCache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v14, v14, Ljavafx/scene/transform/Rotate$MatrixCache;->mxy:D

    move-wide/from16 v16, v8

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    move-object v14, v0

    iget-object v14, v14, Ljavafx/scene/transform/Rotate;->inverseCache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v14, v14, Ljavafx/scene/transform/Rotate$MatrixCache;->tx:D

    add-double/2addr v12, v14

    aput-wide v12, v10, v11

    .line 648
    move-object v10, v3

    move v11, v4

    add-int/lit8 v4, v4, 0x1

    move-object v12, v0

    iget-object v12, v12, Ljavafx/scene/transform/Rotate;->inverseCache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v12, v12, Ljavafx/scene/transform/Rotate$MatrixCache;->myx:D

    move-wide v14, v6

    mul-double/2addr v12, v14

    move-object v14, v0

    iget-object v14, v14, Ljavafx/scene/transform/Rotate;->inverseCache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v14, v14, Ljavafx/scene/transform/Rotate$MatrixCache;->myy:D

    move-wide/from16 v16, v8

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    move-object v14, v0

    iget-object v14, v14, Ljavafx/scene/transform/Rotate;->inverseCache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v14, v14, Ljavafx/scene/transform/Rotate$MatrixCache;->ty:D

    add-double/2addr v12, v14

    aput-wide v12, v10, v11

    .line 650
    goto :goto_0

    .line 651
    .end local v6    # "x":D
    .end local v8    # "y":D
    :cond_0
    return-void
.end method

.method inverseTransform3DPointsImpl([DI[DII)V
    .locals 22

    .prologue
    .line 657
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/transform/Rotate;
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
    move-object v14, v2

    invoke-direct {v14}, Ljavafx/scene/transform/Rotate;->updateInverseCache()V

    .line 659
    :goto_0
    add-int/lit8 v7, v7, -0x1

    move v14, v7

    if-ltz v14, :cond_0

    .line 660
    move-object v14, v3

    move v15, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v14, v14, v15

    move-wide v8, v14

    .line 661
    .local v8, "x":D
    move-object v14, v3

    move v15, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v14, v14, v15

    move-wide v10, v14

    .line 662
    .local v10, "y":D
    move-object v14, v3

    move v15, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v14, v14, v15

    move-wide v12, v14

    .line 664
    .local v12, "z":D
    move-object v14, v5

    move v15, v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavafx/scene/transform/Rotate;->inverseCache:Ljavafx/scene/transform/Rotate$MatrixCache;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Ljavafx/scene/transform/Rotate$MatrixCache;->mxx:D

    move-wide/from16 v16, v0

    move-wide/from16 v18, v8

    mul-double v16, v16, v18

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/transform/Rotate;->inverseCache:Ljavafx/scene/transform/Rotate$MatrixCache;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Ljavafx/scene/transform/Rotate$MatrixCache;->mxy:D

    move-wide/from16 v18, v0

    move-wide/from16 v20, v10

    mul-double v18, v18, v20

    add-double v16, v16, v18

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/transform/Rotate;->inverseCache:Ljavafx/scene/transform/Rotate$MatrixCache;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Ljavafx/scene/transform/Rotate$MatrixCache;->mxz:D

    move-wide/from16 v18, v0

    move-wide/from16 v20, v12

    mul-double v18, v18, v20

    add-double v16, v16, v18

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/transform/Rotate;->inverseCache:Ljavafx/scene/transform/Rotate$MatrixCache;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Ljavafx/scene/transform/Rotate$MatrixCache;->tx:D

    move-wide/from16 v18, v0

    add-double v16, v16, v18

    aput-wide v16, v14, v15

    .line 666
    move-object v14, v5

    move v15, v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavafx/scene/transform/Rotate;->inverseCache:Ljavafx/scene/transform/Rotate$MatrixCache;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Ljavafx/scene/transform/Rotate$MatrixCache;->myx:D

    move-wide/from16 v16, v0

    move-wide/from16 v18, v8

    mul-double v16, v16, v18

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/transform/Rotate;->inverseCache:Ljavafx/scene/transform/Rotate$MatrixCache;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Ljavafx/scene/transform/Rotate$MatrixCache;->myy:D

    move-wide/from16 v18, v0

    move-wide/from16 v20, v10

    mul-double v18, v18, v20

    add-double v16, v16, v18

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/transform/Rotate;->inverseCache:Ljavafx/scene/transform/Rotate$MatrixCache;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Ljavafx/scene/transform/Rotate$MatrixCache;->myz:D

    move-wide/from16 v18, v0

    move-wide/from16 v20, v12

    mul-double v18, v18, v20

    add-double v16, v16, v18

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/transform/Rotate;->inverseCache:Ljavafx/scene/transform/Rotate$MatrixCache;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Ljavafx/scene/transform/Rotate$MatrixCache;->ty:D

    move-wide/from16 v18, v0

    add-double v16, v16, v18

    aput-wide v16, v14, v15

    .line 668
    move-object v14, v5

    move v15, v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavafx/scene/transform/Rotate;->inverseCache:Ljavafx/scene/transform/Rotate$MatrixCache;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Ljavafx/scene/transform/Rotate$MatrixCache;->mzx:D

    move-wide/from16 v16, v0

    move-wide/from16 v18, v8

    mul-double v16, v16, v18

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/transform/Rotate;->inverseCache:Ljavafx/scene/transform/Rotate$MatrixCache;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Ljavafx/scene/transform/Rotate$MatrixCache;->mzy:D

    move-wide/from16 v18, v0

    move-wide/from16 v20, v10

    mul-double v18, v18, v20

    add-double v16, v16, v18

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/transform/Rotate;->inverseCache:Ljavafx/scene/transform/Rotate$MatrixCache;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Ljavafx/scene/transform/Rotate$MatrixCache;->mzz:D

    move-wide/from16 v18, v0

    move-wide/from16 v20, v12

    mul-double v18, v18, v20

    add-double v16, v16, v18

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/transform/Rotate;->inverseCache:Ljavafx/scene/transform/Rotate$MatrixCache;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Ljavafx/scene/transform/Rotate$MatrixCache;->tz:D

    move-wide/from16 v18, v0

    add-double v16, v16, v18

    aput-wide v16, v14, v15

    .line 670
    goto/16 :goto_0

    .line 671
    .end local v8    # "x":D
    .end local v10    # "y":D
    .end local v12    # "z":D
    :cond_0
    return-void
.end method

.method public final pivotXProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 218
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Rotate;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Rotate;->pivotX:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 219
    move-object v1, v0

    new-instance v2, Ljavafx/scene/transform/Rotate$2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/transform/Rotate$2;-><init>(Ljavafx/scene/transform/Rotate;)V

    iput-object v2, v1, Ljavafx/scene/transform/Rotate;->pivotX:Ljavafx/beans/property/DoubleProperty;

    .line 237
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Rotate;->pivotX:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Rotate;
    return-object v0
.end method

.method public final pivotYProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 257
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Rotate;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Rotate;->pivotY:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 258
    move-object v1, v0

    new-instance v2, Ljavafx/scene/transform/Rotate$3;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/transform/Rotate$3;-><init>(Ljavafx/scene/transform/Rotate;)V

    iput-object v2, v1, Ljavafx/scene/transform/Rotate;->pivotY:Ljavafx/beans/property/DoubleProperty;

    .line 276
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Rotate;->pivotY:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Rotate;
    return-object v0
.end method

.method public final pivotZProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 296
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Rotate;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Rotate;->pivotZ:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 297
    move-object v1, v0

    new-instance v2, Ljavafx/scene/transform/Rotate$4;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/transform/Rotate$4;-><init>(Ljavafx/scene/transform/Rotate;)V

    iput-object v2, v1, Ljavafx/scene/transform/Rotate;->pivotZ:Ljavafx/beans/property/DoubleProperty;

    .line 315
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Rotate;->pivotZ:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Rotate;
    return-object v0
.end method

.method prependTo(Ljavafx/scene/transform/Affine;)V
    .locals 13

    .prologue
    .line 798
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Rotate;
    move-object v2, p1

    .local v2, "a":Ljavafx/scene/transform/Affine;
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Rotate;->getAngle()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Rotate;->getPivotX()D

    move-result-wide v6

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/transform/Rotate;->getPivotY()D

    move-result-wide v8

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/transform/Rotate;->getPivotZ()D

    move-result-wide v10

    move-object v12, v1

    .line 799
    invoke-virtual {v12}, Ljavafx/scene/transform/Rotate;->getAxis()Ljavafx/geometry/Point3D;

    move-result-object v12

    .line 798
    invoke-virtual/range {v3 .. v12}, Ljavafx/scene/transform/Affine;->prependRotation(DDDDLjavafx/geometry/Point3D;)V

    .line 800
    return-void
.end method

.method public final setAngle(D)V
    .locals 7

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Rotate;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/transform/Rotate;->angleProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 172
    return-void
.end method

.method public final setAxis(Ljavafx/geometry/Point3D;)V
    .locals 4

    .prologue
    .line 325
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Rotate;
    move-object v1, p1

    .local v1, "value":Ljavafx/geometry/Point3D;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/transform/Rotate;->axisProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 326
    return-void
.end method

.method public final setPivotX(D)V
    .locals 7

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Rotate;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/transform/Rotate;->pivotXProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 211
    return-void
.end method

.method public final setPivotY(D)V
    .locals 7

    .prologue
    .line 249
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Rotate;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/transform/Rotate;->pivotYProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 250
    return-void
.end method

.method public final setPivotZ(D)V
    .locals 7

    .prologue
    .line 288
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Rotate;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/transform/Rotate;->pivotZProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 289
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 706
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Rotate;
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Rotate ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 708
    .local v2, "sb":Ljava/lang/StringBuilder;
    move-object v3, v2

    const-string v4, "angle="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Rotate;->getAngle()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 709
    move-object v3, v2

    const-string v4, ", pivotX="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Rotate;->getPivotX()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 710
    move-object v3, v2

    const-string v4, ", pivotY="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Rotate;->getPivotY()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 711
    move-object v3, v2

    const-string v4, ", pivotZ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Rotate;->getPivotZ()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 712
    move-object v3, v2

    const-string v4, ", axis="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Rotate;->getAxis()Ljavafx/geometry/Point3D;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 714
    move-object v3, v2

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .end local v1    # "this":Ljavafx/scene/transform/Rotate;
    return-object v1
.end method

.method public transform(DD)Ljavafx/geometry/Point2D;
    .locals 17

    .prologue
    .line 542
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/transform/Rotate;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Rotate;->ensureCanTransform2DPoint()V

    .line 544
    move-object v6, v1

    invoke-direct {v6}, Ljavafx/scene/transform/Rotate;->updateCache()V

    .line 546
    new-instance v6, Ljavafx/geometry/Point2D;

    move-object/from16 v16, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v16

    move-object v8, v1

    iget-object v8, v8, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v8, v8, Ljavafx/scene/transform/Rotate$MatrixCache;->mxx:D

    move-wide v10, v2

    mul-double/2addr v8, v10

    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v10, v10, Ljavafx/scene/transform/Rotate$MatrixCache;->mxy:D

    move-wide v12, v4

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v10, v10, Ljavafx/scene/transform/Rotate$MatrixCache;->tx:D

    add-double/2addr v8, v10

    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v10, v10, Ljavafx/scene/transform/Rotate$MatrixCache;->myx:D

    move-wide v12, v2

    mul-double/2addr v10, v12

    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v12, v12, Ljavafx/scene/transform/Rotate$MatrixCache;->myy:D

    move-wide v14, v4

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v12, v12, Ljavafx/scene/transform/Rotate$MatrixCache;->ty:D

    add-double/2addr v10, v12

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v1, v6

    .end local v1    # "this":Ljavafx/scene/transform/Rotate;
    return-object v1
.end method

.method public transform(DDD)Ljavafx/geometry/Point3D;
    .locals 23

    .prologue
    .line 553
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/transform/Rotate;
    move-wide/from16 v4, p1

    .local v4, "x":D
    move-wide/from16 v6, p3

    .local v6, "y":D
    move-wide/from16 v8, p5

    .local v8, "z":D
    move-object v10, v3

    invoke-direct {v10}, Ljavafx/scene/transform/Rotate;->updateCache()V

    .line 555
    new-instance v10, Ljavafx/geometry/Point3D;

    move-object/from16 v22, v10

    move-object/from16 v10, v22

    move-object/from16 v11, v22

    move-object v12, v3

    iget-object v12, v12, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v12, v12, Ljavafx/scene/transform/Rotate$MatrixCache;->mxx:D

    move-wide v14, v4

    mul-double/2addr v12, v14

    move-object v14, v3

    iget-object v14, v14, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v14, v14, Ljavafx/scene/transform/Rotate$MatrixCache;->mxy:D

    move-wide/from16 v16, v6

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    move-object v14, v3

    iget-object v14, v14, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v14, v14, Ljavafx/scene/transform/Rotate$MatrixCache;->mxz:D

    move-wide/from16 v16, v8

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    move-object v14, v3

    iget-object v14, v14, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v14, v14, Ljavafx/scene/transform/Rotate$MatrixCache;->tx:D

    add-double/2addr v12, v14

    move-object v14, v3

    iget-object v14, v14, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v14, v14, Ljavafx/scene/transform/Rotate$MatrixCache;->myx:D

    move-wide/from16 v16, v4

    mul-double v14, v14, v16

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Ljavafx/scene/transform/Rotate$MatrixCache;->myy:D

    move-wide/from16 v16, v0

    move-wide/from16 v18, v6

    mul-double v16, v16, v18

    add-double v14, v14, v16

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Ljavafx/scene/transform/Rotate$MatrixCache;->myz:D

    move-wide/from16 v16, v0

    move-wide/from16 v18, v8

    mul-double v16, v16, v18

    add-double v14, v14, v16

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Ljavafx/scene/transform/Rotate$MatrixCache;->ty:D

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Ljavafx/scene/transform/Rotate$MatrixCache;->mzx:D

    move-wide/from16 v16, v0

    move-wide/from16 v18, v4

    mul-double v16, v16, v18

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Ljavafx/scene/transform/Rotate$MatrixCache;->mzy:D

    move-wide/from16 v18, v0

    move-wide/from16 v20, v6

    mul-double v18, v18, v20

    add-double v16, v16, v18

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Ljavafx/scene/transform/Rotate$MatrixCache;->mzz:D

    move-wide/from16 v18, v0

    move-wide/from16 v20, v8

    mul-double v18, v18, v20

    add-double v16, v16, v18

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Ljavafx/scene/transform/Rotate$MatrixCache;->tz:D

    move-wide/from16 v18, v0

    add-double v16, v16, v18

    invoke-direct/range {v11 .. v17}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v3, v10

    .end local v3    # "this":Ljavafx/scene/transform/Rotate;
    return-object v3
.end method

.method transform2DPointsImpl([DI[DII)V
    .locals 18

    .prologue
    .line 564
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/transform/Rotate;
    move-object/from16 v1, p1

    .local v1, "srcPts":[D
    move/from16 v2, p2

    .local v2, "srcOff":I
    move-object/from16 v3, p3

    .local v3, "dstPts":[D
    move/from16 v4, p4

    .local v4, "dstOff":I
    move/from16 v5, p5

    .local v5, "numPts":I
    move-object v10, v0

    invoke-direct {v10}, Ljavafx/scene/transform/Rotate;->updateCache()V

    .line 566
    :goto_0
    add-int/lit8 v5, v5, -0x1

    move v10, v5

    if-ltz v10, :cond_0

    .line 567
    move-object v10, v1

    move v11, v2

    add-int/lit8 v2, v2, 0x1

    aget-wide v10, v10, v11

    move-wide v6, v10

    .line 568
    .local v6, "x":D
    move-object v10, v1

    move v11, v2

    add-int/lit8 v2, v2, 0x1

    aget-wide v10, v10, v11

    move-wide v8, v10

    .line 570
    .local v8, "y":D
    move-object v10, v3

    move v11, v4

    add-int/lit8 v4, v4, 0x1

    move-object v12, v0

    iget-object v12, v12, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v12, v12, Ljavafx/scene/transform/Rotate$MatrixCache;->mxx:D

    move-wide v14, v6

    mul-double/2addr v12, v14

    move-object v14, v0

    iget-object v14, v14, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v14, v14, Ljavafx/scene/transform/Rotate$MatrixCache;->mxy:D

    move-wide/from16 v16, v8

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    move-object v14, v0

    iget-object v14, v14, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v14, v14, Ljavafx/scene/transform/Rotate$MatrixCache;->tx:D

    add-double/2addr v12, v14

    aput-wide v12, v10, v11

    .line 571
    move-object v10, v3

    move v11, v4

    add-int/lit8 v4, v4, 0x1

    move-object v12, v0

    iget-object v12, v12, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v12, v12, Ljavafx/scene/transform/Rotate$MatrixCache;->myx:D

    move-wide v14, v6

    mul-double/2addr v12, v14

    move-object v14, v0

    iget-object v14, v14, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v14, v14, Ljavafx/scene/transform/Rotate$MatrixCache;->myy:D

    move-wide/from16 v16, v8

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    move-object v14, v0

    iget-object v14, v14, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    iget-wide v14, v14, Ljavafx/scene/transform/Rotate$MatrixCache;->ty:D

    add-double/2addr v12, v14

    aput-wide v12, v10, v11

    .line 572
    goto :goto_0

    .line 573
    .end local v6    # "x":D
    .end local v8    # "y":D
    :cond_0
    return-void
.end method

.method transform3DPointsImpl([DI[DII)V
    .locals 22

    .prologue
    .line 579
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/transform/Rotate;
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
    move-object v14, v2

    invoke-direct {v14}, Ljavafx/scene/transform/Rotate;->updateCache()V

    .line 581
    :goto_0
    add-int/lit8 v7, v7, -0x1

    move v14, v7

    if-ltz v14, :cond_0

    .line 582
    move-object v14, v3

    move v15, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v14, v14, v15

    move-wide v8, v14

    .line 583
    .local v8, "x":D
    move-object v14, v3

    move v15, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v14, v14, v15

    move-wide v10, v14

    .line 584
    .local v10, "y":D
    move-object v14, v3

    move v15, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v14, v14, v15

    move-wide v12, v14

    .line 586
    .local v12, "z":D
    move-object v14, v5

    move v15, v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Ljavafx/scene/transform/Rotate$MatrixCache;->mxx:D

    move-wide/from16 v16, v0

    move-wide/from16 v18, v8

    mul-double v16, v16, v18

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Ljavafx/scene/transform/Rotate$MatrixCache;->mxy:D

    move-wide/from16 v18, v0

    move-wide/from16 v20, v10

    mul-double v18, v18, v20

    add-double v16, v16, v18

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Ljavafx/scene/transform/Rotate$MatrixCache;->mxz:D

    move-wide/from16 v18, v0

    move-wide/from16 v20, v12

    mul-double v18, v18, v20

    add-double v16, v16, v18

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Ljavafx/scene/transform/Rotate$MatrixCache;->tx:D

    move-wide/from16 v18, v0

    add-double v16, v16, v18

    aput-wide v16, v14, v15

    .line 587
    move-object v14, v5

    move v15, v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Ljavafx/scene/transform/Rotate$MatrixCache;->myx:D

    move-wide/from16 v16, v0

    move-wide/from16 v18, v8

    mul-double v16, v16, v18

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Ljavafx/scene/transform/Rotate$MatrixCache;->myy:D

    move-wide/from16 v18, v0

    move-wide/from16 v20, v10

    mul-double v18, v18, v20

    add-double v16, v16, v18

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Ljavafx/scene/transform/Rotate$MatrixCache;->myz:D

    move-wide/from16 v18, v0

    move-wide/from16 v20, v12

    mul-double v18, v18, v20

    add-double v16, v16, v18

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Ljavafx/scene/transform/Rotate$MatrixCache;->ty:D

    move-wide/from16 v18, v0

    add-double v16, v16, v18

    aput-wide v16, v14, v15

    .line 588
    move-object v14, v5

    move v15, v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Ljavafx/scene/transform/Rotate$MatrixCache;->mzx:D

    move-wide/from16 v16, v0

    move-wide/from16 v18, v8

    mul-double v16, v16, v18

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Ljavafx/scene/transform/Rotate$MatrixCache;->mzy:D

    move-wide/from16 v18, v0

    move-wide/from16 v20, v10

    mul-double v18, v18, v20

    add-double v16, v16, v18

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Ljavafx/scene/transform/Rotate$MatrixCache;->mzz:D

    move-wide/from16 v18, v0

    move-wide/from16 v20, v12

    mul-double v18, v18, v20

    add-double v16, v16, v18

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Ljavafx/scene/transform/Rotate$MatrixCache;->tz:D

    move-wide/from16 v18, v0

    add-double v16, v16, v18

    aput-wide v16, v14, v15

    .line 589
    goto/16 :goto_0

    .line 590
    .end local v8    # "x":D
    .end local v10    # "y":D
    .end local v12    # "z":D
    :cond_0
    return-void
.end method

.method protected transformChanged()V
    .locals 2

    .prologue
    .line 784
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Rotate;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    if-eqz v1, :cond_0

    .line 785
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Rotate;->cache:Ljavafx/scene/transform/Rotate$MatrixCache;

    invoke-virtual {v1}, Ljavafx/scene/transform/Rotate$MatrixCache;->invalidate()V

    .line 787
    :cond_0
    move-object v1, v0

    invoke-super {v1}, Ljavafx/scene/transform/Transform;->transformChanged()V

    .line 788
    return-void
.end method

.method validate()V
    .locals 4

    .prologue
    .line 775
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Rotate;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Rotate;->getAxis()Ljavafx/geometry/Point3D;

    move-result-object v2

    .line 776
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Rotate;->getAngle()D

    move-result-wide v2

    .line 777
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Rotate;->getPivotX()D

    move-result-wide v2

    .line 778
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Rotate;->getPivotY()D

    move-result-wide v2

    .line 779
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Rotate;->getPivotZ()D

    move-result-wide v2

    .line 780
    return-void
.end method
