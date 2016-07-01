.class public abstract Ljavafx/scene/transform/Transform;
.super Ljava/lang/Object;
.source "Transform.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljavafx/event/EventTarget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/transform/Transform$LazyBooleanProperty;
    }
.end annotation


# instance fields
.field private identity:Ljavafx/scene/transform/Transform$LazyBooleanProperty;

.field private impl_nodes:Lcom/sun/javafx/util/WeakReferenceQueue;

.field private internalEventDispatcher:Lcom/sun/javafx/event/EventHandlerManager;

.field private inverseCache:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljavafx/scene/transform/Transform;",
            ">;"
        }
    .end annotation
.end field

.field private onTransformChanged:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/transform/TransformChangedEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private type2D:Ljavafx/scene/transform/Transform$LazyBooleanProperty;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 252
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/scene/transform/Transform;->inverseCache:Ljava/lang/ref/SoftReference;

    .line 254
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/util/WeakReferenceQueue;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/javafx/util/WeakReferenceQueue;-><init>()V

    iput-object v2, v1, Ljavafx/scene/transform/Transform;->impl_nodes:Lcom/sun/javafx/util/WeakReferenceQueue;

    return-void
.end method

.method static synthetic access$100(Ljavafx/scene/transform/Transform;)Lcom/sun/javafx/event/EventHandlerManager;
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/transform/Transform;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/transform/Transform;->getInternalEventDispatcher()Lcom/sun/javafx/event/EventHandlerManager;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/transform/Transform;
    return-object v0
.end method

.method public static affine(DDDDDD)Ljavafx/scene/transform/Affine;
    .locals 18

    .prologue
    .line 96
    move-wide/from16 v0, p0

    .local v0, "mxx":D
    move-wide/from16 v2, p2

    .local v2, "myx":D
    move-wide/from16 v4, p4

    .local v4, "mxy":D
    move-wide/from16 v6, p6

    .local v6, "myy":D
    move-wide/from16 v8, p8

    .local v8, "tx":D
    move-wide/from16 v10, p10

    .local v10, "ty":D
    new-instance v13, Ljavafx/scene/transform/Affine;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    invoke-direct {v14}, Ljavafx/scene/transform/Affine;-><init>()V

    move-object v12, v13

    .line 97
    .local v12, "affine":Ljavafx/scene/transform/Affine;
    move-object v13, v12

    move-wide v14, v0

    invoke-virtual {v13, v14, v15}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    .line 98
    move-object v13, v12

    move-wide v14, v4

    invoke-virtual {v13, v14, v15}, Ljavafx/scene/transform/Affine;->setMxy(D)V

    .line 99
    move-object v13, v12

    move-wide v14, v8

    invoke-virtual {v13, v14, v15}, Ljavafx/scene/transform/Affine;->setTx(D)V

    .line 100
    move-object v13, v12

    move-wide v14, v2

    invoke-virtual {v13, v14, v15}, Ljavafx/scene/transform/Affine;->setMyx(D)V

    .line 101
    move-object v13, v12

    move-wide v14, v6

    invoke-virtual {v13, v14, v15}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    .line 102
    move-object v13, v12

    move-wide v14, v10

    invoke-virtual {v13, v14, v15}, Ljavafx/scene/transform/Affine;->setTy(D)V

    .line 103
    move-object v13, v12

    move-object v0, v13

    .end local v0    # "mxx":D
    return-object v0
.end method

.method public static affine(DDDDDDDDDDDD)Ljavafx/scene/transform/Affine;
    .locals 30

    .prologue
    .line 130
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
    new-instance v25, Ljavafx/scene/transform/Affine;

    move-object/from16 v28, v25

    move-object/from16 v25, v28

    move-object/from16 v26, v28

    invoke-direct/range {v26 .. v26}, Ljavafx/scene/transform/Affine;-><init>()V

    move-object/from16 v24, v25

    .line 131
    .local v24, "affine":Ljavafx/scene/transform/Affine;
    move-object/from16 v25, v24

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    .line 132
    move-object/from16 v25, v24

    move-wide/from16 v26, v2

    invoke-virtual/range {v25 .. v27}, Ljavafx/scene/transform/Affine;->setMxy(D)V

    .line 133
    move-object/from16 v25, v24

    move-wide/from16 v26, v4

    invoke-virtual/range {v25 .. v27}, Ljavafx/scene/transform/Affine;->setMxz(D)V

    .line 134
    move-object/from16 v25, v24

    move-wide/from16 v26, v6

    invoke-virtual/range {v25 .. v27}, Ljavafx/scene/transform/Affine;->setTx(D)V

    .line 135
    move-object/from16 v25, v24

    move-wide/from16 v26, v8

    invoke-virtual/range {v25 .. v27}, Ljavafx/scene/transform/Affine;->setMyx(D)V

    .line 136
    move-object/from16 v25, v24

    move-wide/from16 v26, v10

    invoke-virtual/range {v25 .. v27}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    .line 137
    move-object/from16 v25, v24

    move-wide/from16 v26, v12

    invoke-virtual/range {v25 .. v27}, Ljavafx/scene/transform/Affine;->setMyz(D)V

    .line 138
    move-object/from16 v25, v24

    move-wide/from16 v26, v14

    invoke-virtual/range {v25 .. v27}, Ljavafx/scene/transform/Affine;->setTy(D)V

    .line 139
    move-object/from16 v25, v24

    move-wide/from16 v26, v16

    invoke-virtual/range {v25 .. v27}, Ljavafx/scene/transform/Affine;->setMzx(D)V

    .line 140
    move-object/from16 v25, v24

    move-wide/from16 v26, v18

    invoke-virtual/range {v25 .. v27}, Ljavafx/scene/transform/Affine;->setMzy(D)V

    .line 141
    move-object/from16 v25, v24

    move-wide/from16 v26, v20

    invoke-virtual/range {v25 .. v27}, Ljavafx/scene/transform/Affine;->setMzz(D)V

    .line 142
    move-object/from16 v25, v24

    move-wide/from16 v26, v22

    invoke-virtual/range {v25 .. v27}, Ljavafx/scene/transform/Affine;->setTz(D)V

    .line 143
    move-object/from16 v25, v24

    move-object/from16 v0, v25

    .end local v0    # "mxx":D
    return-object v0
.end method

.method private getFixedSrcOffset([DI[DIII)I
    .locals 13

    .prologue
    .line 1773
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform;
    move-object v1, p1

    .local v1, "srcPts":[D
    move v2, p2

    .local v2, "srcOff":I
    move-object/from16 v3, p3

    .local v3, "dstPts":[D
    move/from16 v4, p4

    .local v4, "dstOff":I
    move/from16 v5, p5

    .local v5, "numPts":I
    move/from16 v6, p6

    .local v6, "dimensions":I
    move-object v7, v3

    move-object v8, v1

    if-ne v7, v8, :cond_0

    move v7, v4

    move v8, v2

    if-le v7, v8, :cond_0

    move v7, v4

    move v8, v2

    move v9, v5

    move v10, v6

    mul-int/2addr v9, v10

    add-int/2addr v8, v9

    if-ge v7, v8, :cond_0

    .line 1784
    move-object v7, v1

    move v8, v2

    move-object v9, v3

    move v10, v4

    move v11, v5

    move v12, v6

    mul-int/2addr v11, v12

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1785
    move v7, v4

    move v0, v7

    .line 1788
    .end local v0    # "this":Ljavafx/scene/transform/Transform;
    :goto_0
    return v0

    .restart local v0    # "this":Ljavafx/scene/transform/Transform;
    :cond_0
    move v7, v2

    move v0, v7

    goto :goto_0
.end method

.method private getInternalEventDispatcher()Lcom/sun/javafx/event/EventHandlerManager;
    .locals 6

    .prologue
    .line 1799
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Transform;->internalEventDispatcher:Lcom/sun/javafx/event/EventHandlerManager;

    if-nez v1, :cond_0

    .line 1800
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/event/EventHandlerManager;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/sun/javafx/event/EventHandlerManager;-><init>(Ljava/lang/Object;)V

    iput-object v2, v1, Ljavafx/scene/transform/Transform;->internalEventDispatcher:Lcom/sun/javafx/event/EventHandlerManager;

    .line 1802
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Transform;->internalEventDispatcher:Lcom/sun/javafx/event/EventHandlerManager;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Transform;
    return-object v0
.end method

.method private getInverseCache()Ljavafx/scene/transform/Transform;
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/scene/transform/NonInvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 2093
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/transform/Transform;->inverseCache:Ljava/lang/ref/SoftReference;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/transform/Transform;->inverseCache:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 2094
    :cond_0
    new-instance v2, Ljavafx/scene/transform/Affine;

    move-object/from16 v28, v2

    move-object/from16 v2, v28

    move-object/from16 v3, v28

    move-object v4, v0

    .line 2095
    invoke-virtual {v4}, Ljavafx/scene/transform/Transform;->getMxx()D

    move-result-wide v4

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Transform;->getMxy()D

    move-result-wide v6

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/transform/Transform;->getMxz()D

    move-result-wide v8

    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/transform/Transform;->getTx()D

    move-result-wide v10

    move-object v12, v0

    .line 2096
    invoke-virtual {v12}, Ljavafx/scene/transform/Transform;->getMyx()D

    move-result-wide v12

    move-object v14, v0

    invoke-virtual {v14}, Ljavafx/scene/transform/Transform;->getMyy()D

    move-result-wide v14

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/transform/Transform;->getMyz()D

    move-result-wide v16

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/transform/Transform;->getTy()D

    move-result-wide v18

    move-object/from16 v20, v0

    .line 2097
    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/transform/Transform;->getMzx()D

    move-result-wide v20

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/transform/Transform;->getMzy()D

    move-result-wide v22

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/transform/Transform;->getMzz()D

    move-result-wide v24

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/transform/Transform;->getTz()D

    move-result-wide v26

    invoke-direct/range {v3 .. v27}, Ljavafx/scene/transform/Affine;-><init>(DDDDDDDDDDDD)V

    move-object v1, v2

    .line 2098
    .local v1, "inv":Ljavafx/scene/transform/Affine;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Affine;->invert()V

    .line 2099
    move-object v2, v0

    new-instance v3, Ljava/lang/ref/SoftReference;

    move-object/from16 v28, v3

    move-object/from16 v3, v28

    move-object/from16 v4, v28

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Ljavafx/scene/transform/Transform;->inverseCache:Ljava/lang/ref/SoftReference;

    .line 2100
    move-object v2, v1

    move-object v0, v2

    .line 2103
    .end local v0    # "this":Ljavafx/scene/transform/Transform;
    .end local v1    # "inv":Ljavafx/scene/transform/Affine;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/transform/Transform;
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/transform/Transform;->inverseCache:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/scene/transform/Transform;

    move-object v0, v2

    goto :goto_0
.end method

.method public static rotate(DDD)Ljavafx/scene/transform/Rotate;
    .locals 12

    .prologue
    .line 173
    move-wide v0, p0

    .local v0, "angle":D
    move-wide v2, p2

    .local v2, "pivotX":D
    move-wide/from16 v4, p4

    .local v4, "pivotY":D
    new-instance v7, Ljavafx/scene/transform/Rotate;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljavafx/scene/transform/Rotate;-><init>()V

    move-object v6, v7

    .line 174
    .local v6, "rotate":Ljavafx/scene/transform/Rotate;
    move-object v7, v6

    move-wide v8, v0

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Rotate;->setAngle(D)V

    .line 175
    move-object v7, v6

    move-wide v8, v2

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Rotate;->setPivotX(D)V

    .line 176
    move-object v7, v6

    move-wide v8, v4

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/transform/Rotate;->setPivotY(D)V

    .line 177
    move-object v7, v6

    move-object v0, v7

    .end local v0    # "angle":D
    return-object v0
.end method

.method public static scale(DD)Ljavafx/scene/transform/Scale;
    .locals 10

    .prologue
    .line 190
    move-wide v0, p0

    .local v0, "x":D
    move-wide v2, p2

    .local v2, "y":D
    new-instance v5, Ljavafx/scene/transform/Scale;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljavafx/scene/transform/Scale;-><init>()V

    move-object v4, v5

    .line 191
    .local v4, "scale":Ljavafx/scene/transform/Scale;
    move-object v5, v4

    move-wide v6, v0

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/transform/Scale;->setX(D)V

    .line 192
    move-object v5, v4

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/transform/Scale;->setY(D)V

    .line 193
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "x":D
    return-object v0
.end method

.method public static scale(DDDD)Ljavafx/scene/transform/Scale;
    .locals 14

    .prologue
    .line 207
    move-wide v0, p0

    .local v0, "x":D
    move-wide/from16 v2, p2

    .local v2, "y":D
    move-wide/from16 v4, p4

    .local v4, "pivotX":D
    move-wide/from16 v6, p6

    .local v6, "pivotY":D
    new-instance v9, Ljavafx/scene/transform/Scale;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljavafx/scene/transform/Scale;-><init>()V

    move-object v8, v9

    .line 208
    .local v8, "scale":Ljavafx/scene/transform/Scale;
    move-object v9, v8

    move-wide v10, v0

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/transform/Scale;->setX(D)V

    .line 209
    move-object v9, v8

    move-wide v10, v2

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/transform/Scale;->setY(D)V

    .line 210
    move-object v9, v8

    move-wide v10, v4

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/transform/Scale;->setPivotX(D)V

    .line 211
    move-object v9, v8

    move-wide v10, v6

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/transform/Scale;->setPivotY(D)V

    .line 212
    move-object v9, v8

    move-object v0, v9

    .end local v0    # "x":D
    return-object v0
.end method

.method public static shear(DD)Ljavafx/scene/transform/Shear;
    .locals 10

    .prologue
    .line 225
    move-wide v0, p0

    .local v0, "x":D
    move-wide v2, p2

    .local v2, "y":D
    new-instance v5, Ljavafx/scene/transform/Shear;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljavafx/scene/transform/Shear;-><init>()V

    move-object v4, v5

    .line 226
    .local v4, "shear":Ljavafx/scene/transform/Shear;
    move-object v5, v4

    move-wide v6, v0

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/transform/Shear;->setX(D)V

    .line 227
    move-object v5, v4

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/transform/Shear;->setY(D)V

    .line 228
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "x":D
    return-object v0
.end method

.method public static shear(DDDD)Ljavafx/scene/transform/Shear;
    .locals 14

    .prologue
    .line 240
    move-wide v0, p0

    .local v0, "x":D
    move-wide/from16 v2, p2

    .local v2, "y":D
    move-wide/from16 v4, p4

    .local v4, "pivotX":D
    move-wide/from16 v6, p6

    .local v6, "pivotY":D
    new-instance v9, Ljavafx/scene/transform/Shear;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljavafx/scene/transform/Shear;-><init>()V

    move-object v8, v9

    .line 241
    .local v8, "shear":Ljavafx/scene/transform/Shear;
    move-object v9, v8

    move-wide v10, v0

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/transform/Shear;->setX(D)V

    .line 242
    move-object v9, v8

    move-wide v10, v2

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/transform/Shear;->setY(D)V

    .line 243
    move-object v9, v8

    move-wide v10, v4

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/transform/Shear;->setPivotX(D)V

    .line 244
    move-object v9, v8

    move-wide v10, v6

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/transform/Shear;->setPivotY(D)V

    .line 245
    move-object v9, v8

    move-object v0, v9

    .end local v0    # "x":D
    return-object v0
.end method

.method private transformDiff(Ljavafx/scene/transform/Transform;DD)D
    .locals 14

    .prologue
    .line 638
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform;
    move-object v1, p1

    .local v1, "t":Ljavafx/scene/transform/Transform;
    move-wide/from16 v2, p2

    .local v2, "x":D
    move-wide/from16 v4, p4

    .local v4, "y":D
    move-object v8, v0

    move-wide v9, v2

    move-wide v11, v4

    invoke-virtual {v8, v9, v10, v11, v12}, Ljavafx/scene/transform/Transform;->transform(DD)Ljavafx/geometry/Point2D;

    move-result-object v8

    move-object v6, v8

    .line 639
    .local v6, "byThis":Ljavafx/geometry/Point2D;
    move-object v8, v1

    move-wide v9, v2

    move-wide v11, v4

    invoke-virtual {v8, v9, v10, v11, v12}, Ljavafx/scene/transform/Transform;->transform(DD)Ljavafx/geometry/Point2D;

    move-result-object v8

    move-object v7, v8

    .line 640
    .local v7, "byOther":Ljavafx/geometry/Point2D;
    move-object v8, v6

    move-object v9, v7

    invoke-virtual {v8, v9}, Ljavafx/geometry/Point2D;->distance(Ljavafx/geometry/Point2D;)D

    move-result-wide v8

    move-wide v0, v8

    .end local v0    # "this":Ljavafx/scene/transform/Transform;
    return-wide v0
.end method

.method private transformDiff(Ljavafx/scene/transform/Transform;DDD)D
    .locals 18

    .prologue
    .line 654
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform;
    move-object/from16 v1, p1

    .local v1, "t":Ljavafx/scene/transform/Transform;
    move-wide/from16 v2, p2

    .local v2, "x":D
    move-wide/from16 v4, p4

    .local v4, "y":D
    move-wide/from16 v6, p6

    .local v6, "z":D
    move-object v10, v0

    move-wide v11, v2

    move-wide v13, v4

    move-wide v15, v6

    invoke-virtual/range {v10 .. v16}, Ljavafx/scene/transform/Transform;->transform(DDD)Ljavafx/geometry/Point3D;

    move-result-object v10

    move-object v8, v10

    .line 655
    .local v8, "byThis":Ljavafx/geometry/Point3D;
    move-object v10, v1

    move-wide v11, v2

    move-wide v13, v4

    move-wide v15, v6

    invoke-virtual/range {v10 .. v16}, Ljavafx/scene/transform/Transform;->transform(DDD)Ljavafx/geometry/Point3D;

    move-result-object v10

    move-object v9, v10

    .line 656
    .local v9, "byOther":Ljavafx/geometry/Point3D;
    move-object v10, v8

    move-object v11, v9

    invoke-virtual {v10, v11}, Ljavafx/geometry/Point3D;->distance(Ljavafx/geometry/Point3D;)D

    move-result-wide v10

    move-wide v0, v10

    .end local v0    # "this":Ljavafx/scene/transform/Transform;
    return-wide v0
.end method

.method public static translate(DD)Ljavafx/scene/transform/Translate;
    .locals 10

    .prologue
    .line 156
    move-wide v0, p0

    .local v0, "x":D
    move-wide v2, p2

    .local v2, "y":D
    new-instance v5, Ljavafx/scene/transform/Translate;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljavafx/scene/transform/Translate;-><init>()V

    move-object v4, v5

    .line 157
    .local v4, "translate":Ljavafx/scene/transform/Translate;
    move-object v5, v4

    move-wide v6, v0

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/transform/Translate;->setX(D)V

    .line 158
    move-object v5, v4

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/transform/Translate;->setY(D)V

    .line 159
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "x":D
    return-object v0
.end method


# virtual methods
.method public final addEventFilter(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljavafx/event/Event;",
            ">(",
            "Ljavafx/event/EventType",
            "<TT;>;",
            "Ljavafx/event/EventHandler",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1877
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform;
    move-object v1, p1

    .local v1, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<TT;>;"
    move-object v2, p2

    .local v2, "eventFilter":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-TT;>;"
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/transform/Transform;->getInternalEventDispatcher()Lcom/sun/javafx/event/EventHandlerManager;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    .line 1878
    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/event/EventHandlerManager;->addEventFilter(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 1880
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/transform/Transform;->validate()V

    .line 1881
    return-void
.end method

.method public final addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljavafx/event/Event;",
            ">(",
            "Ljavafx/event/EventType",
            "<TT;>;",
            "Ljavafx/event/EventHandler",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1833
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform;
    move-object v1, p1

    .local v1, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<TT;>;"
    move-object v2, p2

    .local v2, "eventHandler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-TT;>;"
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/transform/Transform;->getInternalEventDispatcher()Lcom/sun/javafx/event/EventHandlerManager;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    .line 1834
    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/event/EventHandlerManager;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 1836
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/transform/Transform;->validate()V

    .line 1837
    return-void
.end method

.method appendTo(Ljavafx/scene/transform/Affine;)V
    .locals 28

    .prologue
    .line 2061
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/transform/Transform;
    move-object/from16 v2, p1

    .local v2, "a":Ljavafx/scene/transform/Affine;
    move-object v3, v2

    move-object v4, v1

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

    .line 2062
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

    .line 2063
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

    .line 2061
    invoke-virtual/range {v3 .. v27}, Ljavafx/scene/transform/Affine;->append(DDDDDDDDDDDD)V

    .line 2064
    return-void
.end method

.method public buildEventDispatchChain(Ljavafx/event/EventDispatchChain;)Ljavafx/event/EventDispatchChain;
    .locals 4

    .prologue
    .line 1809
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform;
    move-object v1, p1

    .local v1, "tail":Ljavafx/event/EventDispatchChain;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/transform/Transform;->internalEventDispatcher:Lcom/sun/javafx/event/EventHandlerManager;

    if-nez v2, :cond_0

    move-object v2, v1

    .line 1810
    :goto_0
    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/transform/Transform;
    return-object v0

    .line 1809
    .restart local v0    # "this":Ljavafx/scene/transform/Transform;
    :cond_0
    move-object v2, v1

    move-object v3, v0

    .line 1810
    invoke-direct {v3}, Ljavafx/scene/transform/Transform;->getInternalEventDispatcher()Lcom/sun/javafx/event/EventHandlerManager;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavafx/event/EventDispatchChain;->append(Ljavafx/event/EventDispatcher;)Ljavafx/event/EventDispatchChain;

    move-result-object v2

    goto :goto_0
.end method

.method checkRequestedMAT(Ljavafx/scene/transform/MatrixType;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1963
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform;
    move-object v1, p1

    .local v1, "type":Ljavafx/scene/transform/MatrixType;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/MatrixType;->is2D()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/transform/Transform;->isType2D()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1964
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Cannot access 2D matrix for a 3D transform"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1967
    :cond_0
    return-void
.end method

.method clearInverseCache()V
    .locals 2

    .prologue
    .line 2110
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Transform;->inverseCache:Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_0

    .line 2111
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Transform;->inverseCache:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->clear()V

    .line 2113
    :cond_0
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/transform/Transform;->clone()Ljavafx/scene/transform/Transform;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Transform;
    return-object v0
.end method

.method public clone()Ljavafx/scene/transform/Transform;
    .locals 2

    .prologue
    .line 1172
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform;
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/scene/transform/TransformUtils;->immutableTransform(Ljavafx/scene/transform/Transform;)Ljavafx/scene/transform/Transform;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Transform;
    return-object v0
.end method

.method public column(Ljavafx/scene/transform/MatrixType;I)[D
    .locals 7

    .prologue
    .line 1107
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform;
    move-object v1, p1

    .local v1, "type":Ljavafx/scene/transform/MatrixType;
    move v2, p2

    .local v2, "column":I
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Ljavafx/scene/transform/Transform;->column(Ljavafx/scene/transform/MatrixType;I[D)[D

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/transform/Transform;
    return-object v0
.end method

.method public column(Ljavafx/scene/transform/MatrixType;I[D)[D
    .locals 9

    .prologue
    .line 987
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform;
    move-object v1, p1

    .local v1, "type":Ljavafx/scene/transform/MatrixType;
    move v2, p2

    .local v2, "column":I
    move-object v3, p3

    .local v3, "array":[D
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljavafx/scene/transform/Transform;->checkRequestedMAT(Ljavafx/scene/transform/MatrixType;)V

    .line 989
    move v4, v2

    if-ltz v4, :cond_0

    move v4, v2

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/transform/MatrixType;->columns()I

    move-result v5

    if-lt v4, v5, :cond_1

    .line 990
    :cond_0
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot get row "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 994
    :cond_1
    move-object v4, v3

    if-eqz v4, :cond_2

    move-object v4, v3

    array-length v4, v4

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/transform/MatrixType;->rows()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 995
    :cond_2
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/MatrixType;->rows()I

    move-result v4

    new-array v4, v4, [D

    move-object v3, v4

    .line 998
    :cond_3
    sget-object v4, Ljavafx/scene/transform/Transform$4;->$SwitchMap$javafx$scene$transform$MatrixType:[I

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/transform/MatrixType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 1087
    new-instance v4, Ljava/lang/InternalError;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported column "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1000
    :pswitch_0
    move v4, v2

    packed-switch v4, :pswitch_data_1

    .line 1014
    .line 1090
    :goto_0
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Ljavafx/scene/transform/Transform;
    return-object v0

    .line 1002
    .restart local v0    # "this":Ljavafx/scene/transform/Transform;
    :pswitch_1
    move-object v4, v3

    const/4 v5, 0x0

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Transform;->getMxx()D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 1003
    move-object v4, v3

    const/4 v5, 0x1

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Transform;->getMyx()D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 1004
    goto :goto_0

    .line 1006
    :pswitch_2
    move-object v4, v3

    const/4 v5, 0x0

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Transform;->getMxy()D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 1007
    move-object v4, v3

    const/4 v5, 0x1

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Transform;->getMyy()D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 1008
    goto :goto_0

    .line 1010
    :pswitch_3
    move-object v4, v3

    const/4 v5, 0x0

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Transform;->getTx()D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 1011
    move-object v4, v3

    const/4 v5, 0x1

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Transform;->getTy()D

    move-result-wide v6

    aput-wide v6, v4, v5

    goto :goto_0

    .line 1016
    :pswitch_4
    move v4, v2

    packed-switch v4, :pswitch_data_2

    .line 1033
    :goto_1
    goto :goto_0

    .line 1018
    :pswitch_5
    move-object v4, v3

    const/4 v5, 0x0

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Transform;->getMxx()D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 1019
    move-object v4, v3

    const/4 v5, 0x1

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Transform;->getMyx()D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 1020
    move-object v4, v3

    const/4 v5, 0x2

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    .line 1021
    goto :goto_1

    .line 1023
    :pswitch_6
    move-object v4, v3

    const/4 v5, 0x0

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Transform;->getMxy()D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 1024
    move-object v4, v3

    const/4 v5, 0x1

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Transform;->getMyy()D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 1025
    move-object v4, v3

    const/4 v5, 0x2

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    .line 1026
    goto :goto_1

    .line 1028
    :pswitch_7
    move-object v4, v3

    const/4 v5, 0x0

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Transform;->getTx()D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 1029
    move-object v4, v3

    const/4 v5, 0x1

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Transform;->getTy()D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 1030
    move-object v4, v3

    const/4 v5, 0x2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    aput-wide v6, v4, v5

    goto :goto_1

    .line 1035
    :pswitch_8
    move v4, v2

    packed-switch v4, :pswitch_data_3

    .line 1057
    :goto_2
    goto/16 :goto_0

    .line 1037
    :pswitch_9
    move-object v4, v3

    const/4 v5, 0x0

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Transform;->getMxx()D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 1038
    move-object v4, v3

    const/4 v5, 0x1

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Transform;->getMyx()D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 1039
    move-object v4, v3

    const/4 v5, 0x2

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Transform;->getMzx()D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 1040
    goto :goto_2

    .line 1042
    :pswitch_a
    move-object v4, v3

    const/4 v5, 0x0

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Transform;->getMxy()D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 1043
    move-object v4, v3

    const/4 v5, 0x1

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Transform;->getMyy()D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 1044
    move-object v4, v3

    const/4 v5, 0x2

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Transform;->getMzy()D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 1045
    goto :goto_2

    .line 1047
    :pswitch_b
    move-object v4, v3

    const/4 v5, 0x0

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Transform;->getMxz()D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 1048
    move-object v4, v3

    const/4 v5, 0x1

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Transform;->getMyz()D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 1049
    move-object v4, v3

    const/4 v5, 0x2

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Transform;->getMzz()D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 1050
    goto :goto_2

    .line 1052
    :pswitch_c
    move-object v4, v3

    const/4 v5, 0x0

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Transform;->getTx()D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 1053
    move-object v4, v3

    const/4 v5, 0x1

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Transform;->getTy()D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 1054
    move-object v4, v3

    const/4 v5, 0x2

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Transform;->getTz()D

    move-result-wide v6

    aput-wide v6, v4, v5

    goto :goto_2

    .line 1059
    :pswitch_d
    move v4, v2

    packed-switch v4, :pswitch_data_4

    .line 1085
    :goto_3
    goto/16 :goto_0

    .line 1061
    :pswitch_e
    move-object v4, v3

    const/4 v5, 0x0

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Transform;->getMxx()D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 1062
    move-object v4, v3

    const/4 v5, 0x1

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Transform;->getMyx()D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 1063
    move-object v4, v3

    const/4 v5, 0x2

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Transform;->getMzx()D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 1064
    move-object v4, v3

    const/4 v5, 0x3

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    .line 1065
    goto :goto_3

    .line 1067
    :pswitch_f
    move-object v4, v3

    const/4 v5, 0x0

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Transform;->getMxy()D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 1068
    move-object v4, v3

    const/4 v5, 0x1

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Transform;->getMyy()D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 1069
    move-object v4, v3

    const/4 v5, 0x2

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Transform;->getMzy()D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 1070
    move-object v4, v3

    const/4 v5, 0x3

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    .line 1071
    goto :goto_3

    .line 1073
    :pswitch_10
    move-object v4, v3

    const/4 v5, 0x0

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Transform;->getMxz()D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 1074
    move-object v4, v3

    const/4 v5, 0x1

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Transform;->getMyz()D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 1075
    move-object v4, v3

    const/4 v5, 0x2

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Transform;->getMzz()D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 1076
    move-object v4, v3

    const/4 v5, 0x3

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    .line 1077
    goto :goto_3

    .line 1079
    :pswitch_11
    move-object v4, v3

    const/4 v5, 0x0

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Transform;->getTx()D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 1080
    move-object v4, v3

    const/4 v5, 0x1

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Transform;->getTy()D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 1081
    move-object v4, v3

    const/4 v5, 0x2

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Transform;->getTz()D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 1082
    move-object v4, v3

    const/4 v5, 0x3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    aput-wide v6, v4, v5

    goto/16 :goto_3

    .line 998
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_8
        :pswitch_d
    .end packed-switch

    .line 1000
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1016
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 1035
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 1059
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method computeIs2D()Z
    .locals 6

    .prologue
    .line 470
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Transform;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Transform;->getMxz()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Transform;->getMzx()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Transform;->getMzy()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    move-object v2, v1

    .line 471
    invoke-virtual {v2}, Ljavafx/scene/transform/Transform;->getMzz()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Transform;->getTz()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v1, v2

    .end local v1    # "this":Ljavafx/scene/transform/Transform;
    return v1

    .restart local v1    # "this":Ljavafx/scene/transform/Transform;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method computeIsIdentity()Z
    .locals 6

    .prologue
    .line 482
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Transform;
    move-object v2, v1

    .line 483
    invoke-virtual {v2}, Ljavafx/scene/transform/Transform;->getMxx()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Transform;->getMxy()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Transform;->getMxz()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Transform;->getTx()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    move-object v2, v1

    .line 484
    invoke-virtual {v2}, Ljavafx/scene/transform/Transform;->getMyx()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Transform;->getMyy()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Transform;->getMyz()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Transform;->getTy()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    move-object v2, v1

    .line 485
    invoke-virtual {v2}, Ljavafx/scene/transform/Transform;->getMzx()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Transform;->getMzy()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Transform;->getMzz()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Transform;->getTz()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v1, v2

    .end local v1    # "this":Ljavafx/scene/transform/Transform;
    return v1

    .restart local v1    # "this":Ljavafx/scene/transform/Transform;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public createConcatenation(Ljavafx/scene/transform/Transform;)Ljavafx/scene/transform/Transform;
    .locals 57

    .prologue
    .line 1127
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform;
    move-object/from16 v1, p1

    .local v1, "transform":Ljavafx/scene/transform/Transform;
    move-object/from16 v26, v1

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/transform/Transform;->getMxx()D

    move-result-wide v26

    move-wide/from16 v2, v26

    .line 1128
    .local v2, "txx":D
    move-object/from16 v26, v1

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/transform/Transform;->getMxy()D

    move-result-wide v26

    move-wide/from16 v4, v26

    .line 1129
    .local v4, "txy":D
    move-object/from16 v26, v1

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/transform/Transform;->getMxz()D

    move-result-wide v26

    move-wide/from16 v6, v26

    .line 1130
    .local v6, "txz":D
    move-object/from16 v26, v1

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/transform/Transform;->getTx()D

    move-result-wide v26

    move-wide/from16 v8, v26

    .line 1131
    .local v8, "ttx":D
    move-object/from16 v26, v1

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/transform/Transform;->getMyx()D

    move-result-wide v26

    move-wide/from16 v10, v26

    .line 1132
    .local v10, "tyx":D
    move-object/from16 v26, v1

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/transform/Transform;->getMyy()D

    move-result-wide v26

    move-wide/from16 v12, v26

    .line 1133
    .local v12, "tyy":D
    move-object/from16 v26, v1

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/transform/Transform;->getMyz()D

    move-result-wide v26

    move-wide/from16 v14, v26

    .line 1134
    .local v14, "tyz":D
    move-object/from16 v26, v1

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/transform/Transform;->getTy()D

    move-result-wide v26

    move-wide/from16 v16, v26

    .line 1135
    .local v16, "tty":D
    move-object/from16 v26, v1

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/transform/Transform;->getMzx()D

    move-result-wide v26

    move-wide/from16 v18, v26

    .line 1136
    .local v18, "tzx":D
    move-object/from16 v26, v1

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/transform/Transform;->getMzy()D

    move-result-wide v26

    move-wide/from16 v20, v26

    .line 1137
    .local v20, "tzy":D
    move-object/from16 v26, v1

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/transform/Transform;->getMzz()D

    move-result-wide v26

    move-wide/from16 v22, v26

    .line 1138
    .local v22, "tzz":D
    move-object/from16 v26, v1

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/transform/Transform;->getTz()D

    move-result-wide v26

    move-wide/from16 v24, v26

    .line 1139
    .local v24, "ttz":D
    new-instance v26, Ljavafx/scene/transform/Affine;

    move-object/from16 v56, v26

    move-object/from16 v26, v56

    move-object/from16 v27, v56

    move-object/from16 v28, v0

    .line 1140
    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/transform/Transform;->getMxx()D

    move-result-wide v28

    move-wide/from16 v30, v2

    mul-double v28, v28, v30

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/transform/Transform;->getMxy()D

    move-result-wide v30

    move-wide/from16 v32, v10

    mul-double v30, v30, v32

    add-double v28, v28, v30

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/transform/Transform;->getMxz()D

    move-result-wide v30

    move-wide/from16 v32, v18

    mul-double v30, v30, v32

    add-double v28, v28, v30

    move-object/from16 v30, v0

    .line 1141
    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/transform/Transform;->getMxx()D

    move-result-wide v30

    move-wide/from16 v32, v4

    mul-double v30, v30, v32

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljavafx/scene/transform/Transform;->getMxy()D

    move-result-wide v32

    move-wide/from16 v34, v12

    mul-double v32, v32, v34

    add-double v30, v30, v32

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljavafx/scene/transform/Transform;->getMxz()D

    move-result-wide v32

    move-wide/from16 v34, v20

    mul-double v32, v32, v34

    add-double v30, v30, v32

    move-object/from16 v32, v0

    .line 1142
    invoke-virtual/range {v32 .. v32}, Ljavafx/scene/transform/Transform;->getMxx()D

    move-result-wide v32

    move-wide/from16 v34, v6

    mul-double v32, v32, v34

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/transform/Transform;->getMxy()D

    move-result-wide v34

    move-wide/from16 v36, v14

    mul-double v34, v34, v36

    add-double v32, v32, v34

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/transform/Transform;->getMxz()D

    move-result-wide v34

    move-wide/from16 v36, v22

    mul-double v34, v34, v36

    add-double v32, v32, v34

    move-object/from16 v34, v0

    .line 1143
    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/transform/Transform;->getMxx()D

    move-result-wide v34

    move-wide/from16 v36, v8

    mul-double v34, v34, v36

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljavafx/scene/transform/Transform;->getMxy()D

    move-result-wide v36

    move-wide/from16 v38, v16

    mul-double v36, v36, v38

    add-double v34, v34, v36

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljavafx/scene/transform/Transform;->getMxz()D

    move-result-wide v36

    move-wide/from16 v38, v24

    mul-double v36, v36, v38

    add-double v34, v34, v36

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljavafx/scene/transform/Transform;->getTx()D

    move-result-wide v36

    add-double v34, v34, v36

    move-object/from16 v36, v0

    .line 1144
    invoke-virtual/range {v36 .. v36}, Ljavafx/scene/transform/Transform;->getMyx()D

    move-result-wide v36

    move-wide/from16 v38, v2

    mul-double v36, v36, v38

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/transform/Transform;->getMyy()D

    move-result-wide v38

    move-wide/from16 v40, v10

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/transform/Transform;->getMyz()D

    move-result-wide v38

    move-wide/from16 v40, v18

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-object/from16 v38, v0

    .line 1145
    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/transform/Transform;->getMyx()D

    move-result-wide v38

    move-wide/from16 v40, v4

    mul-double v38, v38, v40

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljavafx/scene/transform/Transform;->getMyy()D

    move-result-wide v40

    move-wide/from16 v42, v12

    mul-double v40, v40, v42

    add-double v38, v38, v40

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljavafx/scene/transform/Transform;->getMyz()D

    move-result-wide v40

    move-wide/from16 v42, v20

    mul-double v40, v40, v42

    add-double v38, v38, v40

    move-object/from16 v40, v0

    .line 1146
    invoke-virtual/range {v40 .. v40}, Ljavafx/scene/transform/Transform;->getMyx()D

    move-result-wide v40

    move-wide/from16 v42, v6

    mul-double v40, v40, v42

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljavafx/scene/transform/Transform;->getMyy()D

    move-result-wide v42

    move-wide/from16 v44, v14

    mul-double v42, v42, v44

    add-double v40, v40, v42

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljavafx/scene/transform/Transform;->getMyz()D

    move-result-wide v42

    move-wide/from16 v44, v22

    mul-double v42, v42, v44

    add-double v40, v40, v42

    move-object/from16 v42, v0

    .line 1147
    invoke-virtual/range {v42 .. v42}, Ljavafx/scene/transform/Transform;->getMyx()D

    move-result-wide v42

    move-wide/from16 v44, v8

    mul-double v42, v42, v44

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljavafx/scene/transform/Transform;->getMyy()D

    move-result-wide v44

    move-wide/from16 v46, v16

    mul-double v44, v44, v46

    add-double v42, v42, v44

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljavafx/scene/transform/Transform;->getMyz()D

    move-result-wide v44

    move-wide/from16 v46, v24

    mul-double v44, v44, v46

    add-double v42, v42, v44

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljavafx/scene/transform/Transform;->getTy()D

    move-result-wide v44

    add-double v42, v42, v44

    move-object/from16 v44, v0

    .line 1148
    invoke-virtual/range {v44 .. v44}, Ljavafx/scene/transform/Transform;->getMzx()D

    move-result-wide v44

    move-wide/from16 v46, v2

    mul-double v44, v44, v46

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Ljavafx/scene/transform/Transform;->getMzy()D

    move-result-wide v46

    move-wide/from16 v48, v10

    mul-double v46, v46, v48

    add-double v44, v44, v46

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Ljavafx/scene/transform/Transform;->getMzz()D

    move-result-wide v46

    move-wide/from16 v48, v18

    mul-double v46, v46, v48

    add-double v44, v44, v46

    move-object/from16 v46, v0

    .line 1149
    invoke-virtual/range {v46 .. v46}, Ljavafx/scene/transform/Transform;->getMzx()D

    move-result-wide v46

    move-wide/from16 v48, v4

    mul-double v46, v46, v48

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Ljavafx/scene/transform/Transform;->getMzy()D

    move-result-wide v48

    move-wide/from16 v50, v12

    mul-double v48, v48, v50

    add-double v46, v46, v48

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Ljavafx/scene/transform/Transform;->getMzz()D

    move-result-wide v48

    move-wide/from16 v50, v20

    mul-double v48, v48, v50

    add-double v46, v46, v48

    move-object/from16 v48, v0

    .line 1150
    invoke-virtual/range {v48 .. v48}, Ljavafx/scene/transform/Transform;->getMzx()D

    move-result-wide v48

    move-wide/from16 v50, v6

    mul-double v48, v48, v50

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Ljavafx/scene/transform/Transform;->getMzy()D

    move-result-wide v50

    move-wide/from16 v52, v14

    mul-double v50, v50, v52

    add-double v48, v48, v50

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Ljavafx/scene/transform/Transform;->getMzz()D

    move-result-wide v50

    move-wide/from16 v52, v22

    mul-double v50, v50, v52

    add-double v48, v48, v50

    move-object/from16 v50, v0

    .line 1151
    invoke-virtual/range {v50 .. v50}, Ljavafx/scene/transform/Transform;->getMzx()D

    move-result-wide v50

    move-wide/from16 v52, v8

    mul-double v50, v50, v52

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Ljavafx/scene/transform/Transform;->getMzy()D

    move-result-wide v52

    move-wide/from16 v54, v16

    mul-double v52, v52, v54

    add-double v50, v50, v52

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Ljavafx/scene/transform/Transform;->getMzz()D

    move-result-wide v52

    move-wide/from16 v54, v24

    mul-double v52, v52, v54

    add-double v50, v50, v52

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Ljavafx/scene/transform/Transform;->getTz()D

    move-result-wide v52

    add-double v50, v50, v52

    invoke-direct/range {v27 .. v51}, Ljavafx/scene/transform/Affine;-><init>(DDDDDDDDDDDD)V

    move-object/from16 v0, v26

    .end local v0    # "this":Ljavafx/scene/transform/Transform;
    return-object v0
.end method

.method public createInverse()Ljavafx/scene/transform/Transform;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/scene/transform/NonInvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 1162
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/transform/Transform;->getInverseCache()Ljavafx/scene/transform/Transform;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/transform/Transform;->clone()Ljavafx/scene/transform/Transform;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Transform;
    return-object v0
.end method

.method public deltaTransform(DD)Ljavafx/geometry/Point2D;
    .locals 17

    .prologue
    .line 1417
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/transform/Transform;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Transform;->ensureCanTransform2DPoint()V

    .line 1419
    new-instance v6, Ljavafx/geometry/Point2D;

    move-object/from16 v16, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v16

    move-object v8, v1

    .line 1420
    invoke-virtual {v8}, Ljavafx/scene/transform/Transform;->getMxx()D

    move-result-wide v8

    move-wide v10, v2

    mul-double/2addr v8, v10

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/transform/Transform;->getMxy()D

    move-result-wide v10

    move-wide v12, v4

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    move-object v10, v1

    .line 1421
    invoke-virtual {v10}, Ljavafx/scene/transform/Transform;->getMyx()D

    move-result-wide v10

    move-wide v12, v2

    mul-double/2addr v10, v12

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/transform/Transform;->getMyy()D

    move-result-wide v12

    move-wide v14, v4

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v1, v6

    .end local v1    # "this":Ljavafx/scene/transform/Transform;
    return-object v1
.end method

.method public deltaTransform(Ljavafx/geometry/Point2D;)Ljavafx/geometry/Point2D;
    .locals 8

    .prologue
    .line 1438
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Transform;
    move-object v2, p1

    .local v2, "point":Ljavafx/geometry/Point2D;
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Ljavafx/scene/transform/Transform;->deltaTransform(DD)Ljavafx/geometry/Point2D;

    move-result-object v3

    move-object v1, v3

    .end local v1    # "this":Ljavafx/scene/transform/Transform;
    return-object v1
.end method

.method public deltaTransform(DDD)Ljavafx/geometry/Point3D;
    .locals 21

    .prologue
    .line 1452
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/transform/Transform;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-wide/from16 v6, p5

    .local v6, "z":D
    new-instance v8, Ljavafx/geometry/Point3D;

    move-object/from16 v20, v8

    move-object/from16 v8, v20

    move-object/from16 v9, v20

    move-object v10, v1

    .line 1453
    invoke-virtual {v10}, Ljavafx/scene/transform/Transform;->getMxx()D

    move-result-wide v10

    move-wide v12, v2

    mul-double/2addr v10, v12

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/transform/Transform;->getMxy()D

    move-result-wide v12

    move-wide v14, v4

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/transform/Transform;->getMxz()D

    move-result-wide v12

    move-wide v14, v6

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    move-object v12, v1

    .line 1454
    invoke-virtual {v12}, Ljavafx/scene/transform/Transform;->getMyx()D

    move-result-wide v12

    move-wide v14, v2

    mul-double/2addr v12, v14

    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/transform/Transform;->getMyy()D

    move-result-wide v14

    move-wide/from16 v16, v4

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/transform/Transform;->getMyz()D

    move-result-wide v14

    move-wide/from16 v16, v6

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    move-object v14, v1

    .line 1455
    invoke-virtual {v14}, Ljavafx/scene/transform/Transform;->getMzx()D

    move-result-wide v14

    move-wide/from16 v16, v2

    mul-double v14, v14, v16

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/transform/Transform;->getMzy()D

    move-result-wide v16

    move-wide/from16 v18, v4

    mul-double v16, v16, v18

    add-double v14, v14, v16

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/transform/Transform;->getMzz()D

    move-result-wide v16

    move-wide/from16 v18, v6

    mul-double v16, v16, v18

    add-double v14, v14, v16

    invoke-direct/range {v9 .. v15}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v1, v8

    .end local v1    # "this":Ljavafx/scene/transform/Transform;
    return-object v1
.end method

.method public deltaTransform(Ljavafx/geometry/Point3D;)Ljavafx/geometry/Point3D;
    .locals 10

    .prologue
    .line 1470
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Transform;
    move-object v2, p1

    .local v2, "point":Ljavafx/geometry/Point3D;
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v6

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v8

    invoke-virtual/range {v3 .. v9}, Ljavafx/scene/transform/Transform;->deltaTransform(DDD)Ljavafx/geometry/Point3D;

    move-result-object v3

    move-object v1, v3

    .end local v1    # "this":Ljavafx/scene/transform/Transform;
    return-object v1
.end method

.method public determinant()D
    .locals 24

    .prologue
    .line 496
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/transform/Transform;
    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/transform/Transform;->getMyx()D

    move-result-wide v14

    move-wide v2, v14

    .line 497
    .local v2, "myx":D
    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/transform/Transform;->getMyy()D

    move-result-wide v14

    move-wide v4, v14

    .line 498
    .local v4, "myy":D
    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/transform/Transform;->getMyz()D

    move-result-wide v14

    move-wide v6, v14

    .line 499
    .local v6, "myz":D
    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/transform/Transform;->getMzx()D

    move-result-wide v14

    move-wide v8, v14

    .line 500
    .local v8, "mzx":D
    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/transform/Transform;->getMzy()D

    move-result-wide v14

    move-wide v10, v14

    .line 501
    .local v10, "mzy":D
    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/transform/Transform;->getMzz()D

    move-result-wide v14

    move-wide v12, v14

    .line 503
    .local v12, "mzz":D
    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/transform/Transform;->getMxx()D

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

    .line 504
    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/transform/Transform;->getMxy()D

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

    .line 505
    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/transform/Transform;->getMxz()D

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

    .end local v1    # "this":Ljavafx/scene/transform/Transform;
    return-wide v1
.end method

.method ensureCanTransform2DPoint()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1975
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/transform/Transform;->isType2D()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1976
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Cannot transform 2D point with a 3D transform"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1979
    :cond_0
    return-void
.end method

.method fill2DArray([D)V
    .locals 6

    .prologue
    .line 771
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform;
    move-object v1, p1

    .local v1, "array":[D
    move-object v2, v1

    const/4 v3, 0x0

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/transform/Transform;->getMxx()D

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 772
    move-object v2, v1

    const/4 v3, 0x1

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/transform/Transform;->getMxy()D

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 773
    move-object v2, v1

    const/4 v3, 0x2

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/transform/Transform;->getTx()D

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 774
    move-object v2, v1

    const/4 v3, 0x3

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/transform/Transform;->getMyx()D

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 775
    move-object v2, v1

    const/4 v3, 0x4

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/transform/Transform;->getMyy()D

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 776
    move-object v2, v1

    const/4 v3, 0x5

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/transform/Transform;->getTy()D

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 777
    return-void
.end method

.method fill3DArray([D)V
    .locals 6

    .prologue
    .line 788
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform;
    move-object v1, p1

    .local v1, "array":[D
    move-object v2, v1

    const/4 v3, 0x0

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/transform/Transform;->getMxx()D

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 789
    move-object v2, v1

    const/4 v3, 0x1

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/transform/Transform;->getMxy()D

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 790
    move-object v2, v1

    const/4 v3, 0x2

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/transform/Transform;->getMxz()D

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 791
    move-object v2, v1

    const/4 v3, 0x3

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/transform/Transform;->getTx()D

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 792
    move-object v2, v1

    const/4 v3, 0x4

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/transform/Transform;->getMyx()D

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 793
    move-object v2, v1

    const/4 v3, 0x5

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/transform/Transform;->getMyy()D

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 794
    move-object v2, v1

    const/4 v3, 0x6

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/transform/Transform;->getMyz()D

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 795
    move-object v2, v1

    const/4 v3, 0x7

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/transform/Transform;->getTy()D

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 796
    move-object v2, v1

    const/16 v3, 0x8

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/transform/Transform;->getMzx()D

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 797
    move-object v2, v1

    const/16 v3, 0x9

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/transform/Transform;->getMzy()D

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 798
    move-object v2, v1

    const/16 v3, 0xa

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/transform/Transform;->getMzz()D

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 799
    move-object v2, v1

    const/16 v3, 0xb

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/transform/Transform;->getTz()D

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 800
    return-void
.end method

.method public getElement(Ljavafx/scene/transform/MatrixType;II)D
    .locals 9

    .prologue
    .line 384
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform;
    move-object v1, p1

    .local v1, "type":Ljavafx/scene/transform/MatrixType;
    move v2, p2

    .local v2, "row":I
    move v3, p3

    .local v3, "column":I
    move v4, v2

    if-ltz v4, :cond_0

    move v4, v2

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/transform/MatrixType;->rows()I

    move-result v5

    if-ge v4, v5, :cond_0

    move v4, v3

    if-ltz v4, :cond_0

    move v4, v3

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/transform/MatrixType;->columns()I

    move-result v5

    if-lt v4, v5, :cond_1

    .line 385
    :cond_0
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Index outside of affine matrix "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 388
    :cond_1
    sget-object v4, Ljavafx/scene/transform/Transform$4;->$SwitchMap$javafx$scene$transform$MatrixType:[I

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/transform/MatrixType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 453
    :goto_0
    new-instance v4, Ljava/lang/InternalError;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported matrix type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 392
    :pswitch_0
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/transform/Transform;->isType2D()Z

    move-result v4

    if-nez v4, :cond_2

    .line 393
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "Cannot access 2D matrix of a 3D transform"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 396
    :cond_2
    move v4, v2

    packed-switch v4, :pswitch_data_1

    .line 416
    :goto_1
    goto :goto_0

    .line 398
    :pswitch_1
    move v4, v3

    packed-switch v4, :pswitch_data_2

    .line 404
    :pswitch_2
    move v4, v3

    packed-switch v4, :pswitch_data_3

    .line 410
    :pswitch_3
    move v4, v3

    packed-switch v4, :pswitch_data_4

    goto :goto_1

    .line 411
    :pswitch_4
    const-wide/16 v4, 0x0

    move-wide v0, v4

    .line 447
    .end local v0    # "this":Ljavafx/scene/transform/Transform;
    :goto_2
    return-wide v0

    .line 399
    .restart local v0    # "this":Ljavafx/scene/transform/Transform;
    :pswitch_5
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/transform/Transform;->getMxx()D

    move-result-wide v4

    move-wide v0, v4

    goto :goto_2

    .line 400
    :pswitch_6
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/transform/Transform;->getMxy()D

    move-result-wide v4

    move-wide v0, v4

    goto :goto_2

    .line 401
    :pswitch_7
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/transform/Transform;->getTx()D

    move-result-wide v4

    move-wide v0, v4

    goto :goto_2

    .line 405
    :pswitch_8
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/transform/Transform;->getMyx()D

    move-result-wide v4

    move-wide v0, v4

    goto :goto_2

    .line 406
    :pswitch_9
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/transform/Transform;->getMyy()D

    move-result-wide v4

    move-wide v0, v4

    goto :goto_2

    .line 407
    :pswitch_a
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/transform/Transform;->getTy()D

    move-result-wide v4

    move-wide v0, v4

    goto :goto_2

    .line 412
    :pswitch_b
    const-wide/16 v4, 0x0

    move-wide v0, v4

    goto :goto_2

    .line 413
    :pswitch_c
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-wide v0, v4

    goto :goto_2

    .line 420
    :pswitch_d
    move v4, v2

    packed-switch v4, :pswitch_data_5

    goto :goto_0

    .line 422
    :pswitch_e
    move v4, v3

    packed-switch v4, :pswitch_data_6

    .line 429
    :pswitch_f
    move v4, v3

    packed-switch v4, :pswitch_data_7

    .line 436
    :pswitch_10
    move v4, v3

    packed-switch v4, :pswitch_data_8

    .line 443
    :pswitch_11
    move v4, v3

    packed-switch v4, :pswitch_data_9

    goto/16 :goto_0

    .line 444
    :pswitch_12
    const-wide/16 v4, 0x0

    move-wide v0, v4

    goto :goto_2

    .line 423
    :pswitch_13
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/transform/Transform;->getMxx()D

    move-result-wide v4

    move-wide v0, v4

    goto :goto_2

    .line 424
    :pswitch_14
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/transform/Transform;->getMxy()D

    move-result-wide v4

    move-wide v0, v4

    goto :goto_2

    .line 425
    :pswitch_15
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/transform/Transform;->getMxz()D

    move-result-wide v4

    move-wide v0, v4

    goto :goto_2

    .line 426
    :pswitch_16
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/transform/Transform;->getTx()D

    move-result-wide v4

    move-wide v0, v4

    goto :goto_2

    .line 430
    :pswitch_17
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/transform/Transform;->getMyx()D

    move-result-wide v4

    move-wide v0, v4

    goto :goto_2

    .line 431
    :pswitch_18
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/transform/Transform;->getMyy()D

    move-result-wide v4

    move-wide v0, v4

    goto :goto_2

    .line 432
    :pswitch_19
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/transform/Transform;->getMyz()D

    move-result-wide v4

    move-wide v0, v4

    goto :goto_2

    .line 433
    :pswitch_1a
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/transform/Transform;->getTy()D

    move-result-wide v4

    move-wide v0, v4

    goto/16 :goto_2

    .line 437
    :pswitch_1b
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/transform/Transform;->getMzx()D

    move-result-wide v4

    move-wide v0, v4

    goto/16 :goto_2

    .line 438
    :pswitch_1c
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/transform/Transform;->getMzy()D

    move-result-wide v4

    move-wide v0, v4

    goto/16 :goto_2

    .line 439
    :pswitch_1d
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/transform/Transform;->getMzz()D

    move-result-wide v4

    move-wide v0, v4

    goto/16 :goto_2

    .line 440
    :pswitch_1e
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/transform/Transform;->getTz()D

    move-result-wide v4

    move-wide v0, v4

    goto/16 :goto_2

    .line 445
    :pswitch_1f
    const-wide/16 v4, 0x0

    move-wide v0, v4

    goto/16 :goto_2

    .line 446
    :pswitch_20
    const-wide/16 v4, 0x0

    move-wide v0, v4

    goto/16 :goto_2

    .line 447
    :pswitch_21
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-wide v0, v4

    goto/16 :goto_2

    .line 388
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_d
    .end packed-switch

    .line 396
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 398
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 404
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 410
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_4
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 420
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch

    .line 422
    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch

    .line 429
    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
    .end packed-switch

    .line 436
    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
    .end packed-switch

    .line 443
    :pswitch_data_9
    .packed-switch 0x0
        :pswitch_12
        :pswitch_1f
        :pswitch_20
        :pswitch_21
    .end packed-switch
.end method

.method public getMxx()D
    .locals 3

    .prologue
    .line 268
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform;
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Transform;
    return-wide v0
.end method

.method public getMxy()D
    .locals 3

    .prologue
    .line 277
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform;
    const-wide/16 v1, 0x0

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Transform;
    return-wide v0
.end method

.method public getMxz()D
    .locals 3

    .prologue
    .line 286
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform;
    const-wide/16 v1, 0x0

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Transform;
    return-wide v0
.end method

.method public getMyx()D
    .locals 3

    .prologue
    .line 304
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform;
    const-wide/16 v1, 0x0

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Transform;
    return-wide v0
.end method

.method public getMyy()D
    .locals 3

    .prologue
    .line 313
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform;
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Transform;
    return-wide v0
.end method

.method public getMyz()D
    .locals 3

    .prologue
    .line 322
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform;
    const-wide/16 v1, 0x0

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Transform;
    return-wide v0
.end method

.method public getMzx()D
    .locals 3

    .prologue
    .line 340
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform;
    const-wide/16 v1, 0x0

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Transform;
    return-wide v0
.end method

.method public getMzy()D
    .locals 3

    .prologue
    .line 349
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform;
    const-wide/16 v1, 0x0

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Transform;
    return-wide v0
.end method

.method public getMzz()D
    .locals 3

    .prologue
    .line 358
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform;
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Transform;
    return-wide v0
.end method

.method public final getOnTransformChanged()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/transform/TransformChangedEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1923
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Transform;->onTransformChanged:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Transform;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/transform/Transform;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Transform;->onTransformChanged:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    goto :goto_0
.end method

.method public getTx()D
    .locals 3

    .prologue
    .line 295
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform;
    const-wide/16 v1, 0x0

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Transform;
    return-wide v0
.end method

.method public getTy()D
    .locals 3

    .prologue
    .line 331
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform;
    const-wide/16 v1, 0x0

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Transform;
    return-wide v0
.end method

.method public getTz()D
    .locals 3

    .prologue
    .line 367
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform;
    const-wide/16 v1, 0x0

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Transform;
    return-wide v0
.end method

.method public final identityProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;
    .locals 6

    .prologue
    .line 554
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Transform;->identity:Ljavafx/scene/transform/Transform$LazyBooleanProperty;

    if-nez v1, :cond_0

    .line 555
    move-object v1, v0

    new-instance v2, Ljavafx/scene/transform/Transform$2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/transform/Transform$2;-><init>(Ljavafx/scene/transform/Transform;)V

    iput-object v2, v1, Ljavafx/scene/transform/Transform;->identity:Ljavafx/scene/transform/Transform$LazyBooleanProperty;

    .line 573
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Transform;->identity:Ljavafx/scene/transform/Transform$LazyBooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Transform;
    return-object v0
.end method

.method public impl_add(Ljavafx/scene/Node;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2014
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/transform/Transform;->impl_nodes:Lcom/sun/javafx/util/WeakReferenceQueue;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/util/WeakReferenceQueue;->add(Ljava/lang/Object;)V

    .line 2015
    return-void
.end method

.method public abstract impl_apply(Lcom/sun/javafx/geom/transform/Affine3D;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract impl_derive(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/BaseTransform;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public impl_remove(Ljavafx/scene/Node;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2023
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/transform/Transform;->impl_nodes:Lcom/sun/javafx/util/WeakReferenceQueue;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/util/WeakReferenceQueue;->remove(Ljava/lang/Object;)V

    .line 2024
    return-void
.end method

.method public inverseDeltaTransform(DD)Ljavafx/geometry/Point2D;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/scene/transform/NonInvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 1703
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform;
    move-wide v1, p1

    .local v1, "x":D
    move-wide v3, p3

    .local v3, "y":D
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/transform/Transform;->ensureCanTransform2DPoint()V

    .line 1705
    move-object v5, v0

    invoke-direct {v5}, Ljavafx/scene/transform/Transform;->getInverseCache()Ljavafx/scene/transform/Transform;

    move-result-object v5

    move-wide v6, v1

    move-wide v8, v3

    invoke-virtual {v5, v6, v7, v8, v9}, Ljavafx/scene/transform/Transform;->deltaTransform(DD)Ljavafx/geometry/Point2D;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Ljavafx/scene/transform/Transform;
    return-object v0
.end method

.method public inverseDeltaTransform(Ljavafx/geometry/Point2D;)Ljavafx/geometry/Point2D;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/scene/transform/NonInvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 1725
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Transform;
    move-object v2, p1

    .local v2, "point":Ljavafx/geometry/Point2D;
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Ljavafx/scene/transform/Transform;->inverseDeltaTransform(DD)Ljavafx/geometry/Point2D;

    move-result-object v3

    move-object v1, v3

    .end local v1    # "this":Ljavafx/scene/transform/Transform;
    return-object v1
.end method

.method public inverseDeltaTransform(DDD)Ljavafx/geometry/Point3D;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/scene/transform/NonInvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 1743
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform;
    move-wide/from16 v1, p1

    .local v1, "x":D
    move-wide/from16 v3, p3

    .local v3, "y":D
    move-wide/from16 v5, p5

    .local v5, "z":D
    move-object v7, v0

    invoke-direct {v7}, Ljavafx/scene/transform/Transform;->getInverseCache()Ljavafx/scene/transform/Transform;

    move-result-object v7

    move-wide v8, v1

    move-wide v10, v3

    move-wide v12, v5

    invoke-virtual/range {v7 .. v13}, Ljavafx/scene/transform/Transform;->deltaTransform(DDD)Ljavafx/geometry/Point3D;

    move-result-object v7

    move-object v0, v7

    .end local v0    # "this":Ljavafx/scene/transform/Transform;
    return-object v0
.end method

.method public inverseDeltaTransform(Ljavafx/geometry/Point3D;)Ljavafx/geometry/Point3D;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/scene/transform/NonInvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 1761
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Transform;
    move-object v2, p1

    .local v2, "point":Ljavafx/geometry/Point3D;
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v6

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v8

    invoke-virtual/range {v3 .. v9}, Ljavafx/scene/transform/Transform;->inverseDeltaTransform(DDD)Ljavafx/geometry/Point3D;

    move-result-object v3

    move-object v1, v3

    .end local v1    # "this":Ljavafx/scene/transform/Transform;
    return-object v1
.end method

.method public inverseTransform(Ljavafx/geometry/Bounds;)Ljavafx/geometry/Bounds;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/scene/transform/NonInvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 1549
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/transform/Transform;
    move-object/from16 v2, p1

    .local v2, "bounds":Ljavafx/geometry/Bounds;
    move-object v11, v1

    invoke-virtual {v11}, Ljavafx/scene/transform/Transform;->isType2D()Z

    move-result v11

    if-eqz v11, :cond_0

    move-object v11, v2

    invoke-virtual {v11}, Ljavafx/geometry/Bounds;->getMinZ()D

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmpl-double v11, v11, v13

    if-nez v11, :cond_0

    move-object v11, v2

    invoke-virtual {v11}, Ljavafx/geometry/Bounds;->getMaxZ()D

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmpl-double v11, v11, v13

    if-nez v11, :cond_0

    .line 1550
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v14

    invoke-virtual {v11, v12, v13, v14, v15}, Ljavafx/scene/transform/Transform;->inverseTransform(DD)Ljavafx/geometry/Point2D;

    move-result-object v11

    move-object v3, v11

    .line 1551
    .local v3, "p1":Ljavafx/geometry/Point2D;
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v14

    invoke-virtual {v11, v12, v13, v14, v15}, Ljavafx/scene/transform/Transform;->inverseTransform(DD)Ljavafx/geometry/Point2D;

    move-result-object v11

    move-object v4, v11

    .line 1552
    .local v4, "p2":Ljavafx/geometry/Point2D;
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v14

    invoke-virtual {v11, v12, v13, v14, v15}, Ljavafx/scene/transform/Transform;->inverseTransform(DD)Ljavafx/geometry/Point2D;

    move-result-object v11

    move-object v5, v11

    .line 1553
    .local v5, "p3":Ljavafx/geometry/Point2D;
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v14

    invoke-virtual {v11, v12, v13, v14, v15}, Ljavafx/scene/transform/Transform;->inverseTransform(DD)Ljavafx/geometry/Point2D;

    move-result-object v11

    move-object v6, v11

    .line 1555
    .local v6, "p4":Ljavafx/geometry/Point2D;
    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    move-object v14, v6

    invoke-static {v11, v12, v13, v14}, Lcom/sun/javafx/geometry/BoundsUtils;->createBoundingBox(Ljavafx/geometry/Point2D;Ljavafx/geometry/Point2D;Ljavafx/geometry/Point2D;Ljavafx/geometry/Point2D;)Ljavafx/geometry/Bounds;

    move-result-object v11

    move-object v1, v11

    .line 1566
    .end local v1    # "this":Ljavafx/scene/transform/Transform;
    .end local v3    # "p1":Ljavafx/geometry/Point2D;
    .end local v4    # "p2":Ljavafx/geometry/Point2D;
    .end local v5    # "p3":Ljavafx/geometry/Point2D;
    .end local v6    # "p4":Ljavafx/geometry/Point2D;
    :goto_0
    return-object v1

    .line 1557
    .restart local v1    # "this":Ljavafx/scene/transform/Transform;
    :cond_0
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v14

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMinZ()D

    move-result-wide v16

    invoke-virtual/range {v11 .. v17}, Ljavafx/scene/transform/Transform;->inverseTransform(DDD)Ljavafx/geometry/Point3D;

    move-result-object v11

    move-object v3, v11

    .line 1558
    .local v3, "p1":Ljavafx/geometry/Point3D;
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v14

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMaxZ()D

    move-result-wide v16

    invoke-virtual/range {v11 .. v17}, Ljavafx/scene/transform/Transform;->inverseTransform(DDD)Ljavafx/geometry/Point3D;

    move-result-object v11

    move-object v4, v11

    .line 1559
    .local v4, "p2":Ljavafx/geometry/Point3D;
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v14

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMinZ()D

    move-result-wide v16

    invoke-virtual/range {v11 .. v17}, Ljavafx/scene/transform/Transform;->inverseTransform(DDD)Ljavafx/geometry/Point3D;

    move-result-object v11

    move-object v5, v11

    .line 1560
    .local v5, "p3":Ljavafx/geometry/Point3D;
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v14

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMaxZ()D

    move-result-wide v16

    invoke-virtual/range {v11 .. v17}, Ljavafx/scene/transform/Transform;->inverseTransform(DDD)Ljavafx/geometry/Point3D;

    move-result-object v11

    move-object v6, v11

    .line 1561
    .local v6, "p4":Ljavafx/geometry/Point3D;
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v14

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMinZ()D

    move-result-wide v16

    invoke-virtual/range {v11 .. v17}, Ljavafx/scene/transform/Transform;->inverseTransform(DDD)Ljavafx/geometry/Point3D;

    move-result-object v11

    move-object v7, v11

    .line 1562
    .local v7, "p5":Ljavafx/geometry/Point3D;
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v14

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMaxZ()D

    move-result-wide v16

    invoke-virtual/range {v11 .. v17}, Ljavafx/scene/transform/Transform;->inverseTransform(DDD)Ljavafx/geometry/Point3D;

    move-result-object v11

    move-object v8, v11

    .line 1563
    .local v8, "p6":Ljavafx/geometry/Point3D;
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v14

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMinZ()D

    move-result-wide v16

    invoke-virtual/range {v11 .. v17}, Ljavafx/scene/transform/Transform;->inverseTransform(DDD)Ljavafx/geometry/Point3D;

    move-result-object v11

    move-object v9, v11

    .line 1564
    .local v9, "p7":Ljavafx/geometry/Point3D;
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v14

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMaxZ()D

    move-result-wide v16

    invoke-virtual/range {v11 .. v17}, Ljavafx/scene/transform/Transform;->inverseTransform(DDD)Ljavafx/geometry/Point3D;

    move-result-object v11

    move-object v10, v11

    .line 1566
    .local v10, "p8":Ljavafx/geometry/Point3D;
    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    invoke-static/range {v11 .. v18}, Lcom/sun/javafx/geometry/BoundsUtils;->createBoundingBox(Ljavafx/geometry/Point3D;Ljavafx/geometry/Point3D;Ljavafx/geometry/Point3D;Ljavafx/geometry/Point3D;Ljavafx/geometry/Point3D;Ljavafx/geometry/Point3D;Ljavafx/geometry/Point3D;Ljavafx/geometry/Point3D;)Ljavafx/geometry/Bounds;

    move-result-object v11

    move-object v1, v11

    goto/16 :goto_0
.end method

.method public inverseTransform(DD)Ljavafx/geometry/Point2D;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/scene/transform/NonInvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 1487
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform;
    move-wide v1, p1

    .local v1, "x":D
    move-wide v3, p3

    .local v3, "y":D
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/transform/Transform;->ensureCanTransform2DPoint()V

    .line 1489
    move-object v5, v0

    invoke-direct {v5}, Ljavafx/scene/transform/Transform;->getInverseCache()Ljavafx/scene/transform/Transform;

    move-result-object v5

    move-wide v6, v1

    move-wide v8, v3

    invoke-virtual {v5, v6, v7, v8, v9}, Ljavafx/scene/transform/Transform;->transform(DD)Ljavafx/geometry/Point2D;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Ljavafx/scene/transform/Transform;
    return-object v0
.end method

.method public inverseTransform(Ljavafx/geometry/Point2D;)Ljavafx/geometry/Point2D;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/scene/transform/NonInvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 1505
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Transform;
    move-object v2, p1

    .local v2, "point":Ljavafx/geometry/Point2D;
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Ljavafx/scene/transform/Transform;->inverseTransform(DD)Ljavafx/geometry/Point2D;

    move-result-object v3

    move-object v1, v3

    .end local v1    # "this":Ljavafx/scene/transform/Transform;
    return-object v1
.end method

.method public inverseTransform(DDD)Ljavafx/geometry/Point3D;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/scene/transform/NonInvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 1521
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform;
    move-wide/from16 v1, p1

    .local v1, "x":D
    move-wide/from16 v3, p3

    .local v3, "y":D
    move-wide/from16 v5, p5

    .local v5, "z":D
    move-object v7, v0

    invoke-direct {v7}, Ljavafx/scene/transform/Transform;->getInverseCache()Ljavafx/scene/transform/Transform;

    move-result-object v7

    move-wide v8, v1

    move-wide v10, v3

    move-wide v12, v5

    invoke-virtual/range {v7 .. v13}, Ljavafx/scene/transform/Transform;->transform(DDD)Ljavafx/geometry/Point3D;

    move-result-object v7

    move-object v0, v7

    .end local v0    # "this":Ljavafx/scene/transform/Transform;
    return-object v0
.end method

.method public inverseTransform(Ljavafx/geometry/Point3D;)Ljavafx/geometry/Point3D;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/scene/transform/NonInvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 1535
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Transform;
    move-object v2, p1

    .local v2, "point":Ljavafx/geometry/Point3D;
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v6

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v8

    invoke-virtual/range {v3 .. v9}, Ljavafx/scene/transform/Transform;->inverseTransform(DDD)Ljavafx/geometry/Point3D;

    move-result-object v3

    move-object v1, v3

    .end local v1    # "this":Ljavafx/scene/transform/Transform;
    return-object v1
.end method

.method public inverseTransform2DPoints([DI[DII)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/scene/transform/NonInvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 1630
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform;
    move-object v1, p1

    .local v1, "srcPts":[D
    move/from16 v2, p2

    .local v2, "srcOff":I
    move-object/from16 v3, p3

    .local v3, "dstPts":[D
    move/from16 v4, p4

    .local v4, "dstOff":I
    move/from16 v5, p5

    .local v5, "numPts":I
    move-object v6, v1

    if-eqz v6, :cond_0

    move-object v6, v3

    if-nez v6, :cond_1

    .line 1631
    :cond_0
    new-instance v6, Ljava/lang/NullPointerException;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    invoke-direct {v7}, Ljava/lang/NullPointerException;-><init>()V

    throw v6

    .line 1634
    :cond_1
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Transform;->isType2D()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1635
    new-instance v6, Ljava/lang/IllegalStateException;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    const-string v8, "Cannot transform 2D points with a 3D transform"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1640
    :cond_2
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move-object v9, v3

    move v10, v4

    move v11, v5

    const/4 v12, 0x2

    invoke-direct/range {v6 .. v12}, Ljavafx/scene/transform/Transform;->getFixedSrcOffset([DI[DIII)I

    move-result v6

    move v2, v6

    .line 1643
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move-object v9, v3

    move v10, v4

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Ljavafx/scene/transform/Transform;->inverseTransform2DPointsImpl([DI[DII)V

    .line 1644
    return-void
.end method

.method inverseTransform2DPointsImpl([DI[DII)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/scene/transform/NonInvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 1581
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform;
    move-object v1, p1

    .local v1, "srcPts":[D
    move v2, p2

    .local v2, "srcOff":I
    move-object v3, p3

    .local v3, "dstPts":[D
    move/from16 v4, p4

    .local v4, "dstOff":I
    move/from16 v5, p5

    .local v5, "numPts":I
    move-object v6, v0

    invoke-direct {v6}, Ljavafx/scene/transform/Transform;->getInverseCache()Ljavafx/scene/transform/Transform;

    move-result-object v6

    move-object v7, v1

    move v8, v2

    move-object v9, v3

    move v10, v4

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Ljavafx/scene/transform/Transform;->transform2DPointsImpl([DI[DII)V

    .line 1583
    return-void
.end method

.method public inverseTransform3DPoints([DI[DII)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/scene/transform/NonInvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 1675
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform;
    move-object v1, p1

    .local v1, "srcPts":[D
    move/from16 v2, p2

    .local v2, "srcOff":I
    move-object/from16 v3, p3

    .local v3, "dstPts":[D
    move/from16 v4, p4

    .local v4, "dstOff":I
    move/from16 v5, p5

    .local v5, "numPts":I
    move-object v6, v1

    if-eqz v6, :cond_0

    move-object v6, v3

    if-nez v6, :cond_1

    .line 1676
    :cond_0
    new-instance v6, Ljava/lang/NullPointerException;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    invoke-direct {v7}, Ljava/lang/NullPointerException;-><init>()V

    throw v6

    .line 1680
    :cond_1
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move-object v9, v3

    move v10, v4

    move v11, v5

    const/4 v12, 0x3

    invoke-direct/range {v6 .. v12}, Ljavafx/scene/transform/Transform;->getFixedSrcOffset([DI[DIII)I

    move-result v6

    move v2, v6

    .line 1683
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move-object v9, v3

    move v10, v4

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Ljavafx/scene/transform/Transform;->inverseTransform3DPointsImpl([DI[DII)V

    .line 1684
    return-void
.end method

.method inverseTransform3DPointsImpl([DI[DII)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/scene/transform/NonInvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 1596
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform;
    move-object v1, p1

    .local v1, "srcPts":[D
    move v2, p2

    .local v2, "srcOff":I
    move-object v3, p3

    .local v3, "dstPts":[D
    move/from16 v4, p4

    .local v4, "dstOff":I
    move/from16 v5, p5

    .local v5, "numPts":I
    move-object v6, v0

    invoke-direct {v6}, Ljavafx/scene/transform/Transform;->getInverseCache()Ljavafx/scene/transform/Transform;

    move-result-object v6

    move-object v7, v1

    move v8, v2

    move-object v9, v3

    move v10, v4

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Ljavafx/scene/transform/Transform;->transform3DPointsImpl([DI[DII)V

    .line 1598
    return-void
.end method

.method public final isIdentity()Z
    .locals 2

    .prologue
    .line 550
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Transform;->identity:Ljavafx/scene/transform/Transform$LazyBooleanProperty;

    if-nez v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/transform/Transform;->computeIsIdentity()Z

    move-result v1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Transform;
    return v0

    .restart local v0    # "this":Ljavafx/scene/transform/Transform;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Transform;->identity:Ljavafx/scene/transform/Transform$LazyBooleanProperty;

    invoke-virtual {v1}, Ljavafx/scene/transform/Transform$LazyBooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final isType2D()Z
    .locals 2

    .prologue
    .line 516
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Transform;->type2D:Ljavafx/scene/transform/Transform$LazyBooleanProperty;

    if-nez v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/transform/Transform;->computeIs2D()Z

    move-result v1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Transform;
    return v0

    .restart local v0    # "this":Ljavafx/scene/transform/Transform;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Transform;->type2D:Ljavafx/scene/transform/Transform$LazyBooleanProperty;

    invoke-virtual {v1}, Ljavafx/scene/transform/Transform$LazyBooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final onTransformChangedProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/transform/TransformChangedEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1933
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Transform;->onTransformChanged:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 1935
    move-object v1, v0

    new-instance v2, Ljavafx/scene/transform/Transform$3;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v0

    const-string v6, "onTransformChanged"

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/transform/Transform$3;-><init>(Ljavafx/scene/transform/Transform;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/transform/Transform;->onTransformChanged:Ljavafx/beans/property/ObjectProperty;

    .line 1945
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Transform;->onTransformChanged:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Transform;
    return-object v0
.end method

.method prependTo(Ljavafx/scene/transform/Affine;)V
    .locals 28

    .prologue
    .line 2072
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/transform/Transform;
    move-object/from16 v2, p1

    .local v2, "a":Ljavafx/scene/transform/Affine;
    move-object v3, v2

    move-object v4, v1

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

    .line 2073
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

    .line 2074
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

    .line 2072
    invoke-virtual/range {v3 .. v27}, Ljavafx/scene/transform/Affine;->prepend(DDDDDDDDDDDD)V

    .line 2075
    return-void
.end method

.method public final removeEventFilter(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljavafx/event/Event;",
            ">(",
            "Ljavafx/event/EventType",
            "<TT;>;",
            "Ljavafx/event/EventHandler",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1898
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform;
    move-object v1, p1

    .local v1, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<TT;>;"
    move-object v2, p2

    .local v2, "eventFilter":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-TT;>;"
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/transform/Transform;->getInternalEventDispatcher()Lcom/sun/javafx/event/EventHandlerManager;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    .line 1899
    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/event/EventHandlerManager;->removeEventFilter(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 1900
    return-void
.end method

.method public final removeEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljavafx/event/Event;",
            ">(",
            "Ljavafx/event/EventType",
            "<TT;>;",
            "Ljavafx/event/EventHandler",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1854
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform;
    move-object v1, p1

    .local v1, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<TT;>;"
    move-object v2, p2

    .local v2, "eventHandler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-TT;>;"
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/transform/Transform;->getInternalEventDispatcher()Lcom/sun/javafx/event/EventHandlerManager;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    .line 1855
    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/event/EventHandlerManager;->removeEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 1856
    return-void
.end method

.method public row(Ljavafx/scene/transform/MatrixType;I)[D
    .locals 7

    .prologue
    .line 964
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform;
    move-object v1, p1

    .local v1, "type":Ljavafx/scene/transform/MatrixType;
    move v2, p2

    .local v2, "row":I
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Ljavafx/scene/transform/Transform;->row(Ljavafx/scene/transform/MatrixType;I[D)[D

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/transform/Transform;
    return-object v0
.end method

.method public row(Ljavafx/scene/transform/MatrixType;I[D)[D
    .locals 9

    .prologue
    .line 883
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform;
    move-object v1, p1

    .local v1, "type":Ljavafx/scene/transform/MatrixType;
    move v2, p2

    .local v2, "row":I
    move-object v3, p3

    .local v3, "array":[D
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljavafx/scene/transform/Transform;->checkRequestedMAT(Ljavafx/scene/transform/MatrixType;)V

    .line 885
    move v4, v2

    if-ltz v4, :cond_0

    move v4, v2

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/transform/MatrixType;->rows()I

    move-result v5

    if-lt v4, v5, :cond_1

    .line 886
    :cond_0
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot get row "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 890
    :cond_1
    move-object v4, v3

    if-eqz v4, :cond_2

    move-object v4, v3

    array-length v4, v4

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/transform/MatrixType;->columns()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 891
    :cond_2
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/MatrixType;->columns()I

    move-result v4

    new-array v4, v4, [D

    move-object v3, v4

    .line 894
    :cond_3
    sget-object v4, Ljavafx/scene/transform/Transform$4;->$SwitchMap$javafx$scene$transform$MatrixType:[I

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/transform/MatrixType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 945
    new-instance v4, Ljava/lang/InternalError;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported row "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 897
    :pswitch_0
    move v4, v2

    packed-switch v4, :pswitch_data_1

    .line 914
    .line 947
    :goto_0
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Ljavafx/scene/transform/Transform;
    return-object v0

    .line 899
    .restart local v0    # "this":Ljavafx/scene/transform/Transform;
    :pswitch_1
    move-object v4, v3

    const/4 v5, 0x0

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Transform;->getMxx()D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 900
    move-object v4, v3

    const/4 v5, 0x1

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Transform;->getMxy()D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 901
    move-object v4, v3

    const/4 v5, 0x2

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Transform;->getTx()D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 902
    goto :goto_0

    .line 904
    :pswitch_2
    move-object v4, v3

    const/4 v5, 0x0

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Transform;->getMyx()D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 905
    move-object v4, v3

    const/4 v5, 0x1

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Transform;->getMyy()D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 906
    move-object v4, v3

    const/4 v5, 0x2

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Transform;->getTy()D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 907
    goto :goto_0

    .line 909
    :pswitch_3
    move-object v4, v3

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    .line 910
    move-object v4, v3

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    .line 911
    move-object v4, v3

    const/4 v5, 0x2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    aput-wide v6, v4, v5

    goto :goto_0

    .line 917
    :pswitch_4
    move v4, v2

    packed-switch v4, :pswitch_data_2

    .line 943
    :goto_1
    goto :goto_0

    .line 919
    :pswitch_5
    move-object v4, v3

    const/4 v5, 0x0

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Transform;->getMxx()D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 920
    move-object v4, v3

    const/4 v5, 0x1

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Transform;->getMxy()D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 921
    move-object v4, v3

    const/4 v5, 0x2

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Transform;->getMxz()D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 922
    move-object v4, v3

    const/4 v5, 0x3

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Transform;->getTx()D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 923
    goto :goto_1

    .line 925
    :pswitch_6
    move-object v4, v3

    const/4 v5, 0x0

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Transform;->getMyx()D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 926
    move-object v4, v3

    const/4 v5, 0x1

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Transform;->getMyy()D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 927
    move-object v4, v3

    const/4 v5, 0x2

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Transform;->getMyz()D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 928
    move-object v4, v3

    const/4 v5, 0x3

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Transform;->getTy()D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 929
    goto :goto_1

    .line 931
    :pswitch_7
    move-object v4, v3

    const/4 v5, 0x0

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Transform;->getMzx()D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 932
    move-object v4, v3

    const/4 v5, 0x1

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Transform;->getMzy()D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 933
    move-object v4, v3

    const/4 v5, 0x2

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Transform;->getMzz()D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 934
    move-object v4, v3

    const/4 v5, 0x3

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Transform;->getTz()D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 935
    goto :goto_1

    .line 937
    :pswitch_8
    move-object v4, v3

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    .line 938
    move-object v4, v3

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    .line 939
    move-object v4, v3

    const/4 v5, 0x2

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    .line 940
    move-object v4, v3

    const/4 v5, 0x3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    aput-wide v6, v4, v5

    goto/16 :goto_1

    .line 894
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch

    .line 897
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 917
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public final setOnTransformChanged(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/transform/TransformChangedEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1911
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/transform/TransformChangedEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/transform/Transform;->onTransformChangedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 1913
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/transform/Transform;->validate()V

    .line 1914
    return-void
.end method

.method public similarTo(Ljavafx/scene/transform/Transform;Ljavafx/geometry/Bounds;D)Z
    .locals 21

    .prologue
    .line 678
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/transform/Transform;
    move-object/from16 v2, p1

    .local v2, "transform":Ljavafx/scene/transform/Transform;
    move-object/from16 v3, p2

    .local v3, "range":Ljavafx/geometry/Bounds;
    move-wide/from16 v4, p3

    .local v4, "maxDelta":D
    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/transform/Transform;->isType2D()Z

    move-result v12

    if-eqz v12, :cond_4

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/scene/transform/Transform;->isType2D()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 679
    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v12

    move-wide v6, v12

    .line 680
    .local v6, "cornerX":D
    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v12

    move-wide v8, v12

    .line 682
    .local v8, "cornerY":D
    move-object v12, v1

    move-object v13, v2

    move-wide v14, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v12 .. v17}, Ljavafx/scene/transform/Transform;->transformDiff(Ljavafx/scene/transform/Transform;DD)D

    move-result-wide v12

    move-wide v14, v4

    cmpl-double v12, v12, v14

    if-lez v12, :cond_0

    .line 683
    const/4 v12, 0x0

    move v1, v12

    .line 753
    .end local v1    # "this":Ljavafx/scene/transform/Transform;
    :goto_0
    return v1

    .line 686
    .restart local v1    # "this":Ljavafx/scene/transform/Transform;
    :cond_0
    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v12

    move-wide v8, v12

    .line 687
    move-object v12, v1

    move-object v13, v2

    move-wide v14, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v12 .. v17}, Ljavafx/scene/transform/Transform;->transformDiff(Ljavafx/scene/transform/Transform;DD)D

    move-result-wide v12

    move-wide v14, v4

    cmpl-double v12, v12, v14

    if-lez v12, :cond_1

    .line 688
    const/4 v12, 0x0

    move v1, v12

    goto :goto_0

    .line 691
    :cond_1
    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v12

    move-wide v6, v12

    .line 692
    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v12

    move-wide v8, v12

    .line 693
    move-object v12, v1

    move-object v13, v2

    move-wide v14, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v12 .. v17}, Ljavafx/scene/transform/Transform;->transformDiff(Ljavafx/scene/transform/Transform;DD)D

    move-result-wide v12

    move-wide v14, v4

    cmpl-double v12, v12, v14

    if-lez v12, :cond_2

    .line 694
    const/4 v12, 0x0

    move v1, v12

    goto :goto_0

    .line 697
    :cond_2
    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v12

    move-wide v8, v12

    .line 698
    move-object v12, v1

    move-object v13, v2

    move-wide v14, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v12 .. v17}, Ljavafx/scene/transform/Transform;->transformDiff(Ljavafx/scene/transform/Transform;DD)D

    move-result-wide v12

    move-wide v14, v4

    cmpl-double v12, v12, v14

    if-lez v12, :cond_3

    .line 699
    const/4 v12, 0x0

    move v1, v12

    goto :goto_0

    .line 702
    :cond_3
    const/4 v12, 0x1

    move v1, v12

    goto :goto_0

    .line 705
    .end local v6    # "cornerX":D
    .end local v8    # "cornerY":D
    :cond_4
    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v12

    move-wide v6, v12

    .line 706
    .restart local v6    # "cornerX":D
    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v12

    move-wide v8, v12

    .line 707
    .restart local v8    # "cornerY":D
    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinZ()D

    move-result-wide v12

    move-wide v10, v12

    .line 708
    .local v10, "cornerZ":D
    move-object v12, v1

    move-object v13, v2

    move-wide v14, v6

    move-wide/from16 v16, v8

    move-wide/from16 v18, v10

    invoke-direct/range {v12 .. v19}, Ljavafx/scene/transform/Transform;->transformDiff(Ljavafx/scene/transform/Transform;DDD)D

    move-result-wide v12

    move-wide v14, v4

    cmpl-double v12, v12, v14

    if-lez v12, :cond_5

    .line 709
    const/4 v12, 0x0

    move v1, v12

    goto :goto_0

    .line 712
    :cond_5
    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v12

    move-wide v8, v12

    .line 713
    move-object v12, v1

    move-object v13, v2

    move-wide v14, v6

    move-wide/from16 v16, v8

    move-wide/from16 v18, v10

    invoke-direct/range {v12 .. v19}, Ljavafx/scene/transform/Transform;->transformDiff(Ljavafx/scene/transform/Transform;DDD)D

    move-result-wide v12

    move-wide v14, v4

    cmpl-double v12, v12, v14

    if-lez v12, :cond_6

    .line 714
    const/4 v12, 0x0

    move v1, v12

    goto/16 :goto_0

    .line 717
    :cond_6
    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v12

    move-wide v6, v12

    .line 718
    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v12

    move-wide v8, v12

    .line 719
    move-object v12, v1

    move-object v13, v2

    move-wide v14, v6

    move-wide/from16 v16, v8

    move-wide/from16 v18, v10

    invoke-direct/range {v12 .. v19}, Ljavafx/scene/transform/Transform;->transformDiff(Ljavafx/scene/transform/Transform;DDD)D

    move-result-wide v12

    move-wide v14, v4

    cmpl-double v12, v12, v14

    if-lez v12, :cond_7

    .line 720
    const/4 v12, 0x0

    move v1, v12

    goto/16 :goto_0

    .line 723
    :cond_7
    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v12

    move-wide v8, v12

    .line 724
    move-object v12, v1

    move-object v13, v2

    move-wide v14, v6

    move-wide/from16 v16, v8

    move-wide/from16 v18, v10

    invoke-direct/range {v12 .. v19}, Ljavafx/scene/transform/Transform;->transformDiff(Ljavafx/scene/transform/Transform;DDD)D

    move-result-wide v12

    move-wide v14, v4

    cmpl-double v12, v12, v14

    if-lez v12, :cond_8

    .line 725
    const/4 v12, 0x0

    move v1, v12

    goto/16 :goto_0

    .line 728
    :cond_8
    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getDepth()D

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-eqz v12, :cond_c

    .line 729
    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v12

    move-wide v6, v12

    .line 730
    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v12

    move-wide v8, v12

    .line 731
    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxZ()D

    move-result-wide v12

    move-wide v10, v12

    .line 732
    move-object v12, v1

    move-object v13, v2

    move-wide v14, v6

    move-wide/from16 v16, v8

    move-wide/from16 v18, v10

    invoke-direct/range {v12 .. v19}, Ljavafx/scene/transform/Transform;->transformDiff(Ljavafx/scene/transform/Transform;DDD)D

    move-result-wide v12

    move-wide v14, v4

    cmpl-double v12, v12, v14

    if-lez v12, :cond_9

    .line 733
    const/4 v12, 0x0

    move v1, v12

    goto/16 :goto_0

    .line 736
    :cond_9
    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v12

    move-wide v8, v12

    .line 737
    move-object v12, v1

    move-object v13, v2

    move-wide v14, v6

    move-wide/from16 v16, v8

    move-wide/from16 v18, v10

    invoke-direct/range {v12 .. v19}, Ljavafx/scene/transform/Transform;->transformDiff(Ljavafx/scene/transform/Transform;DDD)D

    move-result-wide v12

    move-wide v14, v4

    cmpl-double v12, v12, v14

    if-lez v12, :cond_a

    .line 738
    const/4 v12, 0x0

    move v1, v12

    goto/16 :goto_0

    .line 741
    :cond_a
    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v12

    move-wide v6, v12

    .line 742
    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v12

    move-wide v8, v12

    .line 743
    move-object v12, v1

    move-object v13, v2

    move-wide v14, v6

    move-wide/from16 v16, v8

    move-wide/from16 v18, v10

    invoke-direct/range {v12 .. v19}, Ljavafx/scene/transform/Transform;->transformDiff(Ljavafx/scene/transform/Transform;DDD)D

    move-result-wide v12

    move-wide v14, v4

    cmpl-double v12, v12, v14

    if-lez v12, :cond_b

    .line 744
    const/4 v12, 0x0

    move v1, v12

    goto/16 :goto_0

    .line 747
    :cond_b
    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v12

    move-wide v8, v12

    .line 748
    move-object v12, v1

    move-object v13, v2

    move-wide v14, v6

    move-wide/from16 v16, v8

    move-wide/from16 v18, v10

    invoke-direct/range {v12 .. v19}, Ljavafx/scene/transform/Transform;->transformDiff(Ljavafx/scene/transform/Transform;DDD)D

    move-result-wide v12

    move-wide v14, v4

    cmpl-double v12, v12, v14

    if-lez v12, :cond_c

    .line 749
    const/4 v12, 0x0

    move v1, v12

    goto/16 :goto_0

    .line 753
    :cond_c
    const/4 v12, 0x1

    move v1, v12

    goto/16 :goto_0
.end method

.method public toArray(Ljavafx/scene/transform/MatrixType;)[D
    .locals 5

    .prologue
    .line 860
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform;
    move-object v1, p1

    .local v1, "type":Ljavafx/scene/transform/MatrixType;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/transform/Transform;->toArray(Ljavafx/scene/transform/MatrixType;[D)[D

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/transform/Transform;
    return-object v0
.end method

.method public toArray(Ljavafx/scene/transform/MatrixType;[D)[D
    .locals 9

    .prologue
    .line 818
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Transform;
    move-object v2, p1

    .local v2, "type":Ljavafx/scene/transform/MatrixType;
    move-object v3, p2

    .local v3, "array":[D
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljavafx/scene/transform/Transform;->checkRequestedMAT(Ljavafx/scene/transform/MatrixType;)V

    .line 820
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    array-length v4, v4

    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/transform/MatrixType;->elements()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 821
    :cond_0
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/transform/MatrixType;->elements()I

    move-result v4

    new-array v4, v4, [D

    move-object v3, v4

    .line 824
    :cond_1
    sget-object v4, Ljavafx/scene/transform/Transform$4;->$SwitchMap$javafx$scene$transform$MatrixType:[I

    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/transform/MatrixType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 843
    new-instance v4, Ljava/lang/InternalError;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported matrix type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 826
    :pswitch_0
    move-object v4, v3

    const/4 v5, 0x6

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    .line 827
    move-object v4, v3

    const/4 v5, 0x7

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    .line 828
    move-object v4, v3

    const/16 v5, 0x8

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    aput-wide v6, v4, v5

    .line 831
    :pswitch_1
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljavafx/scene/transform/Transform;->fill2DArray([D)V

    .line 832
    .line 846
    :goto_0
    move-object v4, v3

    move-object v1, v4

    .end local v1    # "this":Ljavafx/scene/transform/Transform;
    return-object v1

    .line 834
    .restart local v1    # "this":Ljavafx/scene/transform/Transform;
    :pswitch_2
    move-object v4, v3

    const/16 v5, 0xc

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    .line 835
    move-object v4, v3

    const/16 v5, 0xd

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    .line 836
    move-object v4, v3

    const/16 v5, 0xe

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    .line 837
    move-object v4, v3

    const/16 v5, 0xf

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    aput-wide v6, v4, v5

    .line 840
    :pswitch_3
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljavafx/scene/transform/Transform;->fill3DArray([D)V

    .line 841
    goto :goto_0

    .line 824
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public transform(Ljavafx/geometry/Bounds;)Ljavafx/geometry/Bounds;
    .locals 19

    .prologue
    .line 1244
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/transform/Transform;
    move-object/from16 v2, p1

    .local v2, "bounds":Ljavafx/geometry/Bounds;
    move-object v11, v1

    invoke-virtual {v11}, Ljavafx/scene/transform/Transform;->isType2D()Z

    move-result v11

    if-eqz v11, :cond_0

    move-object v11, v2

    invoke-virtual {v11}, Ljavafx/geometry/Bounds;->getMinZ()D

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmpl-double v11, v11, v13

    if-nez v11, :cond_0

    move-object v11, v2

    invoke-virtual {v11}, Ljavafx/geometry/Bounds;->getMaxZ()D

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmpl-double v11, v11, v13

    if-nez v11, :cond_0

    .line 1245
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v14

    invoke-virtual {v11, v12, v13, v14, v15}, Ljavafx/scene/transform/Transform;->transform(DD)Ljavafx/geometry/Point2D;

    move-result-object v11

    move-object v3, v11

    .line 1246
    .local v3, "p1":Ljavafx/geometry/Point2D;
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v14

    invoke-virtual {v11, v12, v13, v14, v15}, Ljavafx/scene/transform/Transform;->transform(DD)Ljavafx/geometry/Point2D;

    move-result-object v11

    move-object v4, v11

    .line 1247
    .local v4, "p2":Ljavafx/geometry/Point2D;
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v14

    invoke-virtual {v11, v12, v13, v14, v15}, Ljavafx/scene/transform/Transform;->transform(DD)Ljavafx/geometry/Point2D;

    move-result-object v11

    move-object v5, v11

    .line 1248
    .local v5, "p3":Ljavafx/geometry/Point2D;
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v14

    invoke-virtual {v11, v12, v13, v14, v15}, Ljavafx/scene/transform/Transform;->transform(DD)Ljavafx/geometry/Point2D;

    move-result-object v11

    move-object v6, v11

    .line 1250
    .local v6, "p4":Ljavafx/geometry/Point2D;
    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    move-object v14, v6

    invoke-static {v11, v12, v13, v14}, Lcom/sun/javafx/geometry/BoundsUtils;->createBoundingBox(Ljavafx/geometry/Point2D;Ljavafx/geometry/Point2D;Ljavafx/geometry/Point2D;Ljavafx/geometry/Point2D;)Ljavafx/geometry/Bounds;

    move-result-object v11

    move-object v1, v11

    .line 1261
    .end local v1    # "this":Ljavafx/scene/transform/Transform;
    .end local v3    # "p1":Ljavafx/geometry/Point2D;
    .end local v4    # "p2":Ljavafx/geometry/Point2D;
    .end local v5    # "p3":Ljavafx/geometry/Point2D;
    .end local v6    # "p4":Ljavafx/geometry/Point2D;
    :goto_0
    return-object v1

    .line 1252
    .restart local v1    # "this":Ljavafx/scene/transform/Transform;
    :cond_0
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v14

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMinZ()D

    move-result-wide v16

    invoke-virtual/range {v11 .. v17}, Ljavafx/scene/transform/Transform;->transform(DDD)Ljavafx/geometry/Point3D;

    move-result-object v11

    move-object v3, v11

    .line 1253
    .local v3, "p1":Ljavafx/geometry/Point3D;
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v14

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMaxZ()D

    move-result-wide v16

    invoke-virtual/range {v11 .. v17}, Ljavafx/scene/transform/Transform;->transform(DDD)Ljavafx/geometry/Point3D;

    move-result-object v11

    move-object v4, v11

    .line 1254
    .local v4, "p2":Ljavafx/geometry/Point3D;
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v14

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMinZ()D

    move-result-wide v16

    invoke-virtual/range {v11 .. v17}, Ljavafx/scene/transform/Transform;->transform(DDD)Ljavafx/geometry/Point3D;

    move-result-object v11

    move-object v5, v11

    .line 1255
    .local v5, "p3":Ljavafx/geometry/Point3D;
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v14

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMaxZ()D

    move-result-wide v16

    invoke-virtual/range {v11 .. v17}, Ljavafx/scene/transform/Transform;->transform(DDD)Ljavafx/geometry/Point3D;

    move-result-object v11

    move-object v6, v11

    .line 1256
    .local v6, "p4":Ljavafx/geometry/Point3D;
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v14

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMinZ()D

    move-result-wide v16

    invoke-virtual/range {v11 .. v17}, Ljavafx/scene/transform/Transform;->transform(DDD)Ljavafx/geometry/Point3D;

    move-result-object v11

    move-object v7, v11

    .line 1257
    .local v7, "p5":Ljavafx/geometry/Point3D;
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v14

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMaxZ()D

    move-result-wide v16

    invoke-virtual/range {v11 .. v17}, Ljavafx/scene/transform/Transform;->transform(DDD)Ljavafx/geometry/Point3D;

    move-result-object v11

    move-object v8, v11

    .line 1258
    .local v8, "p6":Ljavafx/geometry/Point3D;
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v14

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMinZ()D

    move-result-wide v16

    invoke-virtual/range {v11 .. v17}, Ljavafx/scene/transform/Transform;->transform(DDD)Ljavafx/geometry/Point3D;

    move-result-object v11

    move-object v9, v11

    .line 1259
    .local v9, "p7":Ljavafx/geometry/Point3D;
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v14

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMaxZ()D

    move-result-wide v16

    invoke-virtual/range {v11 .. v17}, Ljavafx/scene/transform/Transform;->transform(DDD)Ljavafx/geometry/Point3D;

    move-result-object v11

    move-object v10, v11

    .line 1261
    .local v10, "p8":Ljavafx/geometry/Point3D;
    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    invoke-static/range {v11 .. v18}, Lcom/sun/javafx/geometry/BoundsUtils;->createBoundingBox(Ljavafx/geometry/Point3D;Ljavafx/geometry/Point3D;Ljavafx/geometry/Point3D;Ljavafx/geometry/Point3D;Ljavafx/geometry/Point3D;Ljavafx/geometry/Point3D;Ljavafx/geometry/Point3D;Ljavafx/geometry/Point3D;)Ljavafx/geometry/Bounds;

    move-result-object v11

    move-object v1, v11

    goto/16 :goto_0
.end method

.method public transform(DD)Ljavafx/geometry/Point2D;
    .locals 17

    .prologue
    .line 1191
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/transform/Transform;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/transform/Transform;->ensureCanTransform2DPoint()V

    .line 1193
    new-instance v6, Ljavafx/geometry/Point2D;

    move-object/from16 v16, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v16

    move-object v8, v1

    .line 1194
    invoke-virtual {v8}, Ljavafx/scene/transform/Transform;->getMxx()D

    move-result-wide v8

    move-wide v10, v2

    mul-double/2addr v8, v10

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/transform/Transform;->getMxy()D

    move-result-wide v10

    move-wide v12, v4

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/transform/Transform;->getTx()D

    move-result-wide v10

    add-double/2addr v8, v10

    move-object v10, v1

    .line 1195
    invoke-virtual {v10}, Ljavafx/scene/transform/Transform;->getMyx()D

    move-result-wide v10

    move-wide v12, v2

    mul-double/2addr v10, v12

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/transform/Transform;->getMyy()D

    move-result-wide v12

    move-wide v14, v4

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/transform/Transform;->getTy()D

    move-result-wide v12

    add-double/2addr v10, v12

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v1, v6

    .end local v1    # "this":Ljavafx/scene/transform/Transform;
    return-object v1
.end method

.method public transform(Ljavafx/geometry/Point2D;)Ljavafx/geometry/Point2D;
    .locals 8

    .prologue
    .line 1208
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Transform;
    move-object v2, p1

    .local v2, "point":Ljavafx/geometry/Point2D;
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Ljavafx/scene/transform/Transform;->transform(DD)Ljavafx/geometry/Point2D;

    move-result-object v3

    move-object v1, v3

    .end local v1    # "this":Ljavafx/scene/transform/Transform;
    return-object v1
.end method

.method public transform(DDD)Ljavafx/geometry/Point3D;
    .locals 21

    .prologue
    .line 1220
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/transform/Transform;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-wide/from16 v6, p5

    .local v6, "z":D
    new-instance v8, Ljavafx/geometry/Point3D;

    move-object/from16 v20, v8

    move-object/from16 v8, v20

    move-object/from16 v9, v20

    move-object v10, v1

    .line 1221
    invoke-virtual {v10}, Ljavafx/scene/transform/Transform;->getMxx()D

    move-result-wide v10

    move-wide v12, v2

    mul-double/2addr v10, v12

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/transform/Transform;->getMxy()D

    move-result-wide v12

    move-wide v14, v4

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/transform/Transform;->getMxz()D

    move-result-wide v12

    move-wide v14, v6

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/transform/Transform;->getTx()D

    move-result-wide v12

    add-double/2addr v10, v12

    move-object v12, v1

    .line 1222
    invoke-virtual {v12}, Ljavafx/scene/transform/Transform;->getMyx()D

    move-result-wide v12

    move-wide v14, v2

    mul-double/2addr v12, v14

    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/transform/Transform;->getMyy()D

    move-result-wide v14

    move-wide/from16 v16, v4

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/transform/Transform;->getMyz()D

    move-result-wide v14

    move-wide/from16 v16, v6

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/transform/Transform;->getTy()D

    move-result-wide v14

    add-double/2addr v12, v14

    move-object v14, v1

    .line 1223
    invoke-virtual {v14}, Ljavafx/scene/transform/Transform;->getMzx()D

    move-result-wide v14

    move-wide/from16 v16, v2

    mul-double v14, v14, v16

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/transform/Transform;->getMzy()D

    move-result-wide v16

    move-wide/from16 v18, v4

    mul-double v16, v16, v18

    add-double v14, v14, v16

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/transform/Transform;->getMzz()D

    move-result-wide v16

    move-wide/from16 v18, v6

    mul-double v16, v16, v18

    add-double v14, v14, v16

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/transform/Transform;->getTz()D

    move-result-wide v16

    add-double v14, v14, v16

    invoke-direct/range {v9 .. v15}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v1, v8

    .end local v1    # "this":Ljavafx/scene/transform/Transform;
    return-object v1
.end method

.method public transform(Ljavafx/geometry/Point3D;)Ljavafx/geometry/Point3D;
    .locals 10

    .prologue
    .line 1234
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Transform;
    move-object v2, p1

    .local v2, "point":Ljavafx/geometry/Point3D;
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v6

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v8

    invoke-virtual/range {v3 .. v9}, Ljavafx/scene/transform/Transform;->transform(DDD)Ljavafx/geometry/Point3D;

    move-result-object v3

    move-object v1, v3

    .end local v1    # "this":Ljavafx/scene/transform/Transform;
    return-object v1
.end method

.method public transform2DPoints([DI[DII)V
    .locals 14

    .prologue
    .line 1351
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform;
    move-object v1, p1

    .local v1, "srcPts":[D
    move/from16 v2, p2

    .local v2, "srcOff":I
    move-object/from16 v3, p3

    .local v3, "dstPts":[D
    move/from16 v4, p4

    .local v4, "dstOff":I
    move/from16 v5, p5

    .local v5, "numPts":I
    move-object v6, v1

    if-eqz v6, :cond_0

    move-object v6, v3

    if-nez v6, :cond_1

    .line 1352
    :cond_0
    new-instance v6, Ljava/lang/NullPointerException;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    invoke-direct {v7}, Ljava/lang/NullPointerException;-><init>()V

    throw v6

    .line 1355
    :cond_1
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/transform/Transform;->isType2D()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1356
    new-instance v6, Ljava/lang/IllegalStateException;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    const-string v8, "Cannot transform 2D points with a 3D transform"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1361
    :cond_2
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move-object v9, v3

    move v10, v4

    move v11, v5

    const/4 v12, 0x2

    invoke-direct/range {v6 .. v12}, Ljavafx/scene/transform/Transform;->getFixedSrcOffset([DI[DIII)I

    move-result v6

    move v2, v6

    .line 1364
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move-object v9, v3

    move v10, v4

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Ljavafx/scene/transform/Transform;->transform2DPointsImpl([DI[DII)V

    .line 1365
    return-void
.end method

.method transform2DPointsImpl([DI[DII)V
    .locals 30

    .prologue
    .line 1273
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform;
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
    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/transform/Transform;->getMxx()D

    move-result-wide v22

    move-wide/from16 v6, v22

    .line 1274
    .local v6, "xx":D
    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/transform/Transform;->getMxy()D

    move-result-wide v22

    move-wide/from16 v8, v22

    .line 1275
    .local v8, "xy":D
    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/transform/Transform;->getTx()D

    move-result-wide v22

    move-wide/from16 v10, v22

    .line 1276
    .local v10, "tx":D
    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/transform/Transform;->getMyx()D

    move-result-wide v22

    move-wide/from16 v12, v22

    .line 1277
    .local v12, "yx":D
    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/transform/Transform;->getMyy()D

    move-result-wide v22

    move-wide/from16 v14, v22

    .line 1278
    .local v14, "yy":D
    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/transform/Transform;->getTy()D

    move-result-wide v22

    move-wide/from16 v16, v22

    .line 1280
    .local v16, "ty":D
    :goto_0
    add-int/lit8 v5, v5, -0x1

    move/from16 v22, v5

    if-ltz v22, :cond_0

    .line 1281
    move-object/from16 v22, v1

    move/from16 v23, v2

    add-int/lit8 v2, v2, 0x1

    aget-wide v22, v22, v23

    move-wide/from16 v18, v22

    .line 1282
    .local v18, "x":D
    move-object/from16 v22, v1

    move/from16 v23, v2

    add-int/lit8 v2, v2, 0x1

    aget-wide v22, v22, v23

    move-wide/from16 v20, v22

    .line 1284
    .local v20, "y":D
    move-object/from16 v22, v3

    move/from16 v23, v4

    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v24, v6

    move-wide/from16 v26, v18

    mul-double v24, v24, v26

    move-wide/from16 v26, v8

    move-wide/from16 v28, v20

    mul-double v26, v26, v28

    add-double v24, v24, v26

    move-wide/from16 v26, v10

    add-double v24, v24, v26

    aput-wide v24, v22, v23

    .line 1285
    move-object/from16 v22, v3

    move/from16 v23, v4

    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v24, v12

    move-wide/from16 v26, v18

    mul-double v24, v24, v26

    move-wide/from16 v26, v14

    move-wide/from16 v28, v20

    mul-double v26, v26, v28

    add-double v24, v24, v26

    move-wide/from16 v26, v16

    add-double v24, v24, v26

    aput-wide v24, v22, v23

    .line 1286
    goto :goto_0

    .line 1287
    .end local v18    # "x":D
    .end local v20    # "y":D
    :cond_0
    return-void
.end method

.method public transform3DPoints([DI[DII)V
    .locals 14

    .prologue
    .line 1393
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform;
    move-object v1, p1

    .local v1, "srcPts":[D
    move/from16 v2, p2

    .local v2, "srcOff":I
    move-object/from16 v3, p3

    .local v3, "dstPts":[D
    move/from16 v4, p4

    .local v4, "dstOff":I
    move/from16 v5, p5

    .local v5, "numPts":I
    move-object v6, v1

    if-eqz v6, :cond_0

    move-object v6, v3

    if-nez v6, :cond_1

    .line 1394
    :cond_0
    new-instance v6, Ljava/lang/NullPointerException;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    invoke-direct {v7}, Ljava/lang/NullPointerException;-><init>()V

    throw v6

    .line 1398
    :cond_1
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move-object v9, v3

    move v10, v4

    move v11, v5

    const/4 v12, 0x3

    invoke-direct/range {v6 .. v12}, Ljavafx/scene/transform/Transform;->getFixedSrcOffset([DI[DIII)I

    move-result v6

    move v2, v6

    .line 1401
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move-object v9, v3

    move v10, v4

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Ljavafx/scene/transform/Transform;->transform3DPointsImpl([DI[DII)V

    .line 1402
    return-void
.end method

.method transform3DPointsImpl([DI[DII)V
    .locals 44

    .prologue
    .line 1299
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform;
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
    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljavafx/scene/transform/Transform;->getMxx()D

    move-result-wide v36

    move-wide/from16 v6, v36

    .line 1300
    .local v6, "xx":D
    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljavafx/scene/transform/Transform;->getMxy()D

    move-result-wide v36

    move-wide/from16 v8, v36

    .line 1301
    .local v8, "xy":D
    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljavafx/scene/transform/Transform;->getMxz()D

    move-result-wide v36

    move-wide/from16 v10, v36

    .line 1302
    .local v10, "xz":D
    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljavafx/scene/transform/Transform;->getTx()D

    move-result-wide v36

    move-wide/from16 v12, v36

    .line 1303
    .local v12, "tx":D
    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljavafx/scene/transform/Transform;->getMyx()D

    move-result-wide v36

    move-wide/from16 v14, v36

    .line 1304
    .local v14, "yx":D
    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljavafx/scene/transform/Transform;->getMyy()D

    move-result-wide v36

    move-wide/from16 v16, v36

    .line 1305
    .local v16, "yy":D
    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljavafx/scene/transform/Transform;->getMyz()D

    move-result-wide v36

    move-wide/from16 v18, v36

    .line 1306
    .local v18, "yz":D
    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljavafx/scene/transform/Transform;->getTy()D

    move-result-wide v36

    move-wide/from16 v20, v36

    .line 1307
    .local v20, "ty":D
    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljavafx/scene/transform/Transform;->getMzx()D

    move-result-wide v36

    move-wide/from16 v22, v36

    .line 1308
    .local v22, "zx":D
    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljavafx/scene/transform/Transform;->getMzy()D

    move-result-wide v36

    move-wide/from16 v24, v36

    .line 1309
    .local v24, "zy":D
    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljavafx/scene/transform/Transform;->getMzz()D

    move-result-wide v36

    move-wide/from16 v26, v36

    .line 1310
    .local v26, "zz":D
    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljavafx/scene/transform/Transform;->getTz()D

    move-result-wide v36

    move-wide/from16 v28, v36

    .line 1312
    .local v28, "tz":D
    :goto_0
    add-int/lit8 v5, v5, -0x1

    move/from16 v36, v5

    if-ltz v36, :cond_0

    .line 1313
    move-object/from16 v36, v1

    move/from16 v37, v2

    add-int/lit8 v2, v2, 0x1

    aget-wide v36, v36, v37

    move-wide/from16 v30, v36

    .line 1314
    .local v30, "x":D
    move-object/from16 v36, v1

    move/from16 v37, v2

    add-int/lit8 v2, v2, 0x1

    aget-wide v36, v36, v37

    move-wide/from16 v32, v36

    .line 1315
    .local v32, "y":D
    move-object/from16 v36, v1

    move/from16 v37, v2

    add-int/lit8 v2, v2, 0x1

    aget-wide v36, v36, v37

    move-wide/from16 v34, v36

    .line 1317
    .local v34, "z":D
    move-object/from16 v36, v3

    move/from16 v37, v4

    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v38, v6

    move-wide/from16 v40, v30

    mul-double v38, v38, v40

    move-wide/from16 v40, v8

    move-wide/from16 v42, v32

    mul-double v40, v40, v42

    add-double v38, v38, v40

    move-wide/from16 v40, v10

    move-wide/from16 v42, v34

    mul-double v40, v40, v42

    add-double v38, v38, v40

    move-wide/from16 v40, v12

    add-double v38, v38, v40

    aput-wide v38, v36, v37

    .line 1318
    move-object/from16 v36, v3

    move/from16 v37, v4

    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v38, v14

    move-wide/from16 v40, v30

    mul-double v38, v38, v40

    move-wide/from16 v40, v16

    move-wide/from16 v42, v32

    mul-double v40, v40, v42

    add-double v38, v38, v40

    move-wide/from16 v40, v18

    move-wide/from16 v42, v34

    mul-double v40, v40, v42

    add-double v38, v38, v40

    move-wide/from16 v40, v20

    add-double v38, v38, v40

    aput-wide v38, v36, v37

    .line 1319
    move-object/from16 v36, v3

    move/from16 v37, v4

    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v38, v22

    move-wide/from16 v40, v30

    mul-double v38, v38, v40

    move-wide/from16 v40, v24

    move-wide/from16 v42, v32

    mul-double v40, v40, v42

    add-double v38, v38, v40

    move-wide/from16 v40, v26

    move-wide/from16 v42, v34

    mul-double v40, v40, v42

    add-double v38, v38, v40

    move-wide/from16 v40, v28

    add-double v38, v38, v40

    aput-wide v38, v36, v37

    .line 1320
    goto/16 :goto_0

    .line 1321
    .end local v30    # "x":D
    .end local v32    # "y":D
    .end local v34    # "z":D
    :cond_0
    return-void
.end method

.method protected transformChanged()V
    .locals 8

    .prologue
    .line 2034
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform;
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/scene/transform/Transform;->inverseCache:Ljava/lang/ref/SoftReference;

    .line 2035
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/transform/Transform;->impl_nodes:Lcom/sun/javafx/util/WeakReferenceQueue;

    invoke-virtual {v2}, Lcom/sun/javafx/util/WeakReferenceQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v2

    .line 2036
    .local v1, "iterator":Ljava/util/Iterator;
    :goto_0
    move-object v2, v1

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2037
    move-object v2, v1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/scene/Node;

    invoke-virtual {v2}, Ljavafx/scene/Node;->impl_transformsChanged()V

    goto :goto_0

    .line 2040
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/transform/Transform;->type2D:Ljavafx/scene/transform/Transform$LazyBooleanProperty;

    if-eqz v2, :cond_1

    .line 2041
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/transform/Transform;->type2D:Ljavafx/scene/transform/Transform$LazyBooleanProperty;

    invoke-virtual {v2}, Ljavafx/scene/transform/Transform$LazyBooleanProperty;->invalidate()V

    .line 2044
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/transform/Transform;->identity:Ljavafx/scene/transform/Transform$LazyBooleanProperty;

    if-eqz v2, :cond_2

    .line 2045
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/transform/Transform;->identity:Ljavafx/scene/transform/Transform$LazyBooleanProperty;

    invoke-virtual {v2}, Ljavafx/scene/transform/Transform$LazyBooleanProperty;->invalidate()V

    .line 2048
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/transform/Transform;->internalEventDispatcher:Lcom/sun/javafx/event/EventHandlerManager;

    if-eqz v2, :cond_3

    .line 2050
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/transform/Transform;->validate()V

    .line 2051
    move-object v2, v0

    new-instance v3, Ljavafx/scene/transform/TransformChangedEvent;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v0

    invoke-direct {v4, v5, v6}, Ljavafx/scene/transform/TransformChangedEvent;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;)V

    invoke-static {v2, v3}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 2053
    :cond_3
    return-void
.end method

.method public final type2DProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;
    .locals 6

    .prologue
    .line 520
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Transform;->type2D:Ljavafx/scene/transform/Transform$LazyBooleanProperty;

    if-nez v1, :cond_0

    .line 521
    move-object v1, v0

    new-instance v2, Ljavafx/scene/transform/Transform$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/transform/Transform$1;-><init>(Ljavafx/scene/transform/Transform;)V

    iput-object v2, v1, Ljavafx/scene/transform/Transform;->type2D:Ljavafx/scene/transform/Transform$LazyBooleanProperty;

    .line 539
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Transform;->type2D:Ljavafx/scene/transform/Transform$LazyBooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Transform;
    return-object v0
.end method

.method validate()V
    .locals 4

    .prologue
    .line 1989
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Transform;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Transform;->getMxx()D

    move-result-wide v2

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Transform;->getMxy()D

    move-result-wide v2

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Transform;->getMxz()D

    move-result-wide v2

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Transform;->getTx()D

    move-result-wide v2

    .line 1990
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Transform;->getMyx()D

    move-result-wide v2

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Transform;->getMyy()D

    move-result-wide v2

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Transform;->getMyz()D

    move-result-wide v2

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Transform;->getTy()D

    move-result-wide v2

    .line 1991
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Transform;->getMzx()D

    move-result-wide v2

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Transform;->getMzy()D

    move-result-wide v2

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Transform;->getMzz()D

    move-result-wide v2

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/transform/Transform;->getTz()D

    move-result-wide v2

    .line 1992
    return-void
.end method
