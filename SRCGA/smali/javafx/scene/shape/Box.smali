.class public Ljavafx/scene/shape/Box;
.super Ljavafx/scene/shape/Shape3D;
.source "Box.java"


# static fields
.field public static final DEFAULT_SIZE:D = 2.0


# instance fields
.field private depth:Ljavafx/beans/property/DoubleProperty;

.field private height:Ljavafx/beans/property/DoubleProperty;

.field private mesh:Ljavafx/scene/shape/TriangleMesh;

.field private width:Ljavafx/beans/property/DoubleProperty;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Box;
    move-object v1, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-direct/range {v1 .. v7}, Ljavafx/scene/shape/Box;-><init>(DDD)V

    .line 61
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 11

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Box;
    move-wide v1, p1

    .local v1, "width":D
    move-wide v3, p3

    .local v3, "height":D
    move-wide/from16 v5, p5

    .local v5, "depth":D
    move-object v7, v0

    invoke-direct {v7}, Ljavafx/scene/shape/Shape3D;-><init>()V

    .line 68
    move-object v7, v0

    move-wide v8, v1

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/shape/Box;->setWidth(D)V

    .line 69
    move-object v7, v0

    move-wide v8, v3

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/shape/Box;->setHeight(D)V

    .line 70
    move-object v7, v0

    move-wide v8, v5

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/shape/Box;->setDepth(D)V

    .line 71
    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/shape/Box;Lcom/sun/javafx/scene/DirtyBits;)V
    .locals 4

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/Box;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/javafx/scene/DirtyBits;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/shape/Box;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    return-void
.end method

.method static synthetic access$100(Ljavafx/scene/shape/Box;)V
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/Box;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/Box;->impl_geomChanged()V

    return-void
.end method

.method static synthetic access$200(Ljavafx/scene/shape/Box;Lcom/sun/javafx/scene/DirtyBits;)V
    .locals 4

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/Box;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/javafx/scene/DirtyBits;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/shape/Box;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    return-void
.end method

.method static synthetic access$300(Ljavafx/scene/shape/Box;)V
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/Box;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/Box;->impl_geomChanged()V

    return-void
.end method

.method static synthetic access$400(Ljavafx/scene/shape/Box;Lcom/sun/javafx/scene/DirtyBits;)V
    .locals 4

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/Box;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/javafx/scene/DirtyBits;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/shape/Box;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    return-void
.end method

.method static synthetic access$500(Ljavafx/scene/shape/Box;)V
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/Box;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/Box;->impl_geomChanged()V

    return-void
.end method

.method static createMesh(FFF)Ljavafx/scene/shape/TriangleMesh;
    .locals 16

    .prologue
    .line 398
    move/from16 v0, p0

    .local v0, "w":F
    move/from16 v1, p1

    .local v1, "h":F
    move/from16 v2, p2

    .local v2, "d":F
    move v11, v0

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    move v3, v11

    .line 399
    .local v3, "hw":F
    move v11, v1

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    move v4, v11

    .line 400
    .local v4, "hh":F
    move v11, v2

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    move v5, v11

    .line 402
    .local v5, "hd":F
    const/16 v11, 0x18

    new-array v11, v11, [F

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x0

    move v14, v3

    neg-float v14, v14

    aput v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x1

    move v14, v4

    neg-float v14, v14

    aput v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x2

    move v14, v5

    neg-float v14, v14

    aput v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x3

    move v14, v3

    aput v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x4

    move v14, v4

    neg-float v14, v14

    aput v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x5

    move v14, v5

    neg-float v14, v14

    aput v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x6

    move v14, v3

    aput v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x7

    move v14, v4

    aput v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/16 v13, 0x8

    move v14, v5

    neg-float v14, v14

    aput v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/16 v13, 0x9

    move v14, v3

    neg-float v14, v14

    aput v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/16 v13, 0xa

    move v14, v4

    aput v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/16 v13, 0xb

    move v14, v5

    neg-float v14, v14

    aput v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/16 v13, 0xc

    move v14, v3

    neg-float v14, v14

    aput v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/16 v13, 0xd

    move v14, v4

    neg-float v14, v14

    aput v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/16 v13, 0xe

    move v14, v5

    aput v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/16 v13, 0xf

    move v14, v3

    aput v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/16 v13, 0x10

    move v14, v4

    neg-float v14, v14

    aput v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/16 v13, 0x11

    move v14, v5

    aput v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/16 v13, 0x12

    move v14, v3

    aput v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/16 v13, 0x13

    move v14, v4

    aput v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/16 v13, 0x14

    move v14, v5

    aput v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/16 v13, 0x15

    move v14, v3

    neg-float v14, v14

    aput v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/16 v13, 0x16

    move v14, v4

    aput v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/16 v13, 0x17

    move v14, v5

    aput v14, v12, v13

    move-object v6, v11

    .line 412
    .local v6, "points":[F
    const/16 v11, 0x8

    new-array v11, v11, [F

    fill-array-data v11, :array_0

    move-object v7, v11

    .line 415
    .local v7, "texCoords":[F
    const/16 v11, 0xc

    new-array v11, v11, [I

    fill-array-data v11, :array_1

    move-object v8, v11

    .line 419
    .local v8, "faceSmoothingGroups":[I
    const/16 v11, 0x48

    new-array v11, v11, [I

    fill-array-data v11, :array_2

    move-object v9, v11

    .line 434
    .local v9, "faces":[I
    new-instance v11, Ljavafx/scene/shape/TriangleMesh;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x1

    invoke-direct {v12, v13}, Ljavafx/scene/shape/TriangleMesh;-><init>(Z)V

    move-object v10, v11

    .line 435
    .local v10, "mesh":Ljavafx/scene/shape/TriangleMesh;
    move-object v11, v10

    invoke-virtual {v11}, Ljavafx/scene/shape/TriangleMesh;->getPoints()Ljavafx/collections/ObservableFloatArray;

    move-result-object v11

    move-object v12, v6

    invoke-interface {v11, v12}, Ljavafx/collections/ObservableFloatArray;->setAll([F)V

    .line 436
    move-object v11, v10

    invoke-virtual {v11}, Ljavafx/scene/shape/TriangleMesh;->getTexCoords()Ljavafx/collections/ObservableFloatArray;

    move-result-object v11

    move-object v12, v7

    invoke-interface {v11, v12}, Ljavafx/collections/ObservableFloatArray;->setAll([F)V

    .line 437
    move-object v11, v10

    invoke-virtual {v11}, Ljavafx/scene/shape/TriangleMesh;->getFaces()Ljavafx/scene/shape/ObservableFaceArray;

    move-result-object v11

    move-object v12, v9

    invoke-interface {v11, v12}, Ljavafx/scene/shape/ObservableFaceArray;->setAll([I)V

    .line 438
    move-object v11, v10

    invoke-virtual {v11}, Ljavafx/scene/shape/TriangleMesh;->getFaceSmoothingGroups()Ljavafx/collections/ObservableIntegerArray;

    move-result-object v11

    move-object v12, v8

    invoke-interface {v11, v12}, Ljavafx/collections/ObservableIntegerArray;->setAll([I)V

    .line 440
    move-object v11, v10

    move-object v0, v11

    .end local v0    # "w":F
    return-object v0

    .line 412
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 415
    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 419
    :array_2
    .array-data 4
        0x0
        0x0
        0x2
        0x2
        0x1
        0x1
        0x2
        0x2
        0x0
        0x0
        0x3
        0x3
        0x1
        0x0
        0x6
        0x2
        0x5
        0x1
        0x6
        0x2
        0x1
        0x0
        0x2
        0x3
        0x5
        0x0
        0x7
        0x2
        0x4
        0x1
        0x7
        0x2
        0x5
        0x0
        0x6
        0x3
        0x4
        0x0
        0x3
        0x2
        0x0
        0x1
        0x3
        0x2
        0x4
        0x0
        0x7
        0x3
        0x3
        0x0
        0x6
        0x2
        0x2
        0x1
        0x6
        0x2
        0x3
        0x0
        0x7
        0x3
        0x4
        0x0
        0x1
        0x2
        0x5
        0x1
        0x1
        0x2
        0x4
        0x0
        0x0
        0x3
    .end array-data
.end method

.method private static generateKey(FFF)I
    .locals 6

    .prologue
    .line 444
    move v0, p0

    .local v0, "w":F
    move v1, p1

    .local v1, "h":F
    move v2, p2

    .local v2, "d":F
    const/4 v4, 0x3

    move v3, v4

    .line 445
    .local v3, "hash":I
    const/16 v4, 0x61

    move v5, v3

    mul-int/2addr v4, v5

    move v5, v0

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    add-int/2addr v4, v5

    move v3, v4

    .line 446
    const/16 v4, 0x61

    move v5, v3

    mul-int/2addr v4, v5

    move v5, v1

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    add-int/2addr v4, v5

    move v3, v4

    .line 447
    const/16 v4, 0x61

    move v5, v3

    mul-int/2addr v4, v5

    move v5, v2

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    add-int/2addr v4, v5

    move v3, v4

    .line 448
    move v4, v3

    move v0, v4

    .end local v0    # "w":F
    return v0
.end method


# virtual methods
.method public final depthProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 11

    .prologue
    .line 89
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/Box;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/Box;->depth:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 90
    move-object v2, v1

    new-instance v3, Ljavafx/scene/shape/Box$1;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v1

    move-object v6, v1

    const-string v7, "depth"

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-direct/range {v4 .. v9}, Ljavafx/scene/shape/Box$1;-><init>(Ljavafx/scene/shape/Box;Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v3, v2, Ljavafx/scene/shape/Box;->depth:Ljavafx/beans/property/DoubleProperty;

    .line 100
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/Box;->depth:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/shape/Box;
    return-object v1
.end method

.method public final getDepth()D
    .locals 4

    .prologue
    .line 85
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/Box;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/Box;->depth:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/shape/Box;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/shape/Box;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/Box;->depth:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getHeight()D
    .locals 4

    .prologue
    .line 115
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/Box;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/Box;->height:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/shape/Box;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/shape/Box;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/Box;->height:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getWidth()D
    .locals 4

    .prologue
    .line 145
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/Box;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/Box;->width:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/shape/Box;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/shape/Box;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/Box;->width:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final heightProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 11

    .prologue
    .line 119
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/Box;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/Box;->height:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 120
    move-object v2, v1

    new-instance v3, Ljavafx/scene/shape/Box$2;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v1

    move-object v6, v1

    const-string v7, "height"

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-direct/range {v4 .. v9}, Ljavafx/scene/shape/Box$2;-><init>(Ljavafx/scene/shape/Box;Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v3, v2, Ljavafx/scene/shape/Box;->height:Ljavafx/beans/property/DoubleProperty;

    .line 130
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/Box;->height:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/shape/Box;
    return-object v1
.end method

.method protected impl_computeContains(DD)Z
    .locals 15
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 228
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/Box;
    move-wide/from16 v2, p1

    .local v2, "localX":D
    move-wide/from16 v4, p3

    .local v4, "localY":D
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/shape/Box;->getWidth()D

    move-result-wide v10

    move-wide v6, v10

    .line 229
    .local v6, "w":D
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/shape/Box;->getHeight()D

    move-result-wide v10

    move-wide v8, v10

    .line 230
    .local v8, "h":D
    move-wide v10, v6

    neg-double v10, v10

    move-wide v12, v2

    cmpg-double v10, v10, v12

    if-gtz v10, :cond_0

    move-wide v10, v2

    move-wide v12, v6

    cmpg-double v10, v10, v12

    if-gtz v10, :cond_0

    move-wide v10, v8

    neg-double v10, v10

    move-wide v12, v4

    cmpg-double v10, v10, v12

    if-gtz v10, :cond_0

    move-wide v10, v4

    move-wide v12, v8

    cmpg-double v10, v10, v12

    if-gtz v10, :cond_0

    const/4 v10, 0x1

    :goto_0
    move v1, v10

    .end local v1    # "this":Ljavafx/scene/shape/Box;
    return v1

    .restart local v1    # "this":Ljavafx/scene/shape/Box;
    :cond_0
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public impl_computeGeomBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 17
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 204
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/shape/Box;
    move-object/from16 v2, p1

    .local v2, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object/from16 v3, p2

    .local v3, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/shape/Box;->getWidth()D

    move-result-wide v10

    double-to-float v10, v10

    move v4, v10

    .line 205
    .local v4, "w":F
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/shape/Box;->getHeight()D

    move-result-wide v10

    double-to-float v10, v10

    move v5, v10

    .line 206
    .local v5, "h":F
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/shape/Box;->getDepth()D

    move-result-wide v10

    double-to-float v10, v10

    move v6, v10

    .line 208
    .local v6, "d":F
    move v10, v4

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-ltz v10, :cond_0

    move v10, v5

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-ltz v10, :cond_0

    move v10, v6

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_1

    .line 209
    :cond_0
    move-object v10, v2

    invoke-virtual {v10}, Lcom/sun/javafx/geom/BaseBounds;->makeEmpty()Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v10

    move-object v1, v10

    .line 218
    .end local v1    # "this":Ljavafx/scene/shape/Box;
    :goto_0
    return-object v1

    .line 212
    .restart local v1    # "this":Ljavafx/scene/shape/Box;
    :cond_1
    move v10, v4

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v10, v11

    move v7, v10

    .line 213
    .local v7, "hw":F
    move v10, v5

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v10, v11

    move v8, v10

    .line 214
    .local v8, "hh":F
    move v10, v6

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v10, v11

    move v9, v10

    .line 216
    .local v9, "hd":F
    move-object v10, v2

    move v11, v7

    neg-float v11, v11

    move v12, v8

    neg-float v12, v12

    move v13, v9

    neg-float v13, v13

    move v14, v7

    move v15, v8

    move/from16 v16, v9

    invoke-virtual/range {v10 .. v16}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithNewBounds(FFFFFF)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v10

    move-object v2, v10

    .line 217
    move-object v10, v3

    move-object v11, v2

    move-object v12, v2

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/geom/transform/BaseTransform;->transform(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v10

    move-object v2, v10

    .line 218
    move-object v10, v2

    move-object v1, v10

    goto :goto_0
.end method

.method protected impl_computeIntersects(Lcom/sun/javafx/geom/PickRay;Lcom/sun/javafx/scene/input/PickResultChooser;)Z
    .locals 61
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 242
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/shape/Box;
    move-object/from16 v3, p1

    .local v3, "pickRay":Lcom/sun/javafx/geom/PickRay;
    move-object/from16 v4, p2

    .local v4, "pickResult":Lcom/sun/javafx/scene/input/PickResultChooser;
    move-object/from16 v50, v2

    invoke-virtual/range {v50 .. v50}, Ljavafx/scene/shape/Box;->getWidth()D

    move-result-wide v50

    move-wide/from16 v5, v50

    .line 243
    .local v5, "w":D
    move-object/from16 v50, v2

    invoke-virtual/range {v50 .. v50}, Ljavafx/scene/shape/Box;->getHeight()D

    move-result-wide v50

    move-wide/from16 v7, v50

    .line 244
    .local v7, "h":D
    move-object/from16 v50, v2

    invoke-virtual/range {v50 .. v50}, Ljavafx/scene/shape/Box;->getDepth()D

    move-result-wide v50

    move-wide/from16 v9, v50

    .line 245
    .local v9, "d":D
    move-wide/from16 v50, v5

    const-wide/high16 v52, 0x4000000000000000L    # 2.0

    div-double v50, v50, v52

    move-wide/from16 v11, v50

    .line 246
    .local v11, "hWidth":D
    move-wide/from16 v50, v7

    const-wide/high16 v52, 0x4000000000000000L    # 2.0

    div-double v50, v50, v52

    move-wide/from16 v13, v50

    .line 247
    .local v13, "hHeight":D
    move-wide/from16 v50, v9

    const-wide/high16 v52, 0x4000000000000000L    # 2.0

    div-double v50, v50, v52

    move-wide/from16 v15, v50

    .line 248
    .local v15, "hDepth":D
    move-object/from16 v50, v3

    invoke-virtual/range {v50 .. v50}, Lcom/sun/javafx/geom/PickRay;->getDirectionNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v50

    move-object/from16 v17, v50

    .line 249
    .local v17, "dir":Lcom/sun/javafx/geom/Vec3d;
    move-object/from16 v50, v17

    move-object/from16 v0, v50

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v50, v0

    const-wide/16 v52, 0x0

    cmpl-double v50, v50, v52

    if-nez v50, :cond_2

    const-wide/high16 v50, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    :goto_0
    move-wide/from16 v18, v50

    .line 250
    .local v18, "invDirX":D
    move-object/from16 v50, v17

    move-object/from16 v0, v50

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v50, v0

    const-wide/16 v52, 0x0

    cmpl-double v50, v50, v52

    if-nez v50, :cond_3

    const-wide/high16 v50, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    :goto_1
    move-wide/from16 v20, v50

    .line 251
    .local v20, "invDirY":D
    move-object/from16 v50, v17

    move-object/from16 v0, v50

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v50, v0

    const-wide/16 v52, 0x0

    cmpl-double v50, v50, v52

    if-nez v50, :cond_4

    const-wide/high16 v50, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    :goto_2
    move-wide/from16 v22, v50

    .line 252
    .local v22, "invDirZ":D
    move-object/from16 v50, v3

    invoke-virtual/range {v50 .. v50}, Lcom/sun/javafx/geom/PickRay;->getOriginNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v50

    move-object/from16 v24, v50

    .line 253
    .local v24, "origin":Lcom/sun/javafx/geom/Vec3d;
    move-object/from16 v50, v24

    move-object/from16 v0, v50

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v50, v0

    move-wide/from16 v25, v50

    .line 254
    .local v25, "originX":D
    move-object/from16 v50, v24

    move-object/from16 v0, v50

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v50, v0

    move-wide/from16 v27, v50

    .line 255
    .local v27, "originY":D
    move-object/from16 v50, v24

    move-object/from16 v0, v50

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v50, v0

    move-wide/from16 v29, v50

    .line 256
    .local v29, "originZ":D
    move-wide/from16 v50, v18

    const-wide/16 v52, 0x0

    cmpg-double v50, v50, v52

    if-gez v50, :cond_5

    const/16 v50, 0x1

    :goto_3
    move/from16 v31, v50

    .line 257
    .local v31, "signX":Z
    move-wide/from16 v50, v20

    const-wide/16 v52, 0x0

    cmpg-double v50, v50, v52

    if-gez v50, :cond_6

    const/16 v50, 0x1

    :goto_4
    move/from16 v32, v50

    .line 258
    .local v32, "signY":Z
    move-wide/from16 v50, v22

    const-wide/16 v52, 0x0

    cmpg-double v50, v50, v52

    if-gez v50, :cond_7

    const/16 v50, 0x1

    :goto_5
    move/from16 v33, v50

    .line 260
    .local v33, "signZ":Z
    const-wide/high16 v50, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    move-wide/from16 v34, v50

    .line 261
    .local v34, "t0":D
    const-wide/high16 v50, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    move-wide/from16 v36, v50

    .line 262
    .local v36, "t1":D
    const/16 v50, 0x30

    move/from16 v38, v50

    .line 263
    .local v38, "side0":C
    const/16 v50, 0x30

    move/from16 v39, v50

    .line 265
    .local v39, "side1":C
    move-wide/from16 v50, v18

    invoke-static/range {v50 .. v51}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v50

    if-eqz v50, :cond_9

    .line 266
    move-wide/from16 v50, v11

    move-wide/from16 v0, v50

    neg-double v0, v0

    move-wide/from16 v50, v0

    move-wide/from16 v52, v25

    cmpg-double v50, v50, v52

    if-gtz v50, :cond_8

    move-wide/from16 v50, v11

    move-wide/from16 v52, v25

    cmpl-double v50, v50, v52

    if-ltz v50, :cond_8

    .line 278
    :goto_6
    move-wide/from16 v50, v20

    invoke-static/range {v50 .. v51}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v50

    if-eqz v50, :cond_f

    .line 279
    move-wide/from16 v50, v13

    move-wide/from16 v0, v50

    neg-double v0, v0

    move-wide/from16 v50, v0

    move-wide/from16 v52, v27

    cmpg-double v50, v50, v52

    if-gtz v50, :cond_e

    move-wide/from16 v50, v13

    move-wide/from16 v52, v27

    cmpl-double v50, v50, v52

    if-ltz v50, :cond_e

    .line 301
    :cond_0
    :goto_7
    move-wide/from16 v50, v22

    invoke-static/range {v50 .. v51}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v50

    if-eqz v50, :cond_18

    .line 302
    move-wide/from16 v50, v15

    move-wide/from16 v0, v50

    neg-double v0, v0

    move-wide/from16 v50, v0

    move-wide/from16 v52, v29

    cmpg-double v50, v50, v52

    if-gtz v50, :cond_17

    move-wide/from16 v50, v15

    move-wide/from16 v52, v29

    cmpl-double v50, v50, v52

    if-ltz v50, :cond_17

    .line 324
    :cond_1
    :goto_8
    move/from16 v50, v38

    move/from16 v40, v50

    .line 325
    .local v40, "side":C
    move-wide/from16 v50, v34

    move-wide/from16 v41, v50

    .line 326
    .local v41, "t":D
    move-object/from16 v50, v2

    invoke-virtual/range {v50 .. v50}, Ljavafx/scene/shape/Box;->getCullFace()Ljavafx/scene/shape/CullFace;

    move-result-object v50

    move-object/from16 v43, v50

    .line 327
    .local v43, "cullFace":Ljavafx/scene/shape/CullFace;
    move-object/from16 v50, v3

    invoke-virtual/range {v50 .. v50}, Lcom/sun/javafx/geom/PickRay;->getNearClip()D

    move-result-wide v50

    move-wide/from16 v44, v50

    .line 328
    .local v44, "minDistance":D
    move-object/from16 v50, v3

    invoke-virtual/range {v50 .. v50}, Lcom/sun/javafx/geom/PickRay;->getFarClip()D

    move-result-wide v50

    move-wide/from16 v46, v50

    .line 330
    .local v46, "maxDistance":D
    move-wide/from16 v50, v34

    move-wide/from16 v52, v46

    cmpl-double v50, v50, v52

    if-lez v50, :cond_20

    .line 331
    const/16 v50, 0x0

    move/from16 v2, v50

    .line 392
    .end local v2    # "this":Ljavafx/scene/shape/Box;
    .end local v40    # "side":C
    .end local v41    # "t":D
    .end local v43    # "cullFace":Ljavafx/scene/shape/CullFace;
    .end local v44    # "minDistance":D
    .end local v46    # "maxDistance":D
    :goto_9
    return v2

    .line 249
    .end local v18    # "invDirX":D
    .end local v20    # "invDirY":D
    .end local v22    # "invDirZ":D
    .end local v24    # "origin":Lcom/sun/javafx/geom/Vec3d;
    .end local v25    # "originX":D
    .end local v27    # "originY":D
    .end local v29    # "originZ":D
    .end local v31    # "signX":Z
    .end local v32    # "signY":Z
    .end local v33    # "signZ":Z
    .end local v34    # "t0":D
    .end local v36    # "t1":D
    .end local v38    # "side0":C
    .end local v39    # "side1":C
    .restart local v2    # "this":Ljavafx/scene/shape/Box;
    :cond_2
    const-wide/high16 v50, 0x3ff0000000000000L    # 1.0

    move-object/from16 v52, v17

    move-object/from16 v0, v52

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v52, v0

    div-double v50, v50, v52

    goto/16 :goto_0

    .line 250
    .restart local v18    # "invDirX":D
    :cond_3
    const-wide/high16 v50, 0x3ff0000000000000L    # 1.0

    move-object/from16 v52, v17

    move-object/from16 v0, v52

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v52, v0

    div-double v50, v50, v52

    goto/16 :goto_1

    .line 251
    .restart local v20    # "invDirY":D
    :cond_4
    const-wide/high16 v50, 0x3ff0000000000000L    # 1.0

    move-object/from16 v52, v17

    move-object/from16 v0, v52

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v52, v0

    div-double v50, v50, v52

    goto/16 :goto_2

    .line 256
    .restart local v22    # "invDirZ":D
    .restart local v24    # "origin":Lcom/sun/javafx/geom/Vec3d;
    .restart local v25    # "originX":D
    .restart local v27    # "originY":D
    .restart local v29    # "originZ":D
    :cond_5
    const/16 v50, 0x0

    goto/16 :goto_3

    .line 257
    .restart local v31    # "signX":Z
    :cond_6
    const/16 v50, 0x0

    goto/16 :goto_4

    .line 258
    .restart local v32    # "signY":Z
    :cond_7
    const/16 v50, 0x0

    goto/16 :goto_5

    .line 269
    .restart local v33    # "signZ":Z
    .restart local v34    # "t0":D
    .restart local v36    # "t1":D
    .restart local v38    # "side0":C
    .restart local v39    # "side1":C
    :cond_8
    const/16 v50, 0x0

    move/from16 v2, v50

    goto :goto_9

    .line 272
    :cond_9
    move/from16 v50, v31

    if-eqz v50, :cond_a

    move-wide/from16 v50, v11

    :goto_a
    move-wide/from16 v52, v25

    sub-double v50, v50, v52

    move-wide/from16 v52, v18

    mul-double v50, v50, v52

    move-wide/from16 v34, v50

    .line 273
    move/from16 v50, v31

    if-eqz v50, :cond_b

    move-wide/from16 v50, v11

    move-wide/from16 v0, v50

    neg-double v0, v0

    move-wide/from16 v50, v0

    :goto_b
    move-wide/from16 v52, v25

    sub-double v50, v50, v52

    move-wide/from16 v52, v18

    mul-double v50, v50, v52

    move-wide/from16 v36, v50

    .line 274
    move/from16 v50, v31

    if-eqz v50, :cond_c

    const/16 v50, 0x58

    :goto_c
    move/from16 v38, v50

    .line 275
    move/from16 v50, v31

    if-eqz v50, :cond_d

    const/16 v50, 0x78

    :goto_d
    move/from16 v39, v50

    goto/16 :goto_6

    .line 272
    :cond_a
    move-wide/from16 v50, v11

    move-wide/from16 v0, v50

    neg-double v0, v0

    move-wide/from16 v50, v0

    goto :goto_a

    .line 273
    :cond_b
    move-wide/from16 v50, v11

    goto :goto_b

    .line 274
    :cond_c
    const/16 v50, 0x78

    goto :goto_c

    .line 275
    :cond_d
    const/16 v50, 0x58

    goto :goto_d

    .line 282
    :cond_e
    const/16 v50, 0x0

    move/from16 v2, v50

    goto/16 :goto_9

    .line 285
    :cond_f
    move/from16 v50, v32

    if-eqz v50, :cond_11

    move-wide/from16 v50, v13

    :goto_e
    move-wide/from16 v52, v27

    sub-double v50, v50, v52

    move-wide/from16 v52, v20

    mul-double v50, v50, v52

    move-wide/from16 v40, v50

    .line 286
    .local v40, "ty0":D
    move/from16 v50, v32

    if-eqz v50, :cond_12

    move-wide/from16 v50, v13

    move-wide/from16 v0, v50

    neg-double v0, v0

    move-wide/from16 v50, v0

    :goto_f
    move-wide/from16 v52, v27

    sub-double v50, v50, v52

    move-wide/from16 v52, v20

    mul-double v50, v50, v52

    move-wide/from16 v42, v50

    .line 288
    .local v42, "ty1":D
    move-wide/from16 v50, v34

    move-wide/from16 v52, v42

    cmpl-double v50, v50, v52

    if-gtz v50, :cond_10

    move-wide/from16 v50, v40

    move-wide/from16 v52, v36

    cmpl-double v50, v50, v52

    if-lez v50, :cond_13

    .line 289
    :cond_10
    const/16 v50, 0x0

    move/from16 v2, v50

    goto/16 :goto_9

    .line 285
    .end local v40    # "ty0":D
    .end local v42    # "ty1":D
    :cond_11
    move-wide/from16 v50, v13

    move-wide/from16 v0, v50

    neg-double v0, v0

    move-wide/from16 v50, v0

    goto :goto_e

    .line 286
    .restart local v40    # "ty0":D
    :cond_12
    move-wide/from16 v50, v13

    goto :goto_f

    .line 291
    .restart local v42    # "ty1":D
    :cond_13
    move-wide/from16 v50, v40

    move-wide/from16 v52, v34

    cmpl-double v50, v50, v52

    if-lez v50, :cond_14

    .line 292
    move/from16 v50, v32

    if-eqz v50, :cond_15

    const/16 v50, 0x59

    :goto_10
    move/from16 v38, v50

    .line 293
    move-wide/from16 v50, v40

    move-wide/from16 v34, v50

    .line 295
    :cond_14
    move-wide/from16 v50, v42

    move-wide/from16 v52, v36

    cmpg-double v50, v50, v52

    if-gez v50, :cond_0

    .line 296
    move/from16 v50, v32

    if-eqz v50, :cond_16

    const/16 v50, 0x79

    :goto_11
    move/from16 v39, v50

    .line 297
    move-wide/from16 v50, v42

    move-wide/from16 v36, v50

    goto/16 :goto_7

    .line 292
    :cond_15
    const/16 v50, 0x79

    goto :goto_10

    .line 296
    :cond_16
    const/16 v50, 0x59

    goto :goto_11

    .line 305
    .end local v40    # "ty0":D
    .end local v42    # "ty1":D
    :cond_17
    const/16 v50, 0x0

    move/from16 v2, v50

    goto/16 :goto_9

    .line 308
    :cond_18
    move/from16 v50, v33

    if-eqz v50, :cond_1a

    move-wide/from16 v50, v15

    :goto_12
    move-wide/from16 v52, v29

    sub-double v50, v50, v52

    move-wide/from16 v52, v22

    mul-double v50, v50, v52

    move-wide/from16 v40, v50

    .line 309
    .local v40, "tz0":D
    move/from16 v50, v33

    if-eqz v50, :cond_1b

    move-wide/from16 v50, v15

    move-wide/from16 v0, v50

    neg-double v0, v0

    move-wide/from16 v50, v0

    :goto_13
    move-wide/from16 v52, v29

    sub-double v50, v50, v52

    move-wide/from16 v52, v22

    mul-double v50, v50, v52

    move-wide/from16 v42, v50

    .line 311
    .local v42, "tz1":D
    move-wide/from16 v50, v34

    move-wide/from16 v52, v42

    cmpl-double v50, v50, v52

    if-gtz v50, :cond_19

    move-wide/from16 v50, v40

    move-wide/from16 v52, v36

    cmpl-double v50, v50, v52

    if-lez v50, :cond_1c

    .line 312
    :cond_19
    const/16 v50, 0x0

    move/from16 v2, v50

    goto/16 :goto_9

    .line 308
    .end local v40    # "tz0":D
    .end local v42    # "tz1":D
    :cond_1a
    move-wide/from16 v50, v15

    move-wide/from16 v0, v50

    neg-double v0, v0

    move-wide/from16 v50, v0

    goto :goto_12

    .line 309
    .restart local v40    # "tz0":D
    :cond_1b
    move-wide/from16 v50, v15

    goto :goto_13

    .line 314
    .restart local v42    # "tz1":D
    :cond_1c
    move-wide/from16 v50, v40

    move-wide/from16 v52, v34

    cmpl-double v50, v50, v52

    if-lez v50, :cond_1d

    .line 315
    move/from16 v50, v33

    if-eqz v50, :cond_1e

    const/16 v50, 0x5a

    :goto_14
    move/from16 v38, v50

    .line 316
    move-wide/from16 v50, v40

    move-wide/from16 v34, v50

    .line 318
    :cond_1d
    move-wide/from16 v50, v42

    move-wide/from16 v52, v36

    cmpg-double v50, v50, v52

    if-gez v50, :cond_1

    .line 319
    move/from16 v50, v33

    if-eqz v50, :cond_1f

    const/16 v50, 0x7a

    :goto_15
    move/from16 v39, v50

    .line 320
    move-wide/from16 v50, v42

    move-wide/from16 v36, v50

    goto/16 :goto_8

    .line 315
    :cond_1e
    const/16 v50, 0x7a

    goto :goto_14

    .line 319
    :cond_1f
    const/16 v50, 0x5a

    goto :goto_15

    .line 333
    .end local v42    # "tz1":D
    .local v40, "side":C
    .restart local v41    # "t":D
    .restart local v43    # "cullFace":Ljavafx/scene/shape/CullFace;
    .restart local v44    # "minDistance":D
    .restart local v46    # "maxDistance":D
    :cond_20
    move-wide/from16 v50, v34

    move-wide/from16 v52, v44

    cmpg-double v50, v50, v52

    if-ltz v50, :cond_21

    move-object/from16 v50, v43

    sget-object v51, Ljavafx/scene/shape/CullFace;->FRONT:Ljavafx/scene/shape/CullFace;

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    if-ne v0, v1, :cond_22

    .line 334
    :cond_21
    move-wide/from16 v50, v36

    move-wide/from16 v52, v44

    cmpl-double v50, v50, v52

    if-ltz v50, :cond_24

    move-wide/from16 v50, v36

    move-wide/from16 v52, v46

    cmpg-double v50, v50, v52

    if-gtz v50, :cond_24

    move-object/from16 v50, v43

    sget-object v51, Ljavafx/scene/shape/CullFace;->BACK:Ljavafx/scene/shape/CullFace;

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    if-eq v0, v1, :cond_24

    .line 335
    move/from16 v50, v39

    move/from16 v40, v50

    .line 336
    move-wide/from16 v50, v36

    move-wide/from16 v41, v50

    .line 342
    :cond_22
    move-wide/from16 v50, v41

    invoke-static/range {v50 .. v51}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v50

    if-nez v50, :cond_23

    move-wide/from16 v50, v41

    invoke-static/range {v50 .. v51}, Ljava/lang/Double;->isNaN(D)Z

    move-result v50

    if-eqz v50, :cond_25

    .line 344
    :cond_23
    const/16 v50, 0x0

    move/from16 v2, v50

    goto/16 :goto_9

    .line 338
    :cond_24
    const/16 v50, 0x0

    move/from16 v2, v50

    goto/16 :goto_9

    .line 347
    :cond_25
    move-object/from16 v50, v4

    if-eqz v50, :cond_26

    move-object/from16 v50, v4

    move-wide/from16 v51, v41

    invoke-virtual/range {v50 .. v52}, Lcom/sun/javafx/scene/input/PickResultChooser;->isCloser(D)Z

    move-result v50

    if-eqz v50, :cond_26

    .line 348
    move-object/from16 v50, v3

    move-wide/from16 v51, v41

    invoke-static/range {v50 .. v52}, Lcom/sun/javafx/scene/input/PickResultChooser;->computePoint(Lcom/sun/javafx/geom/PickRay;D)Ljavafx/geometry/Point3D;

    move-result-object v50

    move-object/from16 v48, v50

    .line 350
    .local v48, "point":Ljavafx/geometry/Point3D;
    const/16 v50, 0x0

    move-object/from16 v49, v50

    .line 352
    .local v49, "txtCoords":Ljavafx/geometry/Point2D;
    move/from16 v50, v40

    sparse-switch v50, :sswitch_data_0

    .line 386
    const/16 v50, 0x0

    move/from16 v2, v50

    goto/16 :goto_9

    .line 354
    :sswitch_0
    new-instance v50, Ljavafx/geometry/Point2D;

    move-object/from16 v60, v50

    move-object/from16 v50, v60

    move-object/from16 v51, v60

    const-wide/high16 v52, 0x3fe0000000000000L    # 0.5

    move-object/from16 v54, v48

    .line 355
    invoke-virtual/range {v54 .. v54}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v54

    move-wide/from16 v56, v9

    div-double v54, v54, v56

    sub-double v52, v52, v54

    const-wide/high16 v54, 0x3fe0000000000000L    # 0.5

    move-object/from16 v56, v48

    .line 356
    invoke-virtual/range {v56 .. v56}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v56

    move-wide/from16 v58, v7

    div-double v56, v56, v58

    add-double v54, v54, v56

    invoke-direct/range {v51 .. v55}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object/from16 v49, v50

    .line 389
    :goto_16
    move-object/from16 v50, v4

    move-object/from16 v51, v2

    move-wide/from16 v52, v41

    const/16 v54, -0x1

    move-object/from16 v55, v48

    move-object/from16 v56, v49

    invoke-virtual/range {v50 .. v56}, Lcom/sun/javafx/scene/input/PickResultChooser;->offer(Ljavafx/scene/Node;DILjavafx/geometry/Point3D;Ljavafx/geometry/Point2D;)Z

    move-result v50

    .line 392
    .end local v48    # "point":Ljavafx/geometry/Point3D;
    .end local v49    # "txtCoords":Ljavafx/geometry/Point2D;
    :cond_26
    const/16 v50, 0x1

    move/from16 v2, v50

    goto/16 :goto_9

    .line 359
    .restart local v48    # "point":Ljavafx/geometry/Point3D;
    .restart local v49    # "txtCoords":Ljavafx/geometry/Point2D;
    :sswitch_1
    new-instance v50, Ljavafx/geometry/Point2D;

    move-object/from16 v60, v50

    move-object/from16 v50, v60

    move-object/from16 v51, v60

    const-wide/high16 v52, 0x3fe0000000000000L    # 0.5

    move-object/from16 v54, v48

    .line 360
    invoke-virtual/range {v54 .. v54}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v54

    move-wide/from16 v56, v9

    div-double v54, v54, v56

    add-double v52, v52, v54

    const-wide/high16 v54, 0x3fe0000000000000L    # 0.5

    move-object/from16 v56, v48

    .line 361
    invoke-virtual/range {v56 .. v56}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v56

    move-wide/from16 v58, v7

    div-double v56, v56, v58

    add-double v54, v54, v56

    invoke-direct/range {v51 .. v55}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object/from16 v49, v50

    .line 362
    goto :goto_16

    .line 364
    :sswitch_2
    new-instance v50, Ljavafx/geometry/Point2D;

    move-object/from16 v60, v50

    move-object/from16 v50, v60

    move-object/from16 v51, v60

    const-wide/high16 v52, 0x3fe0000000000000L    # 0.5

    move-object/from16 v54, v48

    .line 365
    invoke-virtual/range {v54 .. v54}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v54

    move-wide/from16 v56, v5

    div-double v54, v54, v56

    add-double v52, v52, v54

    const-wide/high16 v54, 0x3fe0000000000000L    # 0.5

    move-object/from16 v56, v48

    .line 366
    invoke-virtual/range {v56 .. v56}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v56

    move-wide/from16 v58, v9

    div-double v56, v56, v58

    sub-double v54, v54, v56

    invoke-direct/range {v51 .. v55}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object/from16 v49, v50

    .line 367
    goto :goto_16

    .line 369
    :sswitch_3
    new-instance v50, Ljavafx/geometry/Point2D;

    move-object/from16 v60, v50

    move-object/from16 v50, v60

    move-object/from16 v51, v60

    const-wide/high16 v52, 0x3fe0000000000000L    # 0.5

    move-object/from16 v54, v48

    .line 370
    invoke-virtual/range {v54 .. v54}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v54

    move-wide/from16 v56, v5

    div-double v54, v54, v56

    add-double v52, v52, v54

    const-wide/high16 v54, 0x3fe0000000000000L    # 0.5

    move-object/from16 v56, v48

    .line 371
    invoke-virtual/range {v56 .. v56}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v56

    move-wide/from16 v58, v9

    div-double v56, v56, v58

    add-double v54, v54, v56

    invoke-direct/range {v51 .. v55}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object/from16 v49, v50

    .line 372
    goto/16 :goto_16

    .line 374
    :sswitch_4
    new-instance v50, Ljavafx/geometry/Point2D;

    move-object/from16 v60, v50

    move-object/from16 v50, v60

    move-object/from16 v51, v60

    const-wide/high16 v52, 0x3fe0000000000000L    # 0.5

    move-object/from16 v54, v48

    .line 375
    invoke-virtual/range {v54 .. v54}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v54

    move-wide/from16 v56, v5

    div-double v54, v54, v56

    add-double v52, v52, v54

    const-wide/high16 v54, 0x3fe0000000000000L    # 0.5

    move-object/from16 v56, v48

    .line 376
    invoke-virtual/range {v56 .. v56}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v56

    move-wide/from16 v58, v7

    div-double v56, v56, v58

    add-double v54, v54, v56

    invoke-direct/range {v51 .. v55}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object/from16 v49, v50

    .line 377
    goto/16 :goto_16

    .line 379
    :sswitch_5
    new-instance v50, Ljavafx/geometry/Point2D;

    move-object/from16 v60, v50

    move-object/from16 v50, v60

    move-object/from16 v51, v60

    const-wide/high16 v52, 0x3fe0000000000000L    # 0.5

    move-object/from16 v54, v48

    .line 380
    invoke-virtual/range {v54 .. v54}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v54

    move-wide/from16 v56, v5

    div-double v54, v54, v56

    sub-double v52, v52, v54

    const-wide/high16 v54, 0x3fe0000000000000L    # 0.5

    move-object/from16 v56, v48

    .line 381
    invoke-virtual/range {v56 .. v56}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v56

    move-wide/from16 v58, v7

    div-double v56, v56, v58

    add-double v54, v54, v56

    invoke-direct/range {v51 .. v55}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object/from16 v49, v50

    .line 382
    goto/16 :goto_16

    .line 352
    :sswitch_data_0
    .sparse-switch
        0x58 -> :sswitch_1
        0x59 -> :sswitch_3
        0x5a -> :sswitch_5
        0x78 -> :sswitch_0
        0x79 -> :sswitch_2
        0x7a -> :sswitch_4
    .end sparse-switch
.end method

.method protected impl_createPeer()Lcom/sun/javafx/sg/prism/NGNode;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Box;
    new-instance v1, Lcom/sun/javafx/sg/prism/NGBox;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/javafx/sg/prism/NGBox;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Box;
    return-object v0
.end method

.method public impl_updatePeer()V
    .locals 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 178
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/Box;
    move-object v6, v1

    invoke-super {v6}, Ljavafx/scene/shape/Shape3D;->impl_updatePeer()V

    .line 179
    move-object v6, v1

    sget-object v7, Lcom/sun/javafx/scene/DirtyBits;->MESH_GEOM:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v6, v7}, Ljavafx/scene/shape/Box;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 180
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/shape/Box;->impl_getPeer()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v6

    check-cast v6, Lcom/sun/javafx/sg/prism/NGBox;

    move-object v2, v6

    .line 181
    .local v2, "peer":Lcom/sun/javafx/sg/prism/NGBox;
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/shape/Box;->getWidth()D

    move-result-wide v6

    double-to-float v6, v6

    move v3, v6

    .line 182
    .local v3, "w":F
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/shape/Box;->getHeight()D

    move-result-wide v6

    double-to-float v6, v6

    move v4, v6

    .line 183
    .local v4, "h":F
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/shape/Box;->getDepth()D

    move-result-wide v6

    double-to-float v6, v6

    move v5, v6

    .line 184
    .local v5, "d":F
    move v6, v3

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_0

    move v6, v4

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_0

    move v6, v5

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    .line 185
    :cond_0
    move-object v6, v2

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sun/javafx/sg/prism/NGBox;->updateMesh(Lcom/sun/javafx/sg/prism/NGTriangleMesh;)V

    .line 195
    .end local v2    # "peer":Lcom/sun/javafx/sg/prism/NGBox;
    .end local v3    # "w":F
    .end local v4    # "h":F
    .end local v5    # "d":F
    :cond_1
    :goto_0
    return-void

    .line 187
    .restart local v2    # "peer":Lcom/sun/javafx/sg/prism/NGBox;
    .restart local v3    # "w":F
    .restart local v4    # "h":F
    .restart local v5    # "d":F
    :cond_2
    move-object v6, v1

    iget v6, v6, Ljavafx/scene/shape/Box;->key:I

    if-nez v6, :cond_3

    .line 188
    move-object v6, v1

    move v7, v3

    move v8, v4

    move v9, v5

    invoke-static {v7, v8, v9}, Ljavafx/scene/shape/Box;->generateKey(FFF)I

    move-result v7

    iput v7, v6, Ljavafx/scene/shape/Box;->key:I

    .line 190
    :cond_3
    move-object v6, v1

    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/shape/Box;->manager:Ljavafx/scene/shape/PredefinedMeshManager;

    move v8, v3

    move v9, v4

    move v10, v5

    move-object v11, v1

    iget v11, v11, Ljavafx/scene/shape/Box;->key:I

    invoke-virtual {v7, v8, v9, v10, v11}, Ljavafx/scene/shape/PredefinedMeshManager;->getBoxMesh(FFFI)Ljavafx/scene/shape/TriangleMesh;

    move-result-object v7

    iput-object v7, v6, Ljavafx/scene/shape/Box;->mesh:Ljavafx/scene/shape/TriangleMesh;

    .line 191
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/shape/Box;->mesh:Ljavafx/scene/shape/TriangleMesh;

    invoke-virtual {v6}, Ljavafx/scene/shape/TriangleMesh;->impl_updatePG()V

    .line 192
    move-object v6, v2

    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/shape/Box;->mesh:Ljavafx/scene/shape/TriangleMesh;

    invoke-virtual {v7}, Ljavafx/scene/shape/TriangleMesh;->impl_getPGTriangleMesh()Lcom/sun/javafx/sg/prism/NGTriangleMesh;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sun/javafx/sg/prism/NGBox;->updateMesh(Lcom/sun/javafx/sg/prism/NGTriangleMesh;)V

    goto :goto_0
.end method

.method public final setDepth(D)V
    .locals 7

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Box;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/shape/Box;->depthProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 82
    return-void
.end method

.method public final setHeight(D)V
    .locals 7

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Box;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/shape/Box;->heightProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 112
    return-void
.end method

.method public final setWidth(D)V
    .locals 7

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Box;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/shape/Box;->widthProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 142
    return-void
.end method

.method public final widthProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 11

    .prologue
    .line 149
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/Box;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/Box;->width:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 150
    move-object v2, v1

    new-instance v3, Ljavafx/scene/shape/Box$3;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v1

    move-object v6, v1

    const-string v7, "width"

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-direct/range {v4 .. v9}, Ljavafx/scene/shape/Box$3;-><init>(Ljavafx/scene/shape/Box;Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v3, v2, Ljavafx/scene/shape/Box;->width:Ljavafx/beans/property/DoubleProperty;

    .line 160
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/Box;->width:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/shape/Box;
    return-object v1
.end method
