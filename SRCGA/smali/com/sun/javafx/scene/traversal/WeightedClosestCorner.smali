.class public Lcom/sun/javafx/scene/traversal/WeightedClosestCorner;
.super Ljava/lang/Object;
.source "WeightedClosestCorner.java"

# interfaces
.implements Lcom/sun/javafx/scene/traversal/Algorithm;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/traversal/WeightedClosestCorner;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method private centerSideDistance(Lcom/sun/javafx/scene/traversal/Direction;Ljavafx/geometry/Bounds;Ljavafx/geometry/Bounds;)D
    .locals 14

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/traversal/WeightedClosestCorner;
    move-object v1, p1

    .local v1, "dir":Lcom/sun/javafx/scene/traversal/Direction;
    move-object/from16 v2, p2

    .local v2, "cur":Ljavafx/geometry/Bounds;
    move-object/from16 v3, p3

    .local v3, "tgt":Ljavafx/geometry/Bounds;
    move-object v8, v1

    sget-object v9, Lcom/sun/javafx/scene/traversal/Direction;->UP:Lcom/sun/javafx/scene/traversal/Direction;

    if-eq v8, v9, :cond_0

    move-object v8, v1

    sget-object v9, Lcom/sun/javafx/scene/traversal/Direction;->DOWN:Lcom/sun/javafx/scene/traversal/Direction;

    if-ne v8, v9, :cond_1

    .line 118
    :cond_0
    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v8

    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    add-double/2addr v8, v10

    move-wide v4, v8

    .line 119
    .local v4, "cc":D
    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v8

    move-object v10, v3

    invoke-virtual {v10}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    add-double/2addr v8, v10

    move-wide v6, v8

    .line 126
    .local v6, "tc":D
    :goto_0
    move-wide v8, v6

    move-wide v10, v4

    sub-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    move-wide v0, v8

    .end local v0    # "this":Lcom/sun/javafx/scene/traversal/WeightedClosestCorner;
    return-wide v0

    .line 122
    .end local v4    # "cc":D
    .end local v6    # "tc":D
    .restart local v0    # "this":Lcom/sun/javafx/scene/traversal/WeightedClosestCorner;
    :cond_1
    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v8

    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    add-double/2addr v8, v10

    move-wide v4, v8

    .line 123
    .restart local v4    # "cc":D
    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v8

    move-object v10, v3

    invoke-virtual {v10}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    add-double/2addr v8, v10

    move-wide v6, v8

    .restart local v6    # "tc":D
    goto :goto_0
.end method

.method private compare1D(Ljavafx/geometry/Bounds;Ljavafx/geometry/Bounds;)I
    .locals 22

    .prologue
    .line 257
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/scene/traversal/WeightedClosestCorner;
    move-object/from16 v3, p1

    .local v3, "a":Ljavafx/geometry/Bounds;
    move-object/from16 v4, p2

    .local v4, "b":Ljavafx/geometry/Bounds;
    const/16 v18, 0x0

    move/from16 v5, v18

    .line 260
    .local v5, "res":I
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v18

    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v20

    add-double v18, v18, v20

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    div-double v18, v18, v20

    move-wide/from16 v6, v18

    .line 261
    .local v6, "metric1a":D
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v18

    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v20

    add-double v18, v18, v20

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    div-double v18, v18, v20

    move-wide/from16 v8, v18

    .line 262
    .local v8, "metric1b":D
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v18

    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v20

    add-double v18, v18, v20

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    div-double v18, v18, v20

    move-wide/from16 v10, v18

    .line 263
    .local v10, "metric2a":D
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v18

    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v20

    add-double v18, v18, v20

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    div-double v18, v18, v20

    move-wide/from16 v12, v18

    .line 264
    .local v12, "metric2b":D
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->hashCode()I

    move-result v18

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v14, v18

    .line 265
    .local v14, "metric3a":D
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->hashCode()I

    move-result v18

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v16, v18

    .line 267
    .local v16, "metric3b":D
    move-wide/from16 v18, v6

    move-wide/from16 v20, v8

    cmpg-double v18, v18, v20

    if-gez v18, :cond_1

    .line 268
    const/16 v18, -0x1

    move/from16 v5, v18

    .line 286
    :cond_0
    :goto_0
    move/from16 v18, v5

    move/from16 v2, v18

    .end local v2    # "this":Lcom/sun/javafx/scene/traversal/WeightedClosestCorner;
    return v2

    .line 270
    .restart local v2    # "this":Lcom/sun/javafx/scene/traversal/WeightedClosestCorner;
    :cond_1
    move-wide/from16 v18, v6

    move-wide/from16 v20, v8

    cmpl-double v18, v18, v20

    if-lez v18, :cond_2

    .line 271
    const/16 v18, 0x1

    move/from16 v5, v18

    goto :goto_0

    .line 273
    :cond_2
    move-wide/from16 v18, v10

    move-wide/from16 v20, v12

    cmpg-double v18, v18, v20

    if-gez v18, :cond_3

    .line 274
    const/16 v18, -0x1

    move/from16 v5, v18

    goto :goto_0

    .line 276
    :cond_3
    move-wide/from16 v18, v10

    move-wide/from16 v20, v12

    cmpl-double v18, v18, v20

    if-lez v18, :cond_4

    .line 277
    const/16 v18, 0x1

    move/from16 v5, v18

    goto :goto_0

    .line 279
    :cond_4
    move-wide/from16 v18, v14

    move-wide/from16 v20, v16

    cmpg-double v18, v18, v20

    if-gez v18, :cond_5

    .line 280
    const/16 v18, -0x1

    move/from16 v5, v18

    goto :goto_0

    .line 282
    :cond_5
    move-wide/from16 v18, v14

    move-wide/from16 v20, v16

    cmpl-double v18, v18, v20

    if-lez v18, :cond_0

    .line 283
    const/16 v18, 0x1

    move/from16 v5, v18

    goto :goto_0
.end method

.method private compare1D(Ljavafx/geometry/Bounds;Ljavafx/geometry/Bounds;Lcom/sun/javafx/scene/traversal/Direction;)I
    .locals 7

    .prologue
    .line 291
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/traversal/WeightedClosestCorner;
    move-object v1, p1

    .local v1, "a":Ljavafx/geometry/Bounds;
    move-object v2, p2

    .local v2, "b":Ljavafx/geometry/Bounds;
    move-object v3, p3

    .local v3, "dir":Lcom/sun/javafx/scene/traversal/Direction;
    move-object v4, v3

    sget-object v5, Lcom/sun/javafx/scene/traversal/Direction;->PREVIOUS:Lcom/sun/javafx/scene/traversal/Direction;

    if-eq v4, v5, :cond_0

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/scene/traversal/WeightedClosestCorner;->compare1D(Ljavafx/geometry/Bounds;Ljavafx/geometry/Bounds;)I

    move-result v4

    neg-int v4, v4

    :goto_0
    move v0, v4

    .end local v0    # "this":Lcom/sun/javafx/scene/traversal/WeightedClosestCorner;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/traversal/WeightedClosestCorner;
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/scene/traversal/WeightedClosestCorner;->compare1D(Ljavafx/geometry/Bounds;Ljavafx/geometry/Bounds;)I

    move-result v4

    goto :goto_0
.end method

.method private cornerSideDistance(Lcom/sun/javafx/scene/traversal/Direction;Ljavafx/geometry/Bounds;Ljavafx/geometry/Bounds;)D
    .locals 10

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/traversal/WeightedClosestCorner;
    move-object v1, p1

    .local v1, "dir":Lcom/sun/javafx/scene/traversal/Direction;
    move-object v2, p2

    .local v2, "cur":Ljavafx/geometry/Bounds;
    move-object v3, p3

    .local v3, "tgt":Ljavafx/geometry/Bounds;
    move-object v6, v1

    sget-object v7, Lcom/sun/javafx/scene/traversal/Direction;->UP:Lcom/sun/javafx/scene/traversal/Direction;

    if-eq v6, v7, :cond_0

    move-object v6, v1

    sget-object v7, Lcom/sun/javafx/scene/traversal/Direction;->DOWN:Lcom/sun/javafx/scene/traversal/Direction;

    if-ne v6, v7, :cond_2

    .line 140
    :cond_0
    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v6

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v8

    cmpl-double v6, v6, v8

    if-lez v6, :cond_1

    .line 142
    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v6

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v8

    sub-double/2addr v6, v8

    move-wide v4, v6

    .line 160
    .local v4, "distance":D
    :goto_0
    move-wide v6, v4

    move-wide v0, v6

    .end local v0    # "this":Lcom/sun/javafx/scene/traversal/WeightedClosestCorner;
    return-wide v0

    .line 146
    .end local v4    # "distance":D
    .restart local v0    # "this":Lcom/sun/javafx/scene/traversal/WeightedClosestCorner;
    :cond_1
    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v6

    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v8

    sub-double/2addr v6, v8

    move-wide v4, v6

    .restart local v4    # "distance":D
    goto :goto_0

    .line 151
    .end local v4    # "distance":D
    :cond_2
    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v6

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v8

    cmpl-double v6, v6, v8

    if-lez v6, :cond_3

    .line 153
    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v6

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v8

    sub-double/2addr v6, v8

    move-wide v4, v6

    .restart local v4    # "distance":D
    goto :goto_0

    .line 157
    .end local v4    # "distance":D
    :cond_3
    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v6

    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v8

    sub-double/2addr v6, v8

    move-wide v4, v6

    .restart local v4    # "distance":D
    goto :goto_0
.end method

.method private isOnAxis(Lcom/sun/javafx/scene/traversal/Direction;Ljavafx/geometry/Bounds;Ljavafx/geometry/Bounds;)Z
    .locals 16

    .prologue
    .line 68
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/traversal/WeightedClosestCorner;
    move-object/from16 v1, p1

    .local v1, "dir":Lcom/sun/javafx/scene/traversal/Direction;
    move-object/from16 v2, p2

    .local v2, "cur":Ljavafx/geometry/Bounds;
    move-object/from16 v3, p3

    .local v3, "tgt":Ljavafx/geometry/Bounds;
    move-object v12, v1

    sget-object v13, Lcom/sun/javafx/scene/traversal/Direction;->UP:Lcom/sun/javafx/scene/traversal/Direction;

    if-eq v12, v13, :cond_0

    move-object v12, v1

    sget-object v13, Lcom/sun/javafx/scene/traversal/Direction;->DOWN:Lcom/sun/javafx/scene/traversal/Direction;

    if-ne v12, v13, :cond_1

    .line 69
    :cond_0
    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v12

    move-wide v4, v12

    .line 70
    .local v4, "cmin":D
    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v12

    move-wide v6, v12

    .line 71
    .local v6, "cmax":D
    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v12

    move-wide v8, v12

    .line 72
    .local v8, "tmin":D
    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v12

    move-wide v10, v12

    .line 81
    .local v10, "tmax":D
    :goto_0
    move-wide v12, v8

    move-wide v14, v6

    cmpg-double v12, v12, v14

    if-gtz v12, :cond_2

    move-wide v12, v10

    move-wide v14, v4

    cmpl-double v12, v12, v14

    if-ltz v12, :cond_2

    const/4 v12, 0x1

    :goto_1
    move v0, v12

    .end local v0    # "this":Lcom/sun/javafx/scene/traversal/WeightedClosestCorner;
    return v0

    .line 75
    .end local v4    # "cmin":D
    .end local v6    # "cmax":D
    .end local v8    # "tmin":D
    .end local v10    # "tmax":D
    .restart local v0    # "this":Lcom/sun/javafx/scene/traversal/WeightedClosestCorner;
    :cond_1
    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v12

    move-wide v4, v12

    .line 76
    .restart local v4    # "cmin":D
    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v12

    move-wide v6, v12

    .line 77
    .restart local v6    # "cmax":D
    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v12

    move-wide v8, v12

    .line 78
    .restart local v8    # "tmin":D
    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v12

    move-wide v10, v12

    .restart local v10    # "tmax":D
    goto :goto_0

    .line 81
    :cond_2
    const/4 v12, 0x0

    goto :goto_1
.end method

.method private outDistance(Lcom/sun/javafx/scene/traversal/Direction;Ljavafx/geometry/Bounds;Ljavafx/geometry/Bounds;)D
    .locals 10

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/traversal/WeightedClosestCorner;
    move-object v1, p1

    .local v1, "dir":Lcom/sun/javafx/scene/traversal/Direction;
    move-object v2, p2

    .local v2, "cur":Ljavafx/geometry/Bounds;
    move-object v3, p3

    .local v3, "tgt":Ljavafx/geometry/Bounds;
    move-object v6, v1

    sget-object v7, Lcom/sun/javafx/scene/traversal/Direction;->UP:Lcom/sun/javafx/scene/traversal/Direction;

    if-ne v6, v7, :cond_0

    .line 93
    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v6

    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v8

    sub-double/2addr v6, v8

    move-wide v4, v6

    .line 105
    .local v4, "distance":D
    :goto_0
    move-wide v6, v4

    move-wide v0, v6

    .end local v0    # "this":Lcom/sun/javafx/scene/traversal/WeightedClosestCorner;
    return-wide v0

    .line 95
    .end local v4    # "distance":D
    .restart local v0    # "this":Lcom/sun/javafx/scene/traversal/WeightedClosestCorner;
    :cond_0
    move-object v6, v1

    sget-object v7, Lcom/sun/javafx/scene/traversal/Direction;->DOWN:Lcom/sun/javafx/scene/traversal/Direction;

    if-ne v6, v7, :cond_1

    .line 96
    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v6

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v8

    sub-double/2addr v6, v8

    move-wide v4, v6

    .restart local v4    # "distance":D
    goto :goto_0

    .line 98
    .end local v4    # "distance":D
    :cond_1
    move-object v6, v1

    sget-object v7, Lcom/sun/javafx/scene/traversal/Direction;->LEFT:Lcom/sun/javafx/scene/traversal/Direction;

    if-ne v6, v7, :cond_2

    .line 99
    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v6

    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v8

    sub-double/2addr v6, v8

    move-wide v4, v6

    .restart local v4    # "distance":D
    goto :goto_0

    .line 102
    .end local v4    # "distance":D
    :cond_2
    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v6

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v8

    sub-double/2addr v6, v8

    move-wide v4, v6

    .restart local v4    # "distance":D
    goto :goto_0
.end method

.method private trav1D(Ljavafx/geometry/Bounds;Lcom/sun/javafx/scene/traversal/Direction;Ljava/util/List;Lcom/sun/javafx/scene/traversal/TraversalContext;)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/geometry/Bounds;",
            "Lcom/sun/javafx/scene/traversal/Direction;",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/Node;",
            ">;",
            "Lcom/sun/javafx/scene/traversal/TraversalContext;",
            ")I"
        }
    .end annotation

    .prologue
    .line 295
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/traversal/WeightedClosestCorner;
    move-object v1, p1

    .local v1, "origin":Ljavafx/geometry/Bounds;
    move-object v2, p2

    .local v2, "dir":Lcom/sun/javafx/scene/traversal/Direction;
    move-object/from16 v3, p3

    .local v3, "targets":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object/from16 v4, p4

    .local v4, "context":Lcom/sun/javafx/scene/traversal/TraversalContext;
    const/4 v8, -0x1

    move v5, v8

    .line 296
    .local v5, "bestSoFar":I
    const/4 v8, -0x1

    move v6, v8

    .line 298
    .local v6, "leastSoFar":I
    const/4 v8, 0x0

    move v7, v8

    .local v7, "i":I
    :goto_0
    move v8, v7

    move-object v9, v3

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_5

    .line 299
    move v8, v6

    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    move-object v8, v0

    move-object v9, v4

    move-object v10, v3

    move v11, v7

    .line 300
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavafx/scene/Node;

    invoke-interface {v9, v10}, Lcom/sun/javafx/scene/traversal/TraversalContext;->getSceneLayoutBounds(Ljavafx/scene/Node;)Ljavafx/geometry/Bounds;

    move-result-object v9

    move-object v10, v4

    move-object v11, v3

    move v12, v6

    .line 301
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljavafx/scene/Node;

    invoke-interface {v10, v11}, Lcom/sun/javafx/scene/traversal/TraversalContext;->getSceneLayoutBounds(Ljavafx/scene/Node;)Ljavafx/geometry/Bounds;

    move-result-object v10

    move-object v11, v2

    .line 300
    invoke-direct {v8, v9, v10, v11}, Lcom/sun/javafx/scene/traversal/WeightedClosestCorner;->compare1D(Ljavafx/geometry/Bounds;Ljavafx/geometry/Bounds;Lcom/sun/javafx/scene/traversal/Direction;)I

    move-result v8

    if-gez v8, :cond_1

    .line 302
    :cond_0
    move v8, v7

    move v6, v8

    .line 305
    :cond_1
    move-object v8, v0

    move-object v9, v4

    move-object v10, v3

    move v11, v7

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavafx/scene/Node;

    invoke-interface {v9, v10}, Lcom/sun/javafx/scene/traversal/TraversalContext;->getSceneLayoutBounds(Ljavafx/scene/Node;)Ljavafx/geometry/Bounds;

    move-result-object v9

    move-object v10, v1

    move-object v11, v2

    invoke-direct {v8, v9, v10, v11}, Lcom/sun/javafx/scene/traversal/WeightedClosestCorner;->compare1D(Ljavafx/geometry/Bounds;Ljavafx/geometry/Bounds;Lcom/sun/javafx/scene/traversal/Direction;)I

    move-result v8

    if-gez v8, :cond_3

    .line 306
    .line 298
    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 309
    :cond_3
    move v8, v5

    const/4 v9, -0x1

    if-eq v8, v9, :cond_4

    move-object v8, v0

    move-object v9, v4

    move-object v10, v3

    move v11, v7

    .line 310
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavafx/scene/Node;

    invoke-interface {v9, v10}, Lcom/sun/javafx/scene/traversal/TraversalContext;->getSceneLayoutBounds(Ljavafx/scene/Node;)Ljavafx/geometry/Bounds;

    move-result-object v9

    move-object v10, v4

    move-object v11, v3

    move v12, v5

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljavafx/scene/Node;

    invoke-interface {v10, v11}, Lcom/sun/javafx/scene/traversal/TraversalContext;->getSceneLayoutBounds(Ljavafx/scene/Node;)Ljavafx/geometry/Bounds;

    move-result-object v10

    move-object v11, v2

    invoke-direct {v8, v9, v10, v11}, Lcom/sun/javafx/scene/traversal/WeightedClosestCorner;->compare1D(Ljavafx/geometry/Bounds;Ljavafx/geometry/Bounds;Lcom/sun/javafx/scene/traversal/Direction;)I

    move-result v8

    if-gez v8, :cond_2

    .line 311
    :cond_4
    move v8, v7

    move v5, v8

    goto :goto_1

    .line 315
    :cond_5
    move v8, v5

    const/4 v9, -0x1

    if-ne v8, v9, :cond_6

    move v8, v6

    :goto_2
    move v0, v8

    .end local v0    # "this":Lcom/sun/javafx/scene/traversal/WeightedClosestCorner;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/traversal/WeightedClosestCorner;
    :cond_6
    move v8, v5

    goto :goto_2
.end method

.method private trav2D(Ljavafx/geometry/Bounds;Lcom/sun/javafx/scene/traversal/Direction;Ljava/util/List;Lcom/sun/javafx/scene/traversal/TraversalContext;)I
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/geometry/Bounds;",
            "Lcom/sun/javafx/scene/traversal/Direction;",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/Node;",
            ">;",
            "Lcom/sun/javafx/scene/traversal/TraversalContext;",
            ")I"
        }
    .end annotation

    .prologue
    .line 220
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/scene/traversal/WeightedClosestCorner;
    move-object/from16 v4, p1

    .local v4, "origin":Ljavafx/geometry/Bounds;
    move-object/from16 v5, p2

    .local v5, "dir":Lcom/sun/javafx/scene/traversal/Direction;
    move-object/from16 v6, p3

    .local v6, "targets":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object/from16 v7, p4

    .local v7, "context":Lcom/sun/javafx/scene/traversal/TraversalContext;
    const/16 v20, 0x0

    move-object/from16 v8, v20

    .line 221
    .local v8, "bestBounds":Ljavafx/geometry/Bounds;
    const-wide/16 v20, 0x0

    move-wide/from16 v9, v20

    .line 222
    .local v9, "bestMetric":D
    const/16 v20, -0x1

    move/from16 v11, v20

    .line 224
    .local v11, "bestIndex":I
    const/16 v20, 0x0

    move/from16 v12, v20

    .local v12, "i":I
    :goto_0
    move/from16 v20, v12

    move-object/from16 v21, v6

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    .line 225
    move-object/from16 v20, v7

    move-object/from16 v21, v6

    move/from16 v22, v12

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljavafx/scene/Node;

    invoke-interface/range {v20 .. v21}, Lcom/sun/javafx/scene/traversal/TraversalContext;->getSceneLayoutBounds(Ljavafx/scene/Node;)Ljavafx/geometry/Bounds;

    move-result-object v20

    move-object/from16 v13, v20

    .line 226
    .local v13, "targetBounds":Ljavafx/geometry/Bounds;
    move-object/from16 v20, v3

    move-object/from16 v21, v5

    move-object/from16 v22, v4

    move-object/from16 v23, v13

    invoke-direct/range {v20 .. v23}, Lcom/sun/javafx/scene/traversal/WeightedClosestCorner;->outDistance(Lcom/sun/javafx/scene/traversal/Direction;Ljavafx/geometry/Bounds;Ljavafx/geometry/Bounds;)D

    move-result-wide v20

    move-wide/from16 v14, v20

    .line 229
    .local v14, "outd":D
    move-object/from16 v20, v3

    move-object/from16 v21, v5

    move-object/from16 v22, v4

    move-object/from16 v23, v13

    invoke-direct/range {v20 .. v23}, Lcom/sun/javafx/scene/traversal/WeightedClosestCorner;->isOnAxis(Lcom/sun/javafx/scene/traversal/Direction;Ljavafx/geometry/Bounds;Ljavafx/geometry/Bounds;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 230
    move-wide/from16 v20, v14

    move-object/from16 v22, v3

    move-object/from16 v23, v5

    move-object/from16 v24, v4

    move-object/from16 v25, v13

    invoke-direct/range {v22 .. v25}, Lcom/sun/javafx/scene/traversal/WeightedClosestCorner;->centerSideDistance(Lcom/sun/javafx/scene/traversal/Direction;Ljavafx/geometry/Bounds;Ljavafx/geometry/Bounds;)D

    move-result-wide v22

    const-wide/high16 v24, 0x4059000000000000L    # 100.0

    div-double v22, v22, v24

    add-double v20, v20, v22

    move-wide/from16 v16, v20

    .line 237
    .local v16, "metric":D
    :goto_1
    move-wide/from16 v20, v14

    const-wide/16 v22, 0x0

    cmpg-double v20, v20, v22

    if-gez v20, :cond_2

    .line 238
    .line 224
    :cond_0
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 233
    .end local v16    # "metric":D
    :cond_1
    move-object/from16 v20, v3

    move-object/from16 v21, v5

    move-object/from16 v22, v4

    move-object/from16 v23, v13

    invoke-direct/range {v20 .. v23}, Lcom/sun/javafx/scene/traversal/WeightedClosestCorner;->cornerSideDistance(Lcom/sun/javafx/scene/traversal/Direction;Ljavafx/geometry/Bounds;Ljavafx/geometry/Bounds;)D

    move-result-wide v20

    move-wide/from16 v18, v20

    .line 234
    .local v18, "cosd":D
    const-wide v20, 0x40f86a0000000000L    # 100000.0

    move-wide/from16 v22, v14

    move-wide/from16 v24, v14

    mul-double v22, v22, v24

    add-double v20, v20, v22

    const-wide/high16 v22, 0x4022000000000000L    # 9.0

    move-wide/from16 v24, v18

    mul-double v22, v22, v24

    move-wide/from16 v24, v18

    mul-double v22, v22, v24

    add-double v20, v20, v22

    move-wide/from16 v16, v20

    .restart local v16    # "metric":D
    goto :goto_1

    .line 241
    .end local v18    # "cosd":D
    :cond_2
    move-object/from16 v20, v8

    if-eqz v20, :cond_3

    move-wide/from16 v20, v16

    move-wide/from16 v22, v9

    cmpg-double v20, v20, v22

    if-gez v20, :cond_0

    .line 242
    :cond_3
    move-object/from16 v20, v13

    move-object/from16 v8, v20

    .line 243
    move-wide/from16 v20, v16

    move-wide/from16 v9, v20

    .line 244
    move/from16 v20, v12

    move/from16 v11, v20

    goto :goto_2

    .line 248
    .end local v13    # "targetBounds":Ljavafx/geometry/Bounds;
    .end local v14    # "outd":D
    .end local v16    # "metric":D
    :cond_4
    move/from16 v20, v11

    move/from16 v3, v20

    .end local v3    # "this":Lcom/sun/javafx/scene/traversal/WeightedClosestCorner;
    return v3
.end method


# virtual methods
.method public select(Ljavafx/scene/Node;Lcom/sun/javafx/scene/traversal/Direction;Lcom/sun/javafx/scene/traversal/TraversalContext;)Ljavafx/scene/Node;
    .locals 12

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/traversal/WeightedClosestCorner;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    move-object v2, p2

    .local v2, "dir":Lcom/sun/javafx/scene/traversal/Direction;
    move-object v3, p3

    .local v3, "context":Lcom/sun/javafx/scene/traversal/TraversalContext;
    const/4 v7, 0x0

    move-object v4, v7

    .line 165
    .local v4, "newNode":Ljavafx/scene/Node;
    move-object v7, v3

    invoke-interface {v7}, Lcom/sun/javafx/scene/traversal/TraversalContext;->getAllTargetNodes()Ljava/util/List;

    move-result-object v7

    move-object v5, v7

    .line 167
    .local v5, "nodes":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object v7, v0

    move-object v8, v3

    move-object v9, v1

    invoke-interface {v8, v9}, Lcom/sun/javafx/scene/traversal/TraversalContext;->getSceneLayoutBounds(Ljavafx/scene/Node;)Ljavafx/geometry/Bounds;

    move-result-object v8

    move-object v9, v2

    move-object v10, v5

    move-object v11, v3

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/sun/javafx/scene/traversal/WeightedClosestCorner;->traverse(Ljavafx/geometry/Bounds;Lcom/sun/javafx/scene/traversal/Direction;Ljava/util/List;Lcom/sun/javafx/scene/traversal/TraversalContext;)I

    move-result v7

    move v6, v7

    .line 168
    .local v6, "target":I
    move v7, v6

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 169
    move-object v7, v5

    move v8, v6

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/Node;

    move-object v4, v7

    .line 172
    :cond_0
    move-object v7, v4

    move-object v0, v7

    .end local v0    # "this":Lcom/sun/javafx/scene/traversal/WeightedClosestCorner;
    return-object v0
.end method

.method public selectFirst(Lcom/sun/javafx/scene/traversal/TraversalContext;)Ljavafx/scene/Node;
    .locals 17

    .prologue
    .line 177
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/traversal/WeightedClosestCorner;
    move-object/from16 v1, p1

    .local v1, "context":Lcom/sun/javafx/scene/traversal/TraversalContext;
    move-object v10, v1

    invoke-interface {v10}, Lcom/sun/javafx/scene/traversal/TraversalContext;->getAllTargetNodes()Ljava/util/List;

    move-result-object v10

    move-object v2, v10

    .line 178
    .local v2, "nodes":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    new-instance v10, Ljavafx/geometry/Point2D;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v3, v10

    .line 180
    .local v3, "zeroZero":Ljavafx/geometry/Point2D;
    move-object v10, v2

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_2

    .line 182
    move-object v10, v2

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavafx/scene/Node;

    move-object v5, v10

    .line 183
    .local v5, "nearestNode":Ljavafx/scene/Node;
    move-object v10, v3

    move-object v11, v1

    move-object v12, v2

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljavafx/scene/Node;

    invoke-interface {v11, v12}, Lcom/sun/javafx/scene/traversal/TraversalContext;->getSceneLayoutBounds(Ljavafx/scene/Node;)Ljavafx/geometry/Bounds;

    move-result-object v11

    invoke-virtual {v11}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v11

    move-object v13, v1

    move-object v14, v2

    const/4 v15, 0x0

    .line 184
    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljavafx/scene/Node;

    invoke-interface {v13, v14}, Lcom/sun/javafx/scene/traversal/TraversalContext;->getSceneLayoutBounds(Ljavafx/scene/Node;)Ljavafx/geometry/Bounds;

    move-result-object v13

    invoke-virtual {v13}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v13

    .line 183
    invoke-virtual {v10, v11, v12, v13, v14}, Ljavafx/geometry/Point2D;->distance(DD)D

    move-result-wide v10

    move-wide v6, v10

    .line 187
    .local v6, "nearestDistance":D
    const/4 v10, 0x1

    move v4, v10

    .local v4, "nodeIndex":I
    :goto_0
    move v10, v4

    move-object v11, v2

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_1

    .line 188
    move-object v10, v3

    move-object v11, v1

    move-object v12, v2

    move v13, v4

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljavafx/scene/Node;

    invoke-interface {v11, v12}, Lcom/sun/javafx/scene/traversal/TraversalContext;->getSceneLayoutBounds(Ljavafx/scene/Node;)Ljavafx/geometry/Bounds;

    move-result-object v11

    invoke-virtual {v11}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v11

    move-object v13, v1

    move-object v14, v2

    move v15, v4

    .line 189
    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljavafx/scene/Node;

    invoke-interface {v13, v14}, Lcom/sun/javafx/scene/traversal/TraversalContext;->getSceneLayoutBounds(Ljavafx/scene/Node;)Ljavafx/geometry/Bounds;

    move-result-object v13

    invoke-virtual {v13}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v13

    .line 188
    invoke-virtual {v10, v11, v12, v13, v14}, Ljavafx/geometry/Point2D;->distance(DD)D

    move-result-wide v10

    move-wide v8, v10

    .line 190
    .local v8, "distance":D
    move-wide v10, v6

    move-wide v12, v8

    cmpl-double v10, v10, v12

    if-lez v10, :cond_0

    .line 191
    move-wide v10, v8

    move-wide v6, v10

    .line 192
    move-object v10, v2

    move v11, v4

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavafx/scene/Node;

    move-object v5, v10

    .line 187
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 195
    .end local v8    # "distance":D
    :cond_1
    move-object v10, v5

    move-object v0, v10

    .line 197
    .end local v0    # "this":Lcom/sun/javafx/scene/traversal/WeightedClosestCorner;
    .end local v4    # "nodeIndex":I
    .end local v5    # "nearestNode":Ljavafx/scene/Node;
    .end local v6    # "nearestDistance":D
    :goto_1
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/traversal/WeightedClosestCorner;
    :cond_2
    const/4 v10, 0x0

    move-object v0, v10

    goto :goto_1
.end method

.method public selectLast(Lcom/sun/javafx/scene/traversal/TraversalContext;)Ljavafx/scene/Node;
    .locals 3

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/traversal/WeightedClosestCorner;
    move-object v1, p1

    .local v1, "context":Lcom/sun/javafx/scene/traversal/TraversalContext;
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/traversal/WeightedClosestCorner;
    return-object v0
.end method

.method public traverse(Ljavafx/geometry/Bounds;Lcom/sun/javafx/scene/traversal/Direction;Ljava/util/List;Lcom/sun/javafx/scene/traversal/TraversalContext;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/geometry/Bounds;",
            "Lcom/sun/javafx/scene/traversal/Direction;",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/Node;",
            ">;",
            "Lcom/sun/javafx/scene/traversal/TraversalContext;",
            ")I"
        }
    .end annotation

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/traversal/WeightedClosestCorner;
    move-object v1, p1

    .local v1, "origin":Ljavafx/geometry/Bounds;
    move-object v2, p2

    .local v2, "dir":Lcom/sun/javafx/scene/traversal/Direction;
    move-object v3, p3

    .local v3, "targets":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object v4, p4

    .local v4, "context":Lcom/sun/javafx/scene/traversal/TraversalContext;
    move-object v6, v2

    sget-object v7, Lcom/sun/javafx/scene/traversal/Direction;->NEXT:Lcom/sun/javafx/scene/traversal/Direction;

    if-eq v6, v7, :cond_0

    move-object v6, v2

    sget-object v7, Lcom/sun/javafx/scene/traversal/Direction;->NEXT_IN_LINE:Lcom/sun/javafx/scene/traversal/Direction;

    if-eq v6, v7, :cond_0

    move-object v6, v2

    sget-object v7, Lcom/sun/javafx/scene/traversal/Direction;->PREVIOUS:Lcom/sun/javafx/scene/traversal/Direction;

    if-ne v6, v7, :cond_1

    .line 210
    :cond_0
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/sun/javafx/scene/traversal/WeightedClosestCorner;->trav1D(Ljavafx/geometry/Bounds;Lcom/sun/javafx/scene/traversal/Direction;Ljava/util/List;Lcom/sun/javafx/scene/traversal/TraversalContext;)I

    move-result v6

    move v5, v6

    .line 215
    .local v5, "target":I
    :goto_0
    move v6, v5

    move v0, v6

    .end local v0    # "this":Lcom/sun/javafx/scene/traversal/WeightedClosestCorner;
    return v0

    .line 212
    .end local v5    # "target":I
    .restart local v0    # "this":Lcom/sun/javafx/scene/traversal/WeightedClosestCorner;
    :cond_1
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/sun/javafx/scene/traversal/WeightedClosestCorner;->trav2D(Ljavafx/geometry/Bounds;Lcom/sun/javafx/scene/traversal/Direction;Ljava/util/List;Lcom/sun/javafx/scene/traversal/TraversalContext;)I

    move-result v6

    move v5, v6

    .restart local v5    # "target":I
    goto :goto_0
.end method
