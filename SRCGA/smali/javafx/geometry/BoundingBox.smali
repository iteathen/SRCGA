.class public Ljavafx/geometry/BoundingBox;
.super Ljavafx/geometry/Bounds;
.source "BoundingBox.java"


# instance fields
.field private hash:I


# direct methods
.method public constructor <init>(DDDD)V
    .locals 23
    .param p1    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "minX"
        .end annotation
    .end param
    .param p3    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "minY"
        .end annotation
    .end param
    .param p5    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "width"
        .end annotation
    .end param
    .param p7    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "height"
        .end annotation
    .end param

    .prologue
    .line 63
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/geometry/BoundingBox;
    move-wide/from16 v1, p1

    .local v1, "minX":D
    move-wide/from16 v3, p3

    .local v3, "minY":D
    move-wide/from16 v5, p5

    .local v5, "width":D
    move-wide/from16 v7, p7

    .local v7, "height":D
    move-object v9, v0

    move-wide v10, v1

    move-wide v12, v3

    const-wide/16 v14, 0x0

    move-wide/from16 v16, v5

    move-wide/from16 v18, v7

    const-wide/16 v20, 0x0

    invoke-direct/range {v9 .. v21}, Ljavafx/geometry/Bounds;-><init>(DDDDDD)V

    .line 40
    move-object v9, v0

    const/4 v10, 0x0

    iput v10, v9, Ljavafx/geometry/BoundingBox;->hash:I

    .line 64
    return-void
.end method

.method public constructor <init>(DDDDDD)V
    .locals 27
    .param p1    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "minX"
        .end annotation
    .end param
    .param p3    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "minY"
        .end annotation
    .end param
    .param p5    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "minZ"
        .end annotation
    .end param
    .param p7    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "width"
        .end annotation
    .end param
    .param p9    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "height"
        .end annotation
    .end param
    .param p11    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "depth"
        .end annotation
    .end param

    .prologue
    .line 52
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/geometry/BoundingBox;
    move-wide/from16 v1, p1

    .local v1, "minX":D
    move-wide/from16 v3, p3

    .local v3, "minY":D
    move-wide/from16 v5, p5

    .local v5, "minZ":D
    move-wide/from16 v7, p7

    .local v7, "width":D
    move-wide/from16 v9, p9

    .local v9, "height":D
    move-wide/from16 v11, p11

    .local v11, "depth":D
    move-object v13, v0

    move-wide v14, v1

    move-wide/from16 v16, v3

    move-wide/from16 v18, v5

    move-wide/from16 v20, v7

    move-wide/from16 v22, v9

    move-wide/from16 v24, v11

    invoke-direct/range {v13 .. v25}, Ljavafx/geometry/Bounds;-><init>(DDDDDD)V

    .line 40
    move-object v13, v0

    const/4 v14, 0x0

    iput v14, v13, Ljavafx/geometry/BoundingBox;->hash:I

    .line 53
    return-void
.end method


# virtual methods
.method public contains(DD)Z
    .locals 13

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/BoundingBox;
    move-wide v1, p1

    .local v1, "x":D
    move-wide/from16 v3, p3

    .local v3, "y":D
    move-object v5, v0

    move-wide v6, v1

    move-wide v8, v3

    const-wide/16 v10, 0x0

    invoke-virtual/range {v5 .. v11}, Ljavafx/geometry/BoundingBox;->contains(DDD)Z

    move-result v5

    move v0, v5

    .end local v0    # "this":Ljavafx/geometry/BoundingBox;
    return v0
.end method

.method public contains(DDD)Z
    .locals 13

    .prologue
    .line 105
    move-object v1, p0

    .local v1, "this":Ljavafx/geometry/BoundingBox;
    move-wide v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-wide/from16 v6, p5

    .local v6, "z":D
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/geometry/BoundingBox;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x0

    move v1, v8

    .line 107
    .end local v1    # "this":Ljavafx/geometry/BoundingBox;
    :goto_0
    return v1

    .line 106
    .restart local v1    # "this":Ljavafx/geometry/BoundingBox;
    :cond_0
    move-wide v8, v2

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/geometry/BoundingBox;->getMinX()D

    move-result-wide v10

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_1

    move-wide v8, v2

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/geometry/BoundingBox;->getMaxX()D

    move-result-wide v10

    cmpg-double v8, v8, v10

    if-gtz v8, :cond_1

    move-wide v8, v4

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/geometry/BoundingBox;->getMinY()D

    move-result-wide v10

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_1

    move-wide v8, v4

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/geometry/BoundingBox;->getMaxY()D

    move-result-wide v10

    cmpg-double v8, v8, v10

    if-gtz v8, :cond_1

    move-wide v8, v6

    move-object v10, v1

    .line 107
    invoke-virtual {v10}, Ljavafx/geometry/BoundingBox;->getMinZ()D

    move-result-wide v10

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_1

    move-wide v8, v6

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/geometry/BoundingBox;->getMaxZ()D

    move-result-wide v10

    cmpg-double v8, v8, v10

    if-gtz v8, :cond_1

    const/4 v8, 0x1

    :goto_1
    move v1, v8

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public contains(DDDD)Z
    .locals 17

    .prologue
    .line 125
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/geometry/BoundingBox;
    move-wide/from16 v1, p1

    .local v1, "x":D
    move-wide/from16 v3, p3

    .local v3, "y":D
    move-wide/from16 v5, p5

    .local v5, "w":D
    move-wide/from16 v7, p7

    .local v7, "h":D
    move-object v9, v0

    move-wide v10, v1

    move-wide v12, v3

    invoke-virtual {v9, v10, v11, v12, v13}, Ljavafx/geometry/BoundingBox;->contains(DD)Z

    move-result v9

    if-eqz v9, :cond_0

    move-object v9, v0

    move-wide v10, v1

    move-wide v12, v5

    add-double/2addr v10, v12

    move-wide v12, v3

    move-wide v14, v7

    add-double/2addr v12, v14

    invoke-virtual {v9, v10, v11, v12, v13}, Ljavafx/geometry/BoundingBox;->contains(DD)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    :goto_0
    move v0, v9

    .end local v0    # "this":Ljavafx/geometry/BoundingBox;
    return v0

    .restart local v0    # "this":Ljavafx/geometry/BoundingBox;
    :cond_0
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public contains(DDDDDD)Z
    .locals 23

    .prologue
    .line 135
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/geometry/BoundingBox;
    move-wide/from16 v1, p1

    .local v1, "x":D
    move-wide/from16 v3, p3

    .local v3, "y":D
    move-wide/from16 v5, p5

    .local v5, "z":D
    move-wide/from16 v7, p7

    .local v7, "w":D
    move-wide/from16 v9, p9

    .local v9, "h":D
    move-wide/from16 v11, p11

    .local v11, "d":D
    move-object v13, v0

    move-wide v14, v1

    move-wide/from16 v16, v3

    move-wide/from16 v18, v5

    invoke-virtual/range {v13 .. v19}, Ljavafx/geometry/BoundingBox;->contains(DDD)Z

    move-result v13

    if-eqz v13, :cond_0

    move-object v13, v0

    move-wide v14, v1

    move-wide/from16 v16, v7

    add-double v14, v14, v16

    move-wide/from16 v16, v3

    move-wide/from16 v18, v9

    add-double v16, v16, v18

    move-wide/from16 v18, v5

    move-wide/from16 v20, v11

    add-double v18, v18, v20

    invoke-virtual/range {v13 .. v19}, Ljavafx/geometry/BoundingBox;->contains(DDD)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v13, 0x1

    :goto_0
    move v0, v13

    .end local v0    # "this":Ljavafx/geometry/BoundingBox;
    return v0

    .restart local v0    # "this":Ljavafx/geometry/BoundingBox;
    :cond_0
    const/4 v13, 0x0

    goto :goto_0
.end method

.method public contains(Ljavafx/geometry/Bounds;)Z
    .locals 16

    .prologue
    .line 115
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/geometry/BoundingBox;
    move-object/from16 v2, p1

    .local v2, "b":Ljavafx/geometry/Bounds;
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/geometry/Bounds;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x0

    move v1, v3

    .line 116
    .end local v1    # "this":Ljavafx/geometry/BoundingBox;
    :goto_0
    return v1

    .restart local v1    # "this":Ljavafx/geometry/BoundingBox;
    :cond_1
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v6

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getMinZ()D

    move-result-wide v8

    move-object v10, v2

    .line 117
    invoke-virtual {v10}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v10

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getDepth()D

    move-result-wide v14

    .line 116
    invoke-virtual/range {v3 .. v15}, Ljavafx/geometry/BoundingBox;->contains(DDDDDD)Z

    move-result v3

    move v1, v3

    goto :goto_0
.end method

.method public contains(Ljavafx/geometry/Point2D;)Z
    .locals 10

    .prologue
    .line 79
    move-object v1, p0

    .local v1, "this":Ljavafx/geometry/BoundingBox;
    move-object v2, p1

    .local v2, "p":Ljavafx/geometry/Point2D;
    move-object v3, v2

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move v1, v3

    .line 80
    .end local v1    # "this":Ljavafx/geometry/BoundingBox;
    :goto_0
    return v1

    .restart local v1    # "this":Ljavafx/geometry/BoundingBox;
    :cond_0
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    invoke-virtual/range {v3 .. v9}, Ljavafx/geometry/BoundingBox;->contains(DDD)Z

    move-result v3

    move v1, v3

    goto :goto_0
.end method

.method public contains(Ljavafx/geometry/Point3D;)Z
    .locals 10

    .prologue
    .line 88
    move-object v1, p0

    .local v1, "this":Ljavafx/geometry/BoundingBox;
    move-object v2, p1

    .local v2, "p":Ljavafx/geometry/Point3D;
    move-object v3, v2

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move v1, v3

    .line 89
    .end local v1    # "this":Ljavafx/geometry/BoundingBox;
    :goto_0
    return v1

    .restart local v1    # "this":Ljavafx/geometry/BoundingBox;
    :cond_0
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

    invoke-virtual/range {v3 .. v9}, Ljavafx/geometry/BoundingBox;->contains(DDD)Z

    move-result v3

    move v1, v3

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    .line 175
    move-object v1, p0

    .local v1, "this":Ljavafx/geometry/BoundingBox;
    move-object v2, p1

    .local v2, "obj":Ljava/lang/Object;
    move-object v4, v2

    move-object v5, v1

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    move v1, v4

    .line 184
    .end local v1    # "this":Ljavafx/geometry/BoundingBox;
    :goto_0
    return v1

    .line 176
    .restart local v1    # "this":Ljavafx/geometry/BoundingBox;
    :cond_0
    move-object v4, v2

    instance-of v4, v4, Ljavafx/geometry/BoundingBox;

    if-eqz v4, :cond_2

    .line 177
    move-object v4, v2

    check-cast v4, Ljavafx/geometry/BoundingBox;

    move-object v3, v4

    .line 178
    .local v3, "other":Ljavafx/geometry/BoundingBox;
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/geometry/BoundingBox;->getMinX()D

    move-result-wide v4

    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/geometry/BoundingBox;->getMinX()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    move-object v4, v1

    .line 179
    invoke-virtual {v4}, Ljavafx/geometry/BoundingBox;->getMinY()D

    move-result-wide v4

    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/geometry/BoundingBox;->getMinY()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    move-object v4, v1

    .line 180
    invoke-virtual {v4}, Ljavafx/geometry/BoundingBox;->getMinZ()D

    move-result-wide v4

    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/geometry/BoundingBox;->getMinZ()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    move-object v4, v1

    .line 181
    invoke-virtual {v4}, Ljavafx/geometry/BoundingBox;->getWidth()D

    move-result-wide v4

    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/geometry/BoundingBox;->getWidth()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    move-object v4, v1

    .line 182
    invoke-virtual {v4}, Ljavafx/geometry/BoundingBox;->getHeight()D

    move-result-wide v4

    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/geometry/BoundingBox;->getHeight()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    move-object v4, v1

    .line 183
    invoke-virtual {v4}, Ljavafx/geometry/BoundingBox;->getDepth()D

    move-result-wide v4

    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/geometry/BoundingBox;->getDepth()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    move v1, v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 184
    .end local v3    # "other":Ljavafx/geometry/BoundingBox;
    :cond_2
    const/4 v4, 0x0

    move v1, v4

    goto :goto_0
.end method

.method public hashCode()I
    .locals 10

    .prologue
    .line 192
    move-object v1, p0

    .local v1, "this":Ljavafx/geometry/BoundingBox;
    move-object v4, v1

    iget v4, v4, Ljavafx/geometry/BoundingBox;->hash:I

    if-nez v4, :cond_0

    .line 193
    const-wide/16 v4, 0x7

    move-wide v2, v4

    .line 194
    .local v2, "bits":J
    const-wide/16 v4, 0x1f

    move-wide v6, v2

    mul-long/2addr v4, v6

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/geometry/BoundingBox;->getMinX()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    add-long/2addr v4, v6

    move-wide v2, v4

    .line 195
    const-wide/16 v4, 0x1f

    move-wide v6, v2

    mul-long/2addr v4, v6

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/geometry/BoundingBox;->getMinY()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    add-long/2addr v4, v6

    move-wide v2, v4

    .line 196
    const-wide/16 v4, 0x1f

    move-wide v6, v2

    mul-long/2addr v4, v6

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/geometry/BoundingBox;->getMinZ()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    add-long/2addr v4, v6

    move-wide v2, v4

    .line 197
    const-wide/16 v4, 0x1f

    move-wide v6, v2

    mul-long/2addr v4, v6

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/geometry/BoundingBox;->getWidth()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    add-long/2addr v4, v6

    move-wide v2, v4

    .line 198
    const-wide/16 v4, 0x1f

    move-wide v6, v2

    mul-long/2addr v4, v6

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/geometry/BoundingBox;->getHeight()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    add-long/2addr v4, v6

    move-wide v2, v4

    .line 199
    const-wide/16 v4, 0x1f

    move-wide v6, v2

    mul-long/2addr v4, v6

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/geometry/BoundingBox;->getDepth()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    add-long/2addr v4, v6

    move-wide v2, v4

    .line 200
    move-object v4, v1

    move-wide v5, v2

    move-wide v7, v2

    const/16 v9, 0x20

    shr-long/2addr v7, v9

    xor-long/2addr v5, v7

    long-to-int v5, v5

    iput v5, v4, Ljavafx/geometry/BoundingBox;->hash:I

    .line 202
    .end local v2    # "bits":J
    :cond_0
    move-object v4, v1

    iget v4, v4, Ljavafx/geometry/BoundingBox;->hash:I

    move v1, v4

    .end local v1    # "this":Ljavafx/geometry/BoundingBox;
    return v1
.end method

.method public intersects(DDDD)Z
    .locals 23

    .prologue
    .line 151
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/geometry/BoundingBox;
    move-wide/from16 v1, p1

    .local v1, "x":D
    move-wide/from16 v3, p3

    .local v3, "y":D
    move-wide/from16 v5, p5

    .local v5, "w":D
    move-wide/from16 v7, p7

    .local v7, "h":D
    move-object v9, v0

    move-wide v10, v1

    move-wide v12, v3

    const-wide/16 v14, 0x0

    move-wide/from16 v16, v5

    move-wide/from16 v18, v7

    const-wide/16 v20, 0x0

    invoke-virtual/range {v9 .. v21}, Ljavafx/geometry/BoundingBox;->intersects(DDDDDD)Z

    move-result v9

    move v0, v9

    .end local v0    # "this":Ljavafx/geometry/BoundingBox;
    return v0
.end method

.method public intersects(DDDDDD)Z
    .locals 19

    .prologue
    .line 159
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/geometry/BoundingBox;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-wide/from16 v6, p5

    .local v6, "z":D
    move-wide/from16 v8, p7

    .local v8, "w":D
    move-wide/from16 v10, p9

    .local v10, "h":D
    move-wide/from16 v12, p11

    .local v12, "d":D
    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/geometry/BoundingBox;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_0

    move-wide v14, v8

    const-wide/16 v16, 0x0

    cmpg-double v14, v14, v16

    if-ltz v14, :cond_0

    move-wide v14, v10

    const-wide/16 v16, 0x0

    cmpg-double v14, v14, v16

    if-ltz v14, :cond_0

    move-wide v14, v12

    const-wide/16 v16, 0x0

    cmpg-double v14, v14, v16

    if-gez v14, :cond_1

    :cond_0
    const/4 v14, 0x0

    move v1, v14

    .line 165
    .end local v1    # "this":Ljavafx/geometry/BoundingBox;
    :goto_0
    return v1

    .line 160
    .restart local v1    # "this":Ljavafx/geometry/BoundingBox;
    :cond_1
    move-wide v14, v2

    move-wide/from16 v16, v8

    add-double v14, v14, v16

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/BoundingBox;->getMinX()D

    move-result-wide v16

    cmpl-double v14, v14, v16

    if-ltz v14, :cond_2

    move-wide v14, v4

    move-wide/from16 v16, v10

    add-double v14, v14, v16

    move-object/from16 v16, v1

    .line 161
    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/BoundingBox;->getMinY()D

    move-result-wide v16

    cmpl-double v14, v14, v16

    if-ltz v14, :cond_2

    move-wide v14, v6

    move-wide/from16 v16, v12

    add-double v14, v14, v16

    move-object/from16 v16, v1

    .line 162
    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/BoundingBox;->getMinZ()D

    move-result-wide v16

    cmpl-double v14, v14, v16

    if-ltz v14, :cond_2

    move-wide v14, v2

    move-object/from16 v16, v1

    .line 163
    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/BoundingBox;->getMaxX()D

    move-result-wide v16

    cmpg-double v14, v14, v16

    if-gtz v14, :cond_2

    move-wide v14, v4

    move-object/from16 v16, v1

    .line 164
    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/BoundingBox;->getMaxY()D

    move-result-wide v16

    cmpg-double v14, v14, v16

    if-gtz v14, :cond_2

    move-wide v14, v6

    move-object/from16 v16, v1

    .line 165
    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/BoundingBox;->getMaxZ()D

    move-result-wide v16

    cmpg-double v14, v14, v16

    if-gtz v14, :cond_2

    const/4 v14, 0x1

    :goto_1
    move v1, v14

    goto :goto_0

    :cond_2
    const/4 v14, 0x0

    goto :goto_1
.end method

.method public intersects(Ljavafx/geometry/Bounds;)Z
    .locals 16

    .prologue
    .line 142
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/geometry/BoundingBox;
    move-object/from16 v2, p1

    .local v2, "b":Ljavafx/geometry/Bounds;
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/geometry/Bounds;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x0

    move v1, v3

    .line 143
    .end local v1    # "this":Ljavafx/geometry/BoundingBox;
    :goto_0
    return v1

    .restart local v1    # "this":Ljavafx/geometry/BoundingBox;
    :cond_1
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v6

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getMinZ()D

    move-result-wide v8

    move-object v10, v2

    .line 144
    invoke-virtual {v10}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v10

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getDepth()D

    move-result-wide v14

    .line 143
    invoke-virtual/range {v3 .. v15}, Ljavafx/geometry/BoundingBox;->intersects(DDDDDD)Z

    move-result v3

    move v1, v3

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 6

    .prologue
    .line 71
    move-object v1, p0

    .local v1, "this":Ljavafx/geometry/BoundingBox;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/geometry/BoundingBox;->getMaxX()D

    move-result-wide v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/geometry/BoundingBox;->getMinX()D

    move-result-wide v4

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/geometry/BoundingBox;->getMaxY()D

    move-result-wide v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/geometry/BoundingBox;->getMinY()D

    move-result-wide v4

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/geometry/BoundingBox;->getMaxZ()D

    move-result-wide v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/geometry/BoundingBox;->getMinZ()D

    move-result-wide v4

    cmpg-double v2, v2, v4

    if-gez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v1, v2

    .end local v1    # "this":Ljavafx/geometry/BoundingBox;
    return v1

    .restart local v1    # "this":Ljavafx/geometry/BoundingBox;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/BoundingBox;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BoundingBox [minX:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 214
    invoke-virtual {v2}, Ljavafx/geometry/BoundingBox;->getMinX()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", minY:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 215
    invoke-virtual {v2}, Ljavafx/geometry/BoundingBox;->getMinY()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", minZ:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 216
    invoke-virtual {v2}, Ljavafx/geometry/BoundingBox;->getMinZ()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 217
    invoke-virtual {v2}, Ljavafx/geometry/BoundingBox;->getWidth()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 218
    invoke-virtual {v2}, Ljavafx/geometry/BoundingBox;->getHeight()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", depth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 219
    invoke-virtual {v2}, Ljavafx/geometry/BoundingBox;->getDepth()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maxX:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 220
    invoke-virtual {v2}, Ljavafx/geometry/BoundingBox;->getMaxX()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maxY:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 221
    invoke-virtual {v2}, Ljavafx/geometry/BoundingBox;->getMaxY()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maxZ:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 222
    invoke-virtual {v2}, Ljavafx/geometry/BoundingBox;->getMaxZ()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/geometry/BoundingBox;
    return-object v0
.end method
